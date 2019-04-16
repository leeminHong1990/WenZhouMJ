# -*- coding: utf-8 -*-
import KBEngine
import Functor
import const
from KBEDebug import *
import time

MAX_ROOM_NUM = 3000


class iRoomManager(object):
	"""
	服务端游戏对象的基础接口类
	"""
	def __init__(self):
		self.rooms = {}

	def addRoom(self, room):
		self.rooms[room.roomID] = room

	def delRoom(self, room):
		if room.roomID in self.rooms:
			self.rooms[room.roomID].destroy()
			del self.rooms[room.roomID]

	def enterRoom(self, roomID, user):
		if roomID in self.rooms:
			room = self.rooms[roomID]
			room.reqEnterRoom(user)
		else:
			user.enterRoomFailed(const.ENTER_FAILED_ROOM_NO_EXIST)

	def quitRoom(self, roomID, user):
		if roomID in self.rooms:
			room = self.rooms[roomID]
			room.reqLeaveRoom(user)

			if room.isEmpty:
				self.delRoom(room)

	def swapTileToTop(self, roomID, tile):
		if roomID in self.rooms:
			room = self.rooms[roomID]
			room.swapTileToTop(tile)
