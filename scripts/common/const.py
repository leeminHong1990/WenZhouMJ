# -*- coding: utf-8 -*-

HTTP_SERVER_IP = 'qxjoy.cn'
HTTP_DEBUG_SERVER_IP = '112.124.111.15'

DB_NAME = "kbe_XSMJ"

SUBMISSION_NUM = 5

CONST_AVATAR_TYPE = 0
CONST_NORMALGAME_TYPE = 1
CONST_SPECGAME_TYPE = 2

CONST_SPACE_WIDTH = 256
CONST_SPACE_HEIGHT = 256

SERVER_REFRESH_TIME = [3,0,0]

TROOP_LIMIT = 4
CHARACTER_ID_LIST = [1400001, 1400002, 1400003]

# 服务端timer定义
TIMER_TYPE_AUTO_LOGIN 								= 0 # 等待玩家登录时创建Avatar
TIMER_TYPE_DESTROY									= 1 # 玩家操作计时器
TIMER_TYPE_REFRESH_TASK								= 2 # 刷新计时器
TIMER_TYPE_REFRESH_RANK								= 3 # 刷新排行榜计时器
TIMER_TYPE_RANK_REWARD								= 4 # 刷新排行榜计时器
TIMER_TYPE_BOARDCAST								= 5 # 在线玩家广播
TIMER_TYPE_ROOM_POLL                                = 6 # 房间基础轮询timer
TIMER_TYPE_OPERATION                                = 7 # 玩家操作倒计时
TIMER_TYPE_NEXT_GAME                                = 8 # 下一局游戏开始timer
TIMER_TYPE_DISMISS_WAIT                             = 9 # 解散房间后等待投票timer
TIMER_TYPE_BROADCAST                                = 10# 广播timer
TIMER_TYPE_START_GAME                               = 11# 进入房间第一局开始延迟timer
TIMER_TYPE_ROOM_EXIST                             	= 12# 房间存在倒计时
TIMER_TYPE_USER_DEFINE								= 1000 # 用户自定义

Latitude_Division = 1 # 维度在半球上的划分
Longitude_Division = 2 # 经度在半球上的划分

RankType_Wealth = 1 # 基于总体钱数排名
RankType_Charm = 2 # 基于总魅力值数排名
RankType_Week_MasterPoint = 3 # 基于周竞技分数排名
RankType_Week_Killing = 4 # 基于收人头数排名

MISSION_OPERATION = 1
FRIEND_OPERATION = 2
LOGIN_OPERATION = 3
GM_OPERATION = 4
BUY_DIAMOND_OPERATION = 5
SUMMON_OPERATION = 6
ARENA_OPERATION = 7
ONHOOK_OPERATION = 8
SIGNIN_OPERATION = 9
PRAY_OPERATION = 10
MAIL_OPERATION = 11
REMOVE_MERCENARY_OPERATION = 12
STRENGTH_MERCENARY_OPERATION = 13
GRADE_MERCENARY_OPERATION = 14
CHANGE_FATEWEAPON_OPERATION = 15
VIP_OPERATION = 16
MONTH_CARD_OPERATION = 17
SHOP_OPERATION = 18
CLIENT_OPERATION = 19
TRANSFER_MERCENARY_OPERATION = 20
CLICK_OPERATION = 21
PVP_SHOP_OPERATION = 22
MERCENARY_CALL_OPERATION = 23
USE_ITEM_OPERATION = 24
ACTIVITY_OPERATION = 25

RANK_REWARD_NUM_LIMIT = 3000

ITEM_DIAMOND = 2500002
ITEM_EXPERIENCE = 2500028
ITEM_FRIEND_TOKEN = 2500029 #友情点
ITEM_MONEY = 2500001
ITEM_STONE = 2500016
ITEM_PVP_TOKEN = 2500004 # pvp 斗法币
ITEM_MERCENARY_TOKEN = 2500003 # 佣兵碎片

VIP_ID_LIMIT = 16000

ITEM_ID_LIMIT = 10100	# 物品
ACHIEVEMENT_ID_LIMIT = 20000	# 成就
FRESHMANTASK_ID_LIMIT = 30000	# 新手任务
DAILYTASK_ID_LIMIT = 31000	# 日常任务
MAINTASK_ID_LIMIT = 32000	# 主线任务
DAILYREFRESHTIME_ID_LIMIT = 40000	# 日常任务刷新时间
SIGNIN_ID_LIMIT = 50000	# 签到
STORE_ID_LIMIT = 60000	# 商城
GIFT_ID_LIMIT = 70000	# 礼物
MAIL_ID_LIMIT = 80000	# 邮件

