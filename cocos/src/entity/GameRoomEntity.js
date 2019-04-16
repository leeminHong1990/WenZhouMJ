"use strict";

var GameRoomEntity = KBEngine.Entity.extend({
	ctor : function(player_num)
	{
		cc.log(player_num)
		cc.log("==================")
		this._super();
		this.roomID = undefined;
		this.curRound = 0;
		this.maxRound = 4;
		this.luckyTileNum = 0;
		this.ownerId = undefined;
		this.dealerIdx = 0;
		this.isAgent = false;
		this.max_bet_num = 0;
  		this.player_num = player_num;
  		this.follow_state = 1;
  		this.kong_state = 1;
  		this.dragon_state = 1;
  		this.current_circle = 1;
  		this.searial_deal_num = 0;
  		this.kong_draw_win_double = 0

		this.agentInfo = {};
		if (player_num == 2) {
			this.playerInfoList = [null, null];
			this.playerStateList = [0, 0];
			this.handTilesList = [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 
								[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]];
			this.upTilesList = [[], []];
			this.upTilesOpsList = [[], []];
			this.discardTilesList = [[], []];
			this.cutIdxsList = [[], []];
			this.betList = [0, 0];
		} else {
			this.playerInfoList = [null, null, null, null];
			this.playerStateList = [0, 0, 0, 0];
			this.handTilesList = [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
								 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 
								 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 
								 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]];
			this.upTilesList = [[], [], [], []];
			this.upTilesOpsList = [[], [], [], []];
			this.discardTilesList = [[], [], [], []];
			this.cutIdxsList = [[], [], [], []];
			this.betList = [0, 0, 0, 0];
		}
		this.betState = 0

		this.curPlayerSitNum = 0;
		this.isPlayingGame = const_val.STATE_READY;
		this.lastDiscardTile = 0;
		this.lastDrawTile = -1
		this.lastDiscardTileFrom = -1;
		this.leftTileNum = 71;

		this.kingTiles = [];	// 财神(多个)

		this.applyCloseLeftTime = 0;
		this.applyCloseFrom = 0;
		if (player_num == 2) {
			this.applyCloseStateList = [0, 0];
		}else {
			this.applyCloseStateList = [0, 0, 0, 0];
		}

		this.waitAid = -1; // 轮询时的上一个操作，-1表示没有被轮询，否则表示被轮询时的上一个人的操作
		this.last_kong_tile = 0
		this.raceHourseState = 0
		// 每局不清除的信息
		if (player_num == 2) {
			this.playerScoreList = [0, 0];
		}else{
			this.playerScoreList = [0, 0, 0, 0];
		}
	    KBEngine.DEBUG_MSG("Create GameRoomEntity")
  	},

  	reconnectRoomData : function(recRoomInfo){
  		cc.log("reconnectRoomData",recRoomInfo)
  		this.curPlayerSitNum = recRoomInfo["curPlayerSitNum"];
  		this.isPlayingGame = recRoomInfo["isPlayingGame"];
  		this.playerStateList = recRoomInfo["player_state_list"];
  		this.lastDiscardTile = recRoomInfo["lastDiscardTile"];
  		this.lastDrawTile = recRoomInfo["lastDrawTile"]
  		this.lastDiscardTileFrom = recRoomInfo["lastDiscardTileFrom"];
  		this.leftTileNum = recRoomInfo["leftTileNum"];
  		this.kingTiles = recRoomInfo["kingTiles"];
  		this.last_kong_tile = recRoomInfo["last_kong_tile"]
  		this.betState = recRoomInfo["betState"];
  		this.raceHourseState = recRoomInfo["raceHourseState"]
  		this.searial_deal_num = recRoomInfo["searial_deal_num"]
  		
  		for (var i = 0; i < recRoomInfo["betList"].length; i++) {
  			this.betList[i] = recRoomInfo["betList"][i]
  		}
  		for(var i = 0; i < recRoomInfo["player_advance_info_list"].length; i++){

  			var curPlayerInfo = recRoomInfo["player_advance_info_list"][i];

  			this.handTilesList[i] = curPlayerInfo["tiles"];
  			this.discardTilesList[i] = curPlayerInfo["discard_tiles"];
  			this.cutIdxsList[i] = curPlayerInfo["cut_idxs"];
 
  			for(var j = 0; j < curPlayerInfo["op_list"].length; j++){
  				var op_info = curPlayerInfo["op_list"][j]; //[opId, [tile]]
  				if(op_info["opId"] == const_val.OP_PONG){
  					this.upTilesList[i].push([op_info["tiles"][0], op_info["tiles"][0], op_info["tiles"][0]]);
  					this.upTilesOpsList[i].push([op_info]);
  				} else if(op_info["opId"] == const_val.OP_EXPOSED_KONG){
  					// 检查是否有碰过相同的牌
  					var kongIdx = h1global.entityManager.player().getSelfExposedKongIdx(this.upTilesList[i], op_info["tiles"][0]);
  					if(kongIdx >= 0){
  						// 已经碰过相同的牌，说明为自摸杠
	  					this.upTilesList[i][kongIdx].push(op_info["tiles"][0]);
	  					this.upTilesOpsList[i][kongIdx].push(op_info);
	  				} else {
	  					// 否则为普通杠
	  					this.upTilesList[i].push([op_info["tiles"][0], op_info["tiles"][0], op_info["tiles"][0], op_info["tiles"][0]]);
	  					this.upTilesOpsList[i].push([op_info]);
	  				}
  				} else if(op_info["opId"] == const_val.OP_CONCEALED_KONG){
  					this.upTilesList[i].push([0, 0, 0, op_info["tiles"][0]]);
  					this.upTilesOpsList[i].push([op_info]);
  				} else if(op_info["opId"] == const_val.OP_CHOW){
  					this.upTilesList[i].push((op_info["tiles"].concat()).sort(cutil.tileSortFunc));
  					this.upTilesOpsList[i].push([op_info]);
  				}
  			}
  		}

  		this.applyCloseLeftTime = recRoomInfo["applyCloseLeftTime"];
  		this.applyCloseFrom = recRoomInfo["applyCloseFrom"];
		this.applyCloseStateList = recRoomInfo["applyCloseStateList"];
		if(this.applyCloseLeftTime > 0){
			onhookMgr.setApplyCloseLeftTime(this.applyCloseLeftTime);
		}
		this.waitAid = recRoomInfo["waitAid"];

		this.updateRoomData(recRoomInfo["init_info"]);
		for(var i = 0; i < recRoomInfo["player_advance_info_list"].length; i++){
			var curPlayerInfo = recRoomInfo["player_advance_info_list"][i];
			this.playerInfoList[i]["score"] = curPlayerInfo["score"]
			this.playerInfoList[i]["total_score"] = curPlayerInfo["total_score"]
		}
  	},

  	updateRoomData : function(roomInfo){
  		cc.log('updateRoomData:',roomInfo)
  		this.roomID = roomInfo["roomID"];
  		this.ownerId = roomInfo["ownerId"];
  		this.dealerIdx = roomInfo["dealerIdx"];
  		this.curRound = roomInfo["curRound"]
  		this.maxRound = roomInfo["maxRound"];
  		this.follow_state = roomInfo["follow_state"];
  		this.kong_state = roomInfo["kong_state"];
  		this.dragon_state = roomInfo["dragon_state"];
  		this.max_bet_num = roomInfo["max_bet_num"];
  		this.player_num = roomInfo["player_num"];
  		this.isAgent = roomInfo["isAgent"];
  		this.current_circle = roomInfo["curCircle"]
		this.agentInfo = roomInfo["agentInfo"];
		this.kong_draw_win_double = roomInfo["kong_draw_win_double"]

  		for(var i = 0; i < roomInfo["player_base_info_list"].length; i++){
  			this.updatePlayerInfo(roomInfo["player_base_info_list"][i]["idx"], roomInfo["player_base_info_list"][i]);
		}
		var share_desc = "我在[温州麻将]开了房间，快来一起玩吧."
		var player = h1global.entityManager.player();
		share_desc += '局数:' + player.curGameRoom.maxRound.toString() + ',' + const_val.KONG_STATE[player.curGameRoom.kong_state] + ',' + const_val.FLOW_STATE[player.curGameRoom.follow_state] + ',' + const_val.KONG_DRAW_WIN_DOUBLE[player.curGameRoom.kong_draw_win_double] + "," + const_val.DRAGON_STATE[player.curGameRoom.dragon_state] + "," 
		if (player.curGameRoom.max_bet_num == 0) {
			share_desc += const_val.MAX_BET[0] + ",还缺" + player.curGameRoom.getNeedPlayerNum().toString() +"人。"
		}else if (player.curGameRoom.max_bet_num == 5) {
			share_desc += const_val.MAX_BET[1] + ",还缺" + player.curGameRoom.getNeedPlayerNum().toString() +"人。"
		} else if (player.curGameRoom.max_bet_num == 10){
			share_desc += const_val.MAX_BET[2] + ",还缺" + player.curGameRoom.getNeedPlayerNum().toString() +"人。"
		}


		var self = this;
		if(!((cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative) || (cc.sys.os == cc.sys.OS_ANDROID && cc.sys.isNative)) || switches.TEST_OPTION){
			wx.onMenuShareAppMessage({
                title: '房間號【' + self.roomID.toString() + '】', // 分享标题
                desc: share_desc, // 分享描述
                link: switches.h5entrylink, // 分享链接
			    imgUrl: '', // 分享图标
			    type: '', // 分享类型,music、video或link，不填默认为link
			    dataUrl: '', // 如果type是music或video，则要提供数据链接，默认为空
			    success: function () { 
			        // 用户确认分享后执行的回调函数
			        cc.log("ShareAppMessage Success!");
			    },
			    cancel: function () { 
			        // 用户取消分享后执行的回调函数
			        cc.log("ShareAppMessage Cancel!");
			    },
			    fail: function() {
			    	cc.log("ShareAppMessage Fail")
			    },
			});
			wx.onMenuShareTimeline({
                title: '房間號【' + self.roomID.toString() + '】', // 分享标题
                desc: share_desc, // 分享描述
                link: switches.h5entrylink, // 分享链接
			    imgUrl: '', // 分享图标
			    type: '', // 分享类型,music、video或link，不填默认为link
			    dataUrl: '', // 如果type是music或video，则要提供数据链接，默认为空
			    success: function () { 
			        // 用户确认分享后执行的回调函数
			        cc.log("onMenuShareTimeline Success!");
			    },
			    cancel: function () { 
			        // 用户取消分享后执行的回调函数
			        cc.log("onMenuShareTimeline Cancel!");
			    },
			    fail: function() {
			    	cc.log("onMenuShareTimeline Fail")
			    },
			});
		}
  	},

  	swapSeat : function(swapList){
  		if(!swapList){
  			return;
		}
  		var tempPlayerInfoList = []
  		for (var i = 0; i < swapList.length; i++) {
  			tempPlayerInfoList[i] = this.playerInfoList[swapList[i]]
  		}
  		this.playerInfoList = tempPlayerInfoList
  	},

  	getNeedPlayerNum:function(){
  		var num = 0;
  		for (var i = 0; i < this.playerInfoList.length; i++) {
  			if (this.playerInfoList[i]) {
  				num += 1;
  			}
  		}
  		return this.player_num-num;
  	},

  	updatePlayerInfo : function(serverSitNum, playerInfo){
  		this.playerInfoList[serverSitNum] = playerInfo;
  	},

  	updatePlayerState : function(serverSitNum, state){
  		this.playerStateList[serverSitNum] = state;
  	},

  	updatePlayerOnlineState : function(serverSitNum, state){
  		this.playerInfoList[serverSitNum]["online"] = state;
  	},

  	startPlaceBet : function(dealerIdx, searial_deal_num, current_circle, beginBetList){
  		this.dealerIdx = dealerIdx;
  		this.betList = beginBetList;
  		this.curRound = this.curRound + 1;
  		this.current_circle = current_circle
  		this.isPlayingGame = const_val.STATE_BET;
  		this.betState = 0;
  		this.last_kong_tile = 0
		this.raceHourseState = 0
		this.searial_deal_num = searial_deal_num
  		if (this.player_num == 2) {
  			this.handTilesList = [	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 
								[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]];
			this.upTilesList = [[], []];
			this.upTilesOpsList = [[], []];
			this.discardTilesList = [[], []];
			this.cutIdxsList = [[], []];
			this.leftTileNum = 103;
  		} else {
  			this.handTilesList = [	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 
								[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 
								[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 
								[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]];
			this.upTilesList = [[], [], [], []];
			this.upTilesOpsList = [[], [], [], []];
			this.discardTilesList = [[], [], [], []];
			this.cutIdxsList = [[], [], [], []];
			this.leftTileNum = 71;
  		}
  	},

  	startGame : function(){
  		this.isPlayingGame = const_val.STATE_PLAY;
  	},

  	endGame : function(){
  		// 重新开始准备
  		this.isPlayingGame = const_val.STATE_READY;
  		if (this.player_num == 2) {
  			this.playerStateList = [0, 0];
  		} else {
  			this.playerStateList = [0, 0, 0, 0];
  		}
  	},
});