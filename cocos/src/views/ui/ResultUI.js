// var UIBase = require("src/views/ui/UIBase.js")
// cc.loader.loadJs("src/views/ui/UIBase.js")
var ResultUI = UIBase.extend({
	ctor:function() {
		this._super();
		this.resourceFilename = "res/ui/ResultUI.json";
        this.setLocalZOrder(const_val.MAX_LAYER_NUM);
	},
	initUI:function(){
        this.result_panel = this.rootUINode.getChildByName("result_panel");
		this.player_panels = [];
		this.player_panels.push(this.rootUINode.getChildByName("result_panel").getChildByName("player_info_panel0"));
		this.player_panels.push(this.rootUINode.getChildByName("result_panel").getChildByName("player_info_panel1"));
		this.player_panels.push(this.rootUINode.getChildByName("result_panel").getChildByName("player_info_panel2"));
		this.player_panels.push(this.rootUINode.getChildByName("result_panel").getChildByName("player_info_panel3"));

		var share_btn = this.rootUINode.getChildByName("result_panel").getChildByName("share_btn");
        if((cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative) && switches.appstore_check == true){
            share_btn.setVisible(false);
        }
		function share_btn_event(sender, eventType){
			if(eventType == ccui.Widget.TOUCH_ENDED){
                if ((cc.sys.os == cc.sys.OS_ANDROID && cc.sys.isNative)) {
					jsb.fileUtils.captureScreen("", "screenShot.png");
                } else if((cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative)){
                    jsb.reflection.callStaticMethod("WechatOcBridge","takeScreenShot");
                } else {
                    // share_btn.setVisible(false);
                    h1global.curUIMgr.share_ui.show();
                }
			}
		}
		share_btn.addTouchEventListener(share_btn_event);
		// if((cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative) || (cc.sys.os == cc.sys.OS_ANDROID && cc.sys.isNative)){
		// 	share_btn.setVisible(true);
		// } else {
		// 	share_btn.setVisible(false);
		// }

		var confirm_btn = this.rootUINode.getChildByName("result_panel").getChildByName("confirm_btn");
		function confirm_btn_event(sender, eventType){
			if(eventType == ccui.Widget.TOUCH_ENDED){
				h1global.entityManager.player().curGameRoom = null;
				h1global.runScene(new GameHallScene());
			}
		}
		confirm_btn.addTouchEventListener(confirm_btn_event);

		this.update_agent_info();
	},
	
	show_by_info:function(finalPlayerInfoList){
		var self = this;
		this.show(function(){
			var maxScore = 0;
			// var maxIdxList = [];
			for(var i = 0; i < finalPlayerInfoList.length; i++){
				var finalPlayerInfo = finalPlayerInfoList[i];
				// if(finalPlayerInfo["score"] > maxScore){
				// 	maxScore = finalPlayerInfo["score"];
				// }
				self.update_player_info(finalPlayerInfo["idx"], finalPlayerInfo);
                if (finalPlayerInfoList.length == 2) {
                    self.player_panels[0].setPositionX(self.result_panel.getContentSize().width * 0.37);
                    self.player_panels[1].setPositionX(self.result_panel.getContentSize().width * 0.65);
                    self.player_panels[2].setVisible(false);
                    self.player_panels[3].setVisible(false);
                }else {
                    self.player_panels[0].setPositionX(self.result_panel.getContentSize().width * 0.23);
                    self.player_panels[1].setPositionX(self.result_panel.getContentSize().width * 0.42);
                    self.player_panels[2].setPositionX(self.result_panel.getContentSize().width * 0.61);
                    self.player_panels[3].setPositionX(self.result_panel.getContentSize().width * 0.80);
                    self.player_panels[2].setVisible(true);
                    self.player_panels[3].setVisible(true);
				}
			}
			// for(var i = 0; i < finalPlayerInfoList.length; i++){
			// 	if(finalPlayerInfoList[i]["score"] == maxScore){
			// 		maxIdxList.push(finalPlayerInfoList[i]["idx"]);
			// 	}
			// }
			cutil.unlock_ui();

            if(!((cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative) || (cc.sys.os == cc.sys.OS_ANDROID && cc.sys.isNative) || switches.TEST_OPTION)){
                var curGameRoom = h1global.entityManager.player().curGameRoom;
                var result_list = {};
                var result_str = '';
                for(var i = 0; i < finalPlayerInfoList.length; i++){
                    var finalPlayerInfo = finalPlayerInfoList[i];
                    result_list[finalPlayerInfo["idx"]] = finalPlayerInfo;
                }
                for(var i = 0; i < finalPlayerInfoList.length; i++){
                    if(result_list[i]){
                        result_str = result_str + '[' + curGameRoom.playerInfoList[i]["nickname"] + ']:' + result_list[i]["score"];
                        if(i != finalPlayerInfoList.length - 1){
                            result_str = result_str + ','
                        }
                    }
                }
                wx.onMenuShareAppMessage({
                    title: '房間号【' + curGameRoom.roomID.toString() + '】', // 分享标题
                    desc: result_str, // 分享描述
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
                    desc: result_str, // 分享描述
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
		});
	},

	update_agent_info:function(){
		var player = h1global.entityManager.player();
		var curGameRoom = player.curGameRoom;
		// var playerInfo = {
		// 	"nickname" : curGameRoom.agent_nickname,
		// 	"head_icon" : curGameRoom.agent_head_icon,
		// 	"userId" : curGameRoom.agent_userId,
		// 	"uuid" : "agent_portrait"
		// }
		var playerInfo = curGameRoom.agentInfo;
		var cur_player_info_panel = this.rootUINode.getChildByName("result_panel").getChildByName("agent_info_panel");
		if(curGameRoom.isAgent){
			cur_player_info_panel.getChildByName("name_label").setString(playerInfo["nickname"]);
			cur_player_info_panel.getChildByName("userid_label").setString("ID:" + playerInfo["userId"].toDouble().toString());
			var frame_img = ccui.helper.seekWidgetByName(cur_player_info_panel, "frame_img");
			cur_player_info_panel.reorderChild(frame_img, 1);
			cutil.loadPortraitTexture(playerInfo["head_icon"], function(img){
				cur_player_info_panel.getChildByName("portrait_sprite").removeFromParent();
				var portrait_sprite  = new cc.Sprite(img);
				portrait_sprite.setName("portrait_sprite");
				portrait_sprite.setScale(86/portrait_sprite.getContentSize().width);
				portrait_sprite.x = cur_player_info_panel.getContentSize().width * 0.5;
				portrait_sprite.y = cur_player_info_panel.getContentSize().height * 0.5;
    			cur_player_info_panel.addChild(portrait_sprite);
			}, playerInfo["uuid"].toString() + ".png");
			cur_player_info_panel.setVisible(true);
		} else {
			cur_player_info_panel.setVisible(false);
		}
	},

	update_player_info:function(serverSitNum, finalPlayerInfo){
		var player = h1global.entityManager.player();
		var cur_player_info_panel = this.player_panels[serverSitNum];
		var playerInfo = player.curGameRoom.playerInfoList[serverSitNum];
		cur_player_info_panel.getChildByName("name_label").setString(playerInfo["nickname"]);
		// cur_player_info_panel.getChildByName("userid_label").setString("ID:" + playerInfo["userId"].toDouble().toString());
		var frame_img = ccui.helper.seekWidgetByName(cur_player_info_panel, "frame_img");
		cur_player_info_panel.reorderChild(frame_img, 1);
		var owner_img = ccui.helper.seekWidgetByName(cur_player_info_panel, "owner_img");
		cur_player_info_panel.reorderChild(owner_img, 2);
		if(serverSitNum == 0){
			owner_img.setVisible(true);
		} else {
			owner_img.setVisible(false);
		}
		cutil.loadPortraitTexture(playerInfo["head_icon"], function(img){
			cur_player_info_panel.getChildByName("portrait_sprite").removeFromParent();
			var portrait_sprite  = new cc.Sprite(img);
			portrait_sprite.setName("portrait_sprite");
			portrait_sprite.setScale(86/portrait_sprite.getContentSize().width);
			portrait_sprite.x = cur_player_info_panel.getContentSize().width * 0.5;
			portrait_sprite.y = cur_player_info_panel.getContentSize().height * 0.5;
			cur_player_info_panel.addChild(portrait_sprite);
		}, playerInfo["uuid"].toString() + ".png");
		this.player_panels[serverSitNum].getChildByName("score_label").setString(finalPlayerInfo["score"].toString());
	},
});