MAIL_TYPE_SERVER = 0
MAIL_TYPE_GIFT = 1
MAIL_TYPE_RANK = 2

ONEDAY_TIME = 24 * 60 * 60

# for bot, tmp
entity_id = 0
ROBOT_INIT_MONEY = 133333
ROBOT_NUM = 1000

# 记录首次使用需要特殊处理的功能标记
PERMANENT_MASK = {
	"bind_phone_num": 0x0001, # 电话绑定
}

BLOCK_TYPE = {
	"invisible": 0,
	"empty": 1,
	"cloud": 2,
}

FIX_MINE_HEIGHT = 302

MERCENARY_MAX_LEVEL = 100

SIGN_IN_MAX_ITEM = 12 * 35

VIP_RECHARGE_LIST = [{'diamond':648, 'primeRMB':700, 'RMB':648},
	{'diamond':328, 'primeRMB':350, 'RMB':328},
	{'diamond':198, 'primeRMB':200, 'RMB':198},
	{'diamond':98, 'primeRMB':100, 'RMB':98},
	{'diamond':50, 'primeRMB':55, 'RMB':50},
	{'diamond':30, 'primeRMB':35, 'RMB':30},
	{'diamond':6, 'primeRMB':10, 'RMB':6}]
	
BUY_MONTH_CARD_DAY = 30 #购买月卡的天数
MONTH_CARD_REWARD = 999 #月卡领取获得的仙玉

CLICK_NORMAL_MONSTER = 1
CLICK_PHONY_BOSS = 2
CLICK_REAL_BOSS = 3

CLICK_MAX_REAL_BOSS_NUM = 30		#最大的累积真boss数量
CLICK_NORMAL_MONSTER_GROUP_NUM = 10	#10个普通小怪出现一个伪boss
CLICK_REAL_BOSS_DURATION = 300		#真boss刷新间隔

CLICK_REAL_BOSS_PRICE = 10 #真boss单价

LOGIN_OPEN_ACTIVITY = 1
MERCENARY_COLLECT_OPEN_ACTIVITY = 2
DIAMOND_COST_ACTIVITY = 6

##########################################

# 房间玩家数
ROOM_PLAYER_NUMBER = 4
# 初始手牌数目
INIT_TILE_NUMBER = 16
# 胡牌类型
WIN_TYPE_SELF_DRAW      = 1 # 自摸胡牌
WIN_TYPE_EXPOSE_KONG    = 2 # 抢杠胡牌

# 房间操作id #
OP_PASS             = 0 # 过
OP_DRAW             = 1 # 摸牌
OP_DISCARD          = 2 # 打牌
OP_CHOW             = 3 # 吃
OP_PONG             = 4 # 碰
OP_KONG_WREATH     	= 5 # 杠花
OP_EXPOSED_KONG     = 6 # 明杠
OP_CONCEALED_KONG   = 7 # 暗杠
OP_READY            = 8 # 听牌
OP_POST_KONG        = 9 # 放杠
OP_GET_KONG         = 10# 接杠
OP_DRAW_WIN         = 11# 自摸胡
OP_KONG_WIN         = 12# 抢杠胡
OP_WREATH_WIN  		= 13# 杠花胡
OP_GIVE_WIN  		= 14# 放炮胡
OP_DRAW_END         = 15# 流局
OP_CUT  	        = 16# 杠后切牌

MIX_X_SUIT = 0
SAME_SUIT = 1
SAME_HONOR = 2
MIXED_ONE_SUIT = 3

NOT_GIVE_UP = 0
GIVE_UP = 1
WAIT_GIVE_UP = 2


# 万, 条, 筒
CHARACTER	= [1, 2, 3, 4, 5, 6, 7, 8, 9]
BAMBOO		= [11, 12, 13, 14, 15, 16, 17, 18, 19]
DOT			= [21, 22, 23, 24, 25, 26, 27, 28, 29]

CHAR1, CHAR2, CHAR3, CHAR4, CHAR5, CHAR6, CHAR7, CHAR8, CHAR9 = CHARACTER
DOT1,  DOT2,  DOT3,  DOT4,  DOT5,  DOT6,  DOT7,  DOT8,  DOT9  = DOT
BAMB1, BAMB2, BAMB3, BAMB4, BAMB5, BAMB6, BAMB7, BAMB8, BAMB9 = BAMBOO

