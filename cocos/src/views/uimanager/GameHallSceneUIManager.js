var GameHallSceneUIManager = UIManagerBase.extend({
    onCreate: function () {
        var initUIClassNameList = ["GameHallUI", "CreateRoomUI", "JoinRoomUI", "HelpUI", "FeedBackUI", "InvitationUI", "PlayerInfoUI", "RecordUI", "ConfigUI"];

        for(var uiClassName of initUIClassNameList){
            this.add_ui(uiClassName.slice(0, uiClassName.length - 2).toLowerCase() + "_ui", [], uiClassName);
        }
    }
});