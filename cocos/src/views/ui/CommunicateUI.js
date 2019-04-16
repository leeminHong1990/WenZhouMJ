// var UIBase = require("src/views/ui/UIBase.js")
// cc.loader.loadJs("src/views/ui/UIBase.js")
var CommunicateUI = UIBase.extend({
	ctor:function() {
		this._super();
		this.resourceFilename = "res/ui/CommunicateUI.json";
		this.needReload = true;
	},

	initUI:function(){
		this.communicate_panel = this.rootUINode.getChildByName("communicate_panel");
		var self = this;
		this.communicate_panel.getChildByName("return_btn").addTouchEventListener(function(sender, eventType){
			if(eventType == ccui.Widget.TOUCH_ENDED){
				self.hide();
			}
		});

		var btn_list = [this.communicate_panel.getChildByName("emot_btn"), this.communicate_panel.getChildByName("voice_btn")];
		var panel_list = [this.communicate_panel.getChildByName("emot_scroll"), this.communicate_panel.getChildByName("voice_scroll")];

		this.cur_tab = UICommonWidget.create_tab(btn_list, panel_list, 1);
		// 表情
		cc.Texture2D.defaultPixelFormat = cc.Texture2D.PIXEL_FORMAT_RGBA4444;
        var cache = cc.spriteFrameCache;
        var plist_path = "res/effect/biaoqing.plist";
        var png_path = "res/effect/biaoqing.png";
        cache.addSpriteFrames(plist_path, png_path);
    	cc.Texture2D.defaultPixelFormat = cc.Texture2D.PIXEL_FORMAT_RGBA8888;

		UICommonWidget.update_scroll_items(panel_list[0], 
			[
				[ 1,  2,  3,  4,  5],
				[ 6,  7,  8,  9, 10],
				[11, 12, 13, 14, 15],
				[16, 17, 18]
			], 
			function(curItem, itemInfo){
				for(var i = 0; i < 5; i++){
					var emot_img = curItem.getChildByName("emot_img" + i.toString());
					if(itemInfo[i]){
						emot_img.setVisible(true);
						emot_img.addTouchEventListener(function(sender, eventType){
							if(eventType == ccui.Widget.TOUCH_ENDED){
								// 发送表情sender.num
								// cc.log("sendEmotion: ", sender.num);
                                h1global.entityManager.player().sendEmotion(sender.num);
								self.hide();
							}
						});
						emot_img.num = itemInfo[i];
						emot_img.loadTexture("biaoqing_" + itemInfo[i].toString() + "_1.png", ccui.Widget.PLIST_TEXTURE);
					} else {
						emot_img.setVisible(false);
					}
				}
			}
		);
		// 语音文字
		UICommonWidget.update_scroll_items(panel_list[1], 
			const_val.MESSAGE_LIST, 
			function(curItem, itemInfo, idx){
				// var bg_img = curItem.getChildByName("bg_img");
				var content_label = curItem.getChildByName("content_label");
				// content_label.ignoreContentAdaptWithSize(true);
				if(idx + 1 < 10){
					content_label.setString(" " + (idx + 1).toString() + "." +itemInfo);
				} else {
					content_label.setString((idx + 1).toString() + "." +itemInfo);
				}
                curItem.num = idx;
                curItem.addTouchEventListener(function(sender, eventType){
					if(eventType == ccui.Widget.TOUCH_ENDED){
						// 发送语音文字sender.num
						// cc.log("sendVoice: ", sender.num);
                        h1global.entityManager.player().sendMsg(sender.num);
						self.hide();
					}
				});
			}
		);

		var voice = {
			localId:"",
			serverId:"",
		};
		this.voice = voice;
		this.record_btn = this.communicate_panel.getChildByName("record_btn");
		var start_record_time = 0;
		var audioName = ""; // 本地版本記錄語音名稱
		var self = this;
		function stopAudioFunc(){
			var record_time = new Date().getTime() - start_record_time;
			if((cc.sys.os == cc.sys.OS_ANDROID && cc.sys.isNative)){
				var fid = cutil.addFunc(function(audioPath){
					// 上傳語音文件
					// self.record_btn.setTouchEnabled(true);
					h1global.curUIMgr.audiorecord_ui.hide();
			         var uploadCBId = cutil.addFunc(function(url){
                         h1global.entityManager.player().sendAppVoice(url, record_time/1000);
			         	self.record_btn.runAction(cc.Sequence.create(cc.DelayTime.create(0.5), 
			         		cc.CallFunc.create(function(){
			         			self.record_btn.setTouchEnabled(true);
			         		})
			         	));
			         });
			         jsb.reflection.callStaticMethod(switches.package_name + "/AppActivity", "uploadAudioFile", "(Ljava/lang/String;I)V", audioName, uploadCBId);
			         // player.sendAppVoice();
				});
				jsb.reflection.callStaticMethod(switches.package_name + "/AppActivity", "avStopAudioRecord", "(I)F", fid);
			} else if((cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative)){
				var fid = cutil.addFunc(function(audioPath){
					// 上傳語音文件
					// cc.log("uploadVoice##########################################")
					// cc.log(audioPath)
					// self.record_btn.setTouchEnabled(true);
					h1global.curUIMgr.audiorecord_ui.hide();
			         var uploadCBId = cutil.addFunc(function(url){
                         h1global.entityManager.player().sendAppVoice(url, record_time/1000);
			         	self.record_btn.setTouchEnabled(true);
			         });
			         jsb.reflection.callStaticMethod("UpYunOcBridge", "uploadAudioFile:WithFuncID:", audioName, uploadCBId);
			         // player.sendAppVoice();
				});
				jsb.reflection.callStaticMethod("AudioOcBridge","avStopAudioRecord:", fid);
			} else {
			    wx.stopRecord({
			      	success: function (res) {
			        	voice.localId = res.localId;
			        	// 上传语音
			        	h1global.curUIMgr.audiorecord_ui.hide();
			        	wx.uploadVoice({
					      	localId: voice.localId,
					      	success: function (res) {
					        	// alert('上传语音成功，serverId 为' + res.serverId);
					        	voice.serverId = res.serverId;
                                h1global.entityManager.player().sendVoice(voice.serverId, record_time/1000);
					        	self.record_btn.setTouchEnabled(true);
					      	},
					      	fail: function (res){
					      		self.record_btn.setTouchEnabled(true);
					      	},
					    });
			      	},
			      	fail: function (res) {
			        	// alert(JSON.stringify(res));
			        	h1global.curUIMgr.audiorecord_ui.hide();
			        	self.record_btn.setTouchEnabled(true);
			      	}
			    });
			}
		}
		this.record_btn.addTouchEventListener(function(sender, eventType){
			if(eventType == ccui.Widget.TOUCH_BEGAN){
				h1global.curUIMgr.audiorecord_ui.show();
				start_record_time = new Date().getTime();
				if((cc.sys.os == cc.sys.OS_ANDROID && cc.sys.isNative)){
					audioName = h1global.entityManager.player().uuid.toString() + "_" + parseInt(start_record_time).toString();
					var result = jsb.reflection.callStaticMethod(switches.package_name + "/AppActivity", "avStartAudioRecord", "(Ljava/lang/String;)Z", audioName);
					// cc.log("avStartAudioRecord#################", result)
				} else if((cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative)){
					audioName = h1global.entityManager.player().uuid.toString() + "_" + parseInt(start_record_time).toString();
					var result = jsb.reflection.callStaticMethod("AudioOcBridge","avStartAudioRecord:", audioName);
					// cc.log("avStartAudioRecord#################", result)
				} else {
					wx.startRecord({
				    	cancel: function () {
				        	alert('用户拒绝授权录音');
				    	}
				    });
				}
				sender.runAction(cc.Sequence.create(cc.DelayTime.create(30.0), 
					cc.CallFunc.create(function(){
						// cc.log("LZRTEST:TIME OUT!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
						sender.setTouchEnabled(false);
						sender.setBrightStyle(ccui.Widget.BRIGHT_STYLE_NORMAL);
						stopAudioFunc();
					})
				))
			} else if(eventType == ccui.Widget.TOUCH_ENDED || eventType == ccui.Widget.TOUCH_CANCELED){
				sender.stopAllActions();
				sender.setTouchEnabled(false);
				var record_time = new Date().getTime() - start_record_time;
				if(record_time >= 1000){
					stopAudioFunc();
				} else {
					// 錄音不足1s則强制延遲到1s執行
					sender.runAction(cc.Sequence.create(cc.DelayTime.create(1.0), cc.CallFunc.create(function(){
						stopAudioFunc();
					})))
				}
			}
		})

	},
});