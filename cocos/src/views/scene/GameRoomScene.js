// cc.loader.loadJs("src/views/uimanager/LoginSceneUIManager.js")

var GameRoomScene = cc.Scene.extend({
    className:"GameRoomScene",
    onEnter:function () {
        this._super();
        // cc.log("MainScene::loadUIManager")
        this.loadUIManager();
        cutil.unlock_ui();

        if(cc.audioEngine.isMusicPlaying()){
            cc.audioEngine.stopMusic();
        }
        // if(!cc.audioEngine.isMusicPlaying()){
            cc.audioEngine.playMusic("res/sound/music/game_bgm.mp3", true);
        // }

        if(cc.sys.localStorage.getItem("langue") == undefined){
            cc.sys.localStorage.setItem("langue", "putonglangue");
        }
    },

    loadUIManager:function() {
        // 背景图
        var bg_img = ccui.ImageView.create("res/ui/BackGround/gameroom_bg.png");
        bg_img.setAnchorPoint(0.5, 0.5);
        bg_img.setName("bg_img");
        // bg_img.setPositionType(ccui.Widget.POSITION_PERCENT);
        // bg_img.setPositionPercent(cc.p(0.5, 0.5));
        bg_img.setPosition(cc.p(cc.winSize.width * 0.5, cc.winSize.height * 0.5));
        this.addChild(bg_img);
        var bg_desc_img = ccui.ImageView.create("res/ui/BackGround/bg_desc.png");
        bg_desc_img.setAnchorPoint(0.5, 0.5);
        bg_desc_img.setName("bg_desc");
        bg_desc_img.setPosition(cc.p(cc.winSize.width * 0.5, cc.winSize.height * 0.5));
        this.addChild(bg_desc_img);
        var bg_img_content_size = bg_img.getContentSize();
        var scale = cc.winSize.width/bg_img_content_size.width;
        if (cc.winSize.height/bg_img_content_size.height > scale){
            scale = cc.winSize.height/bg_img_content_size.height;
        }
        bg_img.setScale(scale);
        // var bg_img_content_size = bg_img.getContentSize();
        // var scale = cc.winSize.width/bg_img_content_size.width;
        // if (cc.winSize.height/bg_img_content_size.height > scale){
        //     scale = cc.winSize.height/bg_img_content_size.height;
        // }
        // bg_img.setScale(scale);
        // bg_img.setScale9Enabled(true);
        // bg_img.setCapInsets(cc.Rect(100, 100, 359, 261));
        // bg_img.setContentSize(cc.winSize);

        // var bg_img1 = ccui.ImageView.create("res/ui/GameRoomUI/gameroom_corner.png");
        // bg_img1.setAnchorPoint(0.5, 0.5);
        // bg_img1.setName("bg_img1");
        // bg_img1.setPositionType(ccui.Widget.POSITION_PERCENT);
        // bg_img1.setPositionPercent(cc.p(0.1, 0.8));
        // bg_img1.setRotation(0);
        // this.addChild(bg_img1);
        // var bg_img2 = ccui.ImageView.create("res/ui/GameRoomUI/gameroom_corner.png");
        // bg_img2.setAnchorPoint(0.5, 0.5);
        // bg_img2.setName("bg_img2");
        // bg_img2.setPositionType(ccui.Widget.POSITION_PERCENT);
        // bg_img2.setPositionPercent(cc.p(0.9, 0.8));
        // bg_img2.setRotation(90);
        // this.addChild(bg_img2);
        // var bg_img3 = ccui.ImageView.create("res/ui/GameRoomUI/gameroom_corner.png");
        // bg_img3.setAnchorPoint(0.5, 0.5);
        // bg_img3.setName("bg_img3");
        // bg_img3.setPositionType(ccui.Widget.POSITION_PERCENT);
        // bg_img3.setPositionPercent(cc.p(0.9, 0.2));
        // bg_img3.setRotation(180);
        // this.addChild(bg_img3);
        // var bg_img4 = ccui.ImageView.create("res/ui/GameRoomUI/gameroom_corner.png");
        // bg_img4.setAnchorPoint(0.5, 0.5);
        // bg_img4.setName("bg_img4");
        // bg_img4.setPositionType(ccui.Widget.POSITION_PERCENT);
        // bg_img4.setPositionPercent(cc.p(0.1, 0.2));
        // bg_img4.setRotation(270);
        // this.addChild(bg_img4);

        // var centre_img1 = ccui.ImageView.create("res/ui/GameRoomUI/gameroom_bg_centre.png");
        // centre_img1.setAnchorPoint(0.5, 0.5);
        // centre_img1.setName("centre_img1");
        // // centre_img1.setPositionType(ccui.Widget.POSITION_PERCENT);
        // // centre_img1.setPositionPercent(cc.p(0.5, 0.5));
        // centre_img1.setPosition(cc.p(cc.winSize.width * 0.5, cc.winSize.height * 0.6 - 35));
        // centre_img1.setScale(0.7);
        // this.addChild(centre_img1);
        // var centre_img2 = ccui.ImageView.create("res/ui/GameRoomUI/gameroom_bg_centre.png");
        // centre_img2.setAnchorPoint(1.0, 0.5);
        // centre_img2.setName("centre_img2");
        // centre_img2.setPositionType(ccui.Widget.POSITION_PERCENT);
        // centre_img2.setPositionPercent(cc.p(0.5, 0.5));
        // centre_img2.setFlippedX(true);
        // this.addChild(centre_img2);

        // var logo_img = ccui.ImageView.create("res/ui/GameRoomUI/gameroom_logo.png");
        // logo_img.setAnchorPoint(0.5, 0.5);
        // logo_img.setName("logo_img");
        // // logo_img.setPositionType(ccui.Widget.POSITION_PERCENT);
        // // logo_img.setPositionPercent(cc.p(0.5, 0.7));
        // // logo_img.setScale(3.0);
        // logo_img.setPosition(cc.p(cc.winSize.width * 0.5, cc.winSize.height * 0.8));
        // this.addChild(logo_img);

    	var curUIManager = new GameRoomSceneUIManager();
    	curUIManager.setAnchorPoint(0, 0);
    	curUIManager.setPosition(0, 0);
    	this.addChild(curUIManager, const_val.curUIMgrZOrder);
        h1global.curUIMgr = curUIManager;
        // curUIManager.gameroom_ui.show();
        var player = h1global.entityManager.player();
        if (h1global.entityManager.player().curGameRoom.isPlayingGame == const_val.STATE_BET) {
            curUIManager.gameroomprepare_ui.hide();
            curUIManager.gameroom_ui.show(function(){
                h1global.curUIMgr.gameroom_ui.playSeatEffect((player.serverSitNum + player.curGameRoom.player_num -  player.curGameRoom.dealerIdx)%player.curGameRoom.player_num)
            })
        } else if(h1global.entityManager.player().curGameRoom.isPlayingGame == const_val.STATE_PLAY){
            curUIManager.gameroomprepare_ui.hide();
            if (h1global.entityManager.player().isPlayingStartAnimation) {
                curUIManager.gameroom_ui.show(function(){
                    h1global.curUIMgr.gameroom_ui.startBeginAnim(player.diceList, player.curGameRoom.dealerIdx);
                });
            }else{
                curUIManager.gameroom_ui.show(function(){
                    h1global.curUIMgr.gameroom_ui.rootUINode.getChildByName("room_info_panel").setVisible(true)
                    h1global.curUIMgr.gameroom_ui.rootUINode.getChildByName("kingtile_panel").setVisible(true)
                });
            }
        } else {
            curUIManager.gameroom_ui.hide();
            curUIManager.gameroomprepare_ui.show();
            // TEST:
            // var player = h1global.entityManager.player();
            // player.curGameRoom = new GameRoomEntity();
            // player.curGameRoom.roomID = 1234;
            // player.curGameRoom.upTilesList = [  [[11, 11, 11, 11], [0, 0, 0, 12], [13, 13, 13]], 
            //                                     [[14, 14, 14], [0, 0, 0, 0], [0, 0, 0, 0]], 
            //                                     [[17, 17, 17], [18, 18, 18], [19, 19, 19]], 
            //                                     [[21, 21, 21], [22, 22, 22], [23, 23, 23]]];
            // curUIManager.settlement_ui.show_by_info({
            //     "op" : 11,
            //     "win_idx" : 0,
            //     "lucky_tiles" : [1, 2, 35, 9],
            //     "player_info_list" : [  {"idx" : 0, "tiles": [1, 2, 3, 4, 4], "score": 99, "concealed_kong":[]},
            //                             {"idx" : 1, "tiles": [1, 2, 3, 5], "score": -33, "concealed_kong":[15, 16]}, 
            //                             {"idx" : 2, "tiles": [1, 2, 3, 5], "score": -33, "concealed_kong":[]},
            //                             {"idx" : 3, "tiles": [1, 2, 3, 5], "score": -33, "concealed_kong":[]}
            //                         ],
            // });

            // curUIManager.result_ui.show_by_info([
            //     {   "idx" : 0,
            //         "win_times" : 16,
            //         "exposed_kong" : 9,
            //         "concealed_kong" : 9,
            //         "lucky_tiles" : 40,
            //         "score" : 99},
            //     {   "idx" : 1,
            //         "win_times" : 16,
            //         "exposed_kong" : 9,
            //         "concealed_kong" : 9,
            //         "lucky_tiles" : 40,
            //         "score" : 99},
            //     {   "idx" : 2,
            //         "win_times" : 16,
            //         "exposed_kong" : 9,
            //         "concealed_kong" : 9,
            //         "lucky_tiles" : 40,
            //         "score" : 99},
            //     {   "idx" : 3,
            //         "win_times" : 16,
            //         "exposed_kong" : 9,
            //         "concealed_kong" : 9,
            //         "lucky_tiles" : 40,
            //         "score" : 99}
            // ]);

            // var player = h1global.entityManager.player();
            // player.curGameRoom = new GameRoomEntity();
            // player.curGameRoom.roomID = 1234;
            // player.curGameRoom.upTilesList = [  [[11, 11, 11], [0, 0, 0, 12]], 
            //                                     [[14, 14, 14], [0, 0, 0, 0], [0, 0, 0, 0]], 
            //                                     [[17, 17, 17], [18, 18, 18], [19, 19, 19]], 
            //                                     [[21, 21, 21], [22, 22, 22], [23, 23, 23]]];
            // player.curGameRoom.handTilesList = [[1, 1, 1, 2, 13, 13, 13],
            //                                     [1, 2, 3, 5],
            //                                     [1, 2, 3, 5],
            //                                     [1, 2, 3, 5]];
            // curUIManager.gameroom_ui.show(function(){
            //     player.postOperation(0, const_val.OP_DRAW, [11]);
            // });
        }
        //TEST:
        // h1global.curUIMgr.settlement_ui.show();


        if (!onhookMgr) { 
            onhookMgr = new OnHookManager();
        }

        onhookMgr.init(this);
        this.scheduleUpdateWithPriority(0);

        if(onhookMgr.applyCloseLeftTime > 0){
            curUIManager.applyclose_ui.show_by_sitnum(h1global.entityManager.player().curGameRoom.applyCloseFrom);
        }
    },

    update:function( delta ){
        // if (physicsUpdate) {
        //     physicsUpdate();
        // }
        onhookMgr.update(delta);
    }
});