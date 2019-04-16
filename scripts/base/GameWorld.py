# -*- coding: utf-8 -*-
import KBEngine
from KBEDebug import *
import Functor
import const
import time
import h1global
from urllib.parse import unquote
from LoggerManager import LoggerManager
from interfaces.GameObject import GameObject
from worldmembers.iFriends import iFriends
from worldmembers.iMail import iMail
from worldmembers.iGameManager import iGameManager
from worldmembers.iRoomManager import iRoomManager
from worldmembers.iPay import iPay

BROADCAST_NUM = 100

INTERVAL_TIME = 60 * 60

class GameWorld(KBEngine.Base,
                GameObject,
                iGameManager,
                iRoomManager,
                iPay,
                ):
	"""
	这是一个脚本层封装的空间管理器
	KBEngine的space是一个抽象空间的概念，一个空间可以被脚本层视为游戏场景、游戏房间、甚至是一个宇宙。
	"""
	def __init__(self):
		iGameManager.__init__(self)
		iRoomManager.__init__(self)
		
		self.dbid = self.databaseID
		self.activePlayers = []
		self.avatars = {}

		self.logger = LoggerManager()

		KBEngine.Base.__init__(self)
		GameObject.__init__(self)

		self.broadcastQueue = []
		self.broadcastTimer = None
		if self.serverStartTime == 0:
			self.serverStartTime = time.time()
		self.initGameWorld()
		self.world_notice = '#'
		# 不扣房卡的开关, 金钱之源, 慎重开启
		self.free_play = False
		# 开服之后的房卡消耗累积
		self.total_cards = 0
		return

	def initGameWorld(self):
		return

	def getServerStartTime(self):
		return self.serverStartTime
	
	def onTimer(self, tid, userArg):
		"""
		KBEngine method.
		引擎回调timer触发
		"""
		if userArg == const.TIMER_TYPE_BROADCAST:
			self.broadcastFunc()
		if self.isDestroyed:
			self.delTimer(tid)
		return

	'''刷新排行榜'''
	def refreshOnResetDay(self, ttime, tlocaltime):
		iMercenaryCall.refreshMercenaryCallPrice(self)
		
		self.sendRewardOnRank()
		self.lastResetDayTime = ttime
		return
			
	def loginToSpace(self, avatarEntity):
		"""
		defined method.
		某个玩家请求登陆到某个space中
		"""
		self.avatars[avatarEntity.id] = avatarEntity
	
	def logoutSpace(self, avatarID):
		"""
		defined method.
		某个玩家请求登出这个space
		"""
		if avatarID in self.avatars:
			del self.avatars[avatarID]

	def runFuncOnAllPlayers(self, num, funcs, *args):
		alist = list(self.avatars.keys())
		bn = 0
		en = BROADCAST_NUM if len(alist) > BROADCAST_NUM else len(alist)
		self.broadcastQueue.append(Functor.Functor(self.runFuncOnSubPlayers, bn, en, alist, num, funcs, *args))
		if self.broadcastTimer is not None:
			self.delTimer(self.broadcastTimer)
			self.broadcastTimer = None
		self.broadcastTimer = self.addTimer(0, 0, const.TIMER_TYPE_BROADCAST)


	def broadcastFunc(self):
		if self.broadcastTimer is not None:
			self.delTimer(self.broadcastTimer)
			self.broadcastTimer = None
		if self.broadcastQueue:
			func = self.broadcastQueue.pop()
			func()
			if len(self.broadcastQueue) > 0:
				self.broadcastTimer = self.addTimer(0.1, 0, const.TIMER_TYPE_BROADCAST)
				return

	def runFuncOnSubPlayers(self, bn, en, alist, num, funcs, *args):
		def getFuncInAvatar(avatar, num, funcs):
			if avatar is None:
				ERROR_MSG("GameWorld[%i].runFuncOnAllPlayers:avatar is None" % (self.id))
				return
			curFunc = avatar
			for count in range(num):
				curFunc = getattr(curFunc, funcs[count])
				if curFunc is None:
					ERROR_MSG("GameWorld[%i].runFuncOnAllPlayers: %s, %s is None" % (self.id, str(funcs), funcs[count]))
					return None
			return curFunc

		for i in range(bn, en):
			if alist[i] not in self.avatars or alist[i] in self.bots:
				continue
			avatarMailbox = self.avatars[alist[i]]
			curFunc = getFuncInAvatar(avatarMailbox, num, funcs)
			if curFunc is not None:
				curFunc(*args)

		if en >= len(alist):
			return

		bn = en
		en = (bn + BROADCAST_NUM) if len(alist) > (bn + BROADCAST_NUM) else len(alist)
		self.broadcastQueue.append(Functor.Functor(self.runFuncOnSubPlayers, bn, en, alist, num, funcs, *args))
		return

	def addOneUser(self, entityMailbox, userid):
		if userid == 0:
			self.userCount = self.userCount + 1
			entityMailbox.setUserId(self.userCount + 2134701)
		else:
			if userid not in self.activePlayers:
				self.activePlayers.append(userid)

	def callMethodOnAllAvatar(self, method_name, *args):
		for mb in self.avatars.values():
			func = getattr(mb, method_name, None)
			if func and callable(func):
				self.broadcastQueue.append(lambda avt_mb=mb: getattr(avt_mb, method_name)(*args))

		if self.broadcastTimer is not None:
			self.delTimer(self.broadcastTimer)
			self.broadcastTimer = None
		self.broadcastTimer = self.addTimer(0.1, 0, const.TIMER_TYPE_BROADCAST)


	def externalDataDispatcher(self, dataStr):
		DEBUG_MSG("externalDataDispatcher data = {}".format(dataStr))

		try:
			dataStr = unquote(dataStr)
			(dataStr, op_code) = dataStr.split("&9op=")
			op = int(op_code)
			if (op == 1):
				(dataStr, free) = dataStr.split("free=")
				free = int(free)
				self.free_play = (free == 1)
				DEBUG_MSG("set free_play = {0}".format(free))
			elif (op == 2):
				(dataStr, content) = dataStr.split("&2content=")
				(dataStr, count) = dataStr.split("1count=")
				count = int(count)
				if content != '#':
					DEBUG_MSG("call recvWorldNotice content = {0}, count = {1}".format(content, count))
					self.callMethodOnAllAvatar("recvWorldNotice", content, count)
			elif (op == 3):
				(dataStr, proxy) = dataStr.split("&3proxy=")
				(dataStr, uid) = dataStr.split("&2uid=")
				uid = int(uid)
				(dataStr, cards) = dataStr.split("1cards=")
				cards = int(cards)
				self.userPaySuccess([proxy, uid, cards])
			else:
				DEBUG_MSG("Error: externalDataDispatcher, no this op={}".format(op_code))
		except:
			DEBUG_MSG("Error: externalDataDispatcher exception {}".format(dataStr))

