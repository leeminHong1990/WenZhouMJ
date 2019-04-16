"use strict";
/*-----------------------------------------------------------------------------------------
												interface
-----------------------------------------------------------------------------------------*/
var impGameOperation = impCommunicate.extend({
	__init__ : function()
	{
		this._super();
		this.isPlayingStartAnimation = 0
		this.diceList = [[0,0],[0,0],[0,0],[0,0]]
	    KBEngine.DEBUG_MSG("Create impRoomOperation");
  	},

  	startPlaceBet : function(dealerIdx, searial_deal_num, current_circle, beginBetList, swapList){
  		cc.log("startPlaceBet", dealerIdx, searial_deal_num, current_circle, beginBetList, swapList)
  		if(!this.curGameRoom){
			return;
		}
		var self = this;
		cc.log(this.serverSitNum)
		this.serverSitNum = swapList.indexOf(this.serverSitNum) >= 0 ? swapList.indexOf(this.serverSitNum) :  this.serverSitNum
		cc.log("to serverSitNum", this.serverSitNum)
		if(swapList.length > 0) {
			this.curGameRoom.swapSeat(swapList)
		}
  		this.curGameRoom.startPlaceBet(dealerIdx, searial_deal_num, current_circle, beginBetList)

  		if(h1global.curUIMgr.gameroomprepare_ui){
			h1global.curUIMgr.gameroomprepare_ui.hide();
		}
		if(h1global.curUIMgr.gameroom_ui){
			h1global.curUIMgr.gameroom_ui.hide();
			h1global.curUIMgr.gameroom_ui.show(function(){
				cc.log("show gameRoom")
				h1global.curUIMgr.gameroom_ui.playSeatEffect((self.serverSitNum + self.curGameRoom.player_num - dealerIdx)%self.curGameRoom.player_num)
			});
		}
		if(h1global.curUIMgr.gameroominfo_ui){
			h1global.curUIMgr.gameroominfo_ui.update_round();
			// h1global.curUIMgr.gameroominfo_ui.update_round_wind(prevailing_wind);
		}
		if(h1global.curUIMgr.gameconfig_ui && h1global.curUIMgr.gameconfig_ui.is_show){
			h1global.curUIMgr.gameconfig_ui.update_state();
		}
		// 关闭结算界面
		if(h1global.curUIMgr.settlement_ui){
			h1global.curUIMgr.settlement_ui.hide();
		}
		if(h1global.curUIMgr.result_ui){
			h1global.curUIMgr.result_ui.hide();
		}
  	},

  	skipPlaceBet : function(dealerIdx, searial_deal_num, current_circle, beginBetList, swapList){
  		cc.log("skipPlaceBet", dealerIdx, searial_deal_num, current_circle, beginBetList, swapList)
  		if(!this.curGameRoom){
			return;
		}
		var self = this;
		cc.log(this.serverSitNum)
		this.serverSitNum = swapList.indexOf(this.serverSitNum) >= 0 ? swapList.indexOf(this.serverSitNum) :  this.serverSitNum
		cc.log("to serverSitNum", this.serverSitNum)
		if(swapList.length > 0) {
			this.curGameRoom.swapSeat(swapList)
		}
  		this.curGameRoom.startPlaceBet(dealerIdx, searial_deal_num, current_circle, beginBetList)
  	},

  	placeBet : function(bet){
  		this.postBetOperation(this.serverSitNum, bet)
  		this.baseCall("placeBet", bet)
  	},

  	postBetOperation : function(serverSitNum, bet){
  		cc.log("postBetOperation", serverSitNum, bet)
  		if (serverSitNum == this.serverSitNum) {
  			this.curGameRoom.betState = 1
  		}
  		this.curGameRoom.betList[serverSitNum] += bet
  		if (h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show) {
  			h1global.curUIMgr.gameroom_ui.update_player_bet(serverSitNum, this.curGameRoom.betList[serverSitNum])
  			h1global.curUIMgr.gameroom_ui.show_player_bet(serverSitNum, bet)
  		}
  	},

	startGame : function(tileList, kingTiles, diceList){
		cc.log("startGame")
		cc.log(tileList, kingTiles, diceList)
		
		if(!this.curGameRoom){
			return;
		}
		var self = this;
		this.curGameRoom.kingTiles = kingTiles
		tileList = tileList.sort(cutil.tileSortFunc)
		this.curGameRoom.handTilesList[this.serverSitNum] = tileList;
		this.curGameRoom.startGame();
		this.diceList = diceList;
		if (this.curGameRoom.max_bet_num > 0) {
			if (h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show) {
				cc.log("==================================")
				h1global.curUIMgr.gameroom_ui.update_game_room()
				h1global.curUIMgr.gameroom_ui.startBeginAnim(diceList, this.curGameRoom.dealerIdx);
				h1global.curUIMgr.gameroom_ui.update_kingtile_panel();
			}
		} else {
			if(h1global.curUIMgr.gameroomprepare_ui){
				h1global.curUIMgr.gameroomprepare_ui.hide();
			}
			if(h1global.curUIMgr.gameroom_ui){
				h1global.curUIMgr.gameroom_ui.hide();
				h1global.curUIMgr.gameroom_ui.show(function(){
					cc.log("show gameRoom")
					h1global.curUIMgr.gameroom_ui.hide_bet_panel()
					h1global.curUIMgr.gameroom_ui.update_game_room()
					h1global.curUIMgr.gameroom_ui.startBeginAnim(diceList, self.curGameRoom.dealerIdx);
					h1global.curUIMgr.gameroom_ui.update_kingtile_panel();
					h1global.curUIMgr.gameroom_ui.playSeatEffect((self.serverSitNum + self.curGameRoom.player_num - self.curGameRoom.dealerIdx)%self.curGameRoom.player_num)
				});
			}
			if(h1global.curUIMgr.gameroominfo_ui){
				h1global.curUIMgr.gameroominfo_ui.update_round();
				// h1global.curUIMgr.gameroominfo_ui.update_round_wind(prevailing_wind);
			}
			if(h1global.curUIMgr.gameconfig_ui && h1global.curUIMgr.gameconfig_ui.is_show){
				h1global.curUIMgr.gameconfig_ui.update_state();
			}
			// 关闭结算界面
			if(h1global.curUIMgr.settlement_ui){
				h1global.curUIMgr.settlement_ui.hide();
			}
			if(h1global.curUIMgr.result_ui){
				h1global.curUIMgr.result_ui.hide();
			}
		}
		
	},

	readyForNextRound : function(serverSitNum){
		if(!this.curGameRoom){
			return;
		}
		this.curGameRoom.updatePlayerState(serverSitNum, 1);
		if(h1global.curUIMgr.gameroomprepare_ui && h1global.curUIMgr.gameroomprepare_ui.is_show){
			h1global.curUIMgr.gameroomprepare_ui.update_player_state(serverSitNum, 1);
		}
	},

	postMultiOperation : function(idx_list, aid_list, tile_list){
		// 用于特殊处理多个人同时胡牌的情况
		if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
			for(var i = 0; i < idx_list.length; i++){
				h1global.curUIMgr.gameroom_ui.playOperationEffect(const_val.OP_KONG_WIN, idx_list[i]);
			}
		}
		// if(this.curGameRoom.playerInfoList[serverSitNum]["sex"] == 1){
		// 	cc.audioEngine.playEffect("res/sound/voice/male/sound_man_win.mp3");
		// } else {
		cc.audioEngine.playEffect("res/sound/voice/female/sound_woman_win.mp3");
		// }
	},

	postOperation : function(serverSitNum, aid, tileList){
		cc.log("postOperation: ", serverSitNum, aid, tileList);
		if(!this.curGameRoom){
			return;
		}
        var langue = cc.sys.localStorage.getItem("langue");
        var tile_voice = "";
		var dict_tile = [];
		dict_tile[0] = [];
		dict_tile[1] = [];
        dict_tile[0]["wenzhoulangue"] = [];
        dict_tile[0]["putonglangue"] = [];
        dict_tile[1]["wenzhoulangue"] = [];
        dict_tile[1]["putonglangue"] = [];

		dict_tile[0]["wenzhoulangue"]["11"] = ["11_0","11_1"];
        dict_tile[0]["wenzhoulangue"]["12"] = ["12_0","12_1"];
		dict_tile[0]["wenzhoulangue"]["21"] = ["21_0","21_1"];
        dict_tile[0]["wenzhoulangue"]["22"] = ["22_0","22_1"];
        dict_tile[0]["wenzhoulangue"]["25"] = ["25_0","25_1"];
        dict_tile[0]["wenzhoulangue"]["37"] = ["37_0","37_1"];
        dict_tile[0]["wenzhoulangue"]["chow"] = ["chow_0","chow_1","chow_2"];

        dict_tile[0]["putonglangue"]["11"] = ["11_0","11_1","11_2"];
        dict_tile[0]["putonglangue"]["13"] = ["13_0","13_1"];
        dict_tile[0]["putonglangue"]["21"] = ["21_0","21_1"];
        dict_tile[0]["putonglangue"]["33"] = ["33_0","33_1"];
        dict_tile[0]["putonglangue"]["36"] = ["36_0","36_1"];
        dict_tile[0]["putonglangue"]["37"] = ["37_0","37_1"];
        dict_tile[0]["putonglangue"]["chow"] = ["chow_0","chow_1"];

        dict_tile[1]["wenzhoulangue"]["11"] = ["11_0","11_1"];
        dict_tile[1]["wenzhoulangue"]["21"] = ["21_0","21_1"];
        dict_tile[1]["wenzhoulangue"]["22"] = ["22_0","22_1","22_2"];
        dict_tile[1]["wenzhoulangue"]["24"] = ["24_0","24_1"];
        dict_tile[1]["wenzhoulangue"]["32"] = ["32_0","32_1"];
        dict_tile[1]["wenzhoulangue"]["33"] = ["33_0","33_1"];
        dict_tile[1]["wenzhoulangue"]["34"] = ["34_0","34_1"];
        dict_tile[1]["wenzhoulangue"]["36"] = ["36_0","36_1"];
        dict_tile[1]["wenzhoulangue"]["37"] = ["37_0","37_1"];
        dict_tile[1]["wenzhoulangue"]["chow"] = ["chow_0","chow_1","chow_2"];

        dict_tile[1]["putonglangue"]["11"] = ["11_0","11_1","11_2"];
        dict_tile[1]["putonglangue"]["13"] = ["13_0","13_1"];
        dict_tile[1]["putonglangue"]["21"] = ["21_0","21_1"];
        dict_tile[1]["putonglangue"]["25"] = ["25_0","25_1"];
        dict_tile[1]["putonglangue"]["33"] = ["33_0","33_1"];
        dict_tile[1]["putonglangue"]["36"] = ["36_0","36_1"];
        dict_tile[1]["putonglangue"]["37"] = ["37_0","37_1"];
        dict_tile[1]["putonglangue"]["chow"] = ["chow_0","chow_1"];
		if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show &&
			h1global.curUIMgr.gameroom_ui.beginAnimPlaying && 
			aid != const_val.OP_DRAW){
			// 开局动画播放过程中，如果收到抓牌以外的操作，则马上停止播放动画
			h1global.curUIMgr.gameroom_ui.stopBeginAnim();
		}
		if(aid == const_val.OP_PASS){

		} else if(aid == const_val.OP_DRAW) {
			// 设置当前玩家
			this.curGameRoom.curPlayerSitNum = serverSitNum;
			this.curGameRoom.lastDrawTile = tileList[0]
			this.curGameRoom.leftTileNum--;

			if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
				h1global.curUIMgr.gameroom_ui.update_draw_tile_panel(this.curGameRoom.leftTileNum);
				h1global.curUIMgr.gameroom_ui.update_roominfo_panel();
			}
			
			if(this.serverSitNum == serverSitNum){
				this.curGameRoom.handTilesList[this.serverSitNum].push(tileList[0]);
				if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
					h1global.curUIMgr.gameroom_ui.update_curplayer_panel(this.serverSitNum);
					// 开始游戏时庄家会多摸一张牌，这时发牌动画还没结束则不要更新手牌，动画结束时手牌会更新到最新
					if(!h1global.curUIMgr.gameroom_ui.beginAnimPlaying){
						h1global.curUIMgr.gameroom_ui.update_player_hand_tiles(this.serverSitNum);
					}
				}
				var op_list = [];
				// 是否可以胡
				cc.log("canWin,11111111111")
				if(this.canWin(this.curGameRoom.handTilesList[this.serverSitNum], tileList[0], const_val.OP_DRAW_WIN)){
					op_list.push(const_val.OP_DRAW_WIN);
				}
				// 是否可以明杠
				// if(this.canSelfExposedKong(this.curGameRoom.upTilesList[this.serverSitNum], tileList[0])){
				// 	op_list.push(const_val.OP_EXPOSED_KONG);
				// }
				// 是否可以暗杠
				// 这里由于可能自摸明杠，所以特殊处理，统一按照暗杠的接口进行处理
				if(this.canSelfExposedKong(this.curGameRoom.upTilesList[this.serverSitNum], tileList[0]) || this.canConcealedKong(this.curGameRoom.handTilesList[this.serverSitNum])){
					op_list.push(const_val.OP_CONCEALED_KONG);
				} else {
					var handTilesList = this.curGameRoom.handTilesList[this.serverSitNum]
					handTilesList = handTilesList.concat([])
					handTilesList.pop()
					for (var i = 0; i < handTilesList.length; i++) {
						if (this.canSelfExposedKong(this.curGameRoom.upTilesList[this.serverSitNum], handTilesList[i])) {
							op_list.push(const_val.OP_CONCEALED_KONG);
							break
						}
					}
				}
				if(op_list.length > 0){
					op_list.push(const_val.OP_PASS);
				}
				
				if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
					h1global.curUIMgr.gameroom_ui.show_operation_panel(op_list);
					// 轮到自己摸牌, 一定可以进行打牌操作
					if(h1global.curUIMgr.gameroom_ui.beginAnimPlaying) {
						h1global.curUIMgr.gameroom_ui.lock_player_hand_tiles();
					}else {
						h1global.curUIMgr.gameroom_ui.unlock_player_hand_tiles();
					}
				}
			} else {
				this.curGameRoom.handTilesList[serverSitNum].push(tileList[0]);
				if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
					h1global.curUIMgr.gameroom_ui.update_curplayer_panel(serverSitNum);
					h1global.curUIMgr.gameroom_ui.update_player_hand_tiles(serverSitNum);
					// h1global.curUIMgr.gameroom_ui.hide_operation_panel();
				}
			}
		} else if(aid == const_val.OP_DISCARD) {
			this.curGameRoom.lastDiscardTile = tileList[0];
			this.curGameRoom.lastDiscardTileFrom = serverSitNum;
			if(this.serverSitNum == serverSitNum){
				cc.log("DEBUG###DISCARD:", this.curGameRoom.handTilesList[this.serverSitNum])
				var discard_idx = this.curGameRoom.handTilesList[this.serverSitNum].indexOf(tileList[0]);
				if(discard_idx >= 0){
					this.curGameRoom.handTilesList[this.serverSitNum].splice(discard_idx, 1);
				}
				this.curGameRoom.handTilesList[this.serverSitNum].sort(cutil.tileSortFunc);
				if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
					h1global.curUIMgr.gameroom_ui.hide_operation_panel();
					h1global.curUIMgr.gameroom_ui.update_player_hand_tiles(this.serverSitNum);
					h1global.curUIMgr.gameroom_ui.update_ready_tile_panel(this.getCanWinTiles());
				}
			} else {
				this.curGameRoom.handTilesList[serverSitNum].pop();
				if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
					h1global.curUIMgr.gameroom_ui.update_player_hand_tiles(serverSitNum);
				}
			}
			this.curGameRoom.discardTilesList[serverSitNum].push(tileList[0]);
			if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
				h1global.curUIMgr.gameroom_ui.update_player_discard_tiles(serverSitNum);
				h1global.curUIMgr.gameroom_ui.play_discard_anim(serverSitNum);
			}
            tile_voice = tileList[0];
			if(dict_tile[this.curGameRoom.playerInfoList[serverSitNum]["sex"]][langue][tileList[0]]){
				tile_voice = tileList[0].toString() + "_" + Math.floor(Math.random() * dict_tile[this.curGameRoom.playerInfoList[serverSitNum]["sex"]][langue][tileList[0]].length);
			}
			if (this.curGameRoom.playerInfoList[serverSitNum]["sex"] == 1) {
				cc.audioEngine.playEffect("res/sound/voice/"+ langue +"/male/sound_man_" + tile_voice.toString() + ".mp3");
			} else {
				cc.audioEngine.playEffect("res/sound/voice/"+ langue +"/female/sound_woman_" + tile_voice.toString() + ".mp3");
			}
			cc.audioEngine.playEffect("res/sound/effect/sound_tileout.mp3");
		} else if(aid == const_val.OP_CHOW){
			if(this.serverSitNum == serverSitNum){
				for(var i = 1; i < 3; i++){
					var discard_idx = this.curGameRoom.handTilesList[this.serverSitNum].indexOf(tileList[i]);
					if(discard_idx >= 0){
						this.curGameRoom.handTilesList[this.serverSitNum].splice(discard_idx, 1);
					}
				}
				this.curGameRoom.handTilesList[this.serverSitNum].sort(cutil.tileSortFunc);
				this.curGameRoom.upTilesList[this.serverSitNum].push((tileList.concat()).sort(cutil.tileSortFunc));
				this.curGameRoom.upTilesOpsList[this.serverSitNum].push([{"opId":aid, "tiles":tileList.concat(), "fromIdx":this.curGameRoom.lastDiscardTileFrom}]);
				if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
					h1global.curUIMgr.gameroom_ui.unlock_player_hand_tiles();
				}
			} else {
				// 手牌全是0，任意删除2张即可
				this.curGameRoom.handTilesList[serverSitNum].splice(0, 2);
				this.curGameRoom.upTilesList[serverSitNum].push((tileList.concat()).sort(cutil.tileSortFunc));
				this.curGameRoom.upTilesOpsList[serverSitNum].push([{"opId":aid, "tiles":tileList.concat(), "fromIdx":this.curGameRoom.lastDiscardTileFrom}]);
			}
			var lastDiscardTileFrom = this.curGameRoom.lastDiscardTileFrom;
			if(lastDiscardTileFrom >= 0){
				// this.curGameRoom.lastDiscardTile = 0;
				// this.curGameRoom.lastDiscardTileFrom = -1;
				this.curGameRoom.discardTilesList[lastDiscardTileFrom].pop();
			}
			if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
				if(lastDiscardTileFrom >= 0){
					h1global.curUIMgr.gameroom_ui.remove_last_discard_tile(lastDiscardTileFrom);
				}
				h1global.curUIMgr.gameroom_ui.update_curplayer_panel(serverSitNum);
				h1global.curUIMgr.gameroom_ui.update_player_hand_tiles(serverSitNum);
				h1global.curUIMgr.gameroom_ui.update_player_up_tiles(serverSitNum);
				h1global.curUIMgr.gameroom_ui.playOperationEffect(aid, serverSitNum);
			}
            tile_voice = Math.floor(Math.random() * dict_tile[this.curGameRoom.playerInfoList[serverSitNum]["sex"]][langue]["chow"].length);
			if (this.curGameRoom.playerInfoList[serverSitNum]["sex"] == 1) {
				cc.audioEngine.playEffect("res/sound/voice/"+ langue +"/male/sound_man_chow_" + tile_voice + ".mp3");
			} else {
				cc.audioEngine.playEffect("res/sound/voice/"+ langue +"/female/sound_woman_chow_" + tile_voice + ".mp3");
			}
		} else if(aid == const_val.OP_PONG){
			if(this.serverSitNum == serverSitNum){
				for(var i = 0; i < 2; i++){
					var discard_idx = this.curGameRoom.handTilesList[this.serverSitNum].indexOf(tileList[0]);
					if(discard_idx >= 0){
						this.curGameRoom.handTilesList[this.serverSitNum].splice(discard_idx, 1);
					}
				}
				this.curGameRoom.handTilesList[this.serverSitNum].sort(cutil.tileSortFunc);
				this.curGameRoom.upTilesList[this.serverSitNum].push(tileList.concat());
				this.curGameRoom.upTilesOpsList[this.serverSitNum].push([{"opId":aid, "tiles":[tileList[0]], "fromIdx":this.curGameRoom.lastDiscardTileFrom}]);
				if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
					h1global.curUIMgr.gameroom_ui.unlock_player_hand_tiles();
				}
			} else {
				// 手牌全是0，任意删除2张即可
				this.curGameRoom.handTilesList[serverSitNum].splice(0, 2);
				this.curGameRoom.upTilesList[serverSitNum].push(tileList.concat());
				this.curGameRoom.upTilesOpsList[serverSitNum].push([{"opId":aid, "tiles":[tileList[0]], "fromIdx":this.curGameRoom.lastDiscardTileFrom}]);
			}
			var lastDiscardTileFrom = this.curGameRoom.lastDiscardTileFrom;
			if(lastDiscardTileFrom >= 0){
				// this.curGameRoom.lastDiscardTile = 0;
				// this.curGameRoom.lastDiscardTileFrom = -1;
				this.curGameRoom.discardTilesList[lastDiscardTileFrom].pop();
			}
			if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
				if(lastDiscardTileFrom >= 0){
					h1global.curUIMgr.gameroom_ui.remove_last_discard_tile(lastDiscardTileFrom);
				}
				h1global.curUIMgr.gameroom_ui.update_curplayer_panel(serverSitNum);
				h1global.curUIMgr.gameroom_ui.update_player_hand_tiles(serverSitNum);
				h1global.curUIMgr.gameroom_ui.update_player_up_tiles(serverSitNum);
				h1global.curUIMgr.gameroom_ui.playOperationEffect(aid, serverSitNum);
			}
			if (this.curGameRoom.playerInfoList[serverSitNum]["sex"] == 1) {
				cc.audioEngine.playEffect("res/sound/voice/"+ langue +"/male/sound_man_pong.mp3");
			} else {
				cc.audioEngine.playEffect("res/sound/voice/"+ langue +"/female/sound_woman_pong.mp3");
			}
		} else if(aid == const_val.OP_EXPOSED_KONG){
			var kongIdx = this.getSelfExposedKongIdx(this.curGameRoom.upTilesList[serverSitNum], tileList[3]);
			if(kongIdx < 0){
				// 直接明杠
				if(this.serverSitNum == serverSitNum){
					for(var i = 0; i < 3; i++){
						var discard_idx = this.curGameRoom.handTilesList[this.serverSitNum].indexOf(tileList[3]);
						if(discard_idx >= 0){
							this.curGameRoom.handTilesList[this.serverSitNum].splice(discard_idx, 1);
						}
					}
					this.curGameRoom.handTilesList[this.serverSitNum].sort(cutil.tileSortFunc);
					this.curGameRoom.upTilesList[this.serverSitNum].push(tileList.concat());
					this.curGameRoom.upTilesOpsList[this.serverSitNum].push([{"opId":aid, "tiles":[tileList[3]], "fromIdx":this.curGameRoom.lastDiscardTileFrom}]);
				} else {
					// 手牌全是0，任意删除3张即可
					this.curGameRoom.handTilesList[serverSitNum].splice(0, 3);
					this.curGameRoom.upTilesList[serverSitNum].push(tileList);
					this.curGameRoom.upTilesOpsList[serverSitNum].push([{"opId":aid, "tiles":[tileList[3]], "fromIdx":this.curGameRoom.lastDiscardTileFrom}]);
				}
			} else {
				// 已有对应的碰的情况下加杠
				if(this.serverSitNum == serverSitNum){
					var discard_idx = this.curGameRoom.handTilesList[this.serverSitNum].indexOf(tileList[3]);
					if(discard_idx >= 0){
						this.curGameRoom.handTilesList[this.serverSitNum].splice(discard_idx, 1);
					}
					this.curGameRoom.handTilesList[this.serverSitNum].sort(cutil.tileSortFunc);
					this.curGameRoom.upTilesList[this.serverSitNum][kongIdx].push(tileList[3]);
					this.curGameRoom.upTilesOpsList[this.serverSitNum][kongIdx].push({"opId":aid, "tiles":[tileList[3]], "fromIdx":this.serverSitNum});
				} else {
					// 手牌全是0，任意删除1张即可
					this.curGameRoom.handTilesList[serverSitNum].splice(0, 1);
					this.curGameRoom.upTilesList[serverSitNum][kongIdx].push(tileList[3]);
					this.curGameRoom.upTilesOpsList[serverSitNum][kongIdx].push({"opId":aid, "tiles":[tileList[3]], "fromIdx":serverSitNum});
				}
			}
			var lastDiscardTileFrom = this.curGameRoom.lastDiscardTileFrom;
			var lastDiscardTile = this.curGameRoom.lastDiscardTile;
			// if(lastDiscardTileFrom >= 0 && this.serverSitNum != serverSitNum){
			if(lastDiscardTileFrom >= 0 && tileList[3] == lastDiscardTile){
				// this.curGameRoom.lastDiscardTile = 0;
				// this.curGameRoom.lastDiscardTileFrom = -1;
				this.curGameRoom.discardTilesList[lastDiscardTileFrom].pop();
			}
			if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
				if(lastDiscardTileFrom >= 0 && tileList[3] == lastDiscardTile){
					h1global.curUIMgr.gameroom_ui.remove_last_discard_tile(lastDiscardTileFrom);
				}
				h1global.curUIMgr.gameroom_ui.update_player_hand_tiles(serverSitNum);
				h1global.curUIMgr.gameroom_ui.update_player_up_tiles(serverSitNum);
				h1global.curUIMgr.gameroom_ui.playOperationEffect(aid, serverSitNum);
			}
			if (this.curGameRoom.playerInfoList[serverSitNum]["sex"] == 1) {
				cc.audioEngine.playEffect("res/sound/voice/"+ langue +"/male/sound_man_kong.mp3");
			} else {
				cc.audioEngine.playEffect("res/sound/voice/"+ langue +"/female/sound_woman_kong.mp3");
			}
		} else if(aid == const_val.OP_CONCEALED_KONG){
			if(this.serverSitNum == serverSitNum){
				for(var i = 0; i < 4; i++){
					var discard_idx = this.curGameRoom.handTilesList[this.serverSitNum].indexOf(tileList[3]);
					if(discard_idx >= 0){
						this.curGameRoom.handTilesList[this.serverSitNum].splice(discard_idx, 1);
					}
				}
				this.curGameRoom.handTilesList[this.serverSitNum].sort(cutil.tileSortFunc);
				this.curGameRoom.upTilesList[this.serverSitNum].push(tileList);
				this.curGameRoom.upTilesOpsList[this.serverSitNum].push([{"opId":aid, "tiles":[tileList[3]], "fromIdx":this.serverSitNum}]);
			} else {
				// 手牌全是0，任意删除4张即可
				this.curGameRoom.handTilesList[serverSitNum].splice(0, 4);
				this.curGameRoom.upTilesList[serverSitNum].push(tileList);
				this.curGameRoom.upTilesOpsList[serverSitNum].push([{"opId":aid, "tiles":[tileList[3]], "fromIdx":serverSitNum}]);
			}
			if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
				h1global.curUIMgr.gameroom_ui.update_player_hand_tiles(serverSitNum);
				h1global.curUIMgr.gameroom_ui.update_player_up_tiles(serverSitNum);
				h1global.curUIMgr.gameroom_ui.playOperationEffect(aid, serverSitNum);
			}
			if (this.curGameRoom.playerInfoList[serverSitNum]["sex"] == 1) {
				cc.audioEngine.playEffect("res/sound/voice/"+ langue +"/male/sound_man_kong.mp3");
			} else {
				cc.audioEngine.playEffect("res/sound/voice/"+ langue +"/female/sound_woman_kong.mp3");
			}
		} else if(aid == const_val.OP_DRAW_WIN || aid == const_val.OP_KONG_WIN || aid == const_val.OP_WREATH_WIN || aid == const_val.OP_GIVE_WIN){
			if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
				h1global.curUIMgr.gameroom_ui.playOperationEffect(aid, serverSitNum);
			}
		} else if(aid == const_val.OP_READY){

		} else if(aid == const_val.OP_CUT){
			this.curGameRoom.leftTileNum--
			this.curGameRoom.cutIdxsList[serverSitNum].push(this.curGameRoom.discardTilesList[serverSitNum].length)
			this.curGameRoom.discardTilesList[serverSitNum].push(tileList[0]);
			if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
				h1global.curUIMgr.gameroom_ui.update_player_discard_tiles(serverSitNum);
				// h1global.curUIMgr.gameroom_ui.play_discard_anim(serverSitNum);
			}
		} else if (aid == const_val.OP_KONG_WREATH) {
			cc.log("玩家 杠花") 
		}
	},

	selfPostOperation : function(aid, tiles){
		// 由于自己打的牌自己不需要经服务器广播给自己，因而只要在doOperation时，自己postOperation给自己
		// 而doOperation和postOperation的参数不同，这里讲doOperation的参数改为postOperation的参数
		var tileList = tiles.slice(0);
		if(aid == const_val.OP_PASS){

		} else if(aid == const_val.OP_DRAW) {
			
		} else if(aid == const_val.OP_DISCARD) {
			
		} else if(aid == const_val.OP_CHOW){
			
		} else if(aid == const_val.OP_PONG){
			tileList = [tileList[0], tileList[0], tileList[0]];
		} else if(aid == const_val.OP_EXPOSED_KONG){
			tileList = [tileList[0], tileList[0], tileList[0], tileList[0]];
		} else if(aid == const_val.OP_CONCEALED_KONG){
			tileList = [0, 0, 0, tileList[0]];
		} else if(aid == const_val.OP_DRAW_WIN || aid == const_val.OP_KONG_WIN || aid == const_val.OP_WREATH_WIN || aid == const_val.OP_GIVE_WIN){

		} else if(aid == const_val.OP_READY){

		} else if(aid == const_val.OP_KONG_WREATH){

		}
		// 用于转换doOperation到postOperation的参数
		this.postOperation(this.serverSitNum, aid, tileList);
	},

	doOperation : function(aid, tileList){
		cc.log("doOperation: ", aid, tileList)
		if(!this.curGameRoom){
			return;
		}
		if(this.curGameRoom.curPlayerSitNum == this.serverSitNum && aid == const_val.OP_PASS){
			return;
		}
		if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
			h1global.curUIMgr.gameroom_ui.lock_player_hand_tiles();
		}
		// 自己的操作直接本地执行，不需要广播给自己
		this.selfPostOperation(aid, tileList);
		this.baseCall("doOperation", aid, tileList);
	},

	doOperationFailed : function(err){
		cc.log("doOperationFailed: " + err.toString());
	},

	confirmOperation : function(aid, tileList){
		if(!this.curGameRoom){
			return;
		}
		this.curGameRoom.waitAid = -1;
		// 自己的操作直接本地执行，不需要广播给自己
		this.selfPostOperation(aid, tileList);
		this.baseCall("confirmOperation", aid, tileList);
	},

	waitForOperation : function(aid, tileList){
		cc.log("waitForOperation",aid, tileList)
		// tileList暂时没有用处，值[0] == this.curGameRoom.lastDiscardTile
		if(!this.curGameRoom){
			return;
		}
		this.curGameRoom.waitAid = aid;
		var op_list = [];
		if(aid == const_val.OP_DISCARD) {
			// 是否可以明杠
			if(this.canExposedKong(this.curGameRoom.handTilesList[this.serverSitNum], this.curGameRoom.lastDiscardTile)){
				op_list.push(const_val.OP_EXPOSED_KONG);
			}
			// 是否可以碰
			if(this.canPong(this.curGameRoom.handTilesList[this.serverSitNum], this.curGameRoom.lastDiscardTile)){
				op_list.push(const_val.OP_PONG);
			}
			// 是否可以吃
			if(this.canChow(this.curGameRoom.handTilesList[this.serverSitNum], this.curGameRoom.lastDiscardTile, this.serverSitNum)){
				op_list.push(const_val.OP_CHOW);
			}
			
		} else if(aid == const_val.OP_KONG_WIN){
			// 抢杠胡
			var tryHandTilesList = this.curGameRoom.handTilesList[this.serverSitNum].concat([tileList[0]])
			cc.log("canWin,22222222222")
			if(this.canWin(tryHandTilesList, tileList[0], const_val.OP_KONG_WIN)){
				op_list.push(const_val.OP_KONG_WIN);
			}
		}  else if(aid == const_val.OP_GIVE_WIN){
			//是否可以 放炮胡
			var tryHandTilesList = this.curGameRoom.handTilesList[this.serverSitNum].concat([tileList[0]])
			cc.log("canWin,444444444")
			if(this.canWin(tryHandTilesList, tileList[0], const_val.OP_GIVE_WIN)){
				op_list.push(const_val.OP_GIVE_WIN);
			}
		} else if (aid == const_val.OP_WREATH_WIN) {
			cc.log("canWin,33333333333")
			// if (this.canWin(this.curGameRoom.handTilesList[this.serverSitNum], this.curGameRoom.lastDrawTile, const_val.OP_WREATH_WIN)) {
			// 	op_list.push(const_val.OP_WREATH_WIN);
			// }
		}
		op_list.push(const_val.OP_PASS);
		if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
			h1global.curUIMgr.gameroom_ui.show_operation_panel(op_list, 1);
		}
	},

	roundResult : function(roundRoomInfo){
		if(!this.curGameRoom){
			return;
		}
		cc.log("roundResult")
		cc.log(roundRoomInfo)
		this.curGameRoom.endGame();
		var playerInfoList = roundRoomInfo["player_info_list"];
		for(var i = 0; i < playerInfoList.length; i++){
			this.curGameRoom.playerInfoList[i]["score"] = playerInfoList[i]["score"];
			this.curGameRoom.playerInfoList[i]["total_score"] = playerInfoList[i]["total_score"];
		}
		if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
			h1global.curUIMgr.gameroom_ui.play_luckytiles_anim(roundRoomInfo["lucky_tiles"], function(){
				if(h1global.curUIMgr.settlement_ui){
					h1global.curUIMgr.settlement_ui.show_by_info(roundRoomInfo);
				}
			});
		}
	},

	finalResult : function(finalPlayerInfoList, roundRoomInfo){
		if(!this.curGameRoom){
			return;
		}
		if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
			h1global.curUIMgr.gameroom_ui.play_luckytiles_anim(roundRoomInfo["lucky_tiles"], function(){
				if(h1global.curUIMgr.settlement_ui){
					h1global.curUIMgr.settlement_ui.show_by_info(roundRoomInfo, function(){
						if(h1global.curUIMgr.result_ui){
							h1global.curUIMgr.result_ui.show_by_info(finalPlayerInfoList);
						}
					});
				}
			});
		}
	},

	roundEndCallback:function(){
		if(!this.curGameRoom){
			return;
		}
		this.baseCall("roundEndCallback");
	},
	
	notifyPlayerOnlineStatus:function(serverSitNum, status){
		if(!this.curGameRoom){
			return;
		}
		this.curGameRoom.updatePlayerOnlineState(serverSitNum, status);
		if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
			h1global.curUIMgr.gameroom_ui.update_player_online_state(serverSitNum, status);
		}
	},

	startRaceHorse:function(){
		if (this.curGameRoom) {
			this.curGameRoom.raceHourseState = 1
		}
	},
});
