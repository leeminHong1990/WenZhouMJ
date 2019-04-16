// var UIBase = require("src/views/ui/UIBase.js")
// cc.loader.loadJs("src/views/ui/UIBase.js")
var RecordUI = UIBase.extend({
	ctor:function() {
		this._super();
		this.resourceFilename = "res/ui/RecordUI.json";
	},

	initUI:function(){
		this.curState = 0;
		this.record_panel = this.rootUINode.getChildByName("record_panel");
		var player = h1global.entityManager.player();
		var self = this;
		this.return_btn = this.record_panel.getChildByName("return_btn");
        this.return_btn.addTouchEventListener(function (sender, eventType) {
            if (eventType === ccui.Widget.TOUCH_ENDED) {
                self.hide();
            }
        });
		this.back_btn = this.record_panel.getChildByName("back_btn");

        function back_btn_event(sender, eventType) {
            if (eventType === ccui.Widget.TOUCH_ENDED) {
                self.back_btn.setVisible(false);
                self.return_btn.setVisible(true);
                self.updateRecordScroll(0, player.gameRecordList);
            }
        }

        this.back_btn.addTouchEventListener(back_btn_event);
		this.record_scroll = this.record_panel.getChildByName("record_scroll");
		this.updateRecordScroll(0, player.gameRecordList);
	},

	updateRecordScroll:function(curState, recordList){
		// recordList反向
		recordList = recordList.concat([]).reverse();
		var self = this;
		this.curState = curState;
		function update_func(curItem, curInfo, idx){
			// var num_label = curItem.getChildByName("num_label");
			// num_label.setString((idx + 1).toString());
			var date_label = curItem.getChildByName("date_label");
			var time_label = curItem.getChildByName("time_label");
			if(self.curState == 0){
				// 游戏总体信息，时间取第1局开始的时间
				date_label.setString(curInfo[0]["date"]);
				var time_text = curInfo[0]["time"].split(":", 2);
                for(var i = 0;i < time_text.length;i++) {
                    if(time_text[i] < 10) {
                        time_text[i] = "0" + time_text[i];
                    }
                }
                time_label.setString(time_text[0] + ":" +time_text[1]);
				time_label.setVisible(true);
			} else {
				// 每次游戏的子局内容
				// date_label.setString(curInfo["date"]);
				// time_label.setString(curInfo["time"]);
				date_label.setString("第" + (idx + 1).toString() + "局");
				time_label.setVisible(false);
			}
			for(var i = 0; i < 4; i++){
				var player_label = curItem.getChildByName("player_label" + i.toString());
				var score_label = curItem.getChildByName("score_label" + i.toString());
				var score_img = curItem.getChildByName("score_img" + i.toString())
				if(self.curState == 0){
					if (!curInfo[0]["round_record"][i]) {
						player_label.setVisible(false)
						score_label.setVisible(false)
						score_img.setVisible(false)
						continue;
					}
					player_label.setVisible(true)
					score_label.setVisible(true)
					score_img.setVisible(true)
					player_label.setString(curInfo[0]["round_record"][i]["nickname"]);
					var total_score = 0;
					for(var j = 0; j < curInfo.length; j++){
						total_score += curInfo[j]["round_record"][i]["score"];
					}
					score_label.setString(total_score.toString());
				} else {
					if (!curInfo["round_record"][i]) {
						player_label.setVisible(false)
						score_label.setVisible(false)
						score_img.setVisible(false)
                        continue;
					}
					player_label.setVisible(true)
					score_label.setVisible(true)
					score_img.setVisible(true)
					player_label.setString(curInfo["round_record"][i]["nickname"])
					score_label.setString(curInfo["round_record"][i]["score"].toString());
				}
			}
			
		}
		UICommonWidget.update_scroll_items(this.record_scroll, recordList, update_func);
		var items = this.record_scroll.getChildren();
		for(var i = 0; i < items.length; i++){
			items[i].addTouchEventListener(function(i){return function(sender, eventType){
							if(eventType == ccui.Widget.TOUCH_ENDED){
								if(self.curState == 0){
									self.curState = 1;
									self.back_btn.setVisible(true);
                            		self.return_btn.setVisible(false);
									UICommonWidget.update_scroll_items(self.record_scroll, recordList[i], update_func);
								}
							}
						};}(i));
		}
	},
});