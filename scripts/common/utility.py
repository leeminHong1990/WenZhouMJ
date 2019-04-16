# -*- coding: utf-8 -*-

import time
import re
import const
import copy
from KBEDebug import *
from datetime import datetime
from KBEDebug import *
import hashlib
import time
import AsyncRequest
import json
import switch
import random

def get_count(tiles, t):
	return sum([1 for i in tiles if i == t])

def meld_with_pair_need_num(tiles, history):
	case1 = case2 = 999
	if meld_only_need_num(tiles, history) == 0:
		case1 = 2

	for i in tiles:
		tmp = list(tiles)
		if get_count(tiles, i) == 1:
			tmp.remove(i)
			case2 = min(case2, 1 + meld_only_need_num(tmp, history))
		else:
			tmp.remove(i)
			tmp.remove(i)
			case2 = min(case2, meld_only_need_num(tmp, history))

	return min(case1, case2)

def meld_only_need_num(tiles, history, used = 0):
	if used > 4:
		return 999
	tiles = sorted(tiles)
	key = tuple(tiles)
	if key in history.keys():
		return history[key]

	size = len(tiles)
	if size == 0:
		return 0
	if size == 1:
		return 2
	if size == 2:
		p1, p2 = tiles[:2]
		case1 = 999
		if not(p1 == 9 or p1 == 19 or p1 >= 29):
			if p2 - p1 <= 2:
				case1 = 1
		case2 = 0
		if p1 == p2:
			case2 = 1
		else:
			case2 = 4
		return min(case1, case2)
		# if p1 == p2 or p2 - p1 <= 2:
		# 	return 1
		# else:
		# 	return 4

	first = tiles[0]
	# 自己组成顺子
	left1 = list(tiles[1:])
	case1 = 0
	if first == 9 or first == 19 or first >= 29:
		case1 = 999
	else:
		if first+1 in left1:
			left1.remove(first+1)
		else:
			case1 += 1
		if first+2 in left1:
			left1.remove(first+2)
		else:
			case1 += 1
		res1 = meld_only_need_num(left1, history)
		history[tuple(left1)] = res1
		case1 += res1

	# 自己组成刻子
	left2 = list(tiles[1:])
	case2 = 0
	count = get_count(left2, first)
	if count >= 2:
		left2.remove(first)
		left2.remove(first)
	elif count == 1:
		left2.remove(first)
		case2 += 1
	else:
		case2 += 2
	res2 = meld_only_need_num(left2, history)
	history[tuple(left2)] = res2
	case2 += res2
	result = min(case1, case2)
	history[tuple(tiles)] = result
	return result

def is_same_day(ts1, ts2):
	d1 = datetime.fromtimestamp(ts1)
	d2 = datetime.fromtimestamp(ts2)

	if (d1.year, d1.month, d1.day) == (d2.year, d2.month, d2.day):
		return True
	return False

def gen_room_id():
	randomId = random.randint(100000, 999999)
	for i in range(899999):
		val = randomId + i
		if val > 999999:
			val = val%1000000 + 100000
		if val not in KBEngine.globalData["GameWorld"].rooms:
			return val
	return 999999

def filter_emoji(nickname):
	try:
		# UCS-4
		highpoints = re.compile(u'[\U00010000-\U0010ffff]')
	except re.error:
		# UCS-2
		highpoints = re.compile(u'[\uD800-\uDBFF][\uDC00-\uDFFF]')
	nickname = highpoints.sub(u'', nickname)
	return nickname

def classifyTiles(tiles, kingTiles):
	kings = []
	dragons_white = []
	chars = []
	bambs = []
	dots = []
	winds = []
	dragons_red_green = []

	tiles = sorted(tiles)
	for t in tiles:
		if t in kingTiles:
			kings.append(t)
		elif t == const.DRAGON_WHITE:
			dragons_white.append(t)
		elif t in const.CHARACTER:
			chars.append(t)
		elif t in const.BAMBOO:
			bambs.append(t)
		elif t in const.DOT:
			dots.append(t)
		elif t in const.WINDS:
			winds.append(t)
		elif t in const.DRAGONS:
			dragons_red_green.append(t)
	return [kings, dragons_white, chars, bambs, dots, winds, dragons_red_green]

