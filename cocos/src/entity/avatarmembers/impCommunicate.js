"use strict";
/*-----------------------------------------------------------------------------------------
												interface
-----------------------------------------------------------------------------------------*/
var impCommunicate = impBase.extend({
	__init__ : function()
	{
		this._super();
  	},

	sendEmotion : function(eid){
		// TEST:
		this.baseCall("sendEmotion", eid);
		this.recvEmotion(this.serverSitNum, eid);
	},

	recvEmotion : function(serverSitNum, eid){
		if(eid <= 0 || eid >= 19){
			return;
		}
		if(h1global.curUIMgr.gameroomprepare_ui && h1global.curUIMgr.gameroomprepare_ui.is_show){
			h1global.curUIMgr.gameroomprepare_ui.playEmotionAnim(serverSitNum, eid);
		}
		if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
			h1global.curUIMgr.gameroom_ui.playEmotionAnim(serverSitNum, eid);
		}
	},

	sendMsg : function(mid){
		// TEST
		this.baseCall("sendMsg", mid);
		this.recvMsg(this.serverSitNum, mid);
	},

	recvMsg : function(serverSitNum, mid){
		if(mid < 0 || mid > 15){
			return;
		}
		// var info_dict = eval('(' + cc.sys.localStorage.getItem("INFO_JSON") + ')');
		var info_dict = {};
		if(serverSitNum < 0){
			info_dict = this.curGameRoom.agentInfo;
		} else {
			info_dict = this.curGameRoom.playerInfoList[serverSitNum];
		}
		var langue = cc.sys.localStorage.getItem("langue");
		if(h1global.curUIMgr.gameroomprepare_ui && h1global.curUIMgr.gameroomprepare_ui.is_show){
			h1global.curUIMgr.gameroomprepare_ui.playMessageAnim(serverSitNum, mid);
			if (info_dict["sex"] == 1) {
				cc.audioEngine.playEffect("res/sound/voice/"+ langue +"/male/sound_man_msg_" + mid.toString() + ".mp3");
			} else {
				cc.audioEngine.playEffect("res/sound/voice/"+ langue +"/female/sound_woman_msg_" + mid.toString() + ".mp3");
			}
		}
		if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
			h1global.curUIMgr.gameroom_ui.playMessageAnim(serverSitNum, mid);
			if (info_dict["sex"] == 1) {
				cc.audioEngine.playEffect("res/sound/voice/"+ langue +"/male/sound_man_msg_" + mid.toString() + ".mp3");
			} else {
				cc.audioEngine.playEffect("res/sound/voice/"+ langue +"/female/sound_woman_msg_" + mid.toString() + ".mp3");
			}
		}
	},

	sendVoice : function(url, record_time){
		this.baseCall("sendVoice", url, record_time);
		this.recvVoice(this.serverSitNum, url, record_time);
	},

	sendAppVoice : function(url, record_time){
		this.baseCall("sendAppVoice", url, record_time);
		this.recvAppVoice(this.serverSitNum, url, record_time);
	},

	recvVoice : function(serverSitNum, url, record_time){
		if((cc.sys.os == cc.sys.OS_ANDROID && cc.sys.isNative) || (cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative)){
			return;
		}
		var self = this;
		wx.downloadVoice({
	      	serverId: url,
	      	success: function (res) {
	        	// alert('下载语音成功，localId 为' + res.localId);
	        	// voice.localId = res.localId;
	        	// 直接播放
	        	// var talk_img = undefined;
				if(h1global.curUIMgr.gameroomprepare_ui && h1global.curUIMgr.gameroomprepare_ui.is_show){
					h1global.curUIMgr.gameroomprepare_ui.playVoiceAnim(serverSitNum, record_time)
				}
				else if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
					h1global.curUIMgr.gameroom_ui.playVoiceAnim(serverSitNum, record_time);
				}
				// self.voiceCache[res.localId] = talk_img;
	        	wx.playVoice({
			      	localId: res.localId,
			    });
	      	}
	    });
	},

	recvAppVoice : function(serverSitNum, url, record_time){
		cc.log("recvAppVoice#######################################################")
		cc.log(url)
		var self = this;
		if((cc.sys.os == cc.sys.OS_ANDROID && cc.sys.isNative)){
			var audioName = new Date().getTime().toString();
			var downloadCB = cutil.addFunc(function(filepath){
				// 直接播放
	        	// var talk_img = undefined;
				if(h1global.curUIMgr.gameroomprepare_ui && h1global.curUIMgr.gameroomprepare_ui.is_show){
					h1global.curUIMgr.gameroomprepare_ui.playVoiceAnim(serverSitNum, record_time)
				}
				else if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
					h1global.curUIMgr.gameroom_ui.playVoiceAnim(serverSitNum, record_time);
				}
				// self.voiceCache[audioName] = talk_img;
	        	var playCB = cutil.addFunc(function(nonstr){
	        		// cc.log("playCB########################################################################")
	        		// if(self.voiceCache[audioName]){
	        		// 	cc.log("remove img ################", self.voiceCache[audioName]);
			        // 	self.voiceCache[audioName].removeFromParent();
			        // }
			        // self.voiceCache[audioName] = undefined;
	        	});
	        	jsb.reflection.callStaticMethod(switches.package_name + "/AppActivity","avAudioPlay", "(Ljava/lang/String;I)V", audioName, playCB);
			});
			jsb.reflection.callStaticMethod(switches.package_name + "/AppActivity","downloadAndStoreAudio", "(Ljava/lang/String;Ljava/lang/String;I)V", url, audioName + ".aac", downloadCB);
		} else if ((cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative)){
			var audioName = new Date().getTime().toString();
			var downloadCB = cutil.addFunc(function(filepath){
				// 直接播放
				if(h1global.curUIMgr.gameroomprepare_ui && h1global.curUIMgr.gameroomprepare_ui.is_show){
					h1global.curUIMgr.gameroomprepare_ui.playVoiceAnim(serverSitNum, record_time)
				}
				else if(h1global.curUIMgr.gameroom_ui && h1global.curUIMgr.gameroom_ui.is_show){
					h1global.curUIMgr.gameroom_ui.playVoiceAnim(serverSitNum, record_time);
				}
				
		        jsb.reflection.callStaticMethod("AudioOcBridge", "avAudioPlay:", audioName);
		        // player.sendAppVoice();
			});
			jsb.reflection.callStaticMethod("DownloaderOCBridge", "downloadAndStoreAudio:WithLocalFileName:AndFuncId:", url, audioName + ".aac", downloadCB);
		} else {

		}
	},
});
