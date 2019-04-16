// var UIBase = require("src/views/ui/UIBase.js")
// cc.loader.loadJs("src/views/ui/UIBase.js")
var GameConfigUI = UIBase.extend({
	ctor:function() {
		this._super();
		this.resourceFilename = "res/ui/GameConfigUI.json";
	},

	initUI:function(){
		this.gameconfig_panel = this.rootUINode.getChildByName("gameconfig_panel");
		var player = h1global.entityManager.player();
		var self = this;
		this.gameconfig_panel.getChildByName("return_btn").addTouchEventListener(function(sender, eventType){
			if(eventType == ccui.Widget.TOUCH_ENDED){
				self.hide();
			}
		});

		this.out_btn = this.gameconfig_panel.getChildByName("out_btn");
		this.out_btn.addTouchEventListener(function(sender, eventType){
			if(eventType == ccui.Widget.TOUCH_ENDED){
				player.quitRoom();
				self.hide();
			}
		});

		this.close_btn = this.gameconfig_panel.getChildByName("close_btn");
		this.close_btn.addTouchEventListener(function(sender, eventType){
			if(eventType == ccui.Widget.TOUCH_ENDED){
				player.quitRoom();
				self.hide();
			}
		});

		this.applyclose_btn = this.gameconfig_panel.getChildByName("applyclose_btn");
		this.applyclose_btn.addTouchEventListener(function(sender, eventType){
			if(eventType == ccui.Widget.TOUCH_ENDED){
				player.applyDismissRoom();
				self.hide();
			}
		});

		this.gameconfig_panel.getChildByName("music_slider").addTouchEventListener(function(sender, eventType){
			if(eventType == ccui.Widget.TOUCH_ENDED){
			// if(eventType == ccui.Slider.EVENT_PERCENT_CHANGED){
				cc.audioEngine.setMusicVolume(sender.getPercent()*0.01);
				cc.sys.localStorage.setItem("MUSIC_VOLUME", sender.getPercent());
			}
		});
		this.gameconfig_panel.getChildByName("music_slider").setPercent(cc.sys.localStorage.getItem("MUSIC_VOLUME") * 100);

		this.gameconfig_panel.getChildByName("effect_slider").addTouchEventListener(function(sender, eventType){
			if(eventType == ccui.Widget.TOUCH_ENDED){
			// if(eventType == ccui.Slider.EVENT_PERCENT_CHANGED){
				cc.audioEngine.setEffectsVolume(sender.getPercent()*0.01);
				cc.sys.localStorage.setItem("EFFECT_VOLUME", sender.getPercent());
			}
		});
		this.gameconfig_panel.getChildByName("effect_slider").setPercent(cc.sys.localStorage.getItem("EFFECT_VOLUME") * 100);

        //语音语言选择
        this.langue_chx_list = [];
        function langue_event(sender, eventType){
            if (eventType == ccui.CheckBox.EVENT_SELECTED || eventType == ccui.CheckBox.EVENT_UNSELECTED) {
                for (var i = 0; i < self.langue_chx_list.length; i++) {
                    if (sender != self.langue_chx_list[i]) {
                        self.langue_chx_list[i].setSelected(false);
                        self.langue_chx_list[i].setTouchEnabled(true);
                    }else{
                        self.langue = i;
                        sender.setSelected(true);
                        sender.setTouchEnabled(false);
                        if(self.langue == 0) {
                            cc.sys.localStorage.setItem("langue", "putonglangue");
                        }else {
                            cc.sys.localStorage.setItem("langue", "wenzhoulangue");
                        }
                        cc.log("langue:", cc.sys.localStorage.getItem("langue"));
                    }
                }
            }
        }
        for (var i = 0; i < 2; i++) {
            var langue_chx = ccui.helper.seekWidgetByName(this.gameconfig_panel, "langue_chx_" + String(i));
            this.langue_chx_list.push(langue_chx);
            langue_chx.addTouchEventListener(langue_event);
            if((cc.sys.localStorage.getItem("langue") == "putonglangue") && i == 0){
                self.langue = 0;
                langue_chx.setSelected(true);
                langue_chx.setTouchEnabled(false);
            }else if(cc.sys.localStorage.getItem("langue") == "wenzhoulangue" && i == 1){
                self.langue = 1;
                langue_chx.setSelected(true);
                langue_chx.setTouchEnabled(false);
            }else {
                langue_chx.setSelected(false);
                langue_chx.setTouchEnabled(true);
            }
        }
        // this.langue_chx_list[0].setTouchEnabled(false);
        cc.log("langue:", cc.sys.localStorage.getItem("langue"));

		this.update_state();
	},

	update_state:function(){
		if(!this.is_show){
			return;
		}
		var player = h1global.entityManager.player();
		if(player.curGameRoom){
			if(player.curGameRoom.curRound > 0){
				this.applyclose_btn.setVisible(true);
				this.close_btn.setVisible(false);
				this.out_btn.setVisible(false);
			} else if(player.serverSitNum == 0){
				this.applyclose_btn.setVisible(false);
				this.close_btn.setVisible(true);
				this.out_btn.setVisible(false);
			} else {
				this.applyclose_btn.setVisible(false);
				this.close_btn.setVisible(false);
				this.out_btn.setVisible(true);
			}
		}
	},
});