// var UIBase = require("src/views/ui/UIBase.js")
// cc.loader.loadJs("src/views/ui/UIBase.js")
"use strict"
var CreateRoomUI = UIBase.extend({
	ctor:function() {
		this._super();
		this.resourceFilename = "res/ui/CreateRoomUI.json";
	},

	initUI:function(){
		this.player_num = 4
		this.round_num = 8
		this.follow_state = 1
		this.kong_state = 1
		this.kong_draw_win_double = 1
		this.dragon_state = 1
		this.contract_state = 1
		this.bet_num = 0
		this.createroom_panel = this.rootUINode.getChildByName("createroom_panel");
		this.initCreateRoomPanel()

		this.initCreateRoom()
		// create_btn
		this.updateCardDiamond()
	},

	updateCardDiamond:function(){
		var Text_9 = this.rootUINode.getChildByName("createroom_panel").getChildByName("Text_9");
		Text_9.setString("10钻石=8局。15钻石=16局。20钻石=2圈");
	},

	initCreateRoomPanel:function(){
		var self = this
		var return_btn = ccui.helper.seekWidgetByName(this.createroom_panel, "return_btn")
		function return_btn_event(sender, eventType){
			if (eventType == ccui.Widget.TOUCH_ENDED) {
				self.hide()
			}
		}
		return_btn.addTouchEventListener(return_btn_event)

		//人数
		this.player_num_chx_list = []
		function player_num_event(sender, eventType){
			if (eventType == ccui.CheckBox.EVENT_SELECTED || eventType == ccui.CheckBox.EVENT_UNSELECTED) {
				for (var i = 0; i < self.player_num_chx_list.length; i++) {
					if (sender != self.player_num_chx_list[i]) {
						self.player_num_chx_list[i].setSelected(false)
						self.player_num_chx_list[i].setTouchEnabled(true)
					}else{
						self.player_num = i == 0 ? 4 : 2
                        sender.setSelected(true);
						sender.setTouchEnabled(false)
						cc.log("player_num:", self.player_num)
					}
				}
			}
		}
		for (var i = 0; i < 2; i++) {
			var player_num_chx = ccui.helper.seekWidgetByName(this.createroom_panel, "player_num_chx_" + String(i+1))
			this.player_num_chx_list.push(player_num_chx)
			player_num_chx.addTouchEventListener(player_num_event)
		}
		this.player_num_chx_list[0].setTouchEnabled(false)
		cc.log("player_num:", this.player_num)

		//局数选择
		this.round_num_chx_list = []
		function round_num_event(sender, eventType){
			if (eventType == ccui.CheckBox.EVENT_SELECTED || eventType == ccui.CheckBox.EVENT_UNSELECTED) {
				for (var i = 0; i < self.round_num_chx_list.length; i++) {
					if (sender != self.round_num_chx_list[i]) {
						self.round_num_chx_list[i].setSelected(false)
						self.round_num_chx_list[i].setTouchEnabled(true)
					}else{
						self.round_num = i == 2 ? -2 : (i+1)*8
                        sender.setSelected(true);
						sender.setTouchEnabled(false)
						cc.log("round_num:", self.round_num)
					}
				}
			}
		}
		for (var i = 0; i < 3; i++) {
			var round_num_chx = ccui.helper.seekWidgetByName(this.createroom_panel, "round_chx_" + String(i+1))
			this.round_num_chx_list.push(round_num_chx)
			round_num_chx.addTouchEventListener(round_num_event)
		}
		this.round_num_chx_list[0].setTouchEnabled(false)
		cc.log("round_num:", this.round_num)

		//跟风
		this.follow_chx_list = []
		function follow_event(sender, eventType){
			if (eventType == ccui.CheckBox.EVENT_SELECTED || eventType == ccui.CheckBox.EVENT_UNSELECTED) {
				for (var i = 0; i < self.follow_chx_list.length; i++) {
					if (sender != self.follow_chx_list[i]) {
						self.follow_chx_list[i].setSelected(false)
						self.follow_chx_list[i].setTouchEnabled(true)
					}else{
						self.follow_state = i == 0 ? 1 : 0
                        sender.setSelected(true);
						sender.setTouchEnabled(false)
						cc.log("follow_state:", self.follow_state)
					}
				}
			}
		}
		for (var i = 0; i < 2; i++) {
			var follow_chx = ccui.helper.seekWidgetByName(this.createroom_panel, "follow_chx_" + String(i+1))
			this.follow_chx_list.push(follow_chx)
			follow_chx.addTouchEventListener(follow_event)
		}
		this.follow_chx_list[0].setTouchEnabled(false)
		cc.log("follow_state:", this.follow_state)

		//杠算分
		this.kong_chx_list = []
		function kong_event(sender, eventType){
			if (eventType == ccui.CheckBox.EVENT_SELECTED || eventType == ccui.CheckBox.EVENT_UNSELECTED) {
				for (var i = 0; i < self.kong_chx_list.length; i++) {
					if (sender != self.kong_chx_list[i]) {
						self.kong_chx_list[i].setSelected(false)
						self.kong_chx_list[i].setTouchEnabled(true)
					}else{
						self.kong_state = i == 0 ? 1 : 0
                        sender.setSelected(true);
						sender.setTouchEnabled(false)
						cc.log("kong_state:", self.kong_state)
					}
				}
			}
		}
		for (var i = 0; i < 2; i++) {
			var kong_chx = ccui.helper.seekWidgetByName(this.createroom_panel, "kong_chx_" + String(i+1))
			this.kong_chx_list.push(kong_chx)
			kong_chx.addTouchEventListener(kong_event)
		}
		this.kong_chx_list[0].setTouchEnabled(false)
		cc.log("kong_state:", this.kong_state)

		//杠开双翻
		this.kong_double_chx_list = []
		function kong_double_event(sender, eventType){
			if (eventType == ccui.CheckBox.EVENT_SELECTED || eventType == ccui.CheckBox.EVENT_UNSELECTED) {
				for (var i = 0; i < self.kong_double_chx_list.length; i++) {
					if (sender != self.kong_double_chx_list[i]) {
						self.kong_double_chx_list[i].setSelected(false)
						self.kong_double_chx_list[i].setTouchEnabled(true)
					}else{
						self.kong_draw_win_double = i == 0 ? 1 : 0
                        sender.setSelected(true);
						sender.setTouchEnabled(false)
						cc.log("kong_draw_win_double:", self.kong_draw_win_double)
					}
				}
			}
		}
		for (var i = 0; i < 2; i++) {
			var kong_double_chx = ccui.helper.seekWidgetByName(this.createroom_panel, "kong_double_chx_" + String(i+1))
			this.kong_double_chx_list.push(kong_double_chx)
			kong_double_chx.addTouchEventListener(kong_double_event)
		}
		this.kong_double_chx_list[0].setTouchEnabled(false)
		cc.log("kong_draw_win_double:", this.kong_draw_win_double)

		//有无中发
		this.dragon_chx_list = []
		function dragon_event(sender, eventType){
			if (eventType == ccui.CheckBox.EVENT_SELECTED || eventType == ccui.CheckBox.EVENT_UNSELECTED) {
				for (var i = 0; i < self.dragon_chx_list.length; i++) {
					if (sender != self.dragon_chx_list[i]) {
						self.dragon_chx_list[i].setSelected(false)
						self.dragon_chx_list[i].setTouchEnabled(true)
					}else{
						self.dragon_state = i == 0 ? 1 : 0
                        sender.setSelected(true);
						sender.setTouchEnabled(false)
						cc.log("dragon_state:", self.dragon_state)
					}
				}
			}
		}
		for (var i = 0; i < 2; i++) {
			var dragon_chx = ccui.helper.seekWidgetByName(this.createroom_panel, "dragon_chx_" + String(i+1))
			this.dragon_chx_list.push(dragon_chx)
			dragon_chx.addTouchEventListener(dragon_event)
		}
		this.dragon_chx_list[0].setTouchEnabled(false)
		cc.log("dragon_state:", this.dragon_state)

		//三背
		this.contract_chx_list = []
		function contract_event(sender, eventType){
			if (eventType == ccui.CheckBox.EVENT_SELECTED || eventType == ccui.CheckBox.EVENT_UNSELECTED) {
				for (var i = 0; i < self.contract_chx_list.length; i++) {
					if (sender != self.contract_chx_list[i]) {
						self.contract_chx_list[i].setSelected(false)
						self.contract_chx_list[i].setTouchEnabled(true)
					}else{
						self.contract_state = i == 0 ? 1 : 0
                        sender.setSelected(true);
						sender.setTouchEnabled(false)
						cc.log("contract_state:", self.contract_state)
					}
				}
			}
		}
		for (var i = 0; i < 2; i++) {
			var contract_chx = ccui.helper.seekWidgetByName(this.createroom_panel, "contract_chx_" + String(i+1))
			this.contract_chx_list.push(contract_chx)
			contract_chx.addTouchEventListener(contract_event)
		}
		this.contract_chx_list[0].setTouchEnabled(false)
		cc.log("contract_state:", this.contract_state)

		//买顶/底选择
		this.bet_chx_list = []
		function bet_num_event(sender, eventType){
			if (eventType == ccui.CheckBox.EVENT_SELECTED || eventType == ccui.CheckBox.EVENT_UNSELECTED) {
				for (var i = 0; i < self.bet_chx_list.length; i++) {
					if (sender != self.bet_chx_list[i]) {
						self.bet_chx_list[i].setSelected(false)
						self.bet_chx_list[i].setTouchEnabled(true)
					}else{
						self.bet_num = i * 5;
                        sender.setSelected(true);
						sender.setTouchEnabled(false)
						cc.log("bet_num:", self.bet_num)
					}
				}
			}
		}
		for (var i = 0; i < 3; i++) {
			var bet_chx = ccui.helper.seekWidgetByName(this.createroom_panel, "bet_chx_" + String(i+1))
			this.bet_chx_list.push(bet_chx)
			bet_chx.addTouchEventListener(bet_num_event)
		}
		this.bet_chx_list[0].setTouchEnabled(false)
		cc.log("bet_num:", this.bet_num)
	},


	initCreateRoom:function(){
		var self = this
		var create_btn = ccui.helper.seekWidgetByName(this.createroom_panel, "create_btn")
		function create_btn_event(sender, eventType){
			if (eventType == ccui.Widget.TOUCH_ENDED) {
				cutil.lock_ui();
				h1global.entityManager.player().createRoom(self.player_num, self.round_num, self.follow_state, self.kong_state, self.kong_draw_win_double, self.dragon_state, self.contract_state, self.bet_num, 0);
				self.hide()
			}
		}
		create_btn.addTouchEventListener(create_btn_event)
	}
});