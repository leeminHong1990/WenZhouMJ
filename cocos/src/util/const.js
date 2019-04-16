"use strict";

var const_val = function(){}

const_val.Action_Enter = 0 // 进入游戏


// 为了便于UI管理，globalUIMgr的ZOrder一定要大于curUIMgrZOrder
const_val.globalUIMgrZOrder = 90000
const_val.curUIMgrZOrder = 10000

const_val.MAX_LAYER_NUM = 99999999



const_val.MISSION_OPERATION = 1
const_val.GM_OPERATION = 4
const_val.SUMMON_OPERATION = 6

// 排行榜更新时间
const_val.RANK_DELTA_TIME = 15 * 60 // 15min
const_val.QUERY_PALYER_INFO_TIME = 15 * 60 // 15min

// const_val strings
const_val.sDefaultPortraitPath = "res/ui/GUI/image.png"
const_val.sClientDatas = "kbengine_js_demo"
const_val.sHasCreateQuickLoginAccount = "ccud_bHasCreateQuickLoginAccount"
const_val.sUseUploadedPortraitPrefix = "ccud_bUseUploadedPortrait_"
const_val.sAvatarPrefix = "res/avatars/avatar_"


const_val.nAvatarNum = 15

const_val.GameDelayTime = 10.0

const_val.TrusteeShipTurnNum = 2

const_val.OP_PASS             = 0 // 过
const_val.OP_DRAW             = 1 // 摸排
const_val.OP_DISCARD          = 2 // 打牌
const_val.OP_CHOW             = 3 // 吃
const_val.OP_PONG             = 4 // 碰
const_val.OP_KONG_WREATH      = 5 // 杠花
const_val.OP_EXPOSED_KONG     = 6 // 明杠
const_val.OP_CONCEALED_KONG   = 7 // 暗杠
const_val.OP_READY            = 8 // 听牌
const_val.OP_POST_KONG        = 9 // 放杠
const_val.OP_GET_KONG         = 10// 接杠
const_val.OP_DRAW_WIN         = 11// 自摸胡
const_val.OP_KONG_WIN         = 12// 抢杠胡
const_val.OP_WREATH_WIN       = 13// 杠花胡
const_val.OP_GIVE_WIN		  = 14// 放炮胡
const_val.OP_DRAW_END         = 15// 流局
const_val.OP_CUT              = 16// 杠后切牌
const_val.OP_NUM              = 17// 操作总数

const_val.MIX_X_SUIT = 0
const_val.SAME_SUIT = 1
const_val.SAME_HONOR = 2
const_val.MIXED_ONE_SUIT = 3

const_val.NOT_GIVE_UP = 0
const_val.GIVE_UP = 1
const_val.WAIT_GIVE_UP = 2

// 万, 条, 筒
const_val.CHARACTER	= [1, 2, 3, 4, 5, 6, 7, 8, 9]
const_val.BAMBOO	= [11, 12, 13, 14, 15, 16, 17, 18, 19]
const_val.DOT		= [21, 22, 23, 24, 25, 26, 27, 28, 29]

// 红中, 发财, 白板
const_val.DRAGON_RED		= 35
const_val.DRAGON_GREEN		= 36
const_val.DRAGON_WHITE		= 37
const_val.DRAGONS = [const_val.DRAGON_RED, const_val.DRAGON_GREEN, const_val.DRAGON_WHITE]

// 东风, 南风, 西风, 北风
const_val.WIND_EAST	= 31
const_val.WIND_SOUTH	= 32
const_val.WIND_WEST	= 33
const_val.WIND_NORTH	= 34
const_val.WINDS = [const_val.WIND_EAST, const_val.WIND_SOUTH, const_val.WIND_WEST, const_val.WIND_NORTH]

const_val.WORDS = [const_val.WIND_EAST, const_val.WIND_SOUTH, const_val.WIND_WEST, const_val.WIND_NORTH, const_val.DRAGON_RED, const_val.DRAGON_GREEN]

const_val.WIND_CIRCLE = ["东风圈", "南风圈", "西风圈", "北风圈"]
//春, 夏, 秋, 冬
const_val.SEASON_SPRING = 41
const_val.SEASON_SUMMER = 42
const_val.SEASON_AUTUMN = 43
const_val.SEASON_WINTER = 44
const_val.SEASON = [const_val.SEASON_SPRING, const_val.SEASON_SUMMER, const_val.SEASON_AUTUMN, const_val.SEASON_WINTER]

//梅, 兰, 竹, 菊
const_val.FLOWER_PLUM 			= 45
const_val.FLOWER_ORCHID 		= 46
const_val.FLOWER_BAMBOO 		= 47
const_val.FLOWER_CHRYSANTHEMUN 	= 48
const_val.FLOWER = [const_val.FLOWER_PLUM, const_val.FLOWER_ORCHID, const_val.FLOWER_BAMBOO, const_val.FLOWER_CHRYSANTHEMUN]

const_val.LEFT_EDGE = [const_val.CHARACTER[2], const_val.BAMBOO[2], const_val.DOT[2]]
const_val.RIGHT_EDGE = [const_val.CHARACTER[6], const_val.BAMBOO[6], const_val.DOT[6]]

const_val.CHAR_MID = [const_val.CHARACTER[1], const_val.CHARACTER[2], const_val.CHARACTER[3], const_val.CHARACTER[4], const_val.CHARACTER[5], const_val.CHARACTER[6], const_val.CHARACTER[7]]
const_val.DOT_MID = [const_val.DOT[1], const_val.DOT[2], const_val.DOT[3], const_val.DOT[4], const_val.DOT[5], const_val.DOT[6], const_val.DOT[7]]
const_val.BAMB_MID = [const_val.BAMBOO[1], const_val.BAMBOO[2], const_val.BAMBOO[3], const_val.BAMBOO[4], const_val.BAMBOO[5], const_val.BAMBOO[6], const_val.BAMBOO[7]]
const_val.MID = [const_val.CHAR_MID, const_val.DOT_MID, const_val.BAMB_MID]

const_val.MESSAGE_LIST = [
	"打错了",
	"打快点",
	"打张碰下",
	"风头霉头两隔壁",
	"截胡",
	"你到底会不会玩",
	"你放炮我不胡",
	"你家是风窟啊",
	"全是风牌",
	"上家打张吃吃",
	"手气真好",
	"下家吃什么",
	"这还不是我胡？",
	"这么好都没胡",
	"这牌也太烂了吧",
	"做你上家真痛苦"
]

const_val.PLAYER_NUM = ["4人", "2人"]
const_val.GAME_ROUND = ["8局", "16局", "2圈"]
const_val.KONG_STATE = ["杠不算分", "杠算分"]
const_val.FLOW_STATE = ["跟风不算风", "跟风算分"]
const_val.KONG_DRAW_WIN_DOUBLE = ["杠开不双翻", "杠开双翻"]
const_val.DRAGON_STATE = ["无中发", "有中发"]
const_val.CONTRACT_STATE = ["非三背", "三背"]
const_val.MAX_BET = ["无买/顶底", "买/顶底5", "买/顶底10"]

//牌局状态
const_val.STATE_READY	= 0 // 准备			阶段
const_val.STATE_BET 	= 1	// 买底/顶底 	阶段
const_val.STATE_PLAY	= 2 // 打牌 		阶段

const_val.SIGNIN_MAX = 10

const_val.GAME_RECORD_MAX = 10

const_val.DISMISS_ROOM_WAIT_TIME = 100 // 申请解散房间后等待的时间, 单位为秒