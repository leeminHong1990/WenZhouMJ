// var UIBase = require("src/views/ui/UIBase.js")
// cc.loader.loadJs("src/views/ui/UIBase.js")
var GameRoomUI = UIBase.extend({
	ctor:function() {
		this._super();
		this.resourceFilename = "res/ui/GameRoomUI.json";
		this.talk_img_num = 0;
	},
	initUI:function(){
		// var bg_img = ccui.helper.seekWidgetByName(this.rootUINode, "bg_img");
		// var bg_img_content_size = bg_img.getContentSize();
		// var scale = cc.winSize.width/bg_img_content_size.width;
		// if (cc.winSize.height/bg_img_content_size.height > scale){
		// 	scale = cc.winSize.height/bg_img_content_size.height;
		// }
		// bg_img.setScale(scale);
		var player = h1global.entityManager.player();
		// 打牌动画所需资源
		var tile_img = ccui.ImageView.create();
		tile_img.setScale(1.5);
		tile_img.loadTexture("Mahjong/mahjong_tile_fly.png", ccui.Widget.PLIST_TEXTURE);
		this.rootUINode.addChild(tile_img);
		var mahjong_img = ccui.ImageView.create();
		mahjong_img.setPosition(cc.p(36, 70));
		mahjong_img.setName("mahjong_img");
		tile_img.addChild(mahjong_img);
		tile_img.setVisible(false);
		this.discard_tile_anim_img = tile_img;

		this.bet_num = 0
		// for (var i = 0; i < player.curGameRoom.player_num; i++) {
		// 	this.update_wreath_panel(i)
		// }

		// TEST
		// this.play_luckytiles_anim([11, 12, 13]);
		// this.playOperationEffect(const_val.OP_PONG);
		// this.startBeginAnim();
		if(!cc.audioEngine.isMusicPlaying()){
            cc.audioEngine.resumeMusic();
        }


        if (player.curGameRoom.player_num == 2) {
        	this.rootUINode.getChildByName("player_info_panel1").setVisible(false);
        	this.rootUINode.getChildByName("player_info_panel3").setVisible(false);
        }

        this.init_player_info_panel();
        h1global.curUIMgr.gameroominfo_ui.show();
        if (player.curGameRoom.isPlayingGame == const_val.STATE_BET && player.curGameRoom.betState == 0) {
        	this.init_bet_panel()
        	this.show_bet_panel()
        } else if (player.curGameRoom.isPlayingGame == const_val.STATE_PLAY) {
        	this.update_game_room()
        }

        if (h1global.curUIMgr.gameplayerinfo_ui && h1global.curUIMgr.gameplayerinfo_ui.is_show) {
            h1global.curUIMgr.gameplayerinfo_ui.hide();
        }
	},

	init_bet_panel:function(){
		var self = this;
		var player = h1global.entityManager.player();
		var bet_panel = this.rootUINode.getChildByName("bet_panel")
		var bet_num_label = bet_panel.getChildByName("bet_num_label")
		var bet_img = bet_panel.getChildByName("max_bet_img")
		bet_img.loadTexture("res/ui/GameRoomUI/gameroom_max_bet_" + String(player.curGameRoom.max_bet_num) +".png")
		bet_img.ignoreContentAdaptWithSize(true)

		var add_btn = bet_panel.getChildByName("add_btn")
		function add_btn_event(sender, eventType){
			if (eventType === ccui.Widget.TOUCH_ENDED) {
				cc.log("add_btn_event")
				cc.log(self.bet_num , player.serverSitNum, player.curGameRoom.betList, player.curGameRoom.max_bet_num)
				if (self.bet_num + player.curGameRoom.betList[player.serverSitNum] < player.curGameRoom.max_bet_num) {
					self.bet_num += 1
					bet_num_label.setString(self.bet_num)
				}
			}
		}
		add_btn.addTouchEventListener(add_btn_event)

		var sub_btn = bet_panel.getChildByName("sub_btn")
		function sub_btn_event(sender, eventType){
			if (eventType === ccui.Widget.TOUCH_ENDED) {
				cc.log("sub_btn_event")
				if (self.bet_num > 0) {
					self.bet_num -= 1
					bet_num_label.setString(self.bet_num)
				}
			}
		}
		sub_btn.addTouchEventListener(sub_btn_event)

		var dealer_sure_btn = bet_panel.getChildByName("dealer_sure_btn")
		function dealer_sure_btn_event(sender, eventType){
			if (eventType === ccui.Widget.TOUCH_ENDED) {
				cc.log("dealer_sure_btn_event==>bet_num:", self.bet_num)
				if (self.bet_num >= 0) {
					player.placeBet(self.bet_num)
					self.hide_bet_panel()
				}
			}
		}
		dealer_sure_btn.addTouchEventListener(dealer_sure_btn_event)

		var player_sure_btn = bet_panel.getChildByName("player_sure_btn")
		function player_sure_btn_event(sender, eventType){
			if (eventType === ccui.Widget.TOUCH_ENDED) {
				cc.log("player_sure_btn_event==>bet_num:", self.bet_num)
				player.placeBet(self.bet_num)
				self.hide_bet_panel()
			}
		}
		player_sure_btn.addTouchEventListener(player_sure_btn_event)
		
		var cancel_btn = bet_panel.getChildByName("cancel_btn")
		function cancel_btn_event(sender, eventType){
			if (eventType === ccui.Widget.TOUCH_ENDED) {
				cc.log("cancel_btn_event")
				player.placeBet(0)
				self.hide_bet_panel()
			}
		}
		cancel_btn.addTouchEventListener(cancel_btn_event)
	},

	playSeatEffect:function(dirNum){
		var player = h1global.entityManager.player();
		var directionList = ["east", "south", "west", "north"];
		var winds = [const_val.WIND_EAST, const_val.WIND_SOUTH, const_val.WIND_WEST, const_val.WIND_NORTH]
		if (player.curGameRoom.player_num == 2) {
			directionList = ["east", "west"];
			winds = [const_val.WIND_EAST, const_val.WIND_WEST]
		}
		var cur_img = ccui.ImageView.create();
		cur_img.loadTexture("Mahjong/mahjong_tile_player_hand.png", ccui.Widget.PLIST_TEXTURE);
			var tile_img = ccui.ImageView.create();
			tile_img.loadTexture("Mahjong/mahjong_big_" + winds[dirNum] + ".png", ccui.Widget.PLIST_TEXTURE)
			cur_img.addChild(tile_img)
			tile_img.setPosition(cc.p(37, 45))
			cur_img.setPosition(cc.p(cc.winSize.width * 0.5, cc.winSize.height * 0.5))
			this.rootUINode.addChild(cur_img);
			cur_img.runAction(cc.Sequence.create(
				cc.DelayTime.create(1.5), 
				cc.CallFunc.create(
					function(){
						cur_img.removeFromParent()
					}
				)
			))
	},

	show_bet_panel:function(){
		var player = h1global.entityManager.player();
		this.bet_num = 0
		var bet_panel = this.rootUINode.getChildByName("bet_panel")
		var bet_num_label = bet_panel.getChildByName("bet_num_label")
		bet_num_label.setString(this.bet_num.toString())
		bet_panel.setVisible(true)
		var dealer_sure_btn = bet_panel.getChildByName("dealer_sure_btn")
		var player_sure_btn = bet_panel.getChildByName("player_sure_btn")
		if (player.serverSitNum == player.curGameRoom.dealerIdx) {
			dealer_sure_btn.setVisible(true)
			player_sure_btn.setVisible(false)
		}else{
			dealer_sure_btn.setVisible(false)
			player_sure_btn.setVisible(true)
		}
	},

	hide_bet_panel:function(){
		this.rootUINode.getChildByName("bet_panel").setVisible(false)
	},

	show_player_bet:function(serverSitNum, bet_num){
		var player = h1global.entityManager.player();
		cc.log(serverSitNum, player.server2CurSitNum(serverSitNum), "bet_num", bet_num)
		if (serverSitNum < 0 || serverSitNum > 3 || bet_num < 0 || bet_num > 10) {
			return
		}
		var player_info_panel = this.rootUINode.getChildByName("player_info_panel" + String(player.server2CurSitNum(serverSitNum)));
		var place_bet_panel = player_info_panel.getChildByName("place_bet_panel");
		place_bet_panel.getChildByName("score_img").loadTexture("res/ui/GameRoomUI/gameroom_score_" + String(bet_num) + ".png");
		place_bet_panel.runAction(cc.Sequence.create(
			cc.CallFunc.create(function(){
				place_bet_panel.setVisible(true);
			}),
			cc.DelayTime.create(2),
			cc.CallFunc.create(function(){
				place_bet_panel.setVisible(false);
			})
		))
	},

	update_game_room:function(){
		var player = h1global.entityManager.player();
		this.beginAnimPlaying = false;
		this.init_game_panel();
		this.init_ready_tile_panel();// 必须在this.init_curplayer_panel()的前面，因为可能使用到这里初始化的变量
		// this.init_player_panel();
		this.init_curplayer_panel();
		this.init_player_tile_panel();
		this.init_player_discard_panel();
		this.init_operation_panel();
		this.init_chow_panel();

		var show_lucky_tiles_panel = this.rootUINode.getChildByName("show_lucky_tiles_panel");
		this.rootUINode.reorderChild(show_lucky_tiles_panel, 1);

		this.update_draw_tile_panel(player.curGameRoom.leftTileNum);

		this.update_roominfo_panel();

		this.update_kingtile_panel();

		if (player.curGameRoom.player_num == 2) {
        	this.rootUINode.getChildByName("player_tile_panel0").setVisible(true);
        	this.rootUINode.getChildByName("player_tile_panel2").setVisible(true);
        	this.rootUINode.getChildByName("game_info_panel").getChildByName("player_discard_panel0").setVisible(true);
        	this.rootUINode.getChildByName("game_info_panel").getChildByName("player_discard_panel2").setVisible(true);
        	this.rootUINode.getChildByName("game_info_panel").getChildByName("player_discard_panel1").setVisible(false);
        	this.rootUINode.getChildByName("game_info_panel").getChildByName("player_discard_panel3").setVisible(false);
		} else {
			for (var i = 0; i < 4; i++) {
				this.rootUINode.getChildByName("player_tile_panel" + i.toString()).setVisible(true);
        		this.rootUINode.getChildByName("game_info_panel").getChildByName("player_discard_panel" + i.toString()).setVisible(true);
			}
		}
		// 牌墩
		for (var i = 0; i < 4; i++) {
    		this.rootUINode.getChildByName("draw_tile_panel" + String(i)).setVisible(false);
    	}
    	// 东南西北  + 已出的牌
    	this.rootUINode.getChildByName("game_info_panel").setVisible(true);
	},

	init_game_panel:function(){
		var game_info_panel = this.rootUINode.getChildByName("game_info_panel");
		var operation_panel = this.rootUINode.getChildByName("operation_panel");
		operation_panel.setVisible(false);

		// var self = this;
		// function touch_event(sender, eventType){
		// 	if (eventType === ccui.Widget.TOUCH_ENDED) {
		// 		function playEnd(){
		// 			cc.log("playEnd")
		// 		}
		// 		self.throwTheDice([[1, 2], [3, 1], [5, 4], [1, 1]],2, playEnd)
		// 	}
		// }
		// game_info_panel.addTouchEventListener(touch_event)
	},

	init_curplayer_panel:function(){
		var player = h1global.entityManager.player();
		this.game_info_panel = this.rootUINode.getChildByName("game_info_panel");
		this.cur_player_panel = ccui.helper.seekWidgetByName(this.game_info_panel, "cur_player_panel");
		// this.cur_player_panel.setRotation((90 * h1global.entityManager.player().serverSitNum)%360);
		if (player.curGameRoom.player_num == 2) {
			this.directionList = ["east", "west"];
			// this.cur_player_panel.getChildByName("direct_img2").setVisible(false)
			for(var i = 0; i < 2; i++){
				var index = i == 1 ? 2 : i;
				var direct_img = this.cur_player_panel.getChildByName("direct_img" + index.toString());
				direct_img.loadTexture("res/ui/GameRoomUI/" + this.directionList[(player.serverSitNum + 2 - player.curGameRoom.dealerIdx + i)%2] + ".png");
			}
		} else {
			this.directionList = ["east", "south", "west", "north"];
			for(var i = 0; i < 4; i++){
				var direct_img = this.cur_player_panel.getChildByName("direct_img" + i.toString());
				direct_img.loadTexture("res/ui/GameRoomUI/" + this.directionList[(player.serverSitNum + 4 - player.curGameRoom.dealerIdx + i)%4] + ".png");
			}
		}
		
		var curPlayerSitNum = player.curGameRoom.curPlayerSitNum;
		this.update_curplayer_panel(curPlayerSitNum);
		this.update_ready_tile_panel(player.getCanWinTiles());
		if(player.serverSitNum == curPlayerSitNum && (player.curGameRoom.handTilesList[player.serverSitNum].length)%3==2){
			this.unlock_player_hand_tiles();
		} else {
			this.lock_player_hand_tiles();
		}
	},

	update_room_time_left:function(leftTime){
		leftTime = Math.floor(leftTime)
		this.cur_player_panel = ccui.helper.seekWidgetByName(this.game_info_panel, "cur_player_panel");
		var lefttime_fnt = ccui.helper.seekWidgetByName(this.cur_player_panel, "lefttime_fnt");
		lefttime_fnt.setString(cutil.convert_second_to_ms(leftTime))
		lefttime_fnt.ignoreContentAdaptWithSize(true)
	},

	update_curplayer_panel:function(serverSitNum){
		if(!this.is_show) {return;}
		var player = h1global.entityManager.player();
		if (player.curGameRoom.player_num == 2) {
			for(var i = 0; i < 2; i++){
				var index = i == 1 ? 2 : i;
				var light_img = this.cur_player_panel.getChildByName("light_img" + index.toString());
				if( i == ((serverSitNum + 2 - h1global.entityManager.player().serverSitNum)%2) ){
					light_img.runAction(cc.RepeatForever.create(cc.Sequence.create(cc.FadeIn.create(1.0), cc.FadeOut.create(1.0))));
					light_img.setVisible(true);
				} else {
					light_img.stopAllActions();
					light_img.setVisible(false);
				}
			}
		} else {
			for(var i = 0; i < 4; i++){
				var light_img = this.cur_player_panel.getChildByName("light_img" + i.toString());
				if( i == ((serverSitNum + 4 - h1global.entityManager.player().serverSitNum)%4) ){
					light_img.runAction(cc.RepeatForever.create(cc.Sequence.create(cc.FadeIn.create(1.0), cc.FadeOut.create(1.0))));
					light_img.setVisible(true);
				} else {
					light_img.stopAllActions();
					light_img.setVisible(false);
				}
			}
		}
	},

	init_player_info_panel:function(){
		var player = h1global.entityManager.player();
		var curGameRoom = h1global.entityManager.player().curGameRoom;
		cc.log("init_player_info_panel")
		cc.log(curGameRoom.playerInfoList)
		for(var i = 0; i < player.curGameRoom.player_num; i++){
			this.update_player_info_panel(i, curGameRoom.playerInfoList[i]);
			this.update_player_bet(i, curGameRoom.betList[i])
			this.update_player_online_state(i, curGameRoom.playerInfoList[i]["online"]);
		}
	},

	update_player_info_panel:function(serverSitNum, playerInfo){
		if(serverSitNum < 0 || serverSitNum > 3){
			return;
		}
		cc.log("update_player_info_panel", serverSitNum, playerInfo)
		var player = h1global.entityManager.player();
		var idx = player.server2CurSitNum(serverSitNum);
		if(!this.is_show) {return;}
		var cur_player_info_panel = this.rootUINode.getChildByName("player_info_panel" + idx.toString());
		if(!playerInfo){
			cur_player_info_panel.setVisible(false);
			return;
		}
		var name_label = ccui.helper.seekWidgetByName(cur_player_info_panel, "name_label");
		name_label.setString(playerInfo["nickname"]);
		var frame_img = ccui.helper.seekWidgetByName(cur_player_info_panel, "frame_img");
		cur_player_info_panel.reorderChild(frame_img, 1);
		frame_img.setTouchEnabled(true);
		frame_img.addTouchEventListener(function(sender, eventType){
			if(eventType == ccui.Widget.TOUCH_ENDED){
				h1global.curUIMgr.gameplayerinfo_ui.show_by_info(playerInfo);
			}
		});
		var dealer_img = ccui.helper.seekWidgetByName(cur_player_info_panel, "dealer_img");
		cur_player_info_panel.reorderChild(dealer_img, 2);
		cutil.loadPortraitTexture(playerInfo["head_icon"], function(img){
			if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show && cur_player_info_panel){
				cur_player_info_panel.getChildByName("portrait_sprite").removeFromParent();
				var portrait_sprite  = new cc.Sprite(img);
				portrait_sprite.setName("portrait_sprite");
				portrait_sprite.setScale(86/portrait_sprite.getContentSize().width);
				portrait_sprite.x = cur_player_info_panel.getContentSize().width * 0.5;
				portrait_sprite.y = cur_player_info_panel.getContentSize().height * 0.5;
    			cur_player_info_panel.addChild(portrait_sprite);
			}
		}, playerInfo["uuid"].toString() + ".png");
		var score_label = ccui.helper.seekWidgetByName(cur_player_info_panel, "score_label");
		score_label.ignoreContentAdaptWithSize(true);
		score_label.setString((playerInfo["total_score"] || 0).toString());
		var dealer_img = ccui.helper.seekWidgetByName(cur_player_info_panel, "dealer_img");
		if(player.curGameRoom.dealerIdx == serverSitNum){
			dealer_img.setVisible(true);
		} else {
			dealer_img.setVisible(false);
		}
		var owner_img = ccui.helper.seekWidgetByName(cur_player_info_panel, "owner_img");
		cur_player_info_panel.reorderChild(owner_img, 3);
		if(serverSitNum == 0){
			owner_img.setVisible(true);
		} else {
			owner_img.setVisible(false);
		}
		cur_player_info_panel.setVisible(true);
	},

	update_player_bet:function(serverSitNum, bet_num){
		if(serverSitNum < 0 || serverSitNum > 3){
			return;
		}
		var player = h1global.entityManager.player();
		var idx = player.server2CurSitNum(serverSitNum);
		if(!this.is_show) {return;}
		var cur_player_info_panel = this.rootUINode.getChildByName("player_info_panel" + idx.toString());
		var cur_bet_label = cur_player_info_panel.getChildByName("bet_bg").getChildByName("cur_bet_label");
		cur_bet_label.setString(String(bet_num))
	},

	update_player_online_state:function(serverSitNum, state){
		if(serverSitNum < 0 || serverSitNum > 3){
			return;
		}
		var player = h1global.entityManager.player();
		var player_info_panel = this.rootUINode.getChildByName("player_info_panel" + player.server2CurSitNum(serverSitNum).toString());
		var state_img = ccui.helper.seekWidgetByName(player_info_panel, "state_img");
		if(state == 1){
			// state_label.setString("在线");
			// state_label.setColor(cc.color(215, 236, 218));
			state_img.loadTexture("res/ui/GameRoomUI/state_online.png");
			state_img.setVisible(true);
		} else if (state == 0) {
			// state_label.setString("离线");
			// state_label.setColor(cc.color(255, 0, 0));
			state_img.loadTexture("res/ui/GameRoomUI/state_offline.png");
			state_img.setVisible(true);
		} else {
			state_img.setVisible(false);
		}
	},

	init_player_tile_panel:function(){
		this.kongTilesList = [[], [], [], []];
		this.upTileMarksList = [[], [], [], []];
		this.handTileMarksList = [[], [], [], []];
		this.discardTileMarksList = [[], [], [], []];
		this.curSelectTile = undefined;
		this.autoDiscardHint = undefined;
		this.moving_tile = undefined;
		var player = h1global.entityManager.player();
		var self = this;
		var cur_player_tile_panel = this.rootUINode.getChildByName("player_tile_panel0").getChildByName("player_hand_panel");
		function hand_tile_event(sender, eventType){
			if (!player.canDiscard(sender.tileNum)) {
				return
			}
			if (eventType == ccui.Widget.TOUCH_BEGAN) {
				cc.log("TOUCH_BEGAN")
			}
			if(eventType == ccui.Widget.TOUCH_ENDED){
				if(!sender.tileNum){
					return;
				}

				if(self.curSelectTile){
					if(sender === self.curSelectTile){
						self.curSelectTile.stopAllActions();
						self.curSelectTile.setPositionY(0);
						self.curSelectTile.setVisible(true);
						self.curSelectTile = undefined;
						player.doOperation(const_val.OP_DISCARD, [sender.tileNum]);
					} else {
						self.curSelectTile.stopAllActions();
						self.curSelectTile.setPositionY(0);
						self.curSelectTile.setVisible(true);
						self.curSelectTile = sender;
						self.curSelectTile.stopAllActions();
						self.curSelectTile.setPositionY(20);
						self.curSelectTile.setVisible(true);
					}
				} else {
					self.curSelectTile = sender;
					self.curSelectTile.stopAllActions();
					self.curSelectTile.setPositionY(20);
					self.curSelectTile.setVisible(true);
				}
				if(self.moving_tile){
					sender.setVisible(true);
					self.moving_tile.removeFromParent();
					self.moving_tile = undefined;
				}
			} else if(eventType == ccui.Widget.TOUCH_MOVED){
				var cur_touch_pos = sender.getTouchMovePosition();
                var p = cur_player_tile_panel.convertToNodeSpace(cur_touch_pos);
                var cur_p = sender.getPosition();
				if(self.curSelectTile && (((p.x - cur_p.x) > 50 || (p.x - cur_p.x) < -50) && ((p.y - cur_p.y) > 50 || (p.y - cur_p.y) < -50))){
               		self.curSelectTile.stopAllActions();
					self.curSelectTile.setPositionY(0);
					self.curSelectTile.setVisible(true);
					self.curSelectTile = undefined;
                }
				if(!self.moving_tile){
					self.moving_tile = sender.clone();
					self.moving_tile.setTouchEnabled(false);
					self.moving_tile.setAnchorPoint(cc.p(0.5, 0.5));
					sender.setVisible(false);
					cur_player_tile_panel.addChild(self.moving_tile);
				}
                self.moving_tile.setPosition(p);
			} else if(eventType == ccui.Widget.TOUCH_CANCELED){
				cc.log('TOUCH_CANCELED')
				if(self.moving_tile){
					var y = self.moving_tile.getPositionY();
					self.moving_tile.removeFromParent();
					self.moving_tile = undefined;
					if(y > 140){
						player.doOperation(const_val.OP_DISCARD, [sender.tileNum]);
					} else {
						sender.setVisible(true);
						if(self.curSelectTile){
							// 正常情况下该段代码不会被执行，因为CANCELED之前一定有MOVED，而MOVED会清掉self.curSelectTile
							if(sender === self.curSelectTile){
								self.curSelectTile.stopAllActions();
								self.curSelectTile.setPositionY(0);
								self.curSelectTile.setVisible(true);
								self.curSelectTile = undefined;
								player.doOperation(const_val.OP_DISCARD, [sender.tileNum]);
							} else {
								self.curSelectTile.stopAllActions();
								self.curSelectTile.setPositionY(0);
								self.curSelectTile.setVisible(true);
								self.curSelectTile = sender;
								self.curSelectTile.stopAllActions();
								self.curSelectTile.setPositionY(20);
								self.curSelectTile.setVisible(true);
							}
						} else {
							self.curSelectTile = sender;
							self.curSelectTile.stopAllActions();
							self.curSelectTile.setPositionY(20);
							self.curSelectTile.setVisible(true);
						}
					}
				}
			}
		}
		for(var i = 0; i < 17; i++){
			var tile_img = ccui.helper.seekWidgetByName(cur_player_tile_panel, "tile_img_" + i.toString());
			tile_img.addTouchEventListener(hand_tile_event);
		}
		
		for(var i = 0; i < player.curGameRoom.player_num; i++){
			this.update_player_hand_tiles(i);
			var player_tile_panel = this.rootUINode.getChildByName("player_tile_panel" + i.toString());
			var player_up_panel = player_tile_panel.getChildByName("player_up_panel");
			for(var j = 0; j < 5; j++){
				var from_img = player_up_panel.getChildByName("from_img_" + j.toString());
				player_up_panel.reorderChild(from_img, 3);
			}
			this.update_player_up_tiles(i);
		}
	},

	is_has_WORDS:function () {
        if(!this.is_show) {return;}
        var is_has = false;
        var player = h1global.entityManager.player();
        var handTilesList = player.curGameRoom.handTilesList[player.serverSitNum];
        var list = [];
        var count = 0;
        var king_num = 0;
        for (var i = 0; i < handTilesList.length; i++) {
        	list.push(player.canDiscard(handTilesList[i]));
            if(handTilesList[i] == player.curGameRoom.kingTiles){
        		king_num ++;
			}
        }
        for(var i = 0;i < list.length;i++){
        	if(list[i] == true){
        		count ++;
			}
		}
		if(count == list.length - king_num){
        	is_has = false;
		}else {
			is_has = true;
		}
		return is_has;
    },

	update_titles_mask_img:function (visible) {
		if(!this.is_show) {return;}
		var player = h1global.entityManager.player();
		var cur_player_tile_panel = this.rootUINode.getChildByName("player_tile_panel0").getChildByName("player_hand_panel");
		var handTilesList = player.curGameRoom.handTilesList[player.serverSitNum];
		for (var i = 0; i < 17; i++) {
			var tile_img = ccui.helper.seekWidgetByName(cur_player_tile_panel, "tile_img_" + i.toString());
			var mask_img = tile_img.getChildByName("mask_img");
			if (handTilesList[i]) {
				if(visible) {
                    mask_img.setVisible(!player.canDiscard(handTilesList[i]));
                    if (!this.is_has_WORDS() && handTilesList[i] == player.curGameRoom.kingTiles) {
                        mask_img.setVisible(false);
                    }
				}else {
					mask_img.setVisible(visible);
				}
			}
		}
	},

	lock_player_hand_tiles:function(){
		if(!this.is_show) {return;}
		this.update_titles_mask_img(false);
		var cur_player_tile_panel = this.rootUINode.getChildByName("player_tile_panel0").getChildByName("player_hand_panel");
		this.rootUINode.getChildByName("player_tile_panel0").getChildByName("tile_hint_img").setVisible(false);
		var mask_panel = cur_player_tile_panel.getChildByName("mask_panel");
		mask_panel.setVisible(true);
		this.curSelectTile = undefined;
		if(this.moving_tile){
			this.moving_tile.removeFromParent();
			this.moving_tile = undefined;
		}
	},

	unlock_player_hand_tiles:function(){
		if(!this.is_show) {return;}
		this.update_titles_mask_img(true);
		var player = h1global.entityManager.player();
		cc.log(player.serverSitNum, player.curGameRoom.handTilesList[player.serverSitNum])
		if((player.curGameRoom.handTilesList[player.serverSitNum].length)%3!=2){
			return;
		}
		var cur_player_tile_panel = this.rootUINode.getChildByName("player_tile_panel0").getChildByName("player_hand_panel");
		this.rootUINode.getChildByName("player_tile_panel0").getChildByName("tile_hint_img").setVisible(true);
		var mask_panel = cur_player_tile_panel.getChildByName("mask_panel");
		mask_panel.setVisible(false);
	},

	startBeginAnim:function(diceList, dealerIdx){
		this.beginAnimPlaying = true;
		this.lock_player_hand_tiles();
		var self = this;
		var player = h1global.entityManager.player();
		// for(var i = 0; i < 4; i++){
		// 	this.update_player_hand_tiles(i, player.curGameRoom.handTilesList[i].slice(0, 4));
		// }
		// this.rootUINode.runAction(cc.Sequence.create(cc.DelayTime.create(0.5), 
		// 	cc.CallFunc.create(function(){
		// 		for(var j = 0; j < 4; j++){
		// 			self.update_player_hand_tiles(j, player.curGameRoom.handTilesList[j].slice(0, 8));
		// 		}
		// 	})
		// ));
		// this.rootUINode.runAction(cc.Sequence.create(cc.DelayTime.create(1.0), 
		// 	cc.CallFunc.create(function(){
		// 		for(var j = 0; j < 4; j++){
		// 			self.update_player_hand_tiles(j, player.curGameRoom.handTilesList[j].slice(0, 12));
		// 		}
		// 	})
		// ));
		// this.rootUINode.runAction(cc.Sequence.create(cc.DelayTime.create(1.5), 
		// 	cc.CallFunc.create(function(){
		// 		self.beginAnimPlaying = false;
		// 		for(var j = 0; j < 4; j++){
		// 			self.update_player_hand_tiles(j, player.curGameRoom.handTilesList[j]);
		// 		}
		// 		var curPlayerSitNum = player.curGameRoom.curPlayerSitNum;
		// 		if(player.serverSitNum == curPlayerSitNum){
		// 			self.unlock_player_hand_tiles();
		// 		} else {
		// 			self.lock_player_hand_tiles();
		// 		}
		// 	})
		// ));
		
		function setBeginGameShow(is_show){
			var room_info_panel = self.rootUINode.getChildByName("room_info_panel");
			var game_info_panel = self.rootUINode.getChildByName("game_info_panel");
			room_info_panel.setVisible(is_show)
			game_info_panel.setVisible(is_show)
			self.rootUINode.getChildByName("kingtile_panel").setVisible(is_show)
			self.rootUINode.getChildByName("operation_panel").setVisible(is_show)
			for (var i = 0; i < player.curGameRoom.player_num; i++) {
				var idx = i == 1 && player.curGameRoom.player_num == 2 ? 2 : i
				var cur_player_tile_panel = self.rootUINode.getChildByName("player_tile_panel" + idx.toString()).getChildByName("player_hand_panel");
				cur_player_tile_panel.setVisible(is_show);
				// self.rootUINode.getChildByName("wreath_panel" + String(idx)).setVisible(is_show)
				// self.rootUINode.getChildByName("draw_tile_panel" + idx).setVisible(is_show)
			}
		}
		
		function playAnimation(){
			var cur_tile_num = 1;
			for(var i = 0; i < player.curGameRoom.player_num; i++){
				self.update_player_hand_tiles(i, player.curGameRoom.handTilesList[i].slice(0, cur_tile_num));
			}
			setBeginGameShow(true)
			self.rootUINode.runAction(cc.Repeat.create(
				cc.Sequence.create(cc.DelayTime.create(0.1),
					cc.CallFunc.create(function(){
						cur_tile_num = cur_tile_num + 1;
						if(cur_tile_num == 17){
							self.beginAnimPlaying = false;
							var curPlayerSitNum = player.curGameRoom.curPlayerSitNum;
							if(player.serverSitNum == curPlayerSitNum && (player.curGameRoom.handTilesList[player.serverSitNum].length)%3==2){
								self.unlock_player_hand_tiles();
							} else {
								self.lock_player_hand_tiles();
							}
						}
						for(var i = 0; i < player.curGameRoom.player_num; i++){
							self.update_player_hand_tiles(i, player.curGameRoom.handTilesList[i].slice(0, cur_tile_num));
						}
					})
				), 16
			));
		}
		
		this.throwTheDice(diceList, dealerIdx, playAnimation)
		setBeginGameShow(false)
		player.isPlayingStartAnimation = 0;


		// for(var i = 0; i < 4; i++){
		// 	if(i == player.curPlayerSitNum){
		// 		(function(i){
		// 			var cur_tile_num = 1;
		// 			self.update_player_hand_tiles(i, player.curGameRoom.handTilesList[i].slice(0, cur_tile_num));
		// 			self.rootUINode.runAction(cc.Repeat.create(
		// 				cc.Sequence.create(cc.DelayTime.create(0.1),
		// 					cc.CallFunc.create(function(){
		// 						cur_tile_num = cur_tile_num + 1;
		// 						if(cur_tile_num == 14){
		// 							self.beginAnimPlaying = false;
		// 							self.update_player_hand_tiles(i, player.curGameRoom.handTilesList[i]);
		// 							var curPlayerSitNum = player.curGameRoom.curPlayerSitNum;
		// 							if(player.serverSitNum == curPlayerSitNum){
		// 								self.unlock_player_hand_tiles();
		// 							} else {
		// 								self.lock_player_hand_tiles();
		// 							}
		// 						} else {
		// 							self.update_player_hand_tiles(i, player.curGameRoom.handTilesList[i].slice(0, cur_tile_num));
		// 						}
		// 					})
		// 				), 13
		// 			))
		// 		})(i);
		// 	} else {
		// 		(function(i){
		// 			var cur_tile_num = 1;
		// 			self.update_player_hand_tiles(i, player.curGameRoom.handTilesList[i].slice(0, cur_tile_num));
		// 			self.rootUINode.runAction(cc.Repeat.create(
		// 				cc.Sequence.create(cc.DelayTime.create(0.1),
		// 					cc.CallFunc.create(function(){
		// 						cur_tile_num = cur_tile_num + 1;
		// 						if(cur_tile_num == 14){
		// 							self.update_player_hand_tiles(i, player.curGameRoom.handTilesList[i]);
		// 						} else {
		// 							self.update_player_hand_tiles(i, player.curGameRoom.handTilesList[i].slice(0, cur_tile_num));
		// 						}
		// 					})
		// 				), 13
		// 			))
		// 		})(i);
		// 	}
		// }
	},

	stopBeginAnim:function(){
		this.rootUINode.stopAllActions();
		this.beginAnimPlaying = false;
        var player = h1global.entityManager.player();
		// this.rootUINode.getChildByName("kingtile_panel").setVisible(true)
		for(var j = 0; j < player.curGameRoom.player_num; j++){
			this.update_player_hand_tiles(j);
		}
		var curPlayerSitNum = player.curGameRoom.curPlayerSitNum;
		if(player.serverSitNum == curPlayerSitNum && (player.curGameRoom.handTilesList[player.serverSitNum].length)%3==2){
			this.unlock_player_hand_tiles();
		} else {
			this.lock_player_hand_tiles();
		}
	},

	throwTheDice:function(diceList, dealerIdx, cbkFunc){
		var player = h1global.entityManager.player();
		var self = this;
		var effect_info =  {
		    "TIME" : 1.0,
		    "NAME" : "effect_rand_",
		    "ZORDER" : 0,
		    "TYPE" : 2,
		    "ID" : 3504104,
		    "PARENT" : "",
		    "FRAMENUM" : 4,
		    "SCALE" : 2.0,
		    "OFFX" : 50,
		    "X" : 0.0,
		    "IS_AVOID" : 0,
		    "Y" : 0.4,
		    "OFFY" : 188,
	     }

	    cc.Texture2D.defaultPixelFormat = cc.Texture2D.PIXEL_FORMAT_RGBA4444;
        var cache = cc.spriteFrameCache;
        var plist_path = "res/effect/dice.plist";
        var png_path = "res/effect/dice.png";
        cache.addSpriteFrames(plist_path, png_path);
    	cc.Texture2D.defaultPixelFormat = cc.Texture2D.PIXEL_FORMAT_RGBA8888;

    	var effectiveDiceNum = 0
    	for (var i = 0; i < diceList.length; i++) {
    		if (diceList[i][0] > 0 || diceList[i][1] > 0) {
    			effectiveDiceNum += 1
    		}
    	}

  //   	var newList = diceList.concat(diceList.slice(0,dealerIdx))
  //   	var curDiceIndex = dealerIdx
  //   	var curPlayNum = 0
		// function playNextDice(){
		// 	if (curPlayNum >= effectiveDiceNum) {
		// 		cbkFunc()
		// 	}
		// 	for (var i = curDiceIndex; i < newList.length; i++) {
		// 		curDiceIndex = i+1
		// 		if (newList[i][0] > 0 || newList[i][1] > 0) {
		// 			curPlayNum += 1
		// 			cc.log("throwTheDice:index",i%4)
		// 			playDiceEffect(h1global.entityManager.player().server2CurSitNum(i%4), newList[i])
		// 			break
		// 		}
		// 	}
		// }
		cc.log(diceList)
		for (var i = 0; i < diceList.length; i++) {
			if (diceList[i][0] > 0 && diceList[i][1] > 0) {
				playDiceEffect(player.server2CurSitNum(i%player.curGameRoom.player_num), diceList[i])
			}
		}

		var playNum = 0
		function playCbk(){
			playNum += 1
			if (playNum >= effectiveDiceNum) {
				cbkFunc()
			}
		}

		
		function playDiceEffect(seatNum, diceDouble){
			var panel_pos_list = []
			for (var i = 0; i < 4; i++) {
				var pos = self.rootUINode.getChildByName("player_tile_panel" + i).getPosition()
				panel_pos_list.push(pos)
			}
			var dice_1_pos = [[cc.winSize.width/2 - 50, panel_pos_list[0].y + 280],[panel_pos_list[1].x - 288, cc.winSize.height/2 + 100],[cc.winSize.width/2 - 50,  panel_pos_list[2].y - 150],[panel_pos_list[3].x + 300,cc.winSize.height/2 + 100]]
			var dice_2_pos = [[cc.winSize.width/2 + 50, panel_pos_list[0].y + 280],[panel_pos_list[1].x - 288, cc.winSize.height/2 + 0],[cc.winSize.width/2 + 50,  panel_pos_list[2].y - 150],[panel_pos_list[3].x + 300,cc.winSize.height/2 + 0]]

			var posList = [dice_1_pos, dice_2_pos]
			var showNum = 0
			function showDiceEnd(){
				if (showNum >= 2) {
					playCbk()
				}
			}
			function play(seatNum, diceNum){
				UICommonWidget.load_effect_plist("effect_rand_");
				var effect_sprite = cc.Sprite.create();
				effect_sprite.setPosition(posList[diceNum][seatNum][0], posList[diceNum][seatNum][1]);
				effect_sprite.setName("effect_rand_" + seatNum.toString() + diceNum.toString())
				self.rootUINode.addChild(effect_sprite);
				effect_sprite.runAction(cc.RepeatForever.create(UICommonWidget.create_effect_action(effect_info, this.diceEffect)))

				effect_sprite.runAction(cc.Sequence.create(
					cc.jumpTo(0.2, cc.p(posList[diceNum][seatNum][0], posList[diceNum][seatNum][1] + 200), 200, 1),

            		cc.EaseOut.create(cc.MoveTo.create(0.15, cc.p(posList[diceNum][seatNum][0], posList[diceNum][seatNum][1])), 0.3),


            		cc.jumpTo(0.15, cc.p(posList[diceNum][seatNum][0], posList[diceNum][seatNum][1]), 100, 1),
            		cc.DelayTime.create(1.0),
            		cc.CallFunc.create(function(){
            			effect_sprite.removeFromParent()
            			effect_sprite = ccui.ImageView.create();
            			effect_sprite.setName("effect_rand_" + seatNum.toString() + diceNum.toString())
            			effect_sprite.setPosition(posList[diceNum][seatNum][0], posList[diceNum][seatNum][1]);
            			self.rootUINode.addChild(effect_sprite);
            			effect_sprite.loadTexture("dice_" + diceDouble[diceNum] + ".png", ccui.Widget.PLIST_TEXTURE)
            			effect_sprite.runAction(cc.Sequence.create(
            				cc.DelayTime.create(2.0),
            				cc.CallFunc.create(function(){
		            			showNum += 1
		            			effect_sprite.removeFromParent()
		            			showDiceEnd()
		            		})
            			))
            		})	
				))	
			}

			for (var i = 0; i < diceDouble.length; i++) {
				play(seatNum, i)
			}
		}

		// playNextDice()
	},


	update_player_hand_tiles:function(serverSitNum, tileList){
		if(!this.is_show) {return;}
		var player = h1global.entityManager.player();
		var idx = player.server2CurSitNum(serverSitNum);
		var cur_player_tile_panel = this.rootUINode.getChildByName("player_tile_panel" + idx.toString()).getChildByName("player_hand_panel");
		if(!cur_player_tile_panel){
			return;
		}
		var mahjong_hand_str = "";
		// var mahjong_up_str = "";
		// var mahjong_down_str = "";
		// var mahjong_desk_str = "";

		var upTilesList = player.curGameRoom.upTilesList[serverSitNum];
		var handTilesList = tileList ? tileList : player.curGameRoom.handTilesList[serverSitNum];

		for(var i = 0; i < this.handTileMarksList[idx].length; i++){
			this.handTileMarksList[idx][i].removeFromParent();
		}
		this.handTileMarksList[idx] = [];

		if(idx == 0){
			cur_player_tile_panel.setPositionX(upTilesList.length * 136);
			mahjong_hand_str = "mahjong_tile_player_hand.png";
			// mahjong_up_str = "mahjong_tile_player_up.png";
			// mahjong_down_str = "mahjong_tile_player_down.png";
			// mahjong_desk_str = "mahjong_tile_player_desk.png";

			for(var i = 0; i < 17; i++){
				var tile_img = ccui.helper.seekWidgetByName(cur_player_tile_panel, "tile_img_" + i.toString());
				tile_img.stopAllActions();
				tile_img.setPositionX(73 * i);
				tile_img.setPositionY(0);
				if(handTilesList[i]){
					tile_img.tileNum = handTilesList[i];
					tile_img.setTouchEnabled(true);
					var mahjong_img = tile_img.getChildByName("mahjong_img");
					tile_img.loadTexture("Mahjong/" + mahjong_hand_str, ccui.Widget.PLIST_TEXTURE);
					tile_img.setVisible(true);
					mahjong_img.ignoreContentAdaptWithSize(true);
					mahjong_img.loadTexture("Mahjong/mahjong_big_" + handTilesList[i].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
					mahjong_img.setVisible(true);
					if(player.curGameRoom.kingTiles == handTilesList[i]){
						var kingtilemark_img = ccui.ImageView.create("res/ui/GameRoomUI/kingtilemark.png");
						this.handTileMarksList[idx].push(kingtilemark_img);
						kingtilemark_img.setAnchorPoint(0.0, 1.0);
						kingtilemark_img.setPosition(cc.p(0, 90));
						kingtilemark_img.setScale(0.7);
						tile_img.addChild(kingtilemark_img);
					}
				} else {
					tile_img.setVisible(false);
				}
			}
			if(this.autoDiscardHint){
				this.autoDiscardHint.removeFromParent();
				this.autoDiscardHint = undefined;
			}
			if(handTilesList.length % 3 == 2 && !this.beginAnimPlaying){
				var tile_img = ccui.helper.seekWidgetByName(cur_player_tile_panel, "tile_img_" + (handTilesList.length - 1).toString());
				tile_img.setPositionX(tile_img.getPositionX() + 20);
				this.autoDiscardHint = ccui.ImageView.create();
				this.autoDiscardHint.loadTexture("res/ui/GameroomUI/gameroom_autodiscard_light.png");
				this.autoDiscardHint.setPosition(cc.p(tile_img.getContentSize().width * 0.5, tile_img.getContentSize().height * 0.5));
				tile_img.addChild(this.autoDiscardHint);
				tile_img.runAction(cc.Sequence.create(cc.MoveBy.create(0.2, cc.p(0, 20)), cc.MoveBy.create(0.2, cc.p(0, -20))));
			}
		} else if(idx == 1){
			cur_player_tile_panel.setPositionY(upTilesList.length * 106);
			mahjong_hand_str = "mahjong_tile_right_hand.png";
			mahjong_up_str = "mahjong_tile_right_up.png";
			// mahjong_down_str = "mahjong_tile_right_down.png";
			// mahjong_desk_str = "mahjong_tile_right_desk.png";
			for(var i = 0; i < 17; i++){
				var tile_img = ccui.helper.seekWidgetByName(cur_player_tile_panel, "tile_img_" + i.toString());
				tile_img.stopAllActions();
				tile_img.setPositionX(50);
				tile_img.setPositionY(32 * i);
				if(handTilesList[i]){
					var mahjong_img = tile_img.getChildByName("mahjong_img");
					tile_img.ignoreContentAdaptWithSize(true);
					tile_img.loadTexture("Mahjong/" + mahjong_up_str, ccui.Widget.PLIST_TEXTURE);
					tile_img.setVisible(true);
					mahjong_img.ignoreContentAdaptWithSize(true);
					mahjong_img.loadTexture("Mahjong/mahjong_small_" + handTilesList[i].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
					// mahjong_img.setSkewY(-18);
					mahjong_img.setVisible(true);
					if(player.curGameRoom.kingTiles == handTilesList[i]){
						var kingtilemark_img = ccui.ImageView.create("res/ui/GameRoomUI/kingtilemark.png");
						this.handTileMarksList[idx].push(kingtilemark_img);
						kingtilemark_img.setAnchorPoint(0.0, 1.0);
						kingtilemark_img.setPosition(cc.p(20, 20));
						kingtilemark_img.setSkewY(-18);
						kingtilemark_img.setRotation(-90);
						kingtilemark_img.setScale(0.4);
						tile_img.addChild(kingtilemark_img);
					}
				} else if(handTilesList[i] === 0){
					var mahjong_img = tile_img.getChildByName("mahjong_img");
					tile_img.ignoreContentAdaptWithSize(true);
					tile_img.loadTexture("Mahjong/" + mahjong_hand_str, ccui.Widget.PLIST_TEXTURE);
					// mahjong_img.loadTexture("Mahjong/mahjong_small_" + player.curGameRoom.handTilesList[i].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
					tile_img.setVisible(true);
					mahjong_img.setVisible(false);
				} else {
					tile_img.setVisible(false);
				}
			}
			if(handTilesList.length % 3 == 2 && !this.beginAnimPlaying){
				var tile_img = ccui.helper.seekWidgetByName(cur_player_tile_panel, "tile_img_" + (handTilesList.length - 1).toString());
				tile_img.setPositionY(tile_img.getPositionY() + 10);
				tile_img.runAction(cc.Sequence.create(cc.MoveBy.create(0.2, cc.p(0, 10)), cc.MoveBy.create(0.2, cc.p(0, -10))));
			}
		} else if(idx == 2){
			cur_player_tile_panel.setPositionX(614 - upTilesList.length * 136);
			mahjong_hand_str = "mahjong_tile_top_hand.png";
			mahjong_up_str = "mahjong_tile_top_up.png";
			// mahjong_down_str = "mahjong_tile_top_down.png";
			// mahjong_desk_str = "mahjong_tile_top_desk.png";
			for(var i = 0; i < 17; i++){
				var tile_img = ccui.helper.seekWidgetByName(cur_player_tile_panel, "tile_img_" + i.toString());
				tile_img.stopAllActions();
				tile_img.setPositionX(494 - 38 * i);
				tile_img.setPositionY(59);
				if(handTilesList[i]){
					var mahjong_img = tile_img.getChildByName("mahjong_img");
					tile_img.ignoreContentAdaptWithSize(true);
					tile_img.loadTexture("Mahjong/" + mahjong_up_str, ccui.Widget.PLIST_TEXTURE);
					tile_img.setVisible(true);
					mahjong_img.ignoreContentAdaptWithSize(true);
					mahjong_img.loadTexture("Mahjong/mahjong_small_" + handTilesList[i].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
					mahjong_img.setVisible(true);
					if(player.curGameRoom.kingTiles == handTilesList[i]){
						var kingtilemark_img = ccui.ImageView.create("res/ui/GameRoomUI/kingtilemark.png");
						this.handTileMarksList[idx].push(kingtilemark_img);
						kingtilemark_img.setAnchorPoint(0.0, 1.0);
						kingtilemark_img.setPosition(cc.p(40, 14));
						kingtilemark_img.setRotation(180);
						kingtilemark_img.setScale(0.4);
						tile_img.addChild(kingtilemark_img);
					}
				} else if(handTilesList[i] === 0){
					var mahjong_img = tile_img.getChildByName("mahjong_img");
					tile_img.ignoreContentAdaptWithSize(true);
					tile_img.loadTexture("Mahjong/" + mahjong_hand_str, ccui.Widget.PLIST_TEXTURE);
					// mahjong_img.loadTexture("Mahjong/mahjong_small_" + player.curGameRoom.handTilesList[i].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
					tile_img.setVisible(true);
					mahjong_img.setVisible(false);
				} else {
					tile_img.setVisible(false);
				}
			}
			if(handTilesList.length % 3 == 2 && !this.beginAnimPlaying){
				var tile_img = ccui.helper.seekWidgetByName(cur_player_tile_panel, "tile_img_" + (handTilesList.length - 1).toString());
				tile_img.setPositionX(tile_img.getPositionX() - 20);
				tile_img.runAction(cc.Sequence.create(cc.MoveBy.create(0.2, cc.p(0, 10)), cc.MoveBy.create(0.2, cc.p(0, -10))));
			}
		} else if(idx == 3){
			cur_player_tile_panel.setPositionY(503 - upTilesList.length * 106);
			mahjong_hand_str = "mahjong_tile_left_hand.png";
			mahjong_up_str = "mahjong_tile_left_up.png";
			// mahjong_down_str = "mahjong_tile_left_down.png";
			// mahjong_desk_str = "mahjong_tile_left_desk.png";
			for(var i = 0; i < 17; i++){
				var tile_img = ccui.helper.seekWidgetByName(cur_player_tile_panel, "tile_img_" + i.toString());
				tile_img.stopAllActions();
				tile_img.setPositionX(0);
				tile_img.setPositionY(416 - 32 * i);
				if(handTilesList[i]){
					var mahjong_img = tile_img.getChildByName("mahjong_img");
					tile_img.ignoreContentAdaptWithSize(true);
					tile_img.loadTexture("Mahjong/" + mahjong_up_str, ccui.Widget.PLIST_TEXTURE);
					tile_img.setVisible(true);
					mahjong_img.ignoreContentAdaptWithSize(true);
					mahjong_img.loadTexture("Mahjong/mahjong_small_" + handTilesList[i].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
					// mahjong_img.setSkewY(18);
					mahjong_img.setVisible(true);
					if(player.curGameRoom.kingTiles == handTilesList[i]){
						var kingtilemark_img = ccui.ImageView.create("res/ui/GameRoomUI/kingtilemark.png");
						this.handTileMarksList[idx].push(kingtilemark_img);
						kingtilemark_img.setAnchorPoint(0.0, 1.0);
						kingtilemark_img.setPosition(cc.p(68, 56));
						kingtilemark_img.setSkewY(18);
						kingtilemark_img.setRotation(90);
						kingtilemark_img.setScale(0.4);
						tile_img.addChild(kingtilemark_img);
					}
				} else if(handTilesList[i] === 0){
					var mahjong_img = tile_img.getChildByName("mahjong_img");
					tile_img.ignoreContentAdaptWithSize(true);
					tile_img.loadTexture("Mahjong/" + mahjong_hand_str, ccui.Widget.PLIST_TEXTURE);
					// mahjong_img.loadTexture("Mahjong/mahjong_small_" + player.curGameRoom.handTilesList[i].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
					tile_img.setVisible(true);
					mahjong_img.setVisible(false);
				} else {
					tile_img.setVisible(false);
				}
			}
			if(handTilesList.length % 3 == 2 && !this.beginAnimPlaying){
				var tile_img = ccui.helper.seekWidgetByName(cur_player_tile_panel, "tile_img_" + (handTilesList.length - 1).toString());
				tile_img.setPositionY(tile_img.getPositionY() - 10);
				tile_img.runAction(cc.Sequence.create(cc.MoveBy.create(0.2, cc.p(0, 10)), cc.MoveBy.create(0.2, cc.p(0, -10))));
			}
		}
	},

	update_player_up_tiles:function(serverSitNum){
		if(!this.is_show) {return;}
		var player = h1global.entityManager.player();
		var idx = player.server2CurSitNum(serverSitNum);
		var cur_player_tile_panel = this.rootUINode.getChildByName("player_tile_panel" + idx.toString()).getChildByName("player_up_panel");
		if(!cur_player_tile_panel){
			return;
		}
		// var mahjong_hand_str = "";
		var mahjong_up_str = "";
		var mahjong_down_str = "";
		// var mahjong_desk_str = "";
		// if(idx == 0){
		// 	mahjong_hand_str = "mahjong_tile_player_hand.png";
		// 	mahjong_up_str = "mahjong_tile_player_up.png";
		// 	mahjong_down_str = "mahjong_tile"
		// }
		for(var i = player.curGameRoom.upTilesList[serverSitNum].length * 3; i < 15; i++){
			var tile_img = ccui.helper.seekWidgetByName(cur_player_tile_panel, "tile_img_" + i.toString());
			tile_img.setVisible(false);
		}
		for(var i = 0; i < this.kongTilesList[idx].length; i++){
			this.kongTilesList[idx][i].removeFromParent();
		}
		this.kongTilesList[idx] = [];
		for(var i = 0; i < this.upTileMarksList[idx].length; i++){
			this.upTileMarksList[idx][i].removeFromParent();
		}
		this.upTileMarksList[idx] = [];
		if(idx == 0){
			// mahjong_hand_str = "mahjong_tile_player_hand.png";
			mahjong_up_str = "mahjong_tile_player_up.png";
			mahjong_down_str = "mahjong_tile_player_down.png";
			// mahjong_desk_str = "mahjong_tile_player_desk.png";
			for(var i = 0; i < player.curGameRoom.upTilesList[serverSitNum].length; i++){
				for(var j = 0; j < 3; j++){
					var tile_img = ccui.helper.seekWidgetByName(cur_player_tile_panel, "tile_img_" + (3*i + j).toString());
					// tile_img.setPositionY(0);
					tile_img.setTouchEnabled(false);
					var mahjong_img = tile_img.getChildByName("mahjong_img");
					if(player.curGameRoom.upTilesList[serverSitNum][i][j]){
						tile_img.loadTexture("Mahjong/" + mahjong_up_str, ccui.Widget.PLIST_TEXTURE);
						mahjong_img.ignoreContentAdaptWithSize(true);
						mahjong_img.loadTexture("Mahjong/mahjong_small_" + player.curGameRoom.upTilesList[serverSitNum][i][j].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
						mahjong_img.setVisible(true);
						if(player.curGameRoom.kingTile == player.curGameRoom.upTilesList[serverSitNum][i][j]){
							var kingtilemark_img = ccui.ImageView.create("res/ui/GameRoomUI/kingtilemark.png");
							this.upTileMarksList[idx].push(kingtilemark_img);
							kingtilemark_img.setAnchorPoint(0.0, 1.0);
							kingtilemark_img.setPosition(cc.p(0, 60));
							kingtilemark_img.setScale(0.46);
							tile_img.addChild(kingtilemark_img);
						}
					} else {
						tile_img.loadTexture("Mahjong/" + mahjong_down_str, ccui.Widget.PLIST_TEXTURE);
						mahjong_img.setVisible(false);
					}
					tile_img.setVisible(true);
				}
				if(player.curGameRoom.upTilesList[serverSitNum][i].length > 3){
					var tile_img = ccui.helper.seekWidgetByName(cur_player_tile_panel, "tile_img_" + (3*i + 1).toString());
					var kong_tile_img = tile_img.clone();
					this.kongTilesList[idx].push(kong_tile_img);
					var mahjong_img = kong_tile_img.getChildByName("mahjong_img");
					if(player.curGameRoom.upTilesList[serverSitNum][i][3]){
						kong_tile_img.loadTexture("Mahjong/" + mahjong_up_str, ccui.Widget.PLIST_TEXTURE);
						mahjong_img.ignoreContentAdaptWithSize(true);
						mahjong_img.loadTexture("Mahjong/mahjong_small_" + player.curGameRoom.upTilesList[serverSitNum][i][3].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
						mahjong_img.setVisible(true);
						if(player.curGameRoom.kingTile == player.curGameRoom.upTilesList[serverSitNum][i][3]){
							var kingtilemark_img = ccui.ImageView.create("res/ui/GameRoomUI/kingtilemark.png");
							this.upTileMarksList[idx].push(kingtilemark_img);
							kingtilemark_img.setAnchorPoint(0.0, 1.0);
							kingtilemark_img.setPosition(cc.p(0, 60));
							kingtilemark_img.setScale(0.46);
							tile_img.addChild(kingtilemark_img);
						}
					} else {
						kong_tile_img.loadTexture("Mahjong/" + mahjong_down_str, ccui.Widget.PLIST_TEXTURE);
						mahjong_img.setVisible(false);
					}
					kong_tile_img.setPositionY(kong_tile_img.getPositionY() + 16);
					kong_tile_img.setVisible(true);
					cur_player_tile_panel.addChild(kong_tile_img);
				}
				var ops = player.curGameRoom.upTilesOpsList[serverSitNum][i];
				var from_img = cur_player_tile_panel.getChildByName("from_img_" + i.toString());
				if(ops){
					var from_idx = player.server2CurSitNum(ops[ops.length-1]["fromIdx"]);
					from_img.setRotation(180 - from_idx * 90);
					from_img.setVisible(true);
				} else {
					from_img.setVisible(false);
				}
			}
		} else if(idx == 1){
			// mahjong_hand_str = "mahjong_tile_right_hand.png";
			mahjong_up_str = "mahjong_tile_right_up.png";
			mahjong_down_str = "mahjong_tile_right_down.png";
			// mahjong_desk_str = "mahjong_tile_right_desk.png";
			for(var i = 0; i < player.curGameRoom.upTilesList[serverSitNum].length; i++){
				for(var j = 0; j < 3; j++){
					var tile_img = ccui.helper.seekWidgetByName(cur_player_tile_panel, "tile_img_" + (3*i + j).toString());
					var mahjong_img = tile_img.getChildByName("mahjong_img");
					if(player.curGameRoom.upTilesList[serverSitNum][i][j]){
						tile_img.loadTexture("Mahjong/" + mahjong_up_str, ccui.Widget.PLIST_TEXTURE);
						mahjong_img.ignoreContentAdaptWithSize(true);
						mahjong_img.loadTexture("Mahjong/mahjong_small_" + player.curGameRoom.upTilesList[serverSitNum][i][j].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
						// mahjong_img.setSkewY(-18);
						mahjong_img.setVisible(true);
						if(player.curGameRoom.kingTile == player.curGameRoom.upTilesList[serverSitNum][i][j]){
							var kingtilemark_img = ccui.ImageView.create("res/ui/GameRoomUI/kingtilemark.png");
							this.upTileMarksList[idx].push(kingtilemark_img);
							kingtilemark_img.setAnchorPoint(0.0, 1.0);
							kingtilemark_img.setPosition(cc.p(20, 20));
							kingtilemark_img.setSkewY(-18);
							kingtilemark_img.setRotation(-90);
							kingtilemark_img.setScale(0.4);
							tile_img.addChild(kingtilemark_img);
						}
					} else {
						tile_img.loadTexture("Mahjong/" + mahjong_down_str, ccui.Widget.PLIST_TEXTURE);
						mahjong_img.setVisible(false);
					}
					tile_img.setVisible(true);
				}
				if(player.curGameRoom.upTilesList[serverSitNum][i].length > 3){
					var tile_img = ccui.helper.seekWidgetByName(cur_player_tile_panel, "tile_img_" + (3*i + 1).toString());
					var kong_tile_img = tile_img.clone();
					this.kongTilesList[idx].push(kong_tile_img);
					var mahjong_img = kong_tile_img.getChildByName("mahjong_img");
					if(player.curGameRoom.upTilesList[serverSitNum][i][3]){
						kong_tile_img.loadTexture("Mahjong/" + mahjong_up_str, ccui.Widget.PLIST_TEXTURE);
						mahjong_img.ignoreContentAdaptWithSize(true);
						mahjong_img.loadTexture("Mahjong/mahjong_small_" + player.curGameRoom.upTilesList[serverSitNum][i][3].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
						// mahjong_img.setSkewY(-18);
						mahjong_img.setVisible(true);
						if(player.curGameRoom.kingTile == player.curGameRoom.upTilesList[serverSitNum][i][3]){
							var kingtilemark_img = ccui.ImageView.create("res/ui/GameRoomUI/kingtilemark.png");
							this.upTileMarksList[idx].push(kingtilemark_img);
							kingtilemark_img.setAnchorPoint(0.0, 1.0);
							kingtilemark_img.setPosition(cc.p(20, 20));
							kingtilemark_img.setSkewY(-18);
							kingtilemark_img.setRotation(-90);
							kingtilemark_img.setScale(0.4);
							tile_img.addChild(kingtilemark_img);
						}
					} else {
						kong_tile_img.loadTexture("Mahjong/" + mahjong_down_str, ccui.Widget.PLIST_TEXTURE);
						mahjong_img.setVisible(false);
					}
					kong_tile_img.setPositionX(kong_tile_img.getPositionX() + 8);
					kong_tile_img.setPositionY(kong_tile_img.getPositionY() + 12);
					kong_tile_img.setVisible(true);
					cur_player_tile_panel.addChild(kong_tile_img);
				}
				var ops = player.curGameRoom.upTilesOpsList[serverSitNum][i];
				var from_img = cur_player_tile_panel.getChildByName("from_img_" + i.toString());
				if(ops){
					var from_idx = player.server2CurSitNum(ops[ops.length-1]["fromIdx"]);
					from_img.setRotation(180 - from_idx * 90 + 16);
					from_img.setVisible(true);
				} else {
					from_img.setVisible(false);
				}
			}
		} else if(idx == 2){
			// mahjong_hand_str = "mahjong_tile_top_hand.png";
			mahjong_up_str = "mahjong_tile_top_up.png";
			mahjong_down_str = "mahjong_tile_top_down.png";
			// mahjong_desk_str = "mahjong_tile_top_desk.png";
			for(var i = 0; i < player.curGameRoom.upTilesList[serverSitNum].length; i++){
				for(var j = 0; j < 3; j++){
					var tile_img = ccui.helper.seekWidgetByName(cur_player_tile_panel, "tile_img_" + (3*i + j).toString());
					var mahjong_img = tile_img.getChildByName("mahjong_img");
					if(player.curGameRoom.upTilesList[serverSitNum][i][j]){
						tile_img.loadTexture("Mahjong/" + mahjong_up_str, ccui.Widget.PLIST_TEXTURE);
						mahjong_img.ignoreContentAdaptWithSize(true);
						mahjong_img.loadTexture("Mahjong/mahjong_small_" + player.curGameRoom.upTilesList[serverSitNum][i][j].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
						mahjong_img.setVisible(true);
						if(player.curGameRoom.kingTile == player.curGameRoom.upTilesList[serverSitNum][i][j]){
							var kingtilemark_img = ccui.ImageView.create("res/ui/GameRoomUI/kingtilemark.png");
							this.upTileMarksList[idx].push(kingtilemark_img);
							kingtilemark_img.setAnchorPoint(0.0, 1.0);
							kingtilemark_img.setPosition(cc.p(40, 14));
							kingtilemark_img.setRotation(180);
							kingtilemark_img.setScale(0.4);
							tile_img.addChild(kingtilemark_img);
						}
					} else {
						tile_img.loadTexture("Mahjong/" + mahjong_down_str, ccui.Widget.PLIST_TEXTURE);
						mahjong_img.setVisible(false);
					}
					tile_img.setVisible(true);
				}
				if(player.curGameRoom.upTilesList[serverSitNum][i].length > 3){
					var tile_img = ccui.helper.seekWidgetByName(cur_player_tile_panel, "tile_img_" + (3*i + 1).toString());
					var kong_tile_img = tile_img.clone();
					this.kongTilesList[idx].push(kong_tile_img);
					var mahjong_img = kong_tile_img.getChildByName("mahjong_img");
					if(player.curGameRoom.upTilesList[serverSitNum][i][3]){
						kong_tile_img.loadTexture("Mahjong/" + mahjong_up_str, ccui.Widget.PLIST_TEXTURE);
						mahjong_img.ignoreContentAdaptWithSize(true);
						mahjong_img.loadTexture("Mahjong/mahjong_small_" + player.curGameRoom.upTilesList[serverSitNum][i][3].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
						mahjong_img.setVisible(true);
						if(player.curGameRoom.kingTile == player.curGameRoom.upTilesList[serverSitNum][i][3]){
							var kingtilemark_img = ccui.ImageView.create("res/ui/GameRoomUI/kingtilemark.png");
							this.upTileMarksList[idx].push(kingtilemark_img);
							kingtilemark_img.setAnchorPoint(0.0, 1.0);
							kingtilemark_img.setPosition(cc.p(40, 14));
							kingtilemark_img.setRotation(180);
							kingtilemark_img.setScale(0.4);
							tile_img.addChild(kingtilemark_img);
						}
					} else {
						kong_tile_img.loadTexture("Mahjong/" + mahjong_down_str, ccui.Widget.PLIST_TEXTURE);
						mahjong_img.setVisible(false);
					}
					kong_tile_img.setPositionY(kong_tile_img.getPositionY() + 16);
					kong_tile_img.setVisible(true);
					cur_player_tile_panel.addChild(kong_tile_img);
				}
				var ops = player.curGameRoom.upTilesOpsList[serverSitNum][i];
				var from_img = cur_player_tile_panel.getChildByName("from_img_" + i.toString());
				if(ops){
					var from_idx = player.server2CurSitNum(ops[ops.length-1]["fromIdx"]);
					from_img.setRotation(180 - from_idx * 90);
					from_img.setVisible(true);
				} else {
					from_img.setVisible(false);
				}
			}
		} else if(idx == 3){
			// mahjong_hand_str = "mahjong_tile_left_hand.png";
			mahjong_up_str = "mahjong_tile_left_up.png";
			mahjong_down_str = "mahjong_tile_left_down.png";
			// mahjong_desk_str = "mahjong_tile_left_desk.png";
			for(var i = 0; i < player.curGameRoom.upTilesList[serverSitNum].length; i++){
				for(var j = 0; j < 3; j++){
					var tile_img = ccui.helper.seekWidgetByName(cur_player_tile_panel, "tile_img_" + (3*i + j).toString());
					var mahjong_img = tile_img.getChildByName("mahjong_img");
					if(player.curGameRoom.upTilesList[serverSitNum][i][j]){
						tile_img.loadTexture("Mahjong/" + mahjong_up_str, ccui.Widget.PLIST_TEXTURE);
						mahjong_img.ignoreContentAdaptWithSize(true);
						mahjong_img.loadTexture("Mahjong/mahjong_small_" + player.curGameRoom.upTilesList[serverSitNum][i][j].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
						// mahjong_img.setSkewY(16);
						mahjong_img.setVisible(true);
						if(player.curGameRoom.kingTile == player.curGameRoom.upTilesList[serverSitNum][i][j]){
							var kingtilemark_img = ccui.ImageView.create("res/ui/GameRoomUI/kingtilemark.png");
							this.upTileMarksList[idx].push(kingtilemark_img);
							kingtilemark_img.setAnchorPoint(0.0, 1.0);
							kingtilemark_img.setPosition(cc.p(68, 56));
							kingtilemark_img.setSkewY(18);
							kingtilemark_img.setRotation(90);
							kingtilemark_img.setScale(0.4);
							tile_img.addChild(kingtilemark_img);
						}
					} else {
						tile_img.loadTexture("Mahjong/" + mahjong_down_str, ccui.Widget.PLIST_TEXTURE);
						mahjong_img.setVisible(false);
					}
					tile_img.setVisible(true);
				}
				if(player.curGameRoom.upTilesList[serverSitNum][i].length > 3){
					var tile_img = ccui.helper.seekWidgetByName(cur_player_tile_panel, "tile_img_" + (3*i + 1).toString());
					var kong_tile_img = tile_img.clone();
					this.kongTilesList[idx].push(kong_tile_img);
					var mahjong_img = kong_tile_img.getChildByName("mahjong_img");
					if(player.curGameRoom.upTilesList[serverSitNum][i][3]){
						kong_tile_img.loadTexture("Mahjong/" + mahjong_up_str, ccui.Widget.PLIST_TEXTURE);
						mahjong_img.ignoreContentAdaptWithSize(true);
						mahjong_img.loadTexture("Mahjong/mahjong_small_" + player.curGameRoom.upTilesList[serverSitNum][i][3].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
						// mahjong_img.setSkewY(16);
						mahjong_img.setVisible(true);
						if(player.curGameRoom.kingTile == player.curGameRoom.upTilesList[serverSitNum][i][3]){
							var kingtilemark_img = ccui.ImageView.create("res/ui/GameRoomUI/kingtilemark.png");
							this.upTileMarksList[idx].push(kingtilemark_img);
							kingtilemark_img.setAnchorPoint(0.0, 1.0);
							kingtilemark_img.setPosition(cc.p(68, 56));
							kingtilemark_img.setSkewY(18);
							kingtilemark_img.setRotation(90);
							kingtilemark_img.setScale(0.4);
							tile_img.addChild(kingtilemark_img);
						}
					} else {
						kong_tile_img.loadTexture("Mahjong/" + mahjong_down_str, ccui.Widget.PLIST_TEXTURE);
						mahjong_img.setVisible(false);
					}
					kong_tile_img.setPositionX(kong_tile_img.getPositionX() - 8);
					kong_tile_img.setPositionY(kong_tile_img.getPositionY() + 12);
					kong_tile_img.setVisible(true);
					cur_player_tile_panel.addChild(kong_tile_img);
				}
				var ops = player.curGameRoom.upTilesOpsList[serverSitNum][i];
				var from_img = cur_player_tile_panel.getChildByName("from_img_" + i.toString());
				if(ops){
					var from_idx = player.server2CurSitNum(ops[ops.length-1]["fromIdx"]);
					from_img.setRotation(180 - from_idx * 90 - 16);
					from_img.setVisible(true);
				} else {
					from_img.setVisible(false);
				}
			}
		}
	},

	init_player_discard_panel:function(){
		var player = h1global.entityManager.player();
		for(var i = 0; i < player.curGameRoom.player_num; i++){
			this.update_player_discard_tiles(i);
		}
		this.lastDiscardTilePointer = undefined;
	},

	remove_last_discard_tile:function(serverSitNum){
		if(this.lastDiscardTilePointer){
			this.lastDiscardTilePointer.removeFromParent();
			this.lastDiscardTilePointer = undefined;
		}
		this.update_player_discard_tiles(serverSitNum);
	},

	play_discard_anim:function(serverSitNum, onlyTilePointer){
		onlyTilePointer = onlyTilePointer || false;
		var player = h1global.entityManager.player();
		var idx = player.server2CurSitNum(serverSitNum);
		var discardTileIdx = player.curGameRoom.discardTilesList[serverSitNum].length - 1;
		var tileNum = player.curGameRoom.discardTilesList[serverSitNum][discardTileIdx];

		if(!onlyTilePointer){
			// var tile_img = ccui.ImageView.create();
			var tile_img = this.discard_tile_anim_img;
			// tile_img.setScale(1.5);
			// tile_img.loadTexture("Mahjong/mahjong_tile_fly.png", ccui.Widget.PLIST_TEXTURE);
			// var mahjong_img = ccui.ImageView.create();
			var mahjong_img = tile_img.getChildByName("mahjong_img");
			mahjong_img.loadTexture("Mahjong/mahjong_big_" + tileNum.toString() + ".png", ccui.Widget.PLIST_TEXTURE);
			// mahjong_img.setPosition(cc.p(36, 70));
			// tile_img.addChild(mahjong_img);
			// tile_img.setPosition(cc.p(cur_player_tile_panel.getPositionX() + cur_player_tile_panel.getContentSize().width * 0.5, 
			tile_img.stopAllActions();
			tile_img.setVisible(true);
		}

		var cur_player_tile_panel = this.rootUINode.getChildByName("player_tile_panel" + idx.toString());
		
		// 	cur_player_tile_panel.getPositionY() + cur_player_tile_panel.getContentSize().height * 0.5));
		// 设置最后一张discard的牌的指针
		if(this.lastDiscardTilePointer){
			this.lastDiscardTilePointer.removeFromParent();
			this.lastDiscardTilePointer = undefined;
		}
		var tilePointer = ccui.ImageView.create();
		this.lastDiscardTilePointer = tilePointer;
		tilePointer.loadTexture("res/ui/GameRoomUI/gameroom_tile_pointer.png");
		var cur_player_discard_panel = this.game_info_panel.getChildByName("player_discard_panel" + idx.toString());
		var cur_discard_tile_img = cur_player_discard_panel.getChildByName("tile_img_" + discardTileIdx.toString());
		cur_discard_tile_img.addChild(tilePointer);
		// this.rootUINode.addChild(tile_img);

		if(idx == 0){
			tilePointer.setPosition(cc.p(20, 64));
			tilePointer.runAction(cc.RepeatForever.create(cc.Sequence.create(cc.MoveBy.create(0.3, cc.p(0, 10)), cc.MoveBy.create(0.3, cc.p(0, -10)))));
			if(!onlyTilePointer){
				tile_img.setPosition(cc.p(cur_player_tile_panel.getPositionX(), cur_player_tile_panel.getPositionY() + 84));
				tile_img.runAction(cc.Sequence.create(
					cc.DelayTime.create(0.1), 
					// cc.Spawn.create(cc.FadeOut.create(0.1), cc.MoveBy.create(0.1, cc.p(0, 240))), 
					cc.MoveBy.create(0.1, cc.p(0, 240)),
					cc.CallFunc.create(function(){
						// tile_img.removeFromParent();
						tile_img.setVisible(false);
					})
				));
			}
		} else if(idx == 1){
			tilePointer.setPosition(cc.p(25, 53));
			tilePointer.runAction(cc.RepeatForever.create(cc.Sequence.create(cc.MoveBy.create(0.3, cc.p(0, 10)), cc.MoveBy.create(0.3, cc.p(0, -10)))));
			if(!onlyTilePointer){
				tile_img.setPosition(cc.p(cur_player_tile_panel.getPositionX() - 57, cur_player_tile_panel.getPositionY()));
				tile_img.runAction(cc.Sequence.create(
					cc.DelayTime.create(0.1), 
					// cc.Spawn.create(cc.FadeOut.create(0.1), cc.MoveBy.create(0.1, cc.p(-240, 0))), 
					cc.MoveBy.create(0.1, cc.p(-240, 0)),
					cc.CallFunc.create(function(){
						// tile_img.removeFromParent();
						tile_img.setVisible(false);
					})
				));
			}
		} else if(idx == 2){
			tilePointer.setPosition(cc.p(20, 64));
			tilePointer.runAction(cc.RepeatForever.create(cc.Sequence.create(cc.MoveBy.create(0.3, cc.p(0, 10)), cc.MoveBy.create(0.3, cc.p(0, -10)))));
			if(!onlyTilePointer){
				tile_img.setPosition(cc.p(cur_player_tile_panel.getPositionX(), cur_player_tile_panel.getPositionY() - 84));
				tile_img.runAction(cc.Sequence.create(
					cc.DelayTime.create(0.1), 
					// cc.Spawn.create(cc.FadeOut.create(0.1), cc.MoveBy.create(0.1, cc.p(0, -240))),
					cc.MoveBy.create(0.1, cc.p(0, -240)), 
					cc.CallFunc.create(function(){
						// tile_img.removeFromParent();
						tile_img.setVisible(false);
					})
				));
			}
		} else if(idx == 3){
			tilePointer.setPosition(cc.p(25, 53));
			tilePointer.runAction(cc.RepeatForever.create(cc.Sequence.create(cc.MoveBy.create(0.3, cc.p(0, 10)), cc.MoveBy.create(0.3, cc.p(0, -10)))));
			if(!onlyTilePointer){
				tile_img.setPosition(cc.p(cur_player_tile_panel.getPositionX() + 57, cur_player_tile_panel.getPositionY()));
				tile_img.runAction(cc.Sequence.create(
					cc.DelayTime.create(0.1), 
					// cc.Spawn.create(cc.FadeOut.create(0.1), cc.MoveBy.create(0.1, cc.p(240, 0))), 
					cc.MoveBy.create(0.1, cc.p(240, 0)),
					cc.CallFunc.create(function(){
						// tile_img.removeFromParent();
						tile_img.setVisible(false);
					})
				));
			}
		}
	},

	update_player_discard_tiles:function(serverSitNum){
		if(!this.is_show) {return;}
		var player = h1global.entityManager.player();
		var idx = player.server2CurSitNum(serverSitNum);
		var cur_player_discard_panel = this.game_info_panel.getChildByName("player_discard_panel" + idx.toString());
		if(!cur_player_discard_panel){
			return;
		}
		cur_player_discard_panel.setVisible(true)
		// var mahjong_hand_str = "";
		// var mahjong_up_str = "";
		// var mahjong_down_str = "";
		var mahjong_desk_str = "";

		for(var i = 0; i < this.discardTileMarksList[idx].length; i++){
			this.discardTileMarksList[idx][i].removeFromParent();
		}
		this.discardTileMarksList[idx] = [];
		
		if(idx == 0){
			// mahjong_hand_str = "mahjong_tile_player_hand.png";
			// mahjong_up_str = "mahjong_tile_player_up.png";
			// mahjong_down_str = "mahjong_tile_player_down.png";
			mahjong_desk_str = "mahjong_tile_player_desk.png";
			for(var i = 0; i < 60; i++){
				var tile_img = ccui.helper.seekWidgetByName(cur_player_discard_panel, "tile_img_" + i.toString());
				if(player.curGameRoom.discardTilesList[serverSitNum][i] > 0){
					var mahjong_img = tile_img.getChildByName("mahjong_img");
					tile_img.loadTexture("Mahjong/" + mahjong_desk_str, ccui.Widget.PLIST_TEXTURE);
					mahjong_img.ignoreContentAdaptWithSize(true);
					mahjong_img.loadTexture("Mahjong/mahjong_small_" + player.curGameRoom.discardTilesList[serverSitNum][i].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
					tile_img.setVisible(true);
					if(player.curGameRoom.kingTile == player.curGameRoom.discardTilesList[serverSitNum][i]){
						var kingtilemark_img = ccui.ImageView.create("res/ui/GameRoomUI/kingtilemark.png");
						this.discardTileMarksList[idx].push(kingtilemark_img);
						kingtilemark_img.setAnchorPoint(0.0, 1.0);
						kingtilemark_img.setPosition(cc.p(0, 60));
						kingtilemark_img.setScale(0.4);
						tile_img.addChild(kingtilemark_img);
					}
				} else {
					tile_img.setVisible(false);
				}
			}
		} else if(idx == 1){
			// mahjong_hand_str = "mahjong_tile_right_hand.png";
			// mahjong_up_str = "mahjong_tile_right_up.png";
			// mahjong_down_str = "mahjong_tile_right_down.png";
			mahjong_desk_str = "mahjong_tile_right_desk.png";
			for(var i = 0; i < 45; i++){
				var tile_img = ccui.helper.seekWidgetByName(cur_player_discard_panel, "tile_img_" + i.toString());
				if(player.curGameRoom.discardTilesList[serverSitNum][i] > 0){
					var mahjong_img = tile_img.getChildByName("mahjong_img");
					tile_img.loadTexture("Mahjong/" + mahjong_desk_str, ccui.Widget.PLIST_TEXTURE);
					mahjong_img.ignoreContentAdaptWithSize(true);
					mahjong_img.loadTexture("Mahjong/mahjong_small_" + player.curGameRoom.discardTilesList[serverSitNum][i].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
					// mahjong_img.setSkewY(-6);
					tile_img.setVisible(true);
					if(player.curGameRoom.kingTile == player.curGameRoom.discardTilesList[serverSitNum][i]){
						var kingtilemark_img = ccui.ImageView.create("res/ui/GameRoomUI/kingtilemark.png");
						this.discardTileMarksList[idx].push(kingtilemark_img);
						kingtilemark_img.setAnchorPoint(0.0, 1.0);
						kingtilemark_img.setPosition(cc.p(6, 16));
						kingtilemark_img.setRotation(-90);
						kingtilemark_img.setSkewY(-6);
						kingtilemark_img.setScale(0.4);
						tile_img.addChild(kingtilemark_img);
					}
				} else {
					tile_img.setVisible(false);
				}
			}
		} else if(idx == 2){
			// mahjong_hand_str = "mahjong_tile_top_hand.png";
			// mahjong_up_str = "mahjong_tile_top_up.png";
			// mahjong_down_str = "mahjong_tile_top_down.png";
			mahjong_desk_str = "mahjong_tile_top_desk.png";
			for(var i = 0; i < 60; i++){
				var tile_img = ccui.helper.seekWidgetByName(cur_player_discard_panel, "tile_img_" + i.toString());
				if(player.curGameRoom.discardTilesList[serverSitNum][i] > 0){
					var mahjong_img = tile_img.getChildByName("mahjong_img");
					tile_img.loadTexture("Mahjong/" + mahjong_desk_str, ccui.Widget.PLIST_TEXTURE);
					mahjong_img.ignoreContentAdaptWithSize(true);
					mahjong_img.loadTexture("Mahjong/mahjong_small_" + player.curGameRoom.discardTilesList[serverSitNum][i].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
					tile_img.setVisible(true);
					if(player.curGameRoom.kingTile == player.curGameRoom.discardTilesList[serverSitNum][i]){
						var kingtilemark_img = ccui.ImageView.create("res/ui/GameRoomUI/kingtilemark.png");
						this.discardTileMarksList[idx].push(kingtilemark_img);
						kingtilemark_img.setAnchorPoint(0.0, 1.0);
						kingtilemark_img.setPosition(cc.p(40, 14));
						kingtilemark_img.setRotation(180);
						kingtilemark_img.setScale(0.4);
						tile_img.addChild(kingtilemark_img);
					}
				} else {
					tile_img.setVisible(false);
				}
			}
		} else if(idx == 3){
			// mahjong_hand_str = "mahjong_tile_left_hand.png";
			// mahjong_up_str = "mahjong_tile_left_up.png";
			// mahjong_down_str = "mahjong_tile_left_down.png";
			mahjong_desk_str = "mahjong_tile_left_desk.png";
			for(var i = 0; i < 45; i++){
				var tile_img = ccui.helper.seekWidgetByName(cur_player_discard_panel, "tile_img_" + i.toString());
				if(player.curGameRoom.discardTilesList[serverSitNum][i] > 0){
					var mahjong_img = tile_img.getChildByName("mahjong_img");
					tile_img.loadTexture("Mahjong/" + mahjong_desk_str, ccui.Widget.PLIST_TEXTURE);
					mahjong_img.ignoreContentAdaptWithSize(true);
					mahjong_img.loadTexture("Mahjong/mahjong_small_" + player.curGameRoom.discardTilesList[serverSitNum][i].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
					// mahjong_img.setSkewY(6);
					tile_img.setVisible(true);
					if(player.curGameRoom.kingTile == player.curGameRoom.discardTilesList[serverSitNum][i]){
						var kingtilemark_img = ccui.ImageView.create("res/ui/GameRoomUI/kingtilemark.png");
						this.discardTileMarksList[idx].push(kingtilemark_img);
						kingtilemark_img.setAnchorPoint(0.0, 1.0);
						kingtilemark_img.setPosition(cc.p(54, 50));
						kingtilemark_img.setRotation(90);
						kingtilemark_img.setSkewY(6);
						kingtilemark_img.setScale(0.4);
						tile_img.addChild(kingtilemark_img);
					}
				} else {
					tile_img.setVisible(false);
				}
			}
		}
	},

	init_operation_panel:function(){
		this.operation_panel = this.rootUINode.getChildByName("operation_panel");
		for(var i = 0; i < const_val.OP_NUM; i++){
			var op_btn = this.operation_panel.getChildByName("op_btn" + i.toString());
			if(op_btn){
				op_btn.setVisible(false);
			}
		}
		this.operation_panel.setVisible(false);
		var player = h1global.entityManager.player();
		var self = this;
		self.operation_type = 0;
		this.operation_panel.getChildByName("op_btn0").addTouchEventListener(
			function(sender, eventType){
				if(eventType == ccui.Widget.TOUCH_ENDED){
					if(self.operation_type){
						player.confirmOperation(const_val.OP_PASS, [0]);
					} else {
						player.doOperation(const_val.OP_PASS, [0]);
					}
					self.hide_operation_panel();
				}
			});
		this.operation_panel.getChildByName("op_btn3").addTouchEventListener(
			function(sender, eventType){
				if(eventType == ccui.Widget.TOUCH_ENDED){
					// if(self.operation_type){
					// 	player.confirmOperation(const_val.OP_CHOW, [0]);
					// } else {
					// 	player.doOperation(const_val.OP_CHOW, [0]);
					// }
					// self.hide_operation_panel();
					var chowTilesList = player.getCanChowTilesList(player.curGameRoom.lastDiscardTile);
					if(chowTilesList.length <= 1){
						// for(var i = 0; i < chowTilesList.length; i++){
						// 	var lastDiscardTileIdx = chowTilesList[i].indexOf(player.curGameRoom.lastDiscardTile);
						// 	chowTilesList[i][lastDiscardTileIdx] = chowTilesList[i][0];
						// 	chowTilesList[i][0] = player.curGameRoom.lastDiscardTile;
						// }
						var curChowTiles = chowTilesList[0];
						var lastDiscardTileIdx = curChowTiles.indexOf(player.curGameRoom.lastDiscardTile);
						curChowTiles[lastDiscardTileIdx] = curChowTiles[0];
						curChowTiles[0] = player.curGameRoom.lastDiscardTile;
						if(self.operation_type){
							player.confirmOperation(const_val.OP_CHOW, curChowTiles);
						} else {
							player.doOperation(const_val.OP_CHOW, curChowTiles);
						}
						self.hide_operation_panel();
					} else {
						self.show_chow_panel(chowTilesList);
					}
				}
			});
		this.operation_panel.getChildByName("op_btn4").addTouchEventListener(
			function(sender, eventType){
				if(eventType == ccui.Widget.TOUCH_ENDED){
					if(self.operation_type){
						player.confirmOperation(const_val.OP_PONG, [player.curGameRoom.lastDiscardTile]);
					} else {
						player.doOperation(const_val.OP_PONG, [player.curGameRoom.lastDiscardTile]);
					}
					self.hide_operation_panel();
				}
			});
		this.operation_panel.getChildByName("op_btn5").addTouchEventListener( //杠花
			function(sender, eventType){
				if(eventType == ccui.Widget.TOUCH_ENDED){
					// if(self.operation_type){
					// 	player.confirmOperation(const_val.OP_KONG_WREATH, [player.curGameRoom.lastDrawTile]);
					// }else{
					// 	player.doOperation(const_val.OP_KONG_WREATH, [player.curGameRoom.lastDrawTile]);
					// }
					
					// self.hide_operation_panel();
				}
			});
		this.operation_panel.getChildByName("op_btn6").addTouchEventListener(
			function(sender, eventType){
				if(eventType == ccui.Widget.TOUCH_ENDED){
					if(self.operation_type){
						player.confirmOperation(const_val.OP_EXPOSED_KONG, [player.curGameRoom.lastDiscardTile]);
					} else {
						player.doOperation(const_val.OP_EXPOSED_KONG, [player.curGameRoom.lastDiscardTile]);
					}
					self.hide_operation_panel();
				}
			});
		this.operation_panel.getChildByName("op_btn7").addTouchEventListener(
			function(sender, eventType){
				if(eventType == ccui.Widget.TOUCH_ENDED){
					if(self.curSelectTile){
						// 这里特殊处理一下自摸明杠的情况，原则上来说不存在self.operation_type == 1的情况
						if(self.operation_type){
							player.confirmOperation(const_val.OP_CONCEALED_KONG, [self.curSelectTile.tileNum]);
						} else {
							if(player.canSelfExposedKong(player.curGameRoom.upTilesList[player.serverSitNum], self.curSelectTile.tileNum)){
								player.doOperation(const_val.OP_EXPOSED_KONG, [self.curSelectTile.tileNum]);
								// cc.log("明杠")
								self.hide_operation_panel();
							} else {
								// 检查是否可暗杠
								var sum = 0;
								var handTiles = player.curGameRoom.handTilesList[player.serverSitNum];
								for(var i = 0; i < handTiles.length; i++){
									if(handTiles[i] == self.curSelectTile.tileNum){
										sum++;
									}
								}
								if(sum >= 4){
									player.doOperation(const_val.OP_CONCEALED_KONG, [self.curSelectTile.tileNum]);
									// cc.log("暗杠")
									self.hide_operation_panel();
								} else {
									cc.log("所选择的牌不能杠");
								}
							}
						}
						
					} else {
						cc.log("请选择要暗杠的牌");
					}
				}
			});

		this.operation_panel.getChildByName("op_btn11").addTouchEventListener(
			function(sender, eventType){
				if(eventType == ccui.Widget.TOUCH_ENDED){
					if(self.operation_type){
						player.confirmOperation(const_val.OP_DRAW_WIN, [0]);
					} else {
						player.doOperation(const_val.OP_DRAW_WIN, [0]);
					}
					self.hide_operation_panel();
				}
			});

		this.operation_panel.getChildByName("op_btn12").addTouchEventListener(
			function(sender, eventType){
				if(eventType == ccui.Widget.TOUCH_ENDED){
					if(self.operation_type){
						player.confirmOperation(const_val.OP_KONG_WIN, [0]);
					} else {
						player.doOperation(const_val.OP_KONG_WIN, [0]);
					}
					self.hide_operation_panel();
				}
			});

		this.operation_panel.getChildByName("op_btn13").addTouchEventListener(
			function(sender, eventType){
				if(eventType == ccui.Widget.TOUCH_ENDED){
					// if(self.operation_type){
					// 	player.confirmOperation(const_val.OP_WREATH_WIN, [0]);
					// } else {
					// 	player.doOperation(const_val.OP_WREATH_WIN, [0]);
					// }
					// self.hide_operation_panel();
				}
			});

		this.operation_panel.getChildByName("op_btn14").addTouchEventListener(
			function(sender, eventType){
				if(eventType == ccui.Widget.TOUCH_ENDED){
					if(self.operation_type){
						player.confirmOperation(const_val.OP_GIVE_WIN, [player.curGameRoom.lastDiscardTile]);
					} else {
						player.doOperation(const_val.OP_GIVE_WIN, [0]);
					}
					self.hide_operation_panel();
				}
			});

		if(player.curGameRoom.waitAid >= 0){
			// 重连等待玩家判断，此时需要告诉玩家上一张打出的牌是哪一张
			if (player.curGameRoom.last_kong_tile > 0) {
				player.waitForOperation(player.curGameRoom.waitAid, [player.curGameRoom.last_kong_tile]);
			}else{
				this.play_discard_anim(player.curGameRoom.lastDiscardTileFrom, true);
				player.waitForOperation(player.curGameRoom.waitAid, [player.curGameRoom.lastDiscardTile]);
			}
			
		} else if(player.curGameRoom.curPlayerSitNum == player.serverSitNum && (player.curGameRoom.handTilesList[player.serverSitNum].length)%3==2){
			var op_list = [];
			// 是否可以明杠
			// if(this.canSelfExposedKong(this.curGameRoom.upTilesList[this.serverSitNum], tileList[0])){
			// 	op_list.push(const_val.OP_EXPOSED_KONG);
			// }
			// 是否可以暗杠
			// 这里由于可能自摸明杠，所以特殊处理，统一按照暗杠的接口进行处理
			var handTiles = player.curGameRoom.handTilesList[player.serverSitNum];
			if(player.canSelfExposedKong(player.curGameRoom.upTilesList[player.serverSitNum], handTiles[handTiles.length - 1]) || player.canConcealedKong(handTiles)){
				op_list.push(const_val.OP_CONCEALED_KONG);
			} else {
				var handTilesList = player.curGameRoom.handTilesList[player.serverSitNum]
				handTilesList = handTilesList.concat([])
				handTilesList.pop()
				for (var i = 0; i < handTilesList.length; i++) {
					if (player.canSelfExposedKong(player.curGameRoom.upTilesList[player.serverSitNum], handTilesList[i])) {
						op_list.push(const_val.OP_CONCEALED_KONG);
						break
					}
				}
			}
			// 是否可以胡
			cc.log("canWin,0000000")
			if(player.canWin(player.curGameRoom.handTilesList[player.serverSitNum], player.curGameRoom.lastDrawTile, const_val.OP_DRAW_WIN)){
				op_list.push(const_val.OP_DRAW_WIN);
			}
			if(op_list.length > 0){
				op_list.splice(0, 0, const_val.OP_PASS);
			}
			
			this.show_operation_panel(op_list);
			// 轮到自己摸牌, 一定可以进行打牌操作
			this.unlock_player_hand_tiles();
		}
	},

	show_operation_panel:function(op_list, from_type){
		if(!this.is_show) {return;}
		this.operation_type = from_type;
		for(var i = 0; i < const_val.OP_NUM; i++){
			var op_btn = this.operation_panel.getChildByName("op_btn" + i.toString());
			if(op_btn){
				var op_idx = op_list.indexOf(i);
				if(op_idx >= 0){
					op_btn.setVisible(true);
					op_btn.setPositionX(400 - op_list.length * 150 + op_idx*150);
					if(!from_type && i == const_val.OP_CONCEALED_KONG){
						// 由摸牌触发的暗杠，这里特殊处理包含了自摸明杠的情况
						this.defaultKongSelected();
					}
				} else {
					op_btn.setVisible(false);
				}
			}
		}
		this.operation_panel.setVisible(true);
	},

	defaultKongSelected:function(){
		if(this.curSelectTile){
			this.curSelectTile.stopAllActions();
			this.curSelectTile.setPositionY(0);
		}
		this.curSelectTile = undefined;
		var player = h1global.entityManager.player();
		var handTiles = player.curGameRoom.handTilesList[player.serverSitNum];
		var lastHandTileIdx = handTiles.length - 1;

		var canSelfExposedKong = false
		for (var i = handTiles.length - 1; i >= 0; i--) {
			if (player.canSelfExposedKong(player.curGameRoom.upTilesList[player.serverSitNum], handTiles[i])) {
				canSelfExposedKong = true
				lastHandTileIdx = i
				break
			}
		}
		if (canSelfExposedKong) {
			var lastHandTile = this.rootUINode.getChildByName("player_tile_panel0").getChildByName("player_hand_panel").getChildByName("tile_img_" + lastHandTileIdx.toString());
			this.curSelectTile = lastHandTile;
			this.curSelectTile.stopAllActions();
			this.curSelectTile.setPositionY(20);
		} else {
			var tileNum = player.getOneConcealedKongNum(handTiles);
			if(tileNum > 0){
				var concealedKongTileIdx = handTiles.indexOf(tileNum);
				var concealedKongTile = this.rootUINode.getChildByName("player_tile_panel0").getChildByName("player_hand_panel").getChildByName("tile_img_" + concealedKongTileIdx.toString());
				this.curSelectTile = concealedKongTile;
				this.curSelectTile.stopAllActions();
				this.curSelectTile.setPositionY(20);
			}
		}
	},

	hide_operation_panel:function(){
		if(!this.is_show) {return;}
		this.operation_panel.setVisible(false);
	},

	init_chow_panel:function(){
		var player = h1global.entityManager.player();
		this.chow_panel = this.rootUINode.getChildByName("chow_panel");
		this.chow_bg_panel = this.rootUINode.getChildByName("chow_bg_panel");
		var self = this;
		this.chow_bg_panel.addTouchEventListener(function(sender, eventType){
			if(eventType == ccui.Widget.TOUCH_ENDED){
				self.hide_chow_panel();
			}
		});
		function chow_panel_event(sender, eventType){
			if(eventType == ccui.Widget.TOUCH_ENDED){
				if(sender.chowTiles){
					if(self.operation_type){
						player.confirmOperation(const_val.OP_CHOW, sender.chowTiles);
					} else {
						player.doOperation(const_val.OP_CHOW, sender.chowTiles);
					}
					self.hide_operation_panel();
					self.hide_chow_panel();
				}
			}
		}
		for(var i = 0; i < 3; i++){
			var cur_chow_panel = this.chow_panel.getChildByName("chow_panel" + i.toString());
			cur_chow_panel.addTouchEventListener(chow_panel_event);
		}
	},

	show_chow_panel:function(chowTilesList){
		this.chow_bg_panel.setVisible(true);
		var left_pos = (this.chow_panel.getContentSize().width - ((chowTilesList.length - 1) * 350 + 300)) * 0.5;
		for(var i = 0; i < 3; i++){
			var curChowTiles = chowTilesList[i];
			var cur_chow_panel = this.chow_panel.getChildByName("chow_panel" + i.toString());
			if(curChowTiles){
				for(var j = 0; j < 3; j++){
					var tile_img = cur_chow_panel.getChildByName("tile_img_" + j.toString());
					if(curChowTiles[j]){
						tile_img.tileNum = curChowTiles[j];
						// tile_img.setTouchEnabled(true);
						var mahjong_img = tile_img.getChildByName("mahjong_img");
						tile_img.loadTexture("Mahjong/mahjong_tile_player_hand.png", ccui.Widget.PLIST_TEXTURE);
						tile_img.setVisible(true);
						mahjong_img.ignoreContentAdaptWithSize(true);
						mahjong_img.loadTexture("Mahjong/mahjong_big_" + curChowTiles[j].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
						mahjong_img.setVisible(true);
					} else {
						tile_img.setVisible(false);
					}
				}
				cur_chow_panel.setPositionX(left_pos + i * 350);
				var player = h1global.entityManager.player();
				var lastDiscardTileIdx = curChowTiles.indexOf(player.curGameRoom.lastDiscardTile);
				curChowTiles[lastDiscardTileIdx] = curChowTiles[0];
				curChowTiles[0] = player.curGameRoom.lastDiscardTile;
				cur_chow_panel.chowTiles = curChowTiles;
				cur_chow_panel.setVisible(true);
			} else {
				cur_chow_panel.setVisible(false);
			}
		}
		this.chow_panel.setVisible(true);
	},

	hide_chow_panel:function(){
		this.chow_panel.setVisible(false);
		this.chow_bg_panel.setVisible(false);
	},

	init_ready_tile_panel:function(){
		this.ready_tile_panel = this.rootUINode.getChildByName("ready_tile_panel");
		this.ready_tile_panel.setVisible(false);
		this.readyTileList = [];
	},

	update_ready_tile_panel:function(readyTiles){
		return;
		if(readyTiles.length <= 0){
			this.ready_tile_panel.setVisible(false);
		} else {
			// for(var i = 0; i < this.readyTileList.length; i++){
			// 	this.readyTileList[i].removeFromParent();
			// }
			// this.readyTileList = [];
			// this.ready_tile_panel.setContentSize(cc.size(100 + 60 * readyTiles.length, 41));
			// for(var i = 0; i < readyTiles.length; i++){
			// 	var tile_img = ccui.ImageView.create();
			// 	tile_img.loadTexture("Mahjong/mahjong_tile_player_up.png", ccui.Widget.PLIST_TEXTURE);
			// 	var mahjong_img = ccui.ImageView.create();
			// 	mahjong_img.loadTexture("Mahjong/mahjong_small_" + readyTiles[i].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
			// 	mahjong_img.setPosition(cc.p(20, 37));
			// 	tile_img.addChild(mahjong_img);
			// 	tile_img.setPosition(cc.p(100 + 40 * i, 15));
			// 	this.ready_tile_panel.addChild(tile_img);
			// 	this.readyTileList.push(tile_img);
			// }
			if(this.readyTileList.length > readyTiles.length){
				for(var i = 0; i < this.readyTileList.length; i++){
					if(i < readyTiles.length){
						this.readyTileList[i].getChildByName("mahjong_img").loadTexture("Mahjong/mahjong_small_" + readyTiles[i].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
						this.readyTileList[i].setVisible(true);
					} else {
						this.readyTileList[i].setVisible(false);
					}
				}
			} else {
				var len = this.readyTileList.length;
				for(var i = 0; i < readyTiles.length; i++){
					if(i < len){
						this.readyTileList[i].getChildByName("mahjong_img").loadTexture("Mahjong/mahjong_small_" + readyTiles[i].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
						this.readyTileList[i].setVisible(true);
					} else {
						var tile_img = ccui.ImageView.create();
						tile_img.loadTexture("Mahjong/mahjong_tile_player_up.png", ccui.Widget.PLIST_TEXTURE);
						var mahjong_img = ccui.ImageView.create();
						mahjong_img.setName("mahjong_img");
						mahjong_img.loadTexture("Mahjong/mahjong_small_" + readyTiles[i].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
						mahjong_img.setPosition(cc.p(20, 37));
						tile_img.addChild(mahjong_img);
						tile_img.setPosition(cc.p(100 + 40 * i, 15));
						this.ready_tile_panel.addChild(tile_img);
						this.readyTileList.push(tile_img);
					}
				}
			}
			this.ready_tile_panel.setVisible(true);
		}
	},

	playOperationEffect:function(opId, serverSitNum, tile){
		var curSitNum = -1;
		if(serverSitNum === undefined){
			curSitNum = -1;
		} else {
			curSitNum = h1global.entityManager.player().server2CurSitNum(serverSitNum);
		}
		var cur_img = ccui.ImageView.create();
		if(opId == const_val.OP_PONG){
			if((cc.sys.os == cc.sys.OS_ANDROID && cc.sys.isNative) || (cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative)){
				UICommonWidget.load_effect_plist("effect_pong");
				var effect_sprite = cc.Sprite.create();
				if(curSitNum == 0){
					effect_sprite.setPosition(cc.p(cc.winSize.width * 0.5, this.rootUINode.getChildByName("player_tile_panel0").getPositionY()+160));
				} else if(curSitNum == 1){
					effect_sprite.setPosition(cc.p(this.rootUINode.getChildByName("player_tile_panel1").getPositionX(), cc.winSize.height * 0.5));
				} else if(curSitNum == 2){
					effect_sprite.setPosition(cc.p(cc.winSize.width * 0.5, this.rootUINode.getChildByName("player_tile_panel2").getPositionY()-160));
				} else if(curSitNum == 3){
					effect_sprite.setPosition(cc.p(this.rootUINode.getChildByName("player_tile_panel3").getPositionX(), cc.winSize.height * 0.5));
				} else {
					effect_sprite.setPosition(cc.p(cc.winSize.width * 0.5, cc.winSize.height * 0.5));
				}
				this.rootUINode.addChild(effect_sprite);
				effect_sprite.runAction(cc.Sequence.create(
					UICommonWidget.create_effect_action({"FRAMENUM":15, "TIME":1.0, "NAME":"effect_pong"}),
					cc.DelayTime.create(0.5),
					cc.CallFunc.create(function(){
						effect_sprite.removeFromParent();
					})
				));
			} else {
				cur_img.loadTexture("res/ui/GameRoomUI/gameroom_op_pong.png");
				cur_img.setScale(5.0);
				if(curSitNum == 0){
					cur_img.setPosition(cc.p(cc.winSize.width * 0.5, this.rootUINode.getChildByName("player_tile_panel0").getPositionY()+160));
				} else if(curSitNum == 1){
					cur_img.setPosition(cc.p(this.rootUINode.getChildByName("player_tile_panel1").getPositionX(), cc.winSize.height * 0.5));
				} else if(curSitNum == 2){
					cur_img.setPosition(cc.p(cc.winSize.width * 0.5, this.rootUINode.getChildByName("player_tile_panel2").getPositionY()-160));
				} else if(curSitNum == 3){
					cur_img.setPosition(cc.p(this.rootUINode.getChildByName("player_tile_panel3").getPositionX(), cc.winSize.height * 0.5));
				} else {
					cur_img.setPosition(cc.p(cc.winSize.width * 0.5, cc.winSize.height * 0.5));
				}
				this.rootUINode.addChild(cur_img);
				cur_img.runAction(cc.Sequence.create(cc.ScaleTo.create(0.3, 2.0), cc.DelayTime.create(1.0), cc.CallFunc.create(
					function(){
						cur_img.removeFromParent();
					})));
			}
		} else if(opId == const_val.OP_EXPOSED_KONG){
			if((cc.sys.os == cc.sys.OS_ANDROID && cc.sys.isNative) || (cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative)){
				UICommonWidget.load_effect_plist("effect_kong");
				var effect_sprite = cc.Sprite.create();
				if(curSitNum == 0){
					effect_sprite.setPosition(cc.p(cc.winSize.width * 0.5, this.rootUINode.getChildByName("player_tile_panel0").getPositionY()+160));
				} else if(curSitNum == 1){
					effect_sprite.setPosition(cc.p(this.rootUINode.getChildByName("player_tile_panel1").getPositionX(), cc.winSize.height * 0.5));
				} else if(curSitNum == 2){
					effect_sprite.setPosition(cc.p(cc.winSize.width * 0.5, this.rootUINode.getChildByName("player_tile_panel2").getPositionY()-160));
				} else if(curSitNum == 3){
					effect_sprite.setPosition(cc.p(this.rootUINode.getChildByName("player_tile_panel3").getPositionX(), cc.winSize.height * 0.5));
				} else {
					effect_sprite.setPosition(cc.p(cc.winSize.width * 0.5, cc.winSize.height * 0.5));
				}
				this.rootUINode.addChild(effect_sprite);
				effect_sprite.runAction(cc.Sequence.create(
					UICommonWidget.create_effect_action({"FRAMENUM":15, "TIME":1.0, "NAME":"effect_kong"}),
					cc.DelayTime.create(0.5),
					cc.CallFunc.create(function(){
						effect_sprite.removeFromParent();
					})
				));
			} else {
				cur_img.loadTexture("res/ui/GameRoomUI/gameroom_op_kong.png");
				cur_img.setScale(5.0);
				if(curSitNum == 0){
					cur_img.setPosition(cc.p(cc.winSize.width * 0.5, this.rootUINode.getChildByName("player_tile_panel0").getPositionY()+160));
				} else if(curSitNum == 1){
					cur_img.setPosition(cc.p(this.rootUINode.getChildByName("player_tile_panel1").getPositionX(), cc.winSize.height * 0.5));
				} else if(curSitNum == 2){
					cur_img.setPosition(cc.p(cc.winSize.width * 0.5, this.rootUINode.getChildByName("player_tile_panel2").getPositionY()-160));
				} else if(curSitNum == 3){
					cur_img.setPosition(cc.p(this.rootUINode.getChildByName("player_tile_panel3").getPositionX(), cc.winSize.height * 0.5));
				} else {
					cur_img.setPosition(cc.p(cc.winSize.width * 0.5, cc.winSize.height * 0.5));
				}
				this.rootUINode.addChild(cur_img);
				cur_img.runAction(cc.Sequence.create(cc.ScaleTo.create(0.3, 2.0), cc.DelayTime.create(1.0), cc.CallFunc.create(
					function(){
						cur_img.removeFromParent();
					})));
			}
		} else if(opId == const_val.OP_CONCEALED_KONG){
			if((cc.sys.os == cc.sys.OS_ANDROID && cc.sys.isNative) || (cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative)){
				UICommonWidget.load_effect_plist("effect_kong");
				var effect_sprite = cc.Sprite.create();
				if(curSitNum == 0){
					effect_sprite.setPosition(cc.p(cc.winSize.width * 0.5, this.rootUINode.getChildByName("player_tile_panel0").getPositionY()+160));
				} else if(curSitNum == 1){
					effect_sprite.setPosition(cc.p(this.rootUINode.getChildByName("player_tile_panel1").getPositionX(), cc.winSize.height * 0.5));
				} else if(curSitNum == 2){
					effect_sprite.setPosition(cc.p(cc.winSize.width * 0.5, this.rootUINode.getChildByName("player_tile_panel2").getPositionY()-160));
				} else if(curSitNum == 3){
					effect_sprite.setPosition(cc.p(this.rootUINode.getChildByName("player_tile_panel3").getPositionX(), cc.winSize.height * 0.5));
				} else {
					effect_sprite.setPosition(cc.p(cc.winSize.width * 0.5, cc.winSize.height * 0.5));
				}
				this.rootUINode.addChild(effect_sprite);
				effect_sprite.runAction(cc.Sequence.create(
					UICommonWidget.create_effect_action({"FRAMENUM":15, "TIME":1.0, "NAME":"effect_kong"}),
					cc.DelayTime.create(0.5),
					cc.CallFunc.create(function(){
						effect_sprite.removeFromParent();
					})
				));
			} else {
				cur_img.loadTexture("res/ui/GameRoomUI/gameroom_op_kong.png");
				cur_img.setScale(5.0);
				if(curSitNum == 0){
					cur_img.setPosition(cc.p(cc.winSize.width * 0.5, this.rootUINode.getChildByName("player_tile_panel0").getPositionY()+160));
				} else if(curSitNum == 1){
					cur_img.setPosition(cc.p(this.rootUINode.getChildByName("player_tile_panel1").getPositionX(), cc.winSize.height * 0.5));
				} else if(curSitNum == 2){
					cur_img.setPosition(cc.p(cc.winSize.width * 0.5, this.rootUINode.getChildByName("player_tile_panel2").getPositionY()-160));
				} else if(curSitNum == 3){
					cur_img.setPosition(cc.p(this.rootUINode.getChildByName("player_tile_panel3").getPositionX(), cc.winSize.height * 0.5));
				} else {
					cur_img.setPosition(cc.p(cc.winSize.width * 0.5, cc.winSize.height * 0.5));
				}
				this.rootUINode.addChild(cur_img);
				cur_img.runAction(cc.Sequence.create(cc.ScaleTo.create(0.3, 2.0), cc.DelayTime.create(1.0), cc.CallFunc.create(
					function(){
						cur_img.removeFromParent();
					})));
			}
		} else if(opId == const_val.OP_DRAW_WIN || opId == const_val.OP_KONG_WIN  || opId == const_val.OP_WREATH_WIN || opId == const_val.OP_GIVE_WIN){
			if((cc.sys.os == cc.sys.OS_ANDROID && cc.sys.isNative) || (cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative)){
				UICommonWidget.load_effect_plist("effect_win");
				var effect_sprite = cc.Sprite.create();
				if(curSitNum == 0){
					effect_sprite.setPosition(cc.p(cc.winSize.width * 0.5, this.rootUINode.getChildByName("player_tile_panel0").getPositionY()+160));
				} else if(curSitNum == 1){
					effect_sprite.setPosition(cc.p(this.rootUINode.getChildByName("player_tile_panel1").getPositionX(), cc.winSize.height * 0.5));
				} else if(curSitNum == 2){
					effect_sprite.setPosition(cc.p(cc.winSize.width * 0.5, this.rootUINode.getChildByName("player_tile_panel2").getPositionY()-160));
				} else if(curSitNum == 3){
					effect_sprite.setPosition(cc.p(this.rootUINode.getChildByName("player_tile_panel3").getPositionX(), cc.winSize.height * 0.5));
				} else {
					effect_sprite.setPosition(cc.p(cc.winSize.width * 0.5, cc.winSize.height * 0.5));
				}
				this.rootUINode.addChild(effect_sprite);
				effect_sprite.runAction(cc.Sequence.create(
					UICommonWidget.create_effect_action({"FRAMENUM":22, "TIME":2.0, "NAME":"effect_win"}),
					cc.CallFunc.create(function(){
						effect_sprite.removeFromParent();
					})
				));
			} else {
				cur_img.loadTexture("res/ui/GameRoomUI/gameroom_op_win.png");
				cur_img.setScale(5.0);
				if(curSitNum == 0){
					cur_img.setPosition(cc.p(cc.winSize.width * 0.5, this.rootUINode.getChildByName("player_tile_panel0").getPositionY()+160));
				} else if(curSitNum == 1){
					cur_img.setPosition(cc.p(this.rootUINode.getChildByName("player_tile_panel1").getPositionX(), cc.winSize.height * 0.5));
				} else if(curSitNum == 2){
					cur_img.setPosition(cc.p(cc.winSize.width * 0.5, this.rootUINode.getChildByName("player_tile_panel2").getPositionY()-160));
				} else if(curSitNum == 3){
					cur_img.setPosition(cc.p(this.rootUINode.getChildByName("player_tile_panel3").getPositionX(), cc.winSize.height * 0.5));
				} else {
					cur_img.setPosition(cc.p(cc.winSize.width * 0.5, cc.winSize.height * 0.5));
				}
				this.rootUINode.addChild(cur_img);
				cur_img.runAction(cc.Sequence.create(cc.ScaleTo.create(0.3, 2.0), cc.DelayTime.create(1.0), cc.CallFunc.create(
					function(){
						cur_img.removeFromParent();
					})));
			}
		} else if(opId == const_val.OP_KONG_WREATH){
			// cur_img.loadTexture("Mahjong/mahjong_tile_player_hand.png", ccui.Widget.PLIST_TEXTURE);
			// var tile_img = ccui.ImageView.create();
			// tile_img.loadTexture("Mahjong/mahjong_big_" + tile + ".png", ccui.Widget.PLIST_TEXTURE)
			// cur_img.addChild(tile_img)
			// tile_img.setPosition(cc.p(37, 45))
			// cur_img.setPosition(cc.p(cc.winSize.width * 0.5, cc.winSize.height * 0.5))
			// this.rootUINode.addChild(cur_img);
			// var aim_pos = this.rootUINode.getChildByName('wreath_panel' + curSitNum).getPosition()
			// cur_img.runAction(cc.Sequence.create(
			// 	cc.DelayTime.create(1.5), 
			// 	cc.MoveTo.create(0.4, aim_pos),
			// 	cc.CallFunc.create(
			// 		function(){
			// 			cur_img.removeFromParent()
			// 		}
			// 	)
			// ))

		}
	},

	getMessagePos:function(playerInfoPanel){
		var anchor_point = playerInfoPanel.getAnchorPoint();
		var content_size = playerInfoPanel.getContentSize();
		var cur_pos = playerInfoPanel.getPosition();
		var x = cur_pos.x - content_size.width * anchor_point.x + 130;
		var y = cur_pos.y - content_size.height * anchor_point.y + 180;
		if(x + 134 > cc.winSize.width){
			x = cc.winSize.width - 134;
		}
		if(y + 99 > cc.winSize.height){
			y = cc.winSize.height - 99;
		}
		return cc.p(x, y);
	},

	playEmotionAnim:function(serverSitNum, eid){
		var player_info_panel = this.rootUINode.getChildByName("player_info_panel" + h1global.entityManager.player().server2CurSitNum(serverSitNum));
		var talk_img = ccui.ImageView.create();
		// talk_img.setScale(1.0);
		talk_img.setPosition(this.getMessagePos(player_info_panel));
		talk_img.loadTexture("res/ui/Default/common_talk_bg.png");
		this.rootUINode.addChild(talk_img);
		// 加载表情图片
		cc.Texture2D.defaultPixelFormat = cc.Texture2D.PIXEL_FORMAT_RGBA4444;
        var cache = cc.spriteFrameCache;
        var plist_path = "res/effect/biaoqing.plist";
        var png_path = "res/effect/biaoqing.png";
        cache.addSpriteFrames(plist_path, png_path);
    	cc.Texture2D.defaultPixelFormat = cc.Texture2D.PIXEL_FORMAT_RGBA8888;

    	var anim_frames = [];
        for (var i = 1; i <= 3; i++) {
            var frame = cache.getSpriteFrame("biaoqing_" + eid.toString() + "_" + i.toString() + ".png");
            if (frame) {
                anim_frames.push(frame);
            }
        }
        var effect_animation = new cc.Animation(anim_frames, 0.5);
        var effect_action = new cc.Animate(effect_animation);

        var emot_sprite = cc.Sprite.create();
        emot_sprite.setScale(1.0);
        emot_sprite.setPosition(cc.p(125, 80));
        talk_img.addChild(emot_sprite);
        emot_sprite.runAction(cc.Sequence.create(cc.Repeat.create(effect_action, 2), cc.CallFunc.create(function(){
        	talk_img.removeFromParent();
        })));
	},

	playMessageAnim:function(serverSitNum, mid){
		var player_info_panel = this.rootUINode.getChildByName("player_info_panel" + h1global.entityManager.player().server2CurSitNum(serverSitNum));
		var talk_img = ccui.ImageView.create();
		// talk_img.setScale(1.0);
		talk_img.setPosition(this.getMessagePos(player_info_panel));
		talk_img.loadTexture("res/ui/Default/common_talk_bg.png");
		this.rootUINode.addChild(talk_img);

		var msg_label = cc.LabelTTF.create("", "Arial", 22);
		msg_label.setDimensions(200, 0);
		msg_label.setString(const_val.MESSAGE_LIST[mid]);
		msg_label.setColor(cc.color(0, 0, 0));
		msg_label.setAnchorPoint(cc.p(0.5, 0.5));
        msg_label.setPosition(cc.p(125, 80));
        talk_img.addChild(msg_label);
        msg_label.runAction(cc.Sequence.create(cc.DelayTime.create(2.0), cc.CallFunc.create(function(){
        	talk_img.removeFromParent();
        })));
	},

	playVoiceAnim:function(serverSitNum, record_time){
		var self = this;
		if(cc.audioEngine.isMusicPlaying()){
            cc.audioEngine.pauseMusic();
        }
        var interval_time = 0.8;
		this.talk_img_num += 1;
		// var player_info_panel = this.rootUINode.getChildByName("player_info_panel" + h1global.entityManager.player().server2CurSitNum(serverSitNum));
		var player_info_panel = undefined;
		if(serverSitNum < 0){
			player_info_panel = this.rootUINode.getChildByName("agent_info_panel");
		} else {
			player_info_panel = this.rootUINode.getChildByName("player_info_panel" + h1global.entityManager.player().server2CurSitNum(serverSitNum));
		}
		var talk_img = ccui.ImageView.create();
		// talk_img.setScale(1.0);
		talk_img.setPosition(this.getMessagePos(player_info_panel));
		talk_img.loadTexture("res/ui/Default/voice_img.png");
		this.rootUINode.addChild(talk_img);
		// 加载表情图片
        // var voice_img = ccui.ImageView.create();
        // voice_img.setScale(1.0);
        // voice_img.setPosition(cc.p(134, 120));
        // voice_img.loadTexture("res/ui/GameRoomInfoUI/gameroominfo_record_btn.png");
        // talk_img.addChild(voice_img);
        var voice_img1 = ccui.ImageView.create();
        voice_img1.loadTexture("res/ui/Default/voice_img1.png");
        voice_img1.setPosition(cc.p(50, 37));
        talk_img.addChild(voice_img1);
        var voice_img2 = ccui.ImageView.create();
        voice_img2.loadTexture("res/ui/Default/voice_img2.png");
        voice_img2.setPosition(cc.p(60, 37));
        voice_img2.setVisible(false);
        talk_img.addChild(voice_img2);
        voice_img2.runAction(cc.RepeatForever.create(cc.Sequence.create(cc.DelayTime.create(interval_time), cc.CallFunc.create(function(){voice_img2.setVisible(true)}), cc.DelayTime.create(interval_time*2), cc.CallFunc.create(function(){voice_img2.setVisible(false)}))));
        var voice_img3 = ccui.ImageView.create();
        voice_img3.loadTexture("res/ui/Default/voice_img3.png");
        voice_img3.setPosition(cc.p(70, 37));
        voice_img3.setVisible(false);
        talk_img.addChild(voice_img3);
        voice_img3.runAction(cc.RepeatForever.create(cc.Sequence.create(cc.DelayTime.create(interval_time*2), cc.CallFunc.create(function(){voice_img3.setVisible(true)}), cc.DelayTime.create(interval_time), cc.CallFunc.create(function(){voice_img3.setVisible(false)}))));
        talk_img.runAction(cc.Sequence.create(cc.DelayTime.create(record_time), cc.CallFunc.create(function(){
        	talk_img.removeFromParent();
        	self.talk_img_num -= 1;
        	if(self.talk_img_num == 0){
        		if(!cc.audioEngine.isMusicPlaying()){
		            cc.audioEngine.resumeMusic();
		        }
        	}
        })));
        // return talk_img;
	},

	play_luckytiles_anim:function(luckyTileList, callback){
		var show_lucky_tiles_panel = this.rootUINode.getChildByName("show_lucky_tiles_panel");
		var panel_width = 160 * luckyTileList.length;
		show_lucky_tiles_panel.setContentSize(cc.size(panel_width, show_lucky_tiles_panel.getContentSize().height));
		show_lucky_tiles_panel.setVisible(true);
		for(var i = 0; i < 7; i++){
			var tile_img = show_lucky_tiles_panel.getChildByName("tile_img" + i.toString());
			var mahjong_img = tile_img.getChildByName("mahjong_img");
			var luckyTileNum = luckyTileList[i];
			if(luckyTileNum){
				tile_img.setPositionX(80 + 160 * i);
				tile_img.setVisible(true);
				tile_img.loadTexture("Mahjong/mahjong_tile_player_down.png", ccui.Widget.PLIST_TEXTURE);
				mahjong_img.setVisible(false);
				tile_img.runAction(cc.Sequence.create(cc.DelayTime.create(0.4 * (i + 1)), cc.CallFunc.create((function(luckyTileNum, tile_img, mahjong_img){return function(){
													tile_img.loadTexture("Mahjong/mahjong_tile_player_desk.png", ccui.Widget.PLIST_TEXTURE);
													mahjong_img.ignoreContentAdaptWithSize(true);
													mahjong_img.loadTexture("Mahjong/mahjong_big_" + luckyTileNum.toString() + ".png", ccui.Widget.PLIST_TEXTURE);
													mahjong_img.setVisible(true);
												};})(luckyTileNum, tile_img, mahjong_img))));
			} else {
				tile_img.setVisible(false);
			}
		}
		// 由于同时会播放胡牌特效，所以总时间至少2s
		show_lucky_tiles_panel.runAction(cc.Sequence.create(cc.DelayTime.create(luckyTileList.length * 0.4 + 0.4), cc.CallFunc.create(function(){
			if(callback){callback();}
		})));
	},

	update_draw_tile_panel:function(leftTileNum){
		var hasDrawTileNum = 144 - leftTileNum;
		var player = h1global.entityManager.player();
		var fromIdx = (player.curGameRoom.dealerIdx + 2) % 4;
		for(var i = 0; i < player.curGameRoom.player_num; i++){
			var draw_tile_panel = this.rootUINode.getChildByName("draw_tile_panel" + (player.server2CurSitNum((fromIdx - i + player.curGameRoom.player_num) % player.curGameRoom.player_num)).toString());
			for(var j = 0; j < 28; j++){
				var tile_img = draw_tile_panel.getChildByName("tile_img_" + j.toString());
				if(hasDrawTileNum > 0){
					tile_img.setVisible(false);
					hasDrawTileNum = hasDrawTileNum - 1;
				} else {
					tile_img.setVisible(true);
				}
			}
		}
	},

	update_roominfo_panel:function(){
		if(!this.is_show){
			return;
		}
		var player = h1global.entityManager.player();
		var room_info_panel = this.rootUINode.getChildByName("room_info_panel");
		var lefttile_label = room_info_panel.getChildByName("lefttile_label");
		// var olddealnum_label = room_info_panel.getChildByName("olddealnum_label");
		lefttile_label.setString(player.curGameRoom.leftTileNum.toString());
		// olddealnum_label.setString(player.curGameRoom.curOldDealNum.toString());
	},

	update_kingtile_panel:function(){
		if(!this.is_show){
			return;
		}
		var player = h1global.entityManager.player();
		var kingtile_panel = this.rootUINode.getChildByName("kingtile_panel");
		var tile_img = kingtile_panel.getChildByName("tile_img");
		var mahjong_img = tile_img.getChildByName("mahjong_img");
		mahjong_img.ignoreContentAdaptWithSize(true);
		mahjong_img.loadTexture("Mahjong/mahjong_big_" + player.curGameRoom.kingTiles[0].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
		mahjong_img.setVisible(true);
		// kingtile_panel.setVisible(true);
	},

	// update_wreath_panel:function(serverSitNum){
	// 	var player = h1global.entityManager.player();
	// 	var idx = player.server2CurSitNum(serverSitNum);
	// 	var wreaths = player.curGameRoom.wreathsList[serverSitNum]
	// 	var wreath_panel = this.rootUINode.getChildByName("wreath_panel" + String(idx));
	// 	for (var i = 0; i < wreaths.length; i++) {
	// 		var wreath = ccui.helper.seekWidgetByName(wreath_panel, "wreath_" + String(wreaths[i]))
	// 		wreath.loadTexture("res/ui/GameRoomUI/light_" + wreaths[i] +".png")
	// 	}
	// },
});