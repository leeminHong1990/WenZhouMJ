# -*- coding: utf-8 -*-
import KBEngine
import random
import time
import math
import const
from LoggerManager import LoggerManager
from KBEDebug import *
from interfaces.GameObject import GameObject
from avatarmembers.iBase import iBase
from avatarmembers.iRoomOperation import iRoomOperation
from avatarmembers.iAchievement import iAchievement
import utility

class Avatar(KBEngine.Proxy,
			GameObject,
			iBase, iRoomOperation, iAchievement):
	"""
	角色实体
	"""
	def __init__(self):
		KBEngine.Proxy.__init__(self)

		self.logger = LoggerManager()
		self.logger.set_user_info({"entity_id" : self.id, "account_id": self.accountName, 
			"avatar_uuid" : self.uuid, "avatar_name" : self.name, "avatar_user_id" : self.userId})

		GameObject.__init__(self)
		iBase.__init__(self)
		iRoomOperation.__init__(self)
		iAchievement.__init__(self)

		self.accountEntity = None
		self._destroyTimer = 0
		self.is_reconnect = False
		self.ip = '0.0.0.0'
		# if self.uuid != 0:
		# 	KBEngine.globalData["GameWorld"].addUUID2Pid(self.name, self.uuid, self.id)

	def getAvatarInfo(self):
		info = {
			"uuid" : self.uuid,
			"uid": self.userId,
			"cards": self.cards,
			"ip": self.ip,
		}
		return info

	'''初始化Avatar'''
	def initAvatar(self):
		self.extrace_ip()
		iBase.initBase(self)
		iAchievement.initAchievement(self)

		self.initFinish()
		KBEngine.globalData['GameWorld'].addOneUser(self, self.userId)
		if self.is_reconnect and self.room:
			# 如果需要断线重连, 则进行处理
			self.client and self.client.beginGame(1)
			self.process_reconnection()
			self.room.notify_player_online_status(self.userId, 1)
			self.is_reconnect = False
		else:
			self.client and self.client.beginGame(0)

		# 全服公告
		world_notice = KBEngine.globalData["GameWorld"].world_notice
		if world_notice and world_notice != '#':
			self.recvWorldNotice(world_notice, 3)

	def extrace_ip(self):
		""" 抽取ip """
		if getattr(self, 'client', None):
			s = str(self.client)
			s = s.split(',')
			s = s[-1]
			s = s.split(':')
			self.ip = s[1]

	'''刷新每日任务'''
	def refreshOnResetDay(self, ttime, tlocaltime):
		# iPVP.refreshPVP(self, ttime, tlocaltime)
		# iMail.refreshMail(self)
		self.lastResetDayTime = ttime
		return

	'''注销'''
	def logout(self):
		self.client and self.client.closeClient()
		self.destroySelf()
		self.logger.log("LogOutInfo", {"logout_type" : "注销"})

	def initFinish(self):
		DEBUG_MSG("game history = {}".format(self.game_history))
		self.client and self.client.pushGameRecordList(self.game_history)
		self.lastLoginTime = time.time()
		DEBUG_MSG("Avatar[%i] initFinish, %f" % (self.id, self.lastLoginTime))
		return

	def updateUserInfo(self, info):
		name = info['nickname']
		self.name = utility.filter_emoji(name)
		self.head_icon = info['head_icon']
		self.sex = info['sex']
		self.userId = info['userId'] if info['userId'] > 0 else self.userId
		DEBUG_MSG("Avatar client call updateUserInfo:{}".format(info))

	def onTimer(self, tid, userArg):
		if userArg == const.TIMER_TYPE_DESTROY:
			self.delTimer(tid)
			self.destroySelf()

	def onEnterWorld(self):
		"""
		KBEngine method.
		这个entity已经进入世界了
		"""
		DEBUG_MSG("Avatar[%i] onEnterWorld. mailbox:%s" % (self.id, self.client))
		return

	def onLeaveWorld(self):
		"""
		KBEngine method.
		这个entity将要离开世界了
		"""
		DEBUG_MSG("Avatar[%i] onLeaveWorld. mailbox:%s" % (self.id, self.client))
		return

	def onEntitiesEnabled(self):
		"""
		KBEngine method.
		该entity被正式激活为可使用， 此时entity已经建立了client对应实体， 可以在此创建它的
		cell部分。
		"""
		DEBUG_MSG("Avatar[%i] entities enable. mailbox:%s" % (self.id,self.client))
		KBEngine.globalData["GameWorld"].loginToSpace(self)
		self.logger.log("Login", {})

		# 将延时的timer关掉
		if self._destroyTimer:
			self.delTimer(self._destroyTimer)

		self.initAvatar()

		
	def onGetCell(self):
		"""
		KBEngine method.
		entity的cell部分实体被创建成功
		"""
		DEBUG_MSG('Avatar::onGetCell: %s' % self.cell)

	def destroySelf(self):
		""" 准备销毁自身, 但需要根据是否在房间来做断线重连 """
		self.lastLoginTime = time.time()
		DEBUG_MSG("Avatar[%i] destroySelf, %f" % (self.id, self.lastLoginTime))
		# if self.uuid != 0:
		# 	KBEngine.globalData['GameWorld'].delUUID2Pid(self.name, self.uuid, self.id)

		if self.room is not None:
			#如果已经在房间中并且房间游戏已经开始, 则不销毁avatar, 等待其断线重连
			self.is_reconnect = True
			self.room.notify_player_online_status(self.userId, 0)
			return False

		# 如果帐号ENTITY存在 则也通知销毁它
		# DEBUG_MSG("Avatar{0} want to destroy account {1}".format(self.id, self.accountEntity))
		if self.accountEntity is not None:
			self.accountEntity.activeCharacter = None
			# self.accountEntity.onClientDeath()
			self.accountEntity = None
			# if time.time() - self.accountEntity.relogin > 1:
			# 	self.accountEntity.activeCharacter = None
			# 	self.accountEntity.destroy()
			# 	self.accountEntity = None
			# else:
			# 	DEBUG_MSG("Avatar[%i] destroySelf: relogin =%i" % (self.id, time.time() - self.accountEntity.relogin))

		DEBUG_MSG("self.room is None, We will destroy")
		# 销毁world中的avatar
		KBEngine.globalData["GameWorld"].logoutSpace(self.id)

		self.logger.log("LogOut", {})

		DEBUG_MSG("Avatar[%i].destroyBase")
		# 销毁base
		self.destroy()
		return True


	def onClientDeath(self):
		"""
		KBEngine method.
		entity丢失了客户端实体
		"""
		DEBUG_MSG("Avatar[%i] onClientDeath:" % self.id)
		# 防止正在请求创建cell的同时客户端断开了， 我们延时一段时间来执行销毁cell直到销毁base
		# 这段时间内客户端短连接登录则会激活entity
		# 这里有点问题, 现在直接销毁
		self.destroySelf()
		# self._destroyTimer = self.addTimer(30, 0, const.TIMER_TYPE_DESTROY)
		self.logger.log("LogOutInfo", {"logout_type" : "客户端丢失"})

	def onClientGetCell(self):
		"""
		KBEngine method.
		客户端已经获得了cell部分实体的相关数据
		"""
		DEBUG_MSG("Avatar[%i].onClientGetCell:%s" % (self.id, self.client))

	def onDestroyTimer(self, tid, tno):
		DEBUG_MSG("Avatar::onDestroyTimer: %i, tid:%i, arg:%i" % (self.id, tid, tno))
		self.destroySelf()


	def setNameByClient(self, name):
		self.name = name[1:]
		self.cell.setName(self.name)
		# add to Cache
		KBEngine.globalData['GameWorld'].updateCachedInfo(self.uuid, {'name':self.name})

	def setGenderByClient(self, gender):
		self.gender = gender
		self.cell.setGender(gender)
		# add to Cache
		KBEngine.globalData['GameWorld'].updateCachedInfo(self.uuid, {'gender':self.gender})
		return

	def getNameByClient(self, uuid):
		KBEngine.globalData['GameWorld'].sendNameToClient(self, uuid)
		return

	def insertRobotFail(self):
		KBEngine.globalData["GameWorld"].insertRobotFail(self.id)

	def setDeviceInfo(self, deviceInfoStr):
		deviceInfoList = deviceInfoStr.split('_')
		if len(deviceInfoList) == 9:
			deviceInfo = {'ip': deviceInfoList[0], 'device_model': deviceInfoList[1], 'os_name': deviceInfoList[2], 'os_ver': deviceInfoList[3], 'udid': deviceInfoList[4], \
							'app_ver': deviceInfoList[5], 'network': deviceInfoList[6], 'device_height': deviceInfoList[7], 'device_width': deviceInfoList[8]}
			self.logger.set_device_info(deviceInfo)

	def setUserId(self, userId):
		self.userId = userId

	def addCards(self, num, reason='proxy_charge'):
		if num < 0:
			return False
		self.cards += num
		record_str = 'player{0}-{1} addCards by {2}'.format(self.userId, self.name, reason)
		INFO_MSG(record_str)
		self.client and self.client.pushRoomCard(self.cards)
		return True

	def useCards(self, num, reason = 'create_room'):
		if self.cards < num:
			return False
		# 免费时间内, 不扣房卡
		if KBEngine.globalData["GameWorld"].free_play:
			return

		self.cards -= num
		KBEngine.globalData["GameWorld"].total_cards += num
		record_str = 'player{0}-{1} use {2} cards by {3}'.format(self.userId, self.name, num, reason)
		INFO_MSG(record_str)
		self.client and self.client.pushRoomCard(self.cards)
		return True

	def showTip(self, tip):
		DEBUG_MSG("call showTip: {}".format(tip))
		if getattr(self, 'client', None):
			self.client.showTip(tip)

	def recvWorldNotice(self, notice_text, num):
		""" 全服公告 """
		if notice_text and self.client:
			self.client.recvWorldNotice(notice_text, int(num))
		else:
			DEBUG_MSG("recvWorldNotice: {}".format(notice_text))