# 红中, 发财, 白板
DRAGON_RED		= 35
DRAGON_GREEN	= 36
DRAGON_WHITE	= 37
DRAGONS = (DRAGON_RED, DRAGON_GREEN, DRAGON_WHITE)

# 东风, 南风, 西风, 北风
WIND_EAST	= 31
WIND_SOUTH	= 32
WIND_WEST	= 33
WIND_NORTH	= 34
WINDS = (WIND_EAST, WIND_SOUTH, WIND_WEST, WIND_NORTH)

WORDS = (WIND_EAST, WIND_SOUTH, WIND_WEST, WIND_NORTH, DRAGON_RED, DRAGON_GREEN) # 字牌 除了白板

#春, 夏, 秋, 冬
SEASON_SPRING = 41
SEASON_SUMMER = 42
SEASON_AUTUMN = 43
SEASON_WINTER = 44
SEASON = (SEASON_SPRING, SEASON_SUMMER, SEASON_AUTUMN, SEASON_WINTER)

#梅, 兰, 竹, 菊
FLOWER_PLUM 			= 45
FLOWER_ORCHID 			= 46
FLOWER_BAMBOO 			= 47
FLOWER_CHRYSANTHEMUM 	= 48
FLOWER = (FLOWER_PLUM, FLOWER_ORCHID, FLOWER_BAMBOO, FLOWER_CHRYSANTHEMUM)

#边
LEFT_EDGE = (CHAR3, DOT3, BAMB3)
RIGHT_EDGE = (CHAR7, DOT7, BAMB7)
#夹
CHAR_MID = (CHAR2, CHAR3, CHAR4, CHAR5, CHAR6, CHAR7, CHAR8)
DOT_MID = (DOT2,  DOT3,  DOT4,  DOT5,  DOT6,  DOT7,  DOT8)
BAMB_MID = (BAMB2, BAMB3, BAMB4, BAMB5, BAMB6, BAMB7, BAMB8)
MID = (CHAR_MID, DOT_MID, BAMB_MID)

OP2STR = {
	OP_PASS             : 'pass',
	OP_DRAW             : 'draw',
	OP_DISCARD          : 'discard',
	OP_CHOW             : 'eat',
	OP_PONG             : 'pong',
	OP_EXPOSED_KONG     : 'exposed_kong',
	OP_CONCEALED_KONG   : 'concealed_kong',
	OP_DRAW_WIN         : 'OP_DRAW_WIN',
	OP_KONG_WIN         : 'OP_KONG_WIN',
	OP_WREATH_WIN  		: 'OP_WREATH_WIN',
	OP_GIVE_WIN  		: 'OP_GIVE_WIN',
	OP_READY            : 'ready',
}


PLAYER_OPERATION_WAIT_TIME = 12 # 玩家打出一张牌后, 其他玩家是否操作的等待时间
PLAYER_DISCARD_WAIT_TIME = 12 # 玩家摸一张牌后, 打牌的等待时间45
NEXT_GAME_WAIT_TIME = 90  # 一局结束后开始下一句游戏等待玩家准备的timer
START_GAME_WAIT_TIME = 1 # 玩家都进来了之后等待开局的timer
ROOM_EXIST_TIME = 3600 # 每一局房间的时间，时间结束房间不销毁

# 定义一些错误码
OP_ERROR_NOT_CURRENT    = 1 # 非当前控牌玩家
OP_ERROR_ILLEGAL        = 2 # 操作非法
OP_ERROR_TIMEOUT        = 3 # 操作超时
##########################################

# 牌局战绩保存上限
MAX_HISTORY_RESULT = 10

# 创建房间失败错误码
CREATE_FAILED_NO_ENOUGH_CARDS = -1 # 房卡不足
CREATE_FAILED_ALREADY_IN_ROOM = -2 # 已经在房间中
CREATE_FAILED_OTHER = -3

# 进入房间失败错误码
ENTER_FAILED_ROOM_NO_EXIST  = -1 # 房间不存在
ENTER_FAILED_ROOM_FULL      = -2 # 房间已经满员
ENTER_FAILED_ROOM_DIAMOND_NOT_ENOUGH	= -3 # 进入AA制付费房间时，钻石不足

###########################################
# 签到相关 #
SIGN_IN_ACHIEVEMENT_DAY = 10 # 签到几天得奖励
SIGN_IN_ACHIEVEMENT_NUM = 1  # 奖励几张房卡
###########################################

DISMISS_ROOM_WAIT_TIME = 100 # 申请解散房间后等待的时间, 单位为秒

#牌局状态
STATE_READY	= 0
STATE_BET	= 1
STATE_PLAY	= 2
