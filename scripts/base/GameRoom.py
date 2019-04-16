# -*- coding: utf-8 -*-

import KBEngine
from KBEDebug import *
import time
from datetime import datetime
from interfaces.GameObject import GameObject
from entitymembers.iRoomRules import iRoomRules
from entitymembers.PlayerProxy import PlayerProxy
import const
import random
import switch
import utility

class GameRoom(KBEngine.Base, GameObject, iRoomRules):
	"""
	这是一个游戏房间/桌子类
	该类处理维护一个房间中的实际游戏， 例如：斗地主、麻将等
	该房间中记录了房间里所有玩家的mailbox，通过mailbox我们可以将信息推送到他们的客户端。
	"""
	def __init__(self):
		GameObject.__init__(self)
		iRoomRules.__init__(self)

		self.owner_uid = 0
		self.agent = None
		self.roomID = None

		# 状态0：未开始游戏，1: 买底/顶底 2：某一局游戏中
		self.state = const.STATE_READY

		# 存放该房间内的玩家mailbox
		self.players_dict = {}
		self.players_list = [None] * self.player_num
		self.origin_players_list = [None] * self.player_num
		# 庄家index
		self.dealer_idx = 0
		# 玩家起始庄家
		self.start_dealer_idx = 0
		# 当前控牌的玩家index
		self.current_idx = 0
		# 对当前打出的牌可以进行操作的玩家的index, 服务端会限时等待他的操作
		self.wait_idx = -1
		self.wait_op = None
		# 房间基础轮询timer
		self._poll_timer = None
		# 玩家操作限时timer
		self._op_timer = None
		# 一局游戏结束后, 玩家准备界面等待玩家确认timer
		self._next_game_timer = None

		#财神(多个)
		self.kingTiles = []

		self.current_round = 0
		self.current_circle = 0
		self.all_discard_tiles = []
		# 最后一位出牌的玩家
		self.last_player_idx = -1
		# 房间开局所有操作的记录(aid, src, des, tile)
		self.op_record = []
		# 确认继续的玩家
		self.confirm_next_idx = []

		# 解散房间操作的发起者
		self.dismiss_room_from = -1
		# 解散房间操作开始的时间戳
		self.dismiss_room_ts = 0
		# 解散房间操作投票状态
		self.dismiss_room_state_list = [0] * self.player_num
		self.dismiss_timer = None
		# 等待玩家确认胡的list
		# self.wait_for_win_dict = {} # waitIdx:{"state": 0, "fromIdx": idx, "win_op":aid, "quantity":4, "result":[]}
		self.wait_for_win_list = [] 

		# self.addTimer(const.ROOM_EXIST_TIME, 0, const.TIMER_TYPE_ROOM_EXIST)
		self.roomOpenTime = time.time()
		# 跟风
		self.follow_dict = {'tile': 0, "num": 0}
		# 庄家连庄数
		self.searial_deal_num = 1
		# 最后杠的牌
		self.last_kong_tile = 0
		# 流局剩余张数
		self.draw_end_left_tiles = 16

	@property
	def isFull(self):
		count = sum([1 for i in self.players_list if i is not None])
		return count == self.player_num

	@property
	def isEmpty(self):
		count = sum([1 for i in self.players_list if i is not None])
		return count == 0 and self.agent is None

	@property
	def nextIdx(self):
		tryNext = (self.current_idx + 1) % self.player_num
		for j in range(2):
			for i in range(self.player_num):
				if self.player_num > tryNext:
					return tryNext
				tryNext = (tryNext + 1) % self.player_num
		return (self.current_idx + 1) % self.player_num

	def getSit(self):
		for i, j in enumerate(self.players_list):
			if j is None:
				return i

	def _reset(self):
		self.state = const.STATE_READY
		self.agent = None
		self.players_list = [None] * self.player_num
		self.dealer_idx = 0
		self.start_dealer_idx = 0
		self.current_idx = 0
		self._poll_timer = None
		self._op_timer = None
		self._next_game_timer = None
		self.all_discard_tiles = []
		self.kingTiles = []
		self.current_round = 0
		self.current_circle = 0
		self.confirm_next_idx = []
		self.dismiss_timer = None
		self.dismiss_room_ts = 0
		self.dismiss_room_state_list = [0, 0, 0, 0]
		self.searial_deal_num = 1
		self.wait_for_win_list = []
		self.last_kong_tile = 0
		KBEngine.globalData["GameWorld"].delRoom(self)

	def throwTheDice(self, idxList):
		if self.player_num == 2:
			diceList = [[0, 0], [0, 0]]
		else:
			diceList = [[0, 0], [0, 0], [0, 0], [0, 0]]
		for idx in idxList:
			for i in range(0,2):
				diceNum = random.randint(1, 6)
				diceList[idx][i] = diceNum
		return diceList

	def getMaxDiceIdx(self, diceList):
		numList = []
		for i in range(len(diceList)):
			numList.append(diceList[i][0] + diceList[i][1])

		idx = 0
		num = 0
		for i in range(len(numList)):
			if numList[i] > num:
				idx = i
				num = numList[i]
		return idx, num

	def onTimer(self, id, userArg):
		DEBUG_MSG("Room.onTimer called: id %i, userArg: %i" % (id, userArg))

		if userArg == const.TIMER_TYPE_DISMISS_WAIT:
			self.delTimer(id)
			self.dropRoom()
		# if userArg == const.TIMER_TYPE_ROOM_EXIST:
		# 	self.game_round = self.current_round
		# 	self.delTimer(id)

	def reqEnterRoom(self, avt_mb, first=False):
		"""
		defined.
		客户端调用该接口请求进入房间/桌子
		"""
		if self.isFull:
			avt_mb.enterRoomFailed(const.ENTER_FAILED_ROOM_FULL)
			return

		# 代开房
		if first and self.is_agent == 1:
			self.agent = PlayerProxy(avt_mb, self, -1)
			self.players_dict[avt_mb.userId] = self.agent
			avt_mb.enterRoomSucceed(self, -1)
			return

		for i, p in enumerate(self.players_list):
			if p and p.mb and p.mb.userId == avt_mb.userId:
				p.mb = avt_mb
				avt_mb.enterRoomSucceed(self, i)
				return

		DEBUG_MSG("Room.reqEnterRoom: %s" % (self.roomID))
		idx = self.getSit()
		n_player = PlayerProxy(avt_mb, self, idx)
		self.players_dict[avt_mb.userId] = n_player
		self.players_list[idx] = n_player
		# 确认准备
		# if idx not in self.confirm_next_idx:
		# 	self.confirm_next_idx.append(idx)

		if not first:
			self.broadcastEnterRoom(idx)
			self.check_same_ip()

		if self.isFull:
			self.origin_players_list = self.players_list[:]
		# 	if self.is_agent == 1 and self.agent and self.agent.mb:
		# 		try:
		# 			self.agent.mb.quitRoomSucceed()
		# 			leave_tips = "您代开的房间已经开始游戏, 您已被请离.\n房间号【{}】".format(self.roomID)
		# 			self.agent.mb.showTip(leave_tips)
		# 		except:
		# 			pass
		# 	self.startPlaceBet()
			# self.addTimer(const.START_GAME_WAIT_TIME, 0, const.TIMER_TYPE_START_GAME)

	def reqReconnect(self, avt_mb):
		DEBUG_MSG("GameRoom reqReconnect userid = {}".format(avt_mb.userId))
		if avt_mb.userId not in self.players_dict.keys():
			return

		DEBUG_MSG("GameRoom reqReconnect player is in room".format(avt_mb.userId))
		# 如果进来房间后牌局已经开始, 就要传所有信息
		# 如果还没开始, 跟加入房间没有区别
		player = self.players_dict[avt_mb.userId]
		if self.agent and player.userId == self.agent.userId:
			self.agent.mb = avt_mb
			self.agent.online = 1
			avt_mb.enterRoomSucceed(self, -1)
			return
		
		player.mb = avt_mb
		player.online = 1
		if self.state == const.STATE_BET or self.state == const.STATE_PLAY or (0 < self.current_round <= self.game_round and self.game_round > 0) or (self.current_circle <= abs(self.game_round) and self.game_round < 0):
			if self.state == const.STATE_READY:
				# 重连回来直接准备
				self.roundEndCallback(avt_mb)
			rec_room_info = self.get_reconnect_room_dict(player.mb.userId)
			player.mb.handle_reconnect(rec_room_info)
		else:
			sit = 0
			for idx, p in enumerate(self.players_list):
				if p and p.mb:
					if p.mb.userId == avt_mb.userId:
						sit = idx
						break
			avt_mb.enterRoomSucceed(self, sit)

		# self.check_same_ip()

	def reqLeaveRoom(self, player):
		"""
		defined.
		客户端调用该接口请求离开房间/桌子
		"""
		DEBUG_MSG("Room.reqLeaveRoom:{0}, is_agent={1}".format(self.roomID, self.is_agent))
		if player.userId in self.players_dict.keys():
			n_player = self.players_dict[player.userId]
			idx = n_player.idx


			if idx == -1 and self.is_agent == 1:
				self.dropRoom()
			elif idx == 0 and self.is_agent == 0:
				# 房主离开房间, 则解散房间
				self.dropRoom()
			else:
				n_player.mb.quitRoomSucceed()
				self.players_list[idx] = None
				del self.players_dict[player.userId]
				if idx in self.confirm_next_idx:
					self.confirm_next_idx.remove(idx)
				# 通知其它玩家该玩家退出房间
				for i, p in enumerate(self.players_list):
					if i != idx and p and p.mb:
						p.mb.othersQuitRoom(idx)
				if self.agent and self.agent.mb:
					self.agent.mb.othersQuitRoom(idx)

		if self.isEmpty:
			self._reset()

	def dropRoom(self):
		for p in self.players_list:
			if p and p.mb:
				try:
					p.mb.quitRoomSucceed()
				except:
					pass

		if self.agent and self.agent.mb:
			try:
				# # 如果是代开房, 没打完一局返还房卡
				# if self.is_agent == 1 and self.current_round < 2:
				# 	# cost = 2 if self.game_round == 16 else 1
				# 	cost = 1
				# 	self.agent.mb.addCards(cost, "dropRoom")
				self.agent.mb.quitRoomSucceed()
			except:
				pass

		self._reset()

	def startPlaceBet(self):
		DEBUG_MSG("startPlaceBet")
		self.op_record = []
		self.state = const.STATE_BET
		self.current_round += 1
		self.follow_dict = {'tile': 0, "num": 0}
		self.wait_for_win_list = []
		self.last_kong_tile = 0
		self.draw_end_left_tiles = 16

		# 仅仅在第1局扣房卡, 不然每局都会扣房卡
		def callback(content):
			content = content.decode()
			try:
				if content[0] != '{':
					DEBUG_MSG(content)
					self.dropRoom()
					return
				'''每局开始设置 默认 买底/顶底 数量'''
				if self.searial_deal_num == 1 or self.searial_deal_num > 4:
					for p in self.players_list:
						if p is not None:
							p.bet = 0

				'''换位置'''
				'''每局开始重置每个玩家信息'''
				swapList = []
				if self.current_round == 1 or self.searial_deal_num > 4:
					DEBUG_MSG("player change seat")
					swapList = self.getSwapList()
					self.swapSeat(swapList)
					self.dealer_idx = random.randint(0, self.player_num-1)

					self.start_dealer_idx = self.dealer_idx
					self.current_circle += 1

				if self.searial_deal_num > 4:
					self.searial_deal_num = 1	
				
				for p in self.players_list:
					p.reset()
				'''开局初始 买底/顶底 数量'''
				betList = [p.bet for i,p in enumerate(self.players_list)]
				DEBUG_MSG("begin bet list:{0}".format(betList))

				if self.max_bet_num <= 0:
					for p in self.players_list:
						if p and p.mb:
							p.placeBet(0)
							p.mb.skipPlaceBet(self.dealer_idx, self.searial_deal_num, self.current_circle, betList, swapList)
					self.startGame()
				else:
					for p in self.players_list:
						if p and p.mb:
							p.mb.startPlaceBet(self.dealer_idx, self.searial_deal_num, self.current_circle, betList, swapList)
			except:
				DEBUG_MSG("consume failed!")

		if self.current_round == 1 and self.is_agent == 0:
			card_cost, diamond_cost = switch.calc_cost(self.game_round, self.player_num)
			if switch.DEBUG_BASE:
				callback('{"card":99, "diamond":999}'.encode())
			else:				
				if self.game_round < 0:
					signal = 0
					def payCallback(content):
						signal += 1
						if signal == self.player_num:
							callback(content)
					for i in range(self.player_num):
						utility.update_card_diamond(self.players_list[i].mb.accountName, -card_cost, -diamond_cost, payCallback, "WenZhouMJ RoomID:{}".format(self.roomID))
				else:
					utility.update_card_diamond(self.players_list[0].mb.accountName, -card_cost, -diamond_cost, callback, "WenZhouMJ RoomID:{}".format(self.roomID))
			return
		callback('{"card":99, "diamond":999}'.encode())	

	def getSwapList(self):
		swapList = []
		if self.player_num > 0:
			originList = [i for i in range(self.player_num)]
			changeList = originList[1:]
			random.shuffle(changeList)
			swapList.append(originList[0])
			swapList.extend(changeList)
		return swapList

	def swapSeat(self, indexList): # [0,3,1,2]
		if len(indexList) != len(self.players_list) or [i for i in range(len(self.players_list))] != sorted(indexList):
			return
		# 交换 位置
		tempList = self.players_list[:]
		self.players_list = []
		for idx in indexList:
			self.players_list.append(tempList[idx])
		# 重置 索引
		for i in range(len(self.players_list)):
			DEBUG_MSG("swapSeat:{0}->{1}".format(self.players_list[i].idx, i))
			self.players_list[i].idx = i
		
	def placeBet(self, avt_mb, bet):
		idx = None
		for i, p in enumerate(self.players_list):
			if p and avt_mb == p.mb:
				idx = i
				break
		if idx is None or self.players_list[idx].bet_state != 0 or self.players_list[idx].bet + bet > self.max_bet_num or self.state != const.STATE_BET:
			avt_mb.doOperationFailed(const.OP_ERROR_ILLEGAL)
			return

		DEBUG_MSG('player {0} placeBet:{1}, allBet:{2}'.format(idx, bet, self.players_list[idx].bet + bet))

		self.players_list[idx].placeBet(bet)
		'''通知其他玩家 买底/顶底'''
		for i, p in enumerate(self.players_list):
			if p and avt_mb != p.mb:
				p.mb.postBetOperation(idx, bet)

		if sum([p.bet_state for i, p in enumerate(self.players_list)]) >= self.player_num:
			self.startGame()
		

	def startGame(self):
		""" 开始游戏 """
		DEBUG_MSG("startGame")
		self.state = const.STATE_PLAY
		diceList = self.throwTheDice([self.dealer_idx])
		idx, num = self.getMaxDiceIdx(diceList)

		# 第一局时房间默认房主庄家, 之后谁上盘赢了谁是, 如果臭庄, 最后摸牌的人是庄
		self.current_idx = self.dealer_idx
		self.initTiles()
		self.deal()
		
		for p in self.players_list:
			if p and p.mb:
				DEBUG_MSG("start game,dealer_idx:{0},tiles:{1}, kingTiles:{2}, diceList:{3},leftTileNum:{4}".format(self.dealer_idx, p.tiles, self.kingTiles, diceList, len(self.tiles)))
				p.mb.startGame(p.tiles, self.kingTiles, diceList)
		
		self.beginRound()

	def cutAfterKong(self):
		if not self.can_cut_after_kong():
			return
		if len(self.tiles) <= self.draw_end_left_tiles:
			self.drawEnd()
			return

		player = self.players_list[self.current_idx]
		ti = self.tiles[0]
		self.tiles = self.tiles[1:]
		if self.draw_end_left_tiles > 0:
			self.draw_end_left_tiles -= 1
		player.cutTile(ti)

	def beginRound(self):
		if len(self.tiles) <= self.draw_end_left_tiles:
			self.drawEnd()
			return

		player = self.players_list[self.current_idx]
		ti = self.tiles[0]
		self.tiles = self.tiles[1:]
		DEBUG_MSG("beginRound len:{0}".format(len(self.tiles)))
		player.drawTile(ti)

	def reqStopGame(self, player):
		"""
		客户端调用该接口请求停止游戏
		"""
		DEBUG_MSG("Room.reqLeaveRoom: %s" % (self.roomID))
		self.state = const.STATE_READY
		# self.delTimer(self._poll_timer)
		# self._poll_timer = None

	# 跟风算分
	def discardOfFollow(self, idx, t):
		if self.follow_state and self.player_num == 4:
			if t < 30 or (t == const.DRAGON_WHITE and self.kingTiles[0] not in const.WORDS) or t in self.kingTiles:
				self.follow_dict = {'tile':0, 'num':0}
			else:
				if (self.last_player_idx + 1)%self.player_num == idx:
					if self.follow_dict['tile'] != t:
						self.follow_dict = {'tile':t, 'num':1}
					else:
						self.follow_dict['num'] += 1
				else:
					self.follow_dict = {'tile':t, 'num':1}
				#算分
				if self.follow_dict['num'] == 4:
					for i,p in enumerate(self.players_list):
						if (idx+1)%self.player_num == i:
							p.addScore(-3)
							DEBUG_MSG("follow wind:{0} add score {1}".format(i, -3))
						else:
							p.addScore(1)
							DEBUG_MSG("follow wind:{0} add score {1}".format(i, 1))
	
	def settlement(self, isDrawEnd):
		for i,p in enumerate(self.players_list):
			p.settlement(isDrawEnd)			

	def drawEnd(self):
		""" 臭庄 """
		info = dict()
		info['win_op'] = -1
		info['win_idx'] = -1
		info['lucky_tiles'] = []
		info['result_list'] = []
		info['finalTile'] = 0
		info['from_idx'] = -1
		info['searial_deal_num'] = 0
		self.settlement(True)
		if (self.game_round > 0 and self.current_round < self.game_round) or (self.game_round < 0 and self.current_circle < abs(self.game_round) + 1):
			self.broadcastRoundEnd(info)
		else:
			self.endAll(info)


	def winGame(self, idx, op, finalTile, from_idx, score, result):
		""" 座位号为idx的玩家胡牌 """
		self.cal_score(idx, op, score)

		temp_searial_deal_num = self.searial_deal_num
		if self.dealer_idx != idx:
			self.dealer_idx = (self.dealer_idx + 1) % self.player_num
			self.searial_deal_num = 1
			if self.dealer_idx == self.start_dealer_idx:
				self.current_circle += 1
		else:
			self.searial_deal_num += 1

		info = dict()
		info['win_op'] = op
		info['win_idx'] = idx
		info['lucky_tiles'] = []
		info['result_list'] = result
		info['finalTile'] = finalTile
		info['from_idx'] = from_idx
		info['searial_deal_num'] = temp_searial_deal_num
		self.settlement(False)
		if (self.game_round > 0 and self.current_round < self.game_round) or (self.game_round < 0 and self.current_circle < abs(self.game_round) + 1):
			self.broadcastRoundEnd(info)
		else:
			self.endAll(info)

	def endAll(self, info):
		""" 游戏局数结束, 给所有玩家显示最终分数记录 """

		# 先记录玩家当局战绩, 会累计总得分
		self.record_round_result()

		info['left_tiles'] = info['left_tiles'] = self.tiles
		info['player_info_list'] = [p.get_round_client_dict() for p in self.players_list if p is not None]
		player_info_list = [p.get_final_client_dict() for p in self.players_list if p is not None]
		# DEBUG_MSG("%" * 30)
		# DEBUG_MSG("FinalEnd info = {}".format(player_info_list))
		for p in self.players_list:
			if p and p.mb:
				p.mb.finalResult(player_info_list, info)

		self._reset()

	def sendEmotion(self, avt_mb, eid):
		""" 发表情 """
		# DEBUG_MSG("Room.Player[%s] sendEmotion: %s" % (self.roomID, eid))
		idx = None
		for i, p in enumerate(self.players_list):
			if p and avt_mb == p.mb:
				idx = i
				break
		else:
			if self.agent and self.agent.userId == avt_mb.userId:
				idx = -1

		if idx is None:
			return

		if self.agent and idx != -1 and self.agent.mb:
			self.agent.mb.recvEmotion(idx, eid)

		for i, p in enumerate(self.players_list):
			if p and i != idx:
				p.mb.recvEmotion(idx, eid)

	def sendMsg(self, avt_mb, mid):
		""" 发消息 """
		# DEBUG_MSG("Room.Player[%s] sendMsg: %s" % (self.roomID, mid))
		idx = None
		for i, p in enumerate(self.players_list):
			if p and avt_mb == p.mb:
				idx = i
				break
		else:
			if self.agent and self.agent.userId == avt_mb.userId:
				idx = -1

		if idx is None:
			return

		if self.agent and idx != -1 and self.agent.mb:
			self.agent.mb.recvMsg(idx, mid)

		for i, p in enumerate(self.players_list):
			if p and i != idx:
				p.mb.recvMsg(idx, mid)

	def sendVoice(self, avt_mb, url):
		# DEBUG_MSG("Room.Player[%s] sendVoice" % (self.roomID))
		idx = None
		for i, p in enumerate(self.players_list):
			if p and avt_mb.userId == p.userId:
				idx = i
				break
		else:
			if self.agent and self.agent.userId == avt_mb.userId:
				idx = -1

		if idx is None:
			return
		if self.agent and idx != -1 and self.agent.mb:
			self.agent.mb.recvVoice(idx, url)

		for i, p in enumerate(self.players_list):
			if p and p.mb:
				p.mb.recvVoice(idx, url)

	def sendAppVoice(self, avt_mb, url, time):
		# DEBUG_MSG("Room.Player[%s] sendVoice" % (self.roomID))
		idx = None
		for i, p in enumerate(self.players_list):
			if p and avt_mb.userId == p.userId:
				idx = i
				break
		else:
			if self.agent and self.agent.userId == avt_mb.userId:
				idx = -1

		if idx is None:
			return
		if self.agent and idx != -1 and self.agent.mb:
			self.agent.mb.recvAppVoice(idx, url, time)

		for i, p in enumerate(self.players_list):
			if p and p.mb:
				p.mb.recvAppVoice(idx, url, time)

	def doOperation(self, avt_mb, aid, tile_list):
		"""
		当前控牌玩家摸牌后向服务端确认的操作
		:param idx: 当前打牌的人的座位
		:param aid: 操作id
		:param tile: 针对的牌
		:return: 确认成功或者失败
		"""
		if self.dismiss_room_ts != 0 and int(time.time() - self.dismiss_room_ts) < const.DISMISS_ROOM_WAIT_TIME:
			# 说明在准备解散投票中,不能进行其他操作
			return

		tile = tile_list[0]
		idx = -1
		for i, p in enumerate(self.players_list):
			if p and p.mb == avt_mb:
				idx = i

		if idx != self.current_idx or self.wait_idx >= 0:
			avt_mb.doOperationFailed(const.OP_ERROR_NOT_CURRENT)
			return

		# self.delTimer(self._op_timer)
		p = self.players_list[idx]
		if aid == const.OP_DISCARD and self.can_discard(p.tiles, tile, idx):
			self.all_discard_tiles.append(tile)
			p.discardTile(tile)
		elif aid == const.OP_CONCEALED_KONG and self.can_concealed_kong(p.tiles, tile):
			p.concealedKong(tile)
		elif aid == const.OP_EXPOSED_KONG and self.can_self_exposed_kong(p, tile):
			p.self_exposedKong(tile)
		elif aid == const.OP_PASS:
			# 自己摸牌的时候可以杠或者胡时选择过, 则什么都不做. 继续轮到该玩家打牌.
			pass
		elif aid == const.OP_DRAW_WIN: #普通自摸胡
			is_win, result, score = self.can_win(list(p.tiles), p.last_draw, const.OP_DRAW_WIN, idx)
			if is_win:
				p.draw_win(tile, score, result)
			else:
				avt_mb.doOperationFailed(const.OP_ERROR_ILLEGAL)
				self.current_idx = self.nextIdx
				self.beginRound()
		else:
			avt_mb.doOperationFailed(const.OP_ERROR_ILLEGAL)
			self.current_idx = self.nextIdx
			self.beginRound()


	def confirmOperation(self, avt_mb, aid, tile_list):
		""" 被轮询的玩家确认了某个操作 """
		if self.dismiss_room_ts != 0 and int(time.time() - self.dismiss_room_ts) < const.DISMISS_ROOM_WAIT_TIME:
			# 说明在准备解散投票中,不能进行其他操作
			return

		tile = tile_list[0]
		idx = -1
		for i, p in enumerate(self.players_list):
			if p and p.mb == avt_mb:
				idx = i

		if idx != self.wait_idx:
			avt_mb.doOperationFailed(const.OP_ERROR_NOT_CURRENT)
			return
		# 确认要操作的牌是否是最后一张被打的牌
		if aid != const.OP_PASS and tile != self.all_discard_tiles[-1] and len(self.wait_for_win_list) <= 0:
			avt_mb.doOperationFailed(const.OP_ERROR_ILLEGAL)
			return

		# self.delTimer(self._poll_timer)
		self.wait_idx = -1
		self.wait_op = None
		p = self.players_list[idx]
		if aid == const.OP_PONG and self.can_pong(p.tiles, tile):
			self.current_idx = idx
			p.pong(tile)
		elif aid == const.OP_EXPOSED_KONG and self.can_exposed_kong(p.tiles, tile):
			self.current_idx = idx
			p.exposedKong(tile)
		elif aid == const.OP_CHOW and self.can_chow_one(p.tiles, tile_list) and (idx+self.player_num-1)%self.player_num == self.last_player_idx:
			self.current_idx = idx
			p.chow(tile_list)
		elif aid == const.OP_KONG_WIN:
			if len(self.wait_for_win_list) > 0 and self.wait_for_win_list[0]['op'] == const.OP_KONG_WIN:
				info = self.wait_for_win_list[0]
				p = self.players_list[info['idx']]
				p.kong_win(info['tile'], info['score'], info['result'])
			else:
				DEBUG_MSG("error kong win op.")
				avt_mb.doOperationFailed(const.OP_ERROR_ILLEGAL)
		elif aid == const.OP_GIVE_WIN: #放炮胡
			if len(self.wait_for_win_list) > 0 and self.wait_for_win_list[0]['op'] == const.OP_GIVE_WIN:
				info = self.wait_for_win_list[0]
				p = self.players_list[info['idx']]
				p.give_win(info['tile'], info['score'], info['result'])
			else:
				DEBUG_MSG("error give win op.")
				avt_mb.doOperationFailed(const.OP_ERROR_ILLEGAL)
			# avt_mb.doOperationFailed(const.OP_ERROR_ILLEGAL)
			# #无任何操作 过牌
			# self.confirmPass(idx)
		else:
			if len(self.wait_for_win_list) > 0:
				info = self.wait_for_win_list[0]
				op, fromIdx, toIdx, keyTile = info['op'], info['fromIdx'], info['idx'], info['tile']
				# 进入跑马阶段
				self.players_list[toIdx].startRaceHorse()
				del self.wait_for_win_list[0]
				if len(self.wait_for_win_list) > 0:
					waitAid = const.OP_EXPOSED_KONG if op == const.OP_KONG_WIN else const.OP_DISCARD
					self.waitForOperation(fromIdx, waitAid, keyTile, self.wait_for_win_list)
				else:
					# 轮询结束 没人胡
					for i, p in enumerate(self.players_list):
						if p and i != fromIdx and op != const.OP_KONG_WIN:
							DEBUG_MSG("none player win, check can_pong or can_exposed_kong")
							if self.can_pong(p.tiles, keyTile) or self.can_exposed_kong(p.tiles, keyTile):
								self.wait_idx = i
								self.wait_op = const.OP_DISCARD
								p.mb.waitForOperation(self.wait_op, [keyTile,])
								break
					else:
						if op == const.OP_KONG_WIN:
							self.cal_score(fromIdx, const.OP_EXPOSED_KONG, 1)
							self.current_idx = self.last_player_idx
							self.cutAfterKong()
							self.beginRound()
						else:
							self.confirmPass(idx, op)
			else:
				self.confirmPass(idx)

	def confirmPass(self, idx, op = -1):
		nextIdx = self.nextIdx
		nextMb = self.players_list[nextIdx]
		if (idx != nextIdx or (op != const.OP_KONG_WIN and op >= 0)) and self.can_chow(nextMb.tiles, self.all_discard_tiles[-1]):
			self.wait_idx = nextIdx
			self.wait_op = const.OP_DISCARD
			nextMb.mb.waitForOperation(const.OP_DISCARD, [self.all_discard_tiles[-1],])
		else:
			self.current_idx = nextIdx
			self.beginRound()

	def broadcastOperation(self, idx, aid, tile_list = None):
		"""
		将操作广播给所有人, 包括当前操作的玩家
		:param idx: 当前操作玩家的座位号
		:param aid: 操作id
		:param tile_list: 出牌的list
		"""
		for i, p in enumerate(self.players_list):
			if p is not None:
				p.mb.postOperation(idx, aid, tile_list)

	def broadcastOperation2(self, idx, aid, tile_list = None):
		""" 将操作广播除了自己之外的其他人 """
		for i, p in enumerate(self.players_list):
			if p and i != idx:
				p.mb.postOperation(idx, aid, tile_list)

	def broadcastMultiOperation(self, idx_list, aid_list, tile_list=None):
		for i, p in enumerate(self.players_list):
			if p is not None:
				p.mb.postMultiOperation(idx_list, aid_list, tile_list)

	def broadcastRoundEnd(self, info):
		# 广播胡牌或者流局导致的每轮结束信息, 包括算的扎码和当前轮的统计数据

		# 先记录玩家当局战绩, 会累计总得分
		self.record_round_result()

		self.state = const.STATE_READY
		info['left_tiles'] = self.tiles
		info['player_info_list'] = [p.get_round_client_dict() for p in self.players_list if p is not None]

		DEBUG_MSG("&" * 30)
		DEBUG_MSG("RoundEnd info = {}".format(info))
		self.confirm_next_idx = []
		for p in self.players_list:
			if p:
				p.mb.roundResult(info)

	def waitForOperation(self, idx, aid, tile, waitWinList = []):
		isHaveWaitOp = False
		if aid == const.OP_EXPOSED_KONG:	#玩家普通杠 是否可以抢杠胡
			if len(waitWinList) > 0:
				isHaveWaitOp = True
				self.wait_op = waitWinList[0]['op']
				self.wait_idx = waitWinList[0]['idx']
				p = self.players_list[self.wait_idx]
				p.mb.waitForOperation(self.wait_op, [tile,])
		elif aid == const.OP_DISCARD:											#玩家打牌 是否有其他玩家 胡 碰 杠
			if len(waitWinList) > 0: # 询问放炮胡
				isHaveWaitOp = True
				self.wait_op = waitWinList[0]['op']
				self.wait_idx = waitWinList[0]['idx']
				p = self.players_list[self.wait_idx]
				p.mb.waitForOperation(self.wait_op, [tile,])
			else:
				for i, p in enumerate(self.players_list):
					DEBUG_MSG("op_discard : {0},{1}".format(i, idx))
					if p and i != idx:
						DEBUG_MSG("discard can_pong or can_exposed_kong")
						if self.can_pong(p.tiles, tile) or self.can_exposed_kong(p.tiles, tile):
							self.wait_idx = i
							self.wait_op = aid
							isHaveWaitOp = True
							p.mb.waitForOperation(aid, [tile,])
							break
		if not isHaveWaitOp:
			#下家能不能吃
			nextIdx = self.nextIdx
			p = self.players_list[nextIdx]
			if aid == const.OP_DISCARD and self.can_chow(p.tiles, tile):	#能吃
				self.wait_idx= nextIdx
				self.wait_op = aid
				p.mb.waitForOperation(aid, [tile,])
			else:
				self.current_idx = nextIdx
				self.beginRound()

	#可以抢杠胡 玩家列表(顺序排列)
	def getKongWinList(self, idx, tile):
		wait_for_win_list = []
		for i in range(self.player_num - 1):
			ask_idx = (idx+i+1)%self.player_num
			p = self.players_list[ask_idx]
			tryTiles = list(p.tiles)
			tryTiles.append(tile)
			tryTiles = sorted(tryTiles)
			is_win, result, score = self.can_win(tryTiles, tile, const.OP_KONG_WIN, ask_idx)
			if is_win:
				wait_for_win_list.append({'idx':ask_idx, 'fromIdx':idx, 'op':const.OP_KONG_WIN, 'result':result, 'score':score, 'tile':tile})
		return wait_for_win_list

	#可以放炮胡 玩家列表(顺序排列)
	def getGiveWinList(self, idx, tile):
		wait_for_win_list = []
		for i in range(self.player_num - 1):
			ask_idx = (idx+i+1)%self.player_num
			p = self.players_list[ask_idx]
			tryTiles = list(p.tiles)
			tryTiles.append(tile)
			tryTiles = sorted(tryTiles)
			is_win, result, score = self.can_win(tryTiles, tile, const.OP_GIVE_WIN, ask_idx)
			if is_win:
				wait_for_win_list.append({'idx':ask_idx, 'fromIdx':idx, 'op':const.OP_GIVE_WIN, 'result':result, 'score':score, 'tile':tile})
		#玩家自己 财神单吊也是可以胡
		p = self.players_list[idx]
		if len(p.tiles) == 1 and p.tiles[0] in self.kingTiles:
			tryTiles = list(p.tiles)
			tryTiles.append(tile)
			tryTiles = sorted(tryTiles)
			is_win, result, score = self.can_win(tryTiles, tile, const.OP_GIVE_WIN, idx)
			if is_win:
				wait_for_win_list.append({'idx':idx, 'fromIdx':idx, 'op':const.OP_GIVE_WIN, 'result':result, 'score':score, 'tile':tile})
		return wait_for_win_list

	def get_init_client_dict(self):
		agent_d = {
			'nickname': "",
			'userId': 0,
			'head_icon': "",
			'ip': '0.0.0.0',
			'sex': 1,
			'idx': -1,
			'uuid': 0,
			'online': 1,
		}
		if self.is_agent and self.agent:
			d = self.agent.get_init_client_dict()
			agent_d.update(d)

		return {
			'roomID': self.roomID,
			'ownerId': self.owner_uid,
			'isAgent': self.is_agent,
			'agentInfo': agent_d,
			'dealerIdx': self.dealer_idx,
			'curRound': self.current_round,
			'curCircle' : self.current_circle,
			'maxRound': self.game_round,
			'player_num': self.player_num,
			'follow_state' : self.follow_state,
			'kong_state' : self.kong_state,
			'kong_draw_win_double' : self.kong_draw_win_double,
			'dragon_state' : self.dragon_state,
			'contract_state' : self.contract_state,
			'max_bet_num': self.max_bet_num,
			'player_base_info_list': [p.get_init_client_dict() for p in self.players_list if p is not None],
			'player_state_list': [1 if i in self.confirm_next_idx else 0 for i in range(self.player_num)],
		}

	def get_reconnect_room_dict(self, userId):
		dismiss_left_time = int(time.time() - self.dismiss_room_ts)
		if self.dismiss_room_ts == 0 or dismiss_left_time >= const.DISMISS_ROOM_WAIT_TIME:
			dismiss_left_time = 0

		idx = 0
		for p in self.players_list:
			if p and p.userId == userId:
				idx = p.idx
		waitAid = -1
		if self.wait_idx == idx and self.wait_op:
			waitAid = self.wait_op
		if self.state == const.STATE_PLAY:
			leftTileNum = len(self.tiles)
		else:
			if self.player_num == 2:
				leftTileNum = 103
			else:
				leftTileNum = 71
		return {
			'init_info' : self.get_init_client_dict(),
			'curPlayerSitNum': self.current_idx,
			'isPlayingGame': self.state,
			'player_state_list': [1 if i in self.confirm_next_idx else 0 for i in range(self.player_num)],
			'lastDiscardTile': 0 if not self.all_discard_tiles else self.all_discard_tiles[-1],
			'lastDrawTile' : self.players_list[idx].last_draw,
			'lastDiscardTileFrom': self.last_player_idx,
			'kingTiles' : self.kingTiles,
			'waitAid': waitAid,
			'last_kong_tile' : self.last_kong_tile,
			'searial_deal_num': self.searial_deal_num if self.searial_deal_num <= 4 else 1,
			'leftTileNum': leftTileNum,
			'betList': [p.bet for i,p in enumerate(self.players_list) if p is not None],
			'betState': self.players_list[idx].bet_state,
			'raceHourseState' : self.players_list[idx].race_horse_state,
			'applyCloseFrom': self.dismiss_room_from,
			'applyCloseLeftTime': dismiss_left_time,
			'applyCloseStateList': self.dismiss_room_state_list,
			'player_advance_info_list': [p.get_reconnect_client_dict(userId) for p in self.players_list if p is not None],
		}

	def broadcastEnterRoom(self, idx):
		new_p = self.players_list[idx]

		if self.is_agent == 1:
			if self.agent and self.agent.mb:
				self.agent.mb.othersEnterRoom(new_p.get_init_client_dict())

		for i, p in enumerate(self.players_list):
			if p is None:
				continue
			if i == idx:
				p.mb.enterRoomSucceed(self, idx)
			else:
				p.mb.othersEnterRoom(new_p.get_init_client_dict())

	def cal_score(self, idx, aid, score):
		if aid == const.OP_EXPOSED_KONG or aid == const.OP_CONCEALED_KONG:	#明杠 暗杠
			if self.kong_state:
				for i, p in enumerate(self.players_list):
					if p is not None:
						if i == idx:
							DEBUG_MSG('player {0} add kong score {1}'.format(i, score * (self.player_num -1)))
							p.addScore(score * (self.player_num -1))
						else:
							DEBUG_MSG('player {0} lose kong score {1}'.format(i, score))
							p.addScore(-score)
		elif aid == const.OP_DRAW_WIN or aid == const.OP_KONG_WIN or aid == const.OP_GIVE_WIN:		#自摸 抢杠 放炮	
			def checkIsContract(contractDict, dealer_idx):
				faceIdx = (dealer_idx + 1)%4
				beforeIdx = (dealer_idx + 3)%4
				contract = 0
				for op in contractDict:
					for idx in contractDict[op]:
						if idx == faceIdx or idx == dealer_idx:
							if op == const.OP_PONG:
								contract += 1
							elif op == const.OP_EXPOSED_KONG:
								contract += 2
							elif op == const.OP_GET_KONG:
								contract += 1
				return contract
			if self.contract_state and self.player_num == 4 and self.dealer_idx == idx and checkIsContract(self.players_list[(idx+3)%4].contractDict, idx) >= 3:
				# 三背算分
				DEBUG_MSG("contract cal score.")
				beforeIdx = (idx + 3)%4
				self.players_list[idx].addScore(score * 3 * (self.searial_deal_num * 2))
				self.players_list[beforeIdx].addScore(-score * 3 * (self.searial_deal_num * 2))
				DEBUG_MSG("contract settlement dealer {0} add score {1}".format(idx, score* 3) * (self.searial_deal_num * 2))
				DEBUG_MSG("contract settlement player {0} sub score {1}".format(beforeIdx, score* 3) * (self.searial_deal_num * 2))
				# 庄家买底分
				dealerBet = self.players_list[idx].bet
				self.players_list[idx].addScore(score * dealerBet * 3)
				self.players_list[beforeIdx].addScore(-score * dealerBet * 3)
				# 顶底分
				allLoseScore = 0
				for i, p in enumerate(self.players_list):
					if p is not None:
						if i == idx:
							continue
						allLoseScore += p.bet * score
						p.addScore(-p.bet * score)
				self.players_list[idx].addScore(allLoseScore)
			else:
				dealerWin = True if self.dealer_idx == idx else False
				#普通结算
				baseSubScore = 0
				for i, p in enumerate(self.players_list):
					if p is not None:
						if i != idx:
							if dealerWin:	# 庄家胡
								DEBUG_MSG("nomal settlement player {0} add score {1}".format(i, score * self.searial_deal_num * 2))
								baseSubScore += score * self.searial_deal_num * 2
								p.addScore(-score * self.searial_deal_num * 2)
							else:			# 闲家胡
								if i == self.dealer_idx: 	# 庄家输
									DEBUG_MSG("nomal settlement player {0} add score {1}".format(i, score * self.searial_deal_num * 2))
									baseSubScore += score * self.searial_deal_num * 2
									p.addScore(-score * self.searial_deal_num * 2)
								else:						# 闲家输
									DEBUG_MSG("nomal settlement player {0} add score {1}".format(i, score))
									baseSubScore += score
									p.addScore(-score)
				DEBUG_MSG("nomal settlement dealer {0} add score {1}".format(idx, baseSubScore))
				self.players_list[idx].addScore(baseSubScore)
								
				#底结算
				winnerBet = self.players_list[idx].bet
				if dealerWin: #庄家赢
					allLoseScore = 0
					for i, p in enumerate(self.players_list):
						if p is not None:
							if i != idx:
								allLoseScore += score * (winnerBet + p.bet)
								DEBUG_MSG('dealerWin player {0} lose score {1}.'.format(i, score * (winnerBet + p.bet)))
								p.addScore(-score * (winnerBet + p.bet))
					DEBUG_MSG("dealer player {0} add score {1}".format(idx, allLoseScore))
					self.players_list[idx].addScore(allLoseScore)
				else: #闲家赢
					dealerBet = self.players_list[self.dealer_idx].bet
					DEBUG_MSG('player win {0} add score {1}'.format(idx, score * (winnerBet + dealerBet)))
					DEBUG_MSG('player win {0} sub score {1}'.format(self.dealer_idx, score * (winnerBet + dealerBet)))
					self.players_list[idx].addScore(score * (winnerBet + dealerBet))
					self.players_list[self.dealer_idx].addScore(-score * (winnerBet + dealerBet))
		
			# 财神算分
			for i, p in enumerate(self.players_list):
				kingNum = sum([1 for t in p.tiles if t in self.kingTiles])
				DEBUG_MSG('player {0} has kingNum {1}.'.format(i,kingNum))
				if i == idx and score == 4:
					kingNum = kingNum * 2
				for j, m in enumerate(self.players_list):
					if i == j:
						m.addScore(kingNum * (self.player_num-1))
						DEBUG_MSG('player {0} add king score {1}'.format(j, kingNum * (self.player_num-1)))
					else:
						DEBUG_MSG('player {0} sub king score {1}'.format(j, kingNum))
						m.addScore(-kingNum)

	def roundEndCallback(self, avt_mb):
		""" 一局完了之后玩家同意继续游戏 """
		if self.state != const.STATE_READY:
			return
		idx = -1
		for i, p in enumerate(self.players_list):
			if p and p.userId == avt_mb.userId:
				idx = i
				break
		if idx not in self.confirm_next_idx:
			self.confirm_next_idx.append(idx)
			for p in self.players_list:
				if p and p.idx != idx:
					p.mb.readyForNextRound(idx)

		if len(self.confirm_next_idx) == self.player_num and self.isFull:
			if self.current_round == 0 and self.is_agent == 1 and self.agent:
				try:
					self.agent.mb.quitRoomSucceed()
					leave_tips = "您代开的房间已经开始游戏, 您已被请离.\n房间号【{}】".format(self.roomID)
					self.agent.mb.showTip(leave_tips)
				except:
					pass
			self.startPlaceBet()

	def record_round_result(self):
		# 玩家记录当局战绩
		d = datetime.fromtimestamp(time.time())
		round_result_d = {
			'date': '-'.join([str(d.year), str(d.month), str(d.day)]),
			'time': ':'.join([str(d.hour), str(d.minute)]),
			'round_record': [p.get_round_result_info() for p in self.origin_players_list if p],
		}

		# 第一局结束时push整个房间所有局的结构, 以后就增量push
		if self.current_round == 1:
			game_result_l = [[round_result_d]]
			for p in self.players_list:
				if p:
					p.record_all_result(game_result_l)
		else:
			for p in self.players_list:
				if p:
					p.record_round_game_result(round_result_d)

	def check_same_ip(self):
		ip_list = []
		for p in self.players_list:
			if p and p.mb and p.ip != '0.0.0.0':
				ip_list.append(p.ip)
			else:
				ip_list.append(None)

		tips = []
		checked = []
		for i in range(self.player_num):
			if ip_list[i] is None or i in checked:
				continue
			checked.append(i)
			repeat = []
			repeat.append(i)
			for j in range(i+1, self.player_num):
				if ip_list[j] is None or j in checked:
					continue
				if ip_list[i] == ip_list[j]:
					repeat.append(j)
			if len(repeat) > 1:
				name = []
				for k in repeat:
					checked.append(k)
					name.append(self.players_list[k].nickname)
				tip = '和'.join(name) + '有相同的ip地址'
				tips.append(tip)
		if tips:
			tips = '\n'.join(tips)
			# DEBUG_MSG(tips)
			for p in self.players_list:
				if p and p.mb:
					p.mb.showTip(tips)

	def apply_dismiss_room(self, avt_mb):
		""" 游戏开始后玩家申请解散房间 """
		self.dismiss_room_ts = time.time()
		src = None
		for i, p in enumerate(self.players_list):
			if p.userId == avt_mb.userId:
				src = p
				break

		# 申请解散房间的人默认同意
		self.dismiss_room_from = src.idx
		self.dismiss_room_state_list[src.idx] = 1

		self.dismiss_timer = self.addTimer(const.DISMISS_ROOM_WAIT_TIME, 0, const.TIMER_TYPE_DISMISS_WAIT)

		for p in self.players_list:
			if p and p.mb and p.userId != avt_mb.userId:
				p.mb.req_dismiss_room(src.idx)

	def vote_dismiss_room(self, avt_mb, vote):
		""" 某位玩家对申请解散房间的投票 """
		src = None
		for p in self.players_list:
			if p and p.userId == avt_mb.userId:
				src = p
				break

		self.dismiss_room_state_list[src.idx] = vote
		for p in self.players_list:
			if p and p.mb:
				p.mb.vote_dismiss_result(src.idx, vote)

		yes = self.dismiss_room_state_list.count(1)
		no = self.dismiss_room_state_list.count(2)
		if (self.player_num == 2 and yes >= 1) or yes >= 3:
			self.delTimer(self.dismiss_timer)
			self.dismiss_timer = None
			self.dropRoom()

		if (self.player_num == 2 and no >= 1) or no >= 2:
			self.delTimer(self.dismiss_timer)
			self.dismiss_timer = None
			self.dismiss_room_from = -1
			self.dismiss_room_ts = 0
			self.dismiss_room_state_list = [0,0,0,0]

	def notify_player_online_status(self, userId, status):
		src = -1
		for idx, p in enumerate(self.players_list):
			if p and p.userId == userId:
				p.online = status
				src = idx
				break

		if src == -1:
			return

		for idx, p in enumerate(self.players_list):
			if p and p.mb and p.userId != userId:
				p.mb.notifyPlayerOnlineStatus(src, status)