def classifyTiles4Type(tiles):
	chars = []
	bambs = []
	dots = []
	winds_dragons = []
	tiles = sorted(tiles)
	for t in tiles:
		if t in const.CHARACTER:
			chars.append(t)
		elif t in const.BAMBOO:
			bambs.append(t)
		elif t in const.DOT:
			dots.append(t)
		elif t in const.WINDS or t in const.DRAGONS:
			winds_dragons.append(t)
	return [chars, bambs, dots, winds_dragons]

def getTile2NumDict(tiles):
	tile2NumDict = {}
	for t in tiles:
		if t not in tile2NumDict:
			tile2NumDict[t] = 1
		else:
			tile2NumDict[t] += 1
	return tile2NumDict

def getPairNum(tiles, isContainTriple = False, isContainKong = False):
	num = 0
	tile2NumDict = getTile2NumDict(tiles)
	for tile in tile2NumDict:
		if tile2NumDict[tile] == 2:
			num += 1
		elif tile2NumDict[tile] == 3 and isContainTriple:
			num += 1
		elif tile2NumDict[tile] == 4 and isContainKong:
			num += 2
	return num

def getKongNum(tiles):
	num = 0
	tile2NumDict = getTile2NumDict(tiles)
	for tile in tile2NumDict:
		if tile2NumDict[tile] == 4:
			num += 1
	return num

def getTileNum(tiles, aimTile):
	num = 0
	tile2NumDict = getTile2NumDict(tiles)
	if aimTile in tile2NumDict:
		num = tile2NumDict[aimTile]
	return num

# 发送网络请求
def get_user_info(accountName, callback):
	ts = int(time.mktime(datetime.now().timetuple()))
	tosign = accountName + "_" + str(ts) + "_" + switch.PHP_SERVER_SECRET
	m1 = hashlib.md5()
	m1.update(tosign.encode())
	sign = m1.hexdigest()
	url = switch.PHP_SERVER_URL + 'user_info_server'
	suffix = '?timestamp=' + str(ts) + '&unionid=' + accountName + '&sign=' + sign
	AsyncRequest.Request(url + suffix, lambda x:callback(x.read()) if x else DEBUG_MSG(url + suffix + " error!"))

def update_card_diamond(accountName, deltaCard, deltaDiamond, callback, reason = ""):
	ts = int(time.mktime(datetime.now().timetuple()))
	tosign = accountName + "_" + str(ts) + "_" + str(deltaCard) + "_" + str(deltaDiamond) + "_" + switch.PHP_SERVER_SECRET
	m1 = hashlib.md5()
	m1.update(tosign.encode())
	sign = m1.hexdigest()
	DEBUG_MSG("MD5::" +sign)
	url = switch.PHP_SERVER_URL + 'update_card_diamond'
	data = {
		"timestamp" : ts,
		"delta_card" : deltaCard,
		"delta_diamond" : deltaDiamond,
		"unionid" : accountName,
		"sign" : sign,
		"reason" : reason
	}
	AsyncRequest.Post(url, data, lambda x:callback(x.read()) if x else DEBUG_MSG(url + str(data) + " error!"))

