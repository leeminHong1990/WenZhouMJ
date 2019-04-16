// var UIBase = require("src/views/ui/UIBase.js")
// cc.loader.loadJs("src/views/ui/UIBase.js")
var GamePlayerInfoUI = UIBase.extend({
	ctor:function() {
		this._super();
		this.resourceFilename = "res/ui/PlayerInfoUI.json";
	},

	initUI:function(){
		this.playerinfo_panel = this.rootUINode.getChildByName("playerinfo_panel");

		var self = this;
		this.playerinfo_panel.getChildByName("return_btn").addTouchEventListener(function(sender, eventType){
			if(eventType == ccui.Widget.TOUCH_ENDED){
				self.hide();
			}
		});

		// this.playerinfo_panel.getChildByName("logout_btn").addTouchEventListener(function(sender, eventType){
		// 	if(eventType == ccui.Widget.TOUCH_ENDED){
		// 		player.logout();
		// 	}
		// });
		this.playerinfo_panel.getChildByName("logout_btn").setVisible(false);
	},

	show_by_info:function(info_dict){
		// var info_dict = eval('(' + cc.sys.localStorage.getItem("INFO_JSON") + ')');
		var self = this;
		this.show(function(){
			// var frame_img = ccui.helper.seekWidgetByName(self.playerinfo_panel, "frame_img");
			// self.playerinfo_panel.reorderChild(frame_img, 1);
			// cutil.loadPortraitTexture(info_dict["head_icon"], function(img){
			// 	if(h1global.curUIMgr.gameplayerinfo_ui && h1global.curUIMgr.gameplayerinfo_ui.is_show){
			// 		h1global.curUIMgr.gameplayerinfo_ui.rootUINode.getChildByName("playerinfo_panel").getChildByName("portrait_sprite").removeFromParent();
			// 		var portrait_sprite  = new cc.Sprite(img);
			// 		portrait_sprite.setName("portrait_sprite");
			// 		portrait_sprite.setScale(130/portrait_sprite.getContentSize().width);
			// 		portrait_sprite.x = 120;
			// 		portrait_sprite.y = 230;
	  //   			h1global.curUIMgr.gameplayerinfo_ui.rootUINode.getChildByName("playerinfo_panel").addChild(portrait_sprite);
			// 	}
			// }, info_dict["uuid"].toString() + ".png");

			self.playerinfo_panel.getChildByName("name_label").setString(info_dict["nickname"]);

			// var sex_label = self.playerinfo_panel.getChildByName("sex_label");
			// if(info_dict["sex"] == 1){
			// 	sex_label.setString("男");
			// } else if(info_dict["sex"] == 2){
			// 	sex_label.setString("女");
			// } else {
			// 	sex_label.setString("未知");
			// }

			var ip_label = self.playerinfo_panel.getChildByName("ip_label");
			if(info_dict["ip"]){
				ip_label.setString(info_dict["ip"]);
				ip_label.setVisible(true);
			} else {
				ip_label.setVisible(false);
			}

			self.playerinfo_panel.getChildByName("id_label").setString(info_dict["userId"].toDouble().toString());
		});
	},
});