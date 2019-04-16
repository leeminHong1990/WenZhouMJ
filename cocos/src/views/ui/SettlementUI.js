var SettlementUI = UIBase.extend({
	ctor:function() {
		this._super();
		this.resourceFilename = "res/ui/SettlementUI.json";
	},
	initUI:function(){
		var player = h1global.entityManager.player();
		var self = this;
		var confirm_btn = this.rootUINode.getChildByName("confirm_btn");
		function confirm_btn_event(sender, eventType){
			if(eventType == ccui.Widget.TOUCH_ENDED){
				// TEST:
				// self.hide();
				// h1global.curUIMgr.gameroomprepare_ui.show();
				// h1global.curUIMgr.gameroom_ui.hide();
				// return;
				self.hide();

				//重新开局
				player.curGameRoom.updatePlayerState(player.serverSitNum, 1);
				// player.curGameRoom.curRound = player.curGameRoom.curRound + 1;
				h1global.curUIMgr.gameroomprepare_ui.show();
				h1global.curUIMgr.gameroom_ui.hide();
				player.roundEndCallback();
			}
		}
		confirm_btn.addTouchEventListener(confirm_btn_event);
		this.kongTilesList = [[], [], [], []];

		var settlement_panel = this.rootUINode.getChildByName("settlement_panel");
		var settlement_bg_panel = this.rootUINode.getChildByName("settlement_bg_panel");
		var show_btn = this.rootUINode.getChildByName("show_btn");
		var hide_btn = this.rootUINode.getChildByName("hide_btn");
		show_btn.addTouchEventListener(function(sender, eventType){
			if(eventType == ccui.Widget.TOUCH_ENDED){
				show_btn.setVisible(false);
				hide_btn.setVisible(true);
				settlement_panel.setVisible(true);
				settlement_bg_panel.setVisible(true);
			}
		});
		show_btn.setVisible(false);
		hide_btn.addTouchEventListener(function(sender, eventType){
			if(eventType == ccui.Widget.TOUCH_ENDED){
				show_btn.setVisible(true);
				hide_btn.setVisible(false);
				settlement_panel.setVisible(false);
				settlement_bg_panel.setVisible(false);
			}
		});
	},
	
	show_by_info:function(roundRoomInfo, confirm_btn_func){
		cc.log("结算==========>:")
		cc.log("roundRoomInfo :  ",roundRoomInfo)
		var self = this;	
		this.show(function(){
			self.player_tiles_panels = [];
			self.player_tiles_panels.push(self.rootUINode.getChildByName("settlement_panel").getChildByName("victory_item_panel1"));
			self.player_tiles_panels.push(self.rootUINode.getChildByName("settlement_panel").getChildByName("victory_item_panel2"));
			self.player_tiles_panels.push(self.rootUINode.getChildByName("settlement_panel").getChildByName("victory_item_panel3"));
			self.player_tiles_panels.push(self.rootUINode.getChildByName("settlement_panel").getChildByName("victory_item_panel4"));	
			var playerInfoList = roundRoomInfo["player_info_list"];
			for(var i = 0; i < 4; i++){
				var roundPlayerInfo = playerInfoList[i];
				if (!roundPlayerInfo) {
					self.player_tiles_panels[i].setVisible(false)
					continue
				}
				self.player_tiles_panels[i].setVisible(true)
				self.update_score(roundPlayerInfo["idx"], roundPlayerInfo["score"]);  //显示分数
                self.update_player_hand_tiles(i, roundRoomInfo["player_info_list"][i]["tiles"], roundRoomInfo["finalTile"], roundRoomInfo["win_idx"]);   //显示麻将
                self.update_player_up_tiles(i, roundRoomInfo["player_info_list"][i]["concealed_kong"]);
                self.update_player_info(roundPlayerInfo["idx"], roundRoomInfo["win_idx"]);  //idx 表示玩家的座位号
                self.update_player_shooting(i, roundRoomInfo["from_idx"], roundRoomInfo["win_idx"]);//显示谁放炮谁胡
			}

			self.show_title(roundRoomInfo["win_idx"])
			self.win_effect(roundRoomInfo["win_idx"], roundRoomInfo["result_list"]);
			//暂不显示
			if (roundRoomInfo["win_idx"] >= 0) {
				self.update_player_win(roundRoomInfo["win_idx"], roundRoomInfo["result_list"]);
			}
			
			if(confirm_btn_func){
				self.rootUINode.getChildByName("confirm_btn").addTouchEventListener(function(sender, eventType){
					if(eventType ==ccui.Widget.TOUCH_ENDED){
						self.hide();
						confirm_btn_func();
					}
				});
			}
		});
	},

	play_win_effect:function (serverSitNum, wintype) {
		var langue = cc.sys.localStorage.getItem("langue");
        var player = h1global.entityManager.player();
		if(langue == "wenzhoulangue" && wintype == "hard" && Math.random() > 0.5){
			wintype = "hard_0";
		}else if(langue == "wenzhoulangue" && wintype == "hard"){
            wintype = "hard_1";
		}
		if (player.curGameRoom.playerInfoList[serverSitNum]["sex"] == 1) {
			cc.audioEngine.playEffect("res/sound/voice/"+ langue +"/male/sound_man_win_"+ wintype.toString() +".mp3");
		} else {
			cc.audioEngine.playEffect("res/sound/voice/"+ langue +"/female/sound_woman_win_"+ wintype.toString() +".mp3");
		}
    },

	win_effect:function (serverSitNum ,result_list) {
		var self = this;
        var player = h1global.entityManager.player();
		if(result_list[2] == 1 && result_list[7] == 1){
            self.play_win_effect(serverSitNum, "hard_8pairs");
		}else if(result_list[2] == 1){
            self.play_win_effect(serverSitNum, "8pairs");
		}else if(result_list[0] == 13){
            self.play_win_effect(serverSitNum, "kong");
        }else if(result_list[1] == 1 || result_list[3] == 1 || result_list[4] == 1 || result_list[6] == 1 || result_list[8] == 1){
            self.play_win_effect(serverSitNum, "double_lifts");
        }else if(result_list[7] == 1 || result_list[0] == 12){
            self.play_win_effect(serverSitNum, "hard");
		}else if(result_list[0] == 11){
            self.play_win_effect(serverSitNum, "draw");
		}else if(result_list[0] == 14 && result_list[2] == 1 && player.curGameRoom.playerInfoList[serverSitNum]["sex"] == 0){
            self.play_win_effect(serverSitNum, "soft_8pairs");
        }else if(result_list[0] == 14){
			self.play_win_effect(serverSitNum, "soft");
		}
    },

	show_title:function(win_idx){
		cc.log(win_idx);
        var title_img = this.rootUINode.getChildByName("settlement_panel").getChildByName("title_img");
        title_img.ignoreContentAdaptWithSize(true);
        if (win_idx < 0) {
            title_img.loadTexture("res/ui/SettlementUI/dogfull_title.png")
        } else {
            if (h1global.entityManager.player().serverSitNum == win_idx) {
                //shengli
                title_img.loadTexture("res/ui/SettlementUI/win_title.png")
            } else {
                title_img.loadTexture("res/ui/SettlementUI/fail_title.png")
            }
        }
	},

	update_player_shooting:function (serverSitNum, from_idx, win_idx) {
        if(!this.is_show) {return;}
        var cur_player_info_panel = this.player_tiles_panels[serverSitNum];
        var win_img = cur_player_info_panel.getChildByName("win_img");
        if(serverSitNum == win_idx) {
            win_img.setVisible(true);
            win_img.loadTexture("res/ui/SettlementUI/win.png");
        }else if(serverSitNum == from_idx){
            win_img.setVisible(true);
            win_img.loadTexture("res/ui/SettlementUI/from.png");
		}else {
            win_img.setVisible(false);
		}
    },

	update_player_hand_tiles:function(serverSitNum, tileList, finalTile, win_idx){
		if(!this.is_show) {return;}
		var player = h1global.entityManager.player();
		// this.handTileMarksList = [[], [], [], []];
		var cur_player_tile_panel = this.player_tiles_panels[serverSitNum].getChildByName("item_hand_panel");
		if(!cur_player_tile_panel){
			return;
		}
		var mahjong_hand_str = "";
        cur_player_tile_panel.setPositionX((player.curGameRoom.upTilesList[serverSitNum].length * 160) + 280);
		mahjong_hand_str = "mahjong_tile_player_hand.png";
        if(win_idx == serverSitNum){
            tileList.pop();
            tileList = tileList.sort(cutil.tileSortFunc);
            tileList.push(finalTile);
        }else {
            tileList = tileList.sort(cutil.tileSortFunc);
        }
        cc.log("tileList:",tileList)
		for(var i = 0; i < 17; i++){
			var tile_img = ccui.helper.seekWidgetByName(cur_player_tile_panel, "mahjong_bg_img" + i.toString());
			tile_img.stopAllActions();
			if(tileList[i]){
				var mahjong_img = tile_img.getChildByName("mahjong_img");
				tile_img.loadTexture("Mahjong/" + mahjong_hand_str, ccui.Widget.PLIST_TEXTURE);
				tile_img.setVisible(true);
				mahjong_img.ignoreContentAdaptWithSize(true);
				mahjong_img.loadTexture("Mahjong/mahjong_big_" + tileList[i].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
				mahjong_img.setVisible(true);
				if(win_idx == serverSitNum && i == tileList.length - 1){
                    tile_img.setPositionX(tile_img.getPositionX() + 20);
				}
				if(player.curGameRoom.kingTiles == tileList[i]){
					var kingtilemark_img = ccui.ImageView.create("res/ui/GameRoomUI/kingtilemark.png");
					// this.handTileMarksList[serverSitNum].push(kingtilemark_img);
					kingtilemark_img.setAnchorPoint(0.0, 1.0);
					kingtilemark_img.setPosition(cc.p(0, 90));
					kingtilemark_img.setScale(0.7);
					tile_img.addChild(kingtilemark_img);
				}
			} else {
				tile_img.setVisible(false);
			}
		}
        cc.log("tileList:",tileList)
	},

	update_player_up_tiles:function(serverSitNum, concealedKongList){
		if(!this.is_show) {return;}
		var player = h1global.entityManager.player();
        var cur_player_tile_panel = this.player_tiles_panels[serverSitNum].getChildByName("item_up_panel");
		// var cur_player_tile_panel = this.rootUINode.getChildByName("settlement_panel").getChildByName("player_tile_panel").getChildByName("player_up_panel");
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
			var tile_img = ccui.helper.seekWidgetByName(cur_player_tile_panel, "mahjong_bg_img" + i.toString());
			tile_img.setVisible(false);
		}
		for(var i = 0; i < this.kongTilesList[serverSitNum].length; i++){
			this.kongTilesList[serverSitNum][i].removeFromParent();
		}
		this.kongTilesList[serverSitNum] = [];
		// mahjong_hand_str = "mahjong_tile_player_hand.png";
		mahjong_up_str = "mahjong_tile_player_up.png";
		mahjong_down_str = "mahjong_tile_player_down.png";
		// mahjong_desk_str = "mahjong_tile_player_desk.png";
		for(var i = 0; i < player.curGameRoom.upTilesList[serverSitNum].length; i++){
			for(var j = 0; j < 3; j++){
				var tile_img = ccui.helper.seekWidgetByName(cur_player_tile_panel, "mahjong_bg_img" + (3*i + j).toString());
				// tile_img.setPositionY(0);
				tile_img.setTouchEnabled(false);
				var mahjong_img = tile_img.getChildByName("mahjong_img");
				if(player.curGameRoom.upTilesList[serverSitNum][i][j]){
					tile_img.loadTexture("Mahjong/" + mahjong_up_str, ccui.Widget.PLIST_TEXTURE);
					mahjong_img.ignoreContentAdaptWithSize(true);
					mahjong_img.loadTexture("Mahjong/mahjong_small_" + player.curGameRoom.upTilesList[serverSitNum][i][j].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
					mahjong_img.setVisible(true);
				} else {
					tile_img.loadTexture("Mahjong/" + mahjong_down_str, ccui.Widget.PLIST_TEXTURE);
					mahjong_img.setVisible(false);
				}
				tile_img.setVisible(true);
			}
			if(player.curGameRoom.upTilesList[serverSitNum][i].length > 3){
				var tile_img = ccui.helper.seekWidgetByName(cur_player_tile_panel, "mahjong_bg_img" + (3*i + 1).toString());
				var kong_tile_img = tile_img.clone();
				this.kongTilesList[serverSitNum].push(kong_tile_img);
				var mahjong_img = kong_tile_img.getChildByName("mahjong_img");
				if(player.curGameRoom.upTilesList[serverSitNum][i][3]){
					kong_tile_img.loadTexture("Mahjong/" + mahjong_up_str, ccui.Widget.PLIST_TEXTURE);
					mahjong_img.ignoreContentAdaptWithSize(true);
					mahjong_img.loadTexture("Mahjong/mahjong_small_" + player.curGameRoom.upTilesList[serverSitNum][i][j].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
					mahjong_img.setVisible(true);
				} else {
					if(concealedKongList[0]){
						kong_tile_img.loadTexture("Mahjong/" + mahjong_up_str, ccui.Widget.PLIST_TEXTURE);
						mahjong_img.ignoreContentAdaptWithSize(true);
						mahjong_img.loadTexture("Mahjong/mahjong_small_" + concealedKongList[0].toString() + ".png", ccui.Widget.PLIST_TEXTURE);
						concealedKongList.splice(0, 1);
						mahjong_img.setVisible(true);
					} else {
						kong_tile_img.loadTexture("Mahjong/" + mahjong_down_str, ccui.Widget.PLIST_TEXTURE);
						mahjong_img.setVisible(false);
					}
				}
				kong_tile_img.setPositionY(kong_tile_img.getPositionY() + 16);
				kong_tile_img.setVisible(true);
				cur_player_tile_panel.addChild(kong_tile_img);
			}
		}
	},

	update_player_info:function(serverSitNum, win_idx){
		if(!this.is_show) {return;}
		cc.log("update_player_info", serverSitNum)
		var player = h1global.entityManager.player();
		var cur_player_info_panel = this.player_tiles_panels[serverSitNum];
		cc.log(cur_player_info_panel)
		if(!cur_player_info_panel){
			return;
		}
		var playerInfo = player.curGameRoom.playerInfoList[serverSitNum];
		cur_player_info_panel.getChildByName("item_name_label").setString(playerInfo["nickname"]);
		// var frame_img = ccui.helper.seekWidgetByName(cur_player_info_panel, "frame_img");
		// cur_player_info_panel.reorderChild(frame_img, 1);
		cutil.loadPortraitTexture(playerInfo["head_icon"], function(img){
			if (cur_player_info_panel.getChildByName("item_avatar_img")) {
				cur_player_info_panel.getChildByName("item_avatar_img").removeFromParent();
			}
			var portrait_sprite  = new cc.Sprite(img);
			portrait_sprite.setName("portrait_sprite");
			portrait_sprite.setScale(67 / portrait_sprite.getContentSize().width);
            portrait_sprite.x = 145;
            portrait_sprite.y = 45;
			cur_player_info_panel.addChild(portrait_sprite);
			portrait_sprite.setLocalZOrder(-1);
			// frame_img.setLocalZOrder(0);
		}, playerInfo["uuid"].toString() + ".png");
		if(player.curGameRoom.dealerIdx == serverSitNum){
			cur_player_info_panel.getChildByName("searial_label").setVisible(true);
			cur_player_info_panel.getChildByName("searial_label").setString(h1global.entityManager.player().curGameRoom.searial_deal_num.toString() + "连庄 X 2倍");
			cur_player_info_panel.getChildByName("dealer_img").setVisible(true);
		}else {
            cur_player_info_panel.getChildByName("dealer_img").setVisible(false);
            cur_player_info_panel.getChildByName("searial_label").setVisible(false);
		}
	},

	update_player_win:function(serverSitNum, result){
		if(serverSitNum < 0 || serverSitNum > 3){
			return;
		}
		var cur_player_info_panel = this.player_tiles_panels[serverSitNum];
		var win_type_img_list = []
		for (var i = 1; i <= 5; i++) {
			var img = cur_player_info_panel.getChildByName("item_card_type_img" + String(i))
			win_type_img_list.push(img)
		}
		var index = 0
		for (var i = 0; i < result.length; i++) {
			if (index >= win_type_img_list.length) {break}
			if (result[i]) {
                cc.log(i, index)
				if(result[i] == 0){
					continue;
				}
				if(i == 0){
                    win_type_img_list[index].loadTexture("res/ui/SettlementUI/win_type_" + String(result[i]) +".png");
                    win_type_img_list[index].setVisible(true);
                    index += 1;
					continue;
				}
				win_type_img_list[index].loadTexture("res/ui/SettlementUI/win_type_" + String(i) +".png")
				win_type_img_list[index].setVisible(true)
				index += 1
			}
		}
	},

	update_score:function(serverSitNum, score){
		var score_label = this.player_tiles_panels[serverSitNum].getChildByName("item_score_label");
		if(score >= 0){
			score_label.setTextColor(cc.color(62, 121, 77));
			score_label.setString("+" + score.toString());
		} else {
			score_label.setTextColor(cc.color(144, 71, 64));
			score_label.setString(score.toString());
		}
	},
});