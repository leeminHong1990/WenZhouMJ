# -*- coding: utf-8 -*-
import random
import math
import time
import KBEngine
import const
from KBEDebug import *

class iCache:
	def __init__(self):
		self.uuid2pid = {}
		self.accountName2pid = {}
		self.cachedInfos = {}
		# SELECT sm_name,sm_wealth FROM const.DB_NAME.tbl_Avatar;
		def queryDatabaseCallBack(result, num, error):
			if error is None:
				if result is not None:
					DEBUG_MSG("result is not None, len(result)=%s, num=%s" % (len(result), num))
					for item in result:
						DEBUG_MSG("sm_uuid: %i sm_name: %s, sm_wealth: %i " % (int(item[0]), str(item[1]), int(item[2])))
						self.cachedInfos[int(item[0])] = {
						'uuid':int(item[0]),
						'name':str(item[1], "utf-8"), 
						 'characterNum':int(item[2]), 
						 'gender':int(item[3]), 
						 'userId':int(item[4]),
						 'dbid':int(item[5]),
						 'curPower':int(item[6]),
						 'blockFriends':int(item[7]),
						 }
				else:
					ERROR_MSG("queryDatabaseCallBack result is None. result=%s, num=%s, error=%s" % (result, num, error))
			else:
				ERROR_MSG("queryDatabaseCallBack error=%s" % (error))
		KBEngine.executeRawDatabaseCommand("SELECT `sm_uuid`,`sm_name`, `sm_characterNum`, \
			`sm_gender`, `sm_userId`, `id`, `sm_curPower`, `sm_blockFriends` FROM "+const.DB_NAME+".tbl_Avatar;", queryDatabaseCallBack)

		return

	def updateCachedInfo(self, uuid, dic):
		DEBUG_MSG("updateCachedInfo --> uuid:%i, dic:%s" % (uuid, str(dic)))
		if uuid in self.cachedInfos:
			for key in dic:
				self.cachedInfos[uuid][key] = dic[key]
		else:
			self.cachedInfos[uuid] = dict(dic)

	def addUUID2Pid(self, accountName, uuid, pid):
		DEBUG_MSG("addUUID2Pid --> accountName %s, uuid:%i, pid:%i" % (accountName, uuid, pid))
		self.uuid2pid[uuid] = pid
		self.accountName2pid[accountName] = pid


	def delUUID2Pid(self, accountName, uuid, pid):
		DEBUG_MSG("delUUID2Pid --> accountName %s, uuid:%i, pid:%i" % (accountName, uuid, pid))
		if uuid in self.uuid2pid:
			del self.uuid2pid[uuid]
		if accountName in self.accountName2pid:
			del self.accountName2pid[accountName]


	def getCachedInfo(self, uuid):
		if uuid not in self.cachedInfos:
			return None
		cache = self.cachedInfos[uuid]
		info = {}
		info["uuid"] = cache["uuid"]
		info["name"] = cache["name"]
		info["gender"] = cache["gender"]
		info["userId"] = cache["userId"]
		info["characterNum"] = cache["characterNum"]
		info["curPower"] = cache["curPower"]
		info["blockFriends"] = cache["blockFriends"]
		info["pid"] = 0
		if uuid in self.uuid2pid:
			info["pid"] = self.uuid2pid[uuid]
		return info


	def sendNameToClient(self, avatar, uuid):
		avatar.client.getNameFromServer(uuid, self.cachedInfos[uuid]['name'])
		return

	def onTimer(self, id, userarg):
		pass

	def buildPlayerInfoList(self, uuidList):
		infoList = []
		for uuid in uuidList:
			if uuid in self.cachedInfos:
				DEBUG_MSG("Cache[%i], get: uuid, %i" % (self.id, uuid))
				info = self.getCachedInfo(uuid)
				if info is not None:
					infoList.append(info)
			else:
				WARNING_MSG("Cache[%i], buildPlayerInfoList: not has avatar uuid: %i" % (self.id, uuid))
		DEBUG_MSG("Cache[%i], buildPlayerInfoList: %s" % (self.id, str(infoList)))
		return infoList

	def pushPlayerInfoListToClient(self, avatarMailbox, uuidList, plstId):
		DEBUG_MSG("Cache[%i], pushPlayerInfoListToClient: eid, %i %s" % (self.id, avatarMailbox.id, str(uuidList)))
		avatarMailbox.client.pushPlayerInfoList(self.buildPlayerInfoList(uuidList), plstId)
		return

	def getCachedFriendInfo(self, uuid):
		if uuid not in self.cachedInfos:
			return None
		cache = self.cachedInfos[uuid]
		info = {}
		info["uuid"] = cache["uuid"]
		info["name"] = cache["name"]
		info["curPower"] = cache["curPower"]
		info["vipLevel"] = 0
		return info

	def buildFriendInfoList(self, uuidList):
		infoList = []
		for uuid in uuidList:
			if uuid in self.cachedInfos:
				DEBUG_MSG("Cache[%i], get: uuid, %i" % (self.id, uuid))
				info = self.getCachedFriendInfo(uuid)
				if info is not None:
					infoList.append(info)
			else:
				WARNING_MSG("Cache[%i], buildFriendInfoList: not has avatar uuid: %i" % (self.id, uuid))
		DEBUG_MSG("Cache[%i], buildFriendInfoList: %s" % (self.id, str(infoList)))
		return infoList

	def getPidToEntityByAccountName(self, accountName):
		pid = 0
		if accountName in self.accountName2pid:
			pid = self.accountName2pid[accountName]
		self.sendPidToEntityByAccountName(pid, accountName)


	def getPidToPayCenterByUUID(self, uuid, sid):
		pid = 0
		if uuid in self.uuid2pid:
			pid = self.uuid2pid[uuid]
		self.sendPidToPayCenter(pid, uuid, sid)

	def getPidToEntityByUUID(self, uuid):
		pid = 0
		if uuid in self.uuid2pid:
			pid = self.uuid2pid[uuid]
		self.sendPidToEntityByUUID(pid, uuid)

	def getPidByFriend(self, fromuuid, uuid, typeId):
		pid = 0
		if uuid in self.uuid2pid:
			pid = self.uuid2pid[uuid]
		if uuid not in self.cachedInfos:
			WARNING_MSG("Cache[%i], getPidByFriend: not has avatar uuid in cachedInfos: %i" % (self.id, uuid))
			return
		dbid = self.cachedInfos[uuid]["dbid"]
		self.sendPidToFriend(fromuuid, pid, dbid, typeId)

	def getPidByUUID(self, uuid):
		if uuid not in self.uuid2pid:
			return 0
		else:
			return self.uuid2pid[uuid]

	def getPidByMailUID(self, uid, mail):
		if uid not in self.userId2uuid:
			WARNING_MSG("Cache[%i], getPidByMailUID: uid not has uuid in cachedInfos: %i" % (self.id, uid))
			return
			
		uuid = self.userId2uuid[uid]
		pid = 0
		if uuid in self.uuid2pid:
			pid = self.uuid2pid[uuid]
		if uuid not in self.cachedInfos:
			WARNING_MSG("Cache[%i], getPidByMailUID: not has avatar uuid in cachedInfos: %i" % (self.id, uuid))
			return
		dbid = self.cachedInfos[uuid]["dbid"]
		self.sendPidToMail(pid, dbid, mail)

	def getPidByMail(self, uuid, mail):
		pid = 0
		if uuid in self.uuid2pid:
			pid = self.uuid2pid[uuid]
		if uuid not in self.cachedInfos:
			WARNING_MSG("Cache[%i], getPidByMail: not has avatar uuid in cachedInfos: %i" % (self.id, uuid))
			return
		dbid = self.cachedInfos[uuid]["dbid"]
		self.sendPidToMail(pid, dbid, mail)

	def getPidByFriendGiftUID(self, uid, mail):
		if uid not in self.userId2uuid:
			WARNING_MSG("Cache[%i], getPidByFriendGiftUID: uid not has uuid in cachedInfos: %i" % (self.id, uid))
			return
			
		uuid = self.userId2uuid[uid]
		pid = 0
		if uuid in self.uuid2pid:
			pid = self.uuid2pid[uuid]
		if uuid not in self.cachedInfos:
			WARNING_MSG("Cache[%i], getPidByFriendGiftUID: not has avatar uuid in cachedInfos: %i" % (self.id, uuid))
			return
		dbid = self.cachedInfos[uuid]["dbid"]
		self.sendPidToFriendGift(pid, dbid, mail)

	def getPidByFriendGift(self, uuid, mail):
		pid = 0
		if uuid in self.uuid2pid:
			pid = self.uuid2pid[uuid]
		if uuid not in self.cachedInfos:
			WARNING_MSG("Cache[%i], getPidByFriendGift: not has avatar uuid in cachedInfos: %i" % (self.id, uuid))
			return
		dbid = self.cachedInfos[uuid]["dbid"]
		self.sendPidToFriendGift(pid, dbid, mail)