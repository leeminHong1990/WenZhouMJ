// var UIBase = require("src/views/ui/UIBase.js")
// cc.loader.loadJs("src/views/ui/UIBase.js")
var GameRoomPrepareUI = UIBase.extend({
	ctor:function() {
		this._super();
		this.resourceFilename = "res/ui/GameRoomPrepareUI.json";
		this.talk_img_num = 0;
	},

	initUI:function(){
		var player = h1global.entityManager.player();
		cc.log("GameRoomPrepareUI:", player.curGameRoom.playerInfoList)
		this.update_agent_info_panel();

		for(var i = 0; i < 4; i++){
			this.rootUINode.getChildByName("player_info_panel" + i.toString()).setVisible(false)
		}
		for (var i = 0; i < 4; i++) { 		
	        if (i < player.curGameRoom.player_num) {
		        this.update_player_info_panel(i, player.curGameRoom.playerInfoList[i]);
		        if (player.curGameRoom.playerInfoList[i]) {
		            this.update_player_state(i, player.curGameRoom.playerStateList[i]);
		        }
	        }
        }

		var share_title = '房間号【' + player.curGameRoom.roomID.toString() + '】';
		var share_desc = '我在[温州麻将]开了房间，快来一起玩吧.';
		share_desc += '局数:' + player.curGameRoom.maxRound.toString() + ',' + const_val.KONG_STATE[player.curGameRoom.kong_state] + ',' + const_val.FLOW_STATE[player.curGameRoom.follow_state] + ',' + const_val.KONG_DRAW_WIN_DOUBLE[player.curGameRoom.kong_draw_win_double] + "," + const_val.DRAGON_STATE[player.curGameRoom.dragon_state] + "," 
		if (player.curGameRoom.max_bet_num == 0) {
			share_desc += const_val.MAX_BET[0] + ",还缺" + player.curGameRoom.getNeedPlayerNum().toString() +"人。"
		}else if (player.curGameRoom.max_bet_num == 5) {
			share_desc += const_val.MAX_BET[1] + ",还缺" + player.curGameRoom.getNeedPlayerNum().toString() +"人。"
		} else if (player.curGameRoom.max_bet_num == 10){
			share_desc += const_val.MAX_BET[2] + ",还缺" + player.curGameRoom.getNeedPlayerNum().toString() +"人。"
		}
		var wxinvite_btn = this.rootUINode.getChildByName("wxinvite_btn");
        if((cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative) && switches.appstore_check == true){
            wxinvite_btn.setVisible(false);
        }
		wxinvite_btn.addTouchEventListener(function(sender, eventType){
			if(eventType == ccui.Widget.TOUCH_ENDED){
				if((cc.sys.os == cc.sys.OS_ANDROID && cc.sys.isNative)){
					jsb.reflection.callStaticMethod(switches.package_name + "/AppActivity","callWechatShareUrl", "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", true, switches.share_android_url, share_title, share_desc);
				} else if((cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative)){
					jsb.reflection.callStaticMethod("WechatOcBridge","callWechatShareUrlToSession:fromUrl:withTitle:andDescription:", true, switches.share_ios_url, share_title, share_desc);
				} else {
					wx.onMenuShareAppMessage({
					    title: share_title, // 分享标题
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
					h1global.curUIMgr.share_ui.show();
				}
			}
		})

		var prepare_btn = this.rootUINode.getChildByName("prepare_btn");
		prepare_btn.addTouchEventListener(function (sender, eventType) {
        	if (eventType == ccui.Widget.TOUCH_ENDED){
            	player.curGameRoom.updatePlayerState(player.serverSitNum, 1);
                h1global.curUIMgr.gameroomprepare_ui.update_player_state(player.serverSitNum, 1);
                player.roundEndCallback();
                prepare_btn.setVisible(false);
            }
        });

        // if (h1global.entityManager.player().curGameRoom.curRound === 0) {
		//     wxinvite_btn.setVisible(true);
		// }
		// else {
		//     wxinvite_btn.setVisible(false);
		// }
		if(h1global.entityManager.player().curGameRoom.curRound != 0){
        	wxinvite_btn.setVisible(false);
        }

		h1global.curUIMgr.gameroominfo_ui.show();

		if(!cc.audioEngine.isMusicPlaying()){
            cc.audioEngine.resumeMusic();
        }
	},

	check_invition:function(){
		var player = h1global.entityManager.player();
		var playerNum = 0;
		for(var i = 0; i < 4; i++){
			if(player.curGameRoom.playerInfoList[i]){
				playerNum = playerNum + 1;
			}
		}
		var wxinvite_btn = this.rootUINode.getChildByName("wxinvite_btn");
		if(playerNum < player.curGameRoom.player_num){
			wxinvite_btn.setVisible(true);
		} else {
			wxinvite_btn.setVisible(false);
		}
        if((cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative) && switches.appstore_check == true){
            wxinvite_btn.setVisible(false);
        }
	},

	check_prepare: function () {
		var player = h1global.entityManager.player();
		var prepare_btn = this.rootUINode.getChildByName("prepare_btn");
		if (player.curGameRoom.playerStateList[player.serverSitNum]){
			prepare_btn.setVisible(false);
		} else {
			prepare_btn.setVisible(true);
		}
	},

	update_player_info_panel:function(serverSitNum, playerInfo){
		if(serverSitNum < 0 || serverSitNum > 3){
			return;
		}

		var player = h1global.entityManager.player();
		var player_info_panel = this.rootUINode.getChildByName("player_info_panel" + player.server2CurSitNum(serverSitNum).toString());
		if(playerInfo){
			var name_label = ccui.helper.seekWidgetByName(player_info_panel, "name_label");
			name_label.setString(playerInfo["nickname"]);
			var frame_img = ccui.helper.seekWidgetByName(player_info_panel, "frame_img");
			player_info_panel.reorderChild(frame_img, 1);
			frame_img.setTouchEnabled(true);
			frame_img.addTouchEventListener(function(sender, eventType){
				if(eventType == ccui.Widget.TOUCH_ENDED){
					h1global.curUIMgr.gameplayerinfo_ui.show_by_info(playerInfo);
				}
			});
			var dealer_img = ccui.helper.seekWidgetByName(player_info_panel, "dealer_img");
			player_info_panel.reorderChild(dealer_img, 2);
			cutil.loadPortraitTexture(playerInfo["head_icon"], function(img){
				if(h1global.curUIMgr.gameroomprepare_ui && h1global.curUIMgr.gameroomprepare_ui.is_show && player_info_panel){
					player_info_panel.getChildByName("portrait_sprite").removeFromParent();
					var portrait_sprite  = new cc.Sprite(img);
					portrait_sprite.setName("portrait_sprite");
					portrait_sprite.setScale(86/portrait_sprite.getContentSize().width);
					portrait_sprite.x = player_info_panel.getContentSize().width * 0.5;
					portrait_sprite.y = player_info_panel.getContentSize().height * 0.5;
	    			player_info_panel.addChild(portrait_sprite);
				}
			}, playerInfo["uuid"].toString() + ".png");
			var score_label = ccui.helper.seekWidgetByName(player_info_panel, "score_label");
			score_label.ignoreContentAdaptWithSize(true);
			score_label.setString((playerInfo["total_score"] || 0).toString());
			var dealer_img = ccui.helper.seekWidgetByName(player_info_panel, "dealer_img");
			if(player.curGameRoom.dealerIdx == serverSitNum){
				dealer_img.setVisible(true);
			} else {
				dealer_img.setVisible(false);
			}
			var owner_img = ccui.helper.seekWidgetByName(player_info_panel, "owner_img");
			player_info_panel.reorderChild(owner_img, 3);
			if(serverSitNum == 0){
				owner_img.setVisible(true);
			} else {
				owner_img.setVisible(false);
			}
			player_info_panel.setVisible(true);
		} else {
			player_info_panel.setVisible(false);
		}
		// if(player.curGameRoom.playerInfoList.length == 3) {
  //           this.rootUINode.getChildByName("player_info_panel2").setVisible(false);
  //       }
		this.check_invition();
        this.check_prepare();
	},

	update_agent_info_panel:function(){
		var player = h1global.entityManager.player();
		var curGameRoom = player.curGameRoom;
		// var playerInfo = {
		// 	"nickname" : curGameRoom.agent_nickname,
		// 	"head_icon" : curGameRoom.agent_head_icon,
		// 	"userId" : curGameRoom.agent_userId,
		// 	"uuid" : "agent_portrait"
		// }
		var playerInfo = curGameRoom.agentInfo;
		var player_info_panel = this.rootUINode.getChildByName("agent_info_panel");
		if(curGameRoom.isAgent){
			var name_label = ccui.helper.seekWidgetByName(player_info_panel, "name_label");
			name_label.setString(playerInfo["nickname"]);
			var frame_img = ccui.helper.seekWidgetByName(player_info_panel, "frame_img");
			player_info_panel.reorderChild(frame_img, 1);
			frame_img.setTouchEnabled(false);
			// frame_img.addTouchEventListener(function(sender, eventType){
			// 	if(eventType == ccui.Widget.TOUCH_ENDED){
			// 		h1global.curUIMgr.gameplayerinfo_ui.show_by_info(playerInfo);
			// 	}
			// });
			cutil.loadPortraitTexture(playerInfo["head_icon"], function(img){
				if(h1global.curUIMgr.gameroomprepare_ui && h1global.curUIMgr.gameroomprepare_ui.is_show && player_info_panel){
					player_info_panel.getChildByName("portrait_sprite").removeFromParent();
					var portrait_sprite  = new cc.Sprite(img);
					portrait_sprite.setName("portrait_sprite");
					portrait_sprite.setScale(86/portrait_sprite.getContentSize().width);
					portrait_sprite.x = player_info_panel.getContentSize().width * 0.5;
					portrait_sprite.y = player_info_panel.getContentSize().height * 0.5;
	    			player_info_panel.addChild(portrait_sprite);
				}
			}, playerInfo["uuid"].toString() + ".png");
			var userid_label = ccui.helper.seekWidgetByName(player_info_panel, "userid_label");
			userid_label.ignoreContentAdaptWithSize(true);
			userid_label.setString("ID:" + (playerInfo["userId"]).toDouble().toString());
			player_info_panel.setVisible(true);
		} else {
			player_info_panel.setVisible(false);
		}
		// this.check_invition();
	},

	update_player_state:function(serverSitNum, state){
		if(serverSitNum < 0 || serverSitNum > 3){
			return;
		}
		var player = h1global.entityManager.player();
		var player_info_panel = this.rootUINode.getChildByName("player_info_panel" + player.server2CurSitNum(serverSitNum).toString());
		var ready_img = ccui.helper.seekWidgetByName(player_info_panel, "ready_img");
		player_info_panel.reorderChild(ready_img, 4);
		if(state == 1){
			// name_label.setString(playerInfo["name"]);
			ready_img.setVisible(true);
		} else {
			ready_img.setVisible(false);
		}
	},

	getMessagePos:function(playerInfoPanel){
		var anchor_point = playerInfoPanel.getAnchorPoint();
		var content_size = playerInfoPanel.getContentSize();
		var cur_pos = playerInfoPanel.getPosition();
		return cc.p(cur_pos.x - content_size.width * anchor_point.x + 130, 
					cur_pos.y - content_size.height * anchor_point.y + 180);
	},

	playEmotionAnim:function(serverSitNum, eid){
		var player_info_panel = undefined;
		if(serverSitNum < 0){
			player_info_panel = this.rootUINode.getChildByName("agent_info_panel");
		} else {
			player_info_panel = this.rootUINode.getChildByName("player_info_panel" + h1global.entityManager.player().server2CurSitNum(serverSitNum));
		}
		var talk_img = ccui.ImageView.create();
		talk_img.setScale(1.0);
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
		// var player_info_panel = this.rootUINode.getChildByName("player_info_panel" + h1global.entityManager.player().server2CurSitNum(serverSitNum));
		var player_info_panel = undefined;
		if(serverSitNum < 0){
			player_info_panel = this.rootUINode.getChildByName("agent_info_panel");
		} else {
			player_info_panel = this.rootUINode.getChildByName("player_info_panel" + h1global.entityManager.player().server2CurSitNum(serverSitNum));
		}
		var talk_img = ccui.ImageView.create();
		talk_img.setScale(1.0);
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
});