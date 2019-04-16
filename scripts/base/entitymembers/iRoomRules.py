# -*- coding: utf-8 -*-

import KBEngine
from KBEDebug import *
import utility
import const
import copy
import random

class iRoomRules(object):

	def __init__(self):
		# 房间的牌堆
		self.tiles = []
		self.meld_dict = dict()

	def initTiles(self):
		# 万 条 筒
		self.tiles = const.CHARACTER * 4 + const.BAMBOO * 4 + const.DOT * 4
		# 东 西 南 北
		self.tiles += [const.WIND_EAST, const.WIND_SOUTH, const.WIND_WEST, const.WIND_NORTH] * 4
		# 中 发
		if self.dragon_state == 1:
			self.tiles += [const.DRAGON_RED, const.DRAGON_GREEN] * 4
		# 白
		self.tiles += [const.DRAGON_WHITE] * 4
		DEBUG_MSG(self.tiles)
		self.shuffle_tiles()

	def shuffle_tiles(self):
		random.shuffle(self.tiles)

	def deal(self, kingTypeNum = 1):
		""" 发牌 """
		for i in range(const.INIT_TILE_NUMBER):
			for j in range(self.player_num):
				self.players_list[j].tiles.append(self.tiles[j])
			self.tiles = self.tiles[self.player_num:]

		for i, p in enumerate(self.players_list):
			DEBUG_MSG("deal{0}:{1}".format(i, p.tiles))

		""" 财神 """
		self.kingTiles = []
		for i in range(len(self.tiles)):
			if i >= kingTypeNum:
				self.tiles = self.tiles[i:]
				break
			t = self.tiles[i]
			self.kingTiles.append(t)
		DEBUG_MSG("kingTiles:{0},leftTiles:len{1}, {2}".format(self.kingTiles, len(self.tiles), self.tiles))

		""" 整理 """
		for i in range(self.player_num):
			self.players_list[i].tidy(self.kingTiles)

	def swapTileToTop(self, tile):
		if tile in self.tiles:
			tileIdx = self.tiles.index(tile)
			self.tiles[0], self.tiles[tileIdx] = self.tiles[tileIdx], self.tiles[0]

	def winCount(self):
		pass
	
	def can_cut_after_kong(self):
		return True

	def can_discard(self, tiles, t, idx):
		if t in tiles:
			if t in self.kingTiles:
				return False
			tile2NumDict = utility.getTile2NumDict(tiles)
			single_dragon_wind_num = 0
			for key in tile2NumDict:
				val = tile2NumDict[key]
				if key in const.WORDS and key not in self.kingTiles and val <= 1:
					single_dragon_wind_num += 1
				elif key == const.DRAGON_WHITE and self.kingTiles[0] in const.WORDS and val <= 1:
					single_dragon_wind_num += 1
			# 白板 并且 财神 是 字
			if t == const.DRAGON_WHITE and self.kingTiles[0] in const.WORDS:
				return True
			if single_dragon_wind_num > 0 and t not in const.WORDS:
				return False
			return True
		return False

	def getKingTilesNum(self, tiles):
		tile2NumDict = utility.getTile2NumDict(tiles)
		kingTilesNum = 0
		for k in self.kingTiles:
			if k in tile2NumDict:
				kingTilesNum += tile2NumDict[k]
		return kingTilesNum

	#温州麻将 白板代替财神 可以吃
	def can_chow(self, tiles, t):
		if len(tiles) == 4 and self.getKingTilesNum(tiles) == 2: # 手上剩4张牌 2张是财神，不能吃碰
			return False
		if t in self.kingTiles: #这张牌是财神
			return False
		if t >= 30 and t != const.DRAGON_WHITE: #这张牌是字牌并且不是白板
			return False
		if t == const.DRAGON_WHITE and len(self.kingTiles) > 0: # 白板当财神用
			t = self.kingTiles[0]
			if t >= 30:
				return False
		neighborTileNumList = [0, 0, 1, 0, 0]
		for i in range(len(tiles)):
			tile = tiles[i]
			if tile in self.kingTiles:
				continue
			if tile == const.DRAGON_WHITE and len(self.kingTiles) > 0: # 白板当财神用
				tile = self.kingTiles[0]
			if tile - t >= -2 and tile - t <= 2:
				neighborTileNumList[tile - t + 2] += 1
		for i in range(0,3):
			tileNum = 0
			for j in range(i,i+3):
				if neighborTileNumList[j] > 0:
					tileNum += 1
				else:
					break
			if tileNum >= 3:
				return True
		return False

	def can_chow_one(self, tiles, tile_list):
		""" 能吃 """
		if len(tiles) == 4 and self.getKingTilesNum(tiles) == 2: # 手上剩4张牌 2张是财神，不能吃碰
			return False
		for t in self.kingTiles:
			if t in tile_list:
				return False
		for t in tile_list:
			if t >= 30 and t != const.DRAGON_WHITE:
				return False
		if sum([1 for i in tiles if i == tile_list[1]]) >= 1 and sum([1 for i in tiles if i == tile_list[2]]) >= 1:
			DEBUG_MSG("can_chow_one{}".format(str(tile_list)))
			insteadList = copy.copy(tile_list)
			for idx in range(len(insteadList)): # 白板当财神用
				if insteadList[idx] == const.DRAGON_WHITE and len(self.kingTiles) > 0:
					insteadList[idx] = self.kingTiles[0]
			insteadList = sorted(insteadList)
			if (insteadList[2] + insteadList[0])/2 == insteadList[1] and insteadList[2] - insteadList[0] == 2:
				return True
		return False

	def can_pong(self, tiles, t):
		""" 能碰 """
		if len(tiles) == 4 and self.getKingTilesNum(tiles) == 2: # 手上剩4张牌 2张是财神，不能吃碰
			return False
		if t in self.kingTiles:
			return False
		return sum([1 for i in tiles if i == t]) >= 2

	def can_exposed_kong(self, tiles, t):
		""" 能明杠 """
		if t in self.kingTiles:
			return False
		return utility.get_count(tiles, t) == 3

	def can_self_exposed_kong(self, player, t):
		""" 自摸的牌能够明杠 """
		if t in self.kingTiles:
			return False
		for op in player.op_r:
			if op[0] == const.OP_PONG and op[1][0] == t:
				return True
		return False

	def can_concealed_kong(self, tiles, t):
		""" 能暗杠 """
		if t in self.kingTiles:
			return False
		return utility.get_count(tiles, t) == 4

	def can_kong_wreath(self, tiles, t):
		return False
		# if t in tiles and (t in const.SEASON or t in const.FLOWER):
		# 	return True
		# return False

	def can_wreath_win(self, wreaths):
		return False
		# if len(wreaths) == len(const.SEASON) + len(const.FLOWER):
		# 	return True
		# return False

	# def can_win(self, tiles):
	# 	""" 能胡牌 """
	# 	if len(tiles) % 3 != 2:
	# 		return False

	# 	tiles = sorted(tiles)
	# 	chars, bambs, dots, dragon_red = self.classify_tiles(tiles)

	# 	c_need1 = utility.meld_only_need_num(chars, self.meld_dict)
	# 	c_need2 = utility.meld_with_pair_need_num(chars, self.meld_dict)
	# 	if c_need1 > dragon_red and c_need2 > dragon_red:
	# 		return False

	# 	b_need1 = utility.meld_only_need_num(bambs, self.meld_dict)
	# 	b_need2 = utility.meld_with_pair_need_num(bambs, self.meld_dict)
	# 	if b_need1 > dragon_red and b_need2 > dragon_red:
	# 		return False

	# 	d_need1 = utility.meld_only_need_num(dots, self.meld_dict)
	# 	d_need2 = utility.meld_with_pair_need_num(dots, self.meld_dict)
	# 	if d_need1 > dragon_red and d_need2 > dragon_red:
	# 		return False

	# 	if  c_need2 + b_need1 + d_need1 <= dragon_red or\
	# 		c_need1 + b_need2 + d_need1 <= dragon_red or\
	# 		c_need1 + b_need1 + d_need2 <= dragon_red:
	# 		return True
	# 	return False

	# # 是否包牌
	# def checkIsPack(self, idx_1, idx_2):
	# 	if idx_1 == idx_2 or idx_1 > len(self.players_list)-1 or idx_2 > len(self.players_list)-1:
	# 		return False
	# 	p1_op_r = self.players_list[idx_1].op_r
	# 	p2_op_r = self.players_list[idx_2].op_r
	# 	p1_num_List = [0] * 4
	# 	p2_num_List = [0] * 4
	# 	p1_num,p2_num = (0, 0)
	# 	for i, record in enumerate(p1_op_r)
	# 		if record[2] == idx_2 and record[0] in [const.OP_PONG, const.OP_EXPOSED_KONG]:
	# 			p1_num += 1
	# 			if p1_num >= 3:
	# 				return True
	# 	for i, record in enumerate(p2_op_r)
	# 		if record[2] == idx_1 and record[0] in [const.OP_PONG, const.OP_EXPOSED_KONG]:
	# 			p2_num += 1
	# 			if p2_num >= 3:
	# 				return True
	# 	return False

	# def classify_tiles(self, tiles):
	# 	chars = []
	# 	bambs = []
	# 	dots  = []
	# 	dragon_red = 0
	# 	for t in tiles:
	# 		if t in const.CHARACTER:
	# 			chars.append(t)
	# 		elif t in const.BAMBOO:
	# 			bambs.append(t)
	# 		elif t in const.DOT:
	# 			dots.append(t)
	# 		elif t == const.DRAGON_RED:
	# 			dragon_red += 1
	# 		else:
	# 			DEBUG_MSG("iRoomRules classify tiles failed, no this tile %s"%t)
	# 	return chars, bambs, dots, dragon_red

	def can_win(self, handTiles, finalTile, win_op, idx):
		p = self.players_list[idx]
		canWin, result, winMul = False, [0] * 9, 0
		result[0] = win_op
		if p.raceHorse and win_op == const.OP_GIVE_WIN and win_op == const.OP_KONG_WIN: #跑马必须自摸胡
			return canWin, result, winMul
		if len(handTiles) % 3 == 2:
			classifyList = utility.classifyTiles(handTiles, self.kingTiles)
			# 财神
			curKingTiles = classifyList[0]
			# 白板
			curDragonWhite = classifyList[1]
			# 非财神
			handTilesButKing = []
			for i in range(1, len(classifyList)):
				handTilesButKing.extend(classifyList[i])
			# 非白板
			handTilesButWhite = []
			handTilesButWhite.extend(classifyList[0])
			for i in range(2, len(classifyList)):
				handTilesButWhite.extend(classifyList[i])
			# 非财神 非白板
			handTilesButKingWhite = []
			for i in range(2, len(classifyList)):
				handTilesButKingWhite.extend(classifyList[i])
			#/****************检查胡******************/
			'''三财神'''
			if len(curKingTiles) == 3:
				canWin = True
				result[1] = 1
				#至少两倍
				winMul = 2
				# 天胡
				if win_op == const.OP_DRAW_WIN and idx == self.dealer_idx and len(self.op_record) == 1:
					result[3] = 1
					winMul = 4 if winMul < 4 else winMul
				# 地胡
				discardNum = 0
				for i in range(0, len(self.op_record))[::-1]:
					if self.op_record[i][1] != self.dealer_idx:
						discardNum = 0
						break
					if discardNum > 1:
						break
					if self.op_record[i][0] == const.OP_DISCARD:
						discardNum += 1
				if win_op == const.OP_GIVE_WIN and idx != self.dealer_idx and discardNum == 1:
					result[4] = 1
					winMul = 4 if winMul < 4 else winMul
				#抢杠胡 算硬胡
				if win_op == const.OP_KONG_WIN:
					result[7] = 1
					winMul = 2 if winMul < 2 else winMul
			'''八对'''
			if len(handTiles) == 17 and utility.checkIs8Pairs(handTilesButKing, len(curKingTiles)):
				canWin = True
				result[2] = 1
				# 倍数相关
				# 软8对 硬8对
				if len(curKingTiles) > 0:
					if utility.checkIs8Pairs(handTiles, 0): # 硬8对(有财神 且归位)
						winMul = 4
						result[7] = 1
					else:									# 软8对(有财神 且不归位)
						winMul = 2 
				else:
					winMul = 4								# 硬8对(无财神)
					result[7] = 1
				# 自摸
				if win_op == const.OP_DRAW_WIN:
					winMul = 2 if winMul < 2 else winMul
				# 三财神
				if result[1] == 1:
					winMul = 4 if winMul < 4 else winMul
				# 天胡
				if win_op == const.OP_DRAW_WIN and idx == self.dealer_idx and len(self.op_record) == 1:
					result[3] = 1
					winMul = 4 if winMul < 4 else winMul
				# 地胡
				discardNum = 0
				for i in range(0, len(self.op_record))[::-1]:
					if self.op_record[i][1] != self.dealer_idx:
						discardNum = 0
						break
					if discardNum > 1:
						break
					if self.op_record[i][0] == const.OP_DISCARD:
						discardNum += 1
				if win_op == const.OP_GIVE_WIN and idx != self.dealer_idx and discardNum == 1:
					result[4] = 1
					winMul = 4 if winMul < 4 else winMul

			elif utility.canNormalWin(handTilesButKingWhite, self.kingTiles[0], len(curKingTiles), len(curDragonWhite)):
				'''非八对'''
				canWin = True
				winMul = 1 if winMul < 1 else winMul
				# 自摸
				if win_op == const.OP_DRAW_WIN:
					winMul = 2 if winMul < 2 else winMul
				# 三财神
				if len(curKingTiles) == 3:
					winMul = 4 if winMul < 4 else winMul
				# 天胡
				if win_op == const.OP_DRAW_WIN and idx == self.dealer_idx and len(self.op_record) == 1:
					result[3] = 1
					winMul = 4 if winMul < 4 else winMul
				# 地胡
				discardNum = 0
				for i in range(0, len(self.op_record))[::-1]:
					if self.op_record[i][1] != self.dealer_idx:
						discardNum = 0
						break
					if discardNum > 1:
						break
					if self.op_record[i][0] == const.OP_DISCARD:
						discardNum += 1

				if win_op == const.OP_GIVE_WIN and idx != self.dealer_idx and discardNum == 1:
					result[4] = 1
					winMul = 4 if winMul < 4 else winMul
				# 杠上开花
				if win_op == const.OP_DRAW_WIN and utility.checkIsKongDrawWin(p.op_r):
					result[5] = 1
					if self.kong_draw_win_double:
						winMul = 4 if winMul < 4 else winMul
					else:
						winMul = 2 if winMul < 2 else winMul
				# 财神单吊(全球神)
				if win_op == const.OP_GIVE_WIN and self.last_player_idx == idx and len(handTiles) == 2 and (handTiles[0] != handTiles[-1] or handTiles[0] in self.kingTiles):
					result[6] = 1
					winMul = 4 if winMul < 4 else winMul
				# 没有财神 或者 财神归位
				if win_op == const.OP_KONG_WIN or len(curKingTiles) <= 0 or utility.canNormalWin(handTilesButWhite, self.kingTiles[0], 0, len(curDragonWhite)):
					result[7] = 1
					winMul = 2 if winMul < 2 else winMul
				# 碰碰胡
				if utility.checkIsPongPongWin(handTilesButKing, p.upTiles, len(curKingTiles)):
					result[8] = 1
					winMul = 4 if winMul < 4 else winMul
		DEBUG_MSG("can_win==>:{0},{1},{2}".format(canWin, str(result), str(winMul)))
		return canWin, result, winMul