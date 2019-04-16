var HelpUI = UIBase.extend({
    ctor: function () {
        this._super();
        this.resourceFilename = "res/ui/HelpUI.json";
        this.setLocalZOrder(const_val.MAX_LAYER_NUM);
    },

    initUI: function () {
        var self = this;
        var help_panel = this.rootUINode.getChildByName("help_panel");
        var close_btn = help_panel.getChildByName("close_btn");
        var intro_btn = help_panel.getChildByName("intro_btn");
        var calc_btn = help_panel.getChildByName("calc_btn");
        var rule_btn = help_panel.getChildByName("rule_btn");
        var intro_scroll = help_panel.getChildByName("intro_scroll");
        var calc_scroll = help_panel.getChildByName("calc_scroll");
        var rule_scroll = help_panel.getChildByName("rule_scroll");

        // init status
        intro_btn.setBright(false);
        intro_btn.setTouchEnabled(false);
        intro_scroll.setVisible(true);

        close_btn.addTouchEventListener(function (sender, eventType) {
            if (eventType === ccui.Widget.TOUCH_ENDED) {
                self.hide();
            }
        });

        intro_btn.addTouchEventListener(function (sender, eventType) {
            if (eventType === ccui.Widget.TOUCH_ENDED) {
                intro_btn.setBright(false);
                intro_btn.setTouchEnabled(false);
                intro_scroll.setVisible(true);
                calc_btn.setBright(true);
                calc_btn.setTouchEnabled(true);
                calc_scroll.setVisible(false);
                rule_btn.setBright(true);
                rule_btn.setTouchEnabled(true);
                rule_scroll.setVisible(false);
            }
        });
    }
});