#移除边 3张 不判断胡
def getRemoveEdgeDict(handTilesButKing, finalTile, kingTilesList = []):
	tiles = handTilesButKing[:]

	removeEdgeDict = {} # example: [-1, 2, 3]: 1

	if finalTile in kingTilesList:
		
		for t in const.LEFT_EDGE:
			edgeList = []
			if t-1 in tiles:
				edgeList.append(t-1)
			else:
				edgeList.append(-1)

			if t-2 in tiles:
				edgeList.append(t-2)
			else:
				edgeList.append(-1)
			edgeList.append(-1)
			key = tuple(edgeList)
			removeEdgeDict[key] = sum([1 for i in key if i == -1])

		for t in const.RIGHT_EDGE:
			edgeList = [-1]
			if t+1 in tiles:
				edgeList.append(t+1)
			else:
				edgeList.append(-1)

			if t+2 in tiles:
				edgeList.append(t+2)
			else:
				edgeList.append(-1)
			key = tuple(edgeList)
			removeEdgeDict[key] = sum([1 for i in key if i == -1])
	elif finalTile in const.LEFT_EDGE:
		edgeList = []
		if finalTile-1 in tiles:
			edgeList.append(finalTile-1)
		else:
			edgeList.append(-1)

		if finalTile-2 in tiles:
			edgeList.append(finalTile-2)
		else:
			edgeList.append(-1)
		edgeList.append(finalTile)
		key = tuple(edgeList)
		removeEdgeDict[key] = sum([1 for i in key if i == -1])
	elif finalTile in const.RIGHT_EDGE:
		edgeList = [finalTile]
		if finalTile+1 in tiles:
			edgeList.append(finalTile+1)
		else:
			edgeList.append(-1)

		if finalTile+2 in tiles:
			edgeList.append(finalTile+2)
		else:
			edgeList.append(-1)
		key = tuple(edgeList)
		removeEdgeDict[key] = sum([1 for i in key if i == -1])
	return removeEdgeDict
	

#移除夹 3张 不判断胡
def getRemoveMidDict(handTilesButKing, finalTile, kingTilesList = []):
	tiles = handTilesButKing[:]
	removeMidDict = {}

	if finalTile in kingTilesList:
		for midTuple in const.MID:
			for midTile in midTuple:
				midList = []
				if midTile-1 in tiles:
					midList.append(midTile-1)
				else:
					midList.append(-1)
				midList.append(-1)
				if midTile+1 in tiles:
					midList.append(midTile+1)
				else:
					midList.append(-1)

				key = tuple(midList)
				removeMidDict[key] = sum([1 for i in key if i == -1])
	elif finalTile in const.CHAR_MID or finalTile in const.DOT_MID or finalTile in const.BAMB_MID:
		midList = []
		if finalTile-1 in tiles:
			midList.append(finalTile-1)
		else:
			midList.append(-1)
		midList.append(finalTile)
		if finalTile+1 in tiles:
			midList.append(finalTile+1)
		else:
			midList.append(-1)

		key = tuple(midList)
		removeMidDict[key] = sum([1 for i in key if i == -1])
	return removeMidDict

#移除单吊 2张 不判断胡
def getRemoveSingleCraneDict(handTilesButKing, finalTile, kingTilesList = []):
	tiles = handTilesButKing[:]
	tile2NumDict = getTile2NumDict(tiles)
	removeSingleCraneDict = {}
	if finalTile in const.SEASON or finalTile in const.FLOWER:
		return removeSingleCraneDict

	if finalTile in kingTilesList:
		for t in tile2NumDict:
			key = (-1, t)
			removeSingleCraneDict[key] = sum([1 for i in key if i == -1])
		key = (-1, -1)
		removeSingleCraneDict[key] = sum([1 for i in key if i == -1])
	elif finalTile in tile2NumDict:
		if tile2NumDict[finalTile] == 1:
			key = (finalTile, -1)
			removeSingleCraneDict[key] = sum([1 for i in key if i == -1])
		elif tile2NumDict[finalTile] >= 2:
			key = (finalTile, finalTile)
			removeSingleCraneDict[key] = sum([1 for i in key if i == -1])
	return removeSingleCraneDict

#移除对倒 3张 不判断胡
def getRemoveMatchOrderDict(handTilesButKing, finalTile, kingTilesList = []):
	tiles = handTilesButKing[:]
	tile2NumDict = getTile2NumDict(tiles)
	matchOrderDict = {}
	if finalTile in const.SEASON or finalTile in const.FLOWER:
		return matchOrderDict

	if finalTile in kingTilesList:
		for t in tile2NumDict:
			if tile2NumDict[t] == 1:
				key = (-1, -1, t)
				matchOrderDict[key] = sum([1 for i in key if i == -1])
			elif tile2NumDict[t] >= 2:
				key = (-1, t, t)
				matchOrderDict[key] = sum([1 for i in key if i == -1])
		key = (-1, -1, -1)
		matchOrderDict[key] = sum([1 for i in key if i == -1])
	elif finalTile in tile2NumDict:
		if tile2NumDict[finalTile] == 1:
			key = (finalTile, -1, -1)
			matchOrderDict[key] = sum([1 for i in key if i == -1])
		elif tile2NumDict[finalTile] == 2:
			key = (finalTile, finalTile, -1)
			matchOrderDict[key] = sum([1 for i in key if i == -1])
		else:
			key = (finalTile, finalTile, finalTile)
			matchOrderDict[key] = sum([1 for i in key if i == -1])
	return matchOrderDict

def getTileColorType(handTilesButKing, uptiles):
	suitNumList = [0, 0, 0]
	honorNum = 0
	for t in handTilesButKing:
		if t in const.CHARACTER:
			suitNumList[0] = 1
		elif t in const.BAMBOO:
			suitNumList[1] = 1
		elif t in const.DOT:
			suitNumList[2] = 1
		elif t in const.DRAGONS or t in const.WINDS:
			honorNum = 1

	for meld in uptiles:
		for t in meld:
			if t in const.CHARACTER:
				suitNumList[0] = 1
			elif t in const.BAMBOO:
				suitNumList[1] = 1
			elif t in const.DOT:
				suitNumList[2] = 1
			elif t in const.DRAGONS or t in const.WINDS:
				honorNum = 1

	suitNum = sum([num for num in suitNumList])
	if suitNum > 1:
		return const.MIX_X_SUIT
	elif suitNum == 1:
		if honorNum == 1:
			return const.MIXED_ONE_SUIT
		else:
			return const.SAME_SUIT
	else:
		if honorNum == 1:
			return const.SAME_HONOR
		else:
			return const.MIX_X_SUIT

def checkIsPongPongWin(handTilesButKing, uptiles, kingTilesNum):
	for meld in uptiles:
		if (len(meld) != 3 and len(meld) != 4) or meld[0] != meld[-1]:
			return False
	tiles = handTilesButKing[:]
	tile2NumDict = getTile2NumDict(tiles)
	isDelete = False
	for t in tile2NumDict:
		if tile2NumDict[t] ==2:
			del tile2NumDict[t]
			isDelete = True
			break
	else:
		for t in tile2NumDict:
			if tile2NumDict[t] == 1:
				del tile2NumDict[t]
				kingTilesNum -= 1
				isDelete = True
				break
		else:
			for t in tile2NumDict:
				if tile2NumDict[t] == 4:
					del tile2NumDict[t]
					kingTilesNum -= 1
					isDelete = True
					break
			else:
				for t in tile2NumDict:
					if tile2NumDict[t] == 3:
						tile2NumDict[t] = 1
						isDelete = True
						break
	for t in tile2NumDict:
		needNum = abs(3-tile2NumDict[t])
		kingTilesNum -= needNum
	if not isDelete or kingTilesNum < 0:
		return False
	return True

def checkIsDiscard(op_record):
	for i in range(0, len(op_record))[::-1]:
		if op_record[i][0] == const.OP_DISCARD:
			return True
	return False

def checkIsKongDrawWin(p_op_r):
	for i in range(0, len(p_op_r))[::-1]:
		DEBUG_MSG(p_op_r[i])
		if p_op_r[i][0] == const.OP_DRAW or p_op_r[i][0] == const.OP_CUT:
			continue
		if p_op_r[i][0] == const.OP_CONCEALED_KONG:
			return True
		elif p_op_r[i][0] == const.OP_EXPOSED_KONG:
			return True
		elif p_op_r[i][0] == const.OP_KONG_WREATH:
			return True
		return False
	return False

#手牌 台数
def getHandTileQuantity(handTilesButKing, p_wind, prevailing_wind):
	tile2NumDict = getTile2NumDict(handTilesButKing)
	quantity = 0
	for t in tile2NumDict:
		if t >= 3:
			if t == prevailing_wind: 	#圈风对应的 杠/刻
				quantity += 1
			if t == p_wind:				#位风对应的 杠/刻
				quantity += 1
	return quantity

#桌牌 台数
def getUpTileQuantity(uptiles, p_wind, prevailing_wind):
	quantity = 0
	for tileList in uptiles:
		if tileList[0] == prevailing_wind:  #圈风对应的 杠/刻
			quantity += 1
		if tileList[0] == p_wind:			#位风对应的 杠/刻
			quantity += 1
		if tileList[0] in const.DRAGONS:	#中发白对应的 杠/刻
			quantity += 1
	return quantity

#花台数
def getWreathQuantity(wreaths, p_wind):
	p_wind_index = const.WINDS.index(p_wind)
	seasonList = [0] * len(const.SEASON)
	flowerList = [0] * len(const.FLOWER)
	for t in wreaths:
		if t in const.SEASON:
			index = const.SEASON.index(t)
			seasonList[index] = 1
		elif t in const.FLOWER:
			index = const.FLOWER.index(t)
			flowerList[index] = 1
	quantity = 0
	if sum([i for i in seasonList]) == 4: #春夏秋冬 4张齐
		quantity += 2
	if sum([i for i in flowerList]) == 4: #梅兰竹菊 4张齐
		quantity += 2
	if seasonList[p_wind_index] == 1:
		quantity += 1
	if flowerList[p_wind_index] == 1:
		quantity += 1
	if len(wreaths) == 8: #春夏秋冬 梅兰竹菊 8张齐
		quantity += 16
	return quantity

#/*****************************************温州麻将**********************************************/

# 8对子
def checkIs8Pairs(handTilesButKing, kingTilesNum):
	tile2NumDict = getTile2NumDict(handTilesButKing)
	needNum = 0
	for tile in tile2NumDict:
		num = tile2NumDict[tile]
		if num%2 == 1:
			needNum += 1
	if needNum - kingTilesNum <= 1:
		return True
	return False

# 能否对财神胡
def canKingPairWin(handTilesButKingWhite, king, kingTilesNum, dragonWhiteNum):
	if kingTilesNum < 2:
		return False
	kingTilesNum -= 2
	for i in range(dragonWhiteNum + 1): # x个白板当财神用
		copyTiles = handTilesButKingWhite[:]
		kingInstead = [king] * i
		dragonWhite = [const.DRAGON_WHITE] * (dragonWhiteNum - i)
		copyTiles.extend(kingInstead)
		copyTiles.extend(dragonWhite)
		copyTiles = sorted(copyTiles)
		if meld_only_need_num(copyTiles, {}) <= kingTilesNum:
			return True
	return False

# 普通3x+2能不能胡
def canNormalWin(handTilesButKingWhite, king, kingTilesNum, dragonWhiteNum):
	for i in range(dragonWhiteNum + 1): # x个白板当财神用
		copyTiles = handTilesButKingWhite[:]
		kingInstead = [king] * i
		dragonWhite = [const.DRAGON_WHITE] * (dragonWhiteNum - i)
		copyTiles.extend(kingInstead)
		copyTiles.extend(dragonWhite)
		copyTiles = sorted(copyTiles)
		if meld_with_pair_need_num(copyTiles, {}) <= kingTilesNum:
			return True
	return False