"use strict";
/*-----------------------------------------------------------------------------------------
												interface
-----------------------------------------------------------------------------------------*/
var impGameRules = impGameOperation.extend({
	__init__ : function()
	{
		this._super();
		this.allTiles = const_val.CHARACTER.concat(const_val.BAMBOO);
  	this.allTiles = this.allTiles.concat(const_val.DOT);
  	this.allTiles.push(const_val.DRAGON_RED);
    // this.meld_history = {};
	  KBEngine.DEBUG_MSG("Create impGameRules");
  	},

  	getCanWinTiles:function(){
      return [];
      //听牌提示
  		var canWinTiles = [];
  		for(var i = 0; i < this.allTiles.length; i++){
  			var handTiles = this.curGameRoom.handTilesList[this.serverSitNum].concat([this.allTiles[i]]);
  			if(this.canWin(handTiles)){
  				canWinTiles.push(this.allTiles[i]);
  			}
  		}
  		return canWinTiles;
  	},

    getKingTilesNum:function(tiles){
      var tileNumDict = cutil.getTileNumDict(tiles)
      var kingTilesNum = 0
      for (var i = 0; i < this.curGameRoom.kingTiles.length; i++) {
        var kingTile = this.curGameRoom.kingTiles[i];
        kingTile = kingTile.toString()
        if (tileNumDict[kingTile]) {
          kingTilesNum += tileNumDict[kingTile]
        }
      }
      return kingTilesNum
    },

    canDiscard:function(t){
      var handTiles = this.curGameRoom.handTilesList[this.serverSitNum]
      var lastDiscardTile = this.curGameRoom.lastDiscardTile;
      var lastDiscardTileFrom = this.curGameRoom.lastDiscardTileFrom;
      // cc.log(handTiles,t,lastDiscardTile,lastDiscardTileFrom)
      if (handTiles.indexOf(t) >= 0) {
        if (this.curGameRoom.kingTiles.indexOf(t) >= 0) {
          return false
        }
        // 单张 非 白板 字牌 数量
        var tileNumDict = cutil.getTileNumDict(handTiles)
        var single_dragon_wind_num = 0
        for (var key in tileNumDict) {
          var val = tileNumDict[key]
          key = eval(key)
          if (const_val.WORDS.indexOf(key) >= 0 && val <= 1) {
            if (this.curGameRoom.kingTiles.indexOf(key) >= 0) {
              continue
            }
            single_dragon_wind_num ++;
          } else if (key == const_val.DRAGON_WHITE && const_val.WORDS.indexOf(this.curGameRoom.kingTiles[0]) >= 0 && val <= 1) {
            single_dragon_wind_num ++;
          }
        }
        //白板 并且 财神是字
        if (t == const_val.DRAGON_WHITE && const_val.WORDS.indexOf(this.curGameRoom.kingTiles[0]) >= 0) {
          return true
        }
        // 非字
        if (single_dragon_wind_num > 0 && const_val.WORDS.indexOf(t) < 0) {
          return false
        }
        return true
      }
      return false
    },

  	canConcealedKong:function(tiles){
      //暗杠
  		if(this.getOneConcealedKongNum(tiles) > 0){
        return true;
      } else {
        return false;
      }
  	},

    getOneConcealedKongNum:function(tiles){
      var hashDict = {};
      for(var i = 0; i < tiles.length; i++){
        if (this.curGameRoom.kingTiles.indexOf(tiles[i]) >= 0) {continue;}
        if(hashDict[tiles[i]]){
          hashDict[tiles[i]]++;
          if(hashDict[tiles[i]] >= 4){
            return tiles[i];
          }
        } else {
          hashDict[tiles[i]] = 1;
        }
      }
      return 0;
    },

  	canExposedKong:function(tiles, lastTile){
      if (this.curGameRoom.kingTiles.indexOf(lastTile) >= 0) {return false;}
  		var tile = 0;
  		for(var i = 0; i < tiles.length; i++){
  			if(tiles[i] == lastTile){
  				tile++;
  			}
  		}
  		if(tile >= 3){
  			return true;
  		}
  		return false;
  	},

  	canSelfExposedKong:function(upTilesList, drawTile){
  		if(this.getSelfExposedKongIdx(upTilesList, drawTile) >= 0){
  			return true;
  		}
  		return false;
  	},

  	getSelfExposedKongIdx:function(upTilesList, drawTile){
      if (this.curGameRoom.kingTiles.indexOf(drawTile) >= 0) {return -1;}
  		for(var i = 0; i < upTilesList.length; i++){
  			if(upTilesList[i].length == 3 && drawTile == upTilesList[i][0] && 
  				upTilesList[i][0] == upTilesList[i][1] && upTilesList[i][1] == upTilesList[i][2]){
  				return i;
  			}
  		}
  		return -1;
  	},

  	canPong:function(tiles, lastTile){
      if (this.curGameRoom.kingTiles.indexOf(lastTile) >= 0) {return false;}
      // 正常碰牌逻辑
  		var tile = 0;
  		for(var i = 0; i < tiles.length; i++){
  			if(tiles[i] == lastTile){
  				tile++;
  			}
  		}
  		if(tile >= 2){
  			return true;
  		}
  		return false;
  	},

    getCanChowTilesList:function(lastTile){
      var chowTilesList = [];
      var tiles = this.curGameRoom.handTilesList[this.serverSitNum];
      if (tiles.length == 4 && this.getKingTilesNum(tiles) == 2) { //手上剩余4张牌 2张是财神，不能吃碰
        return chowTilesList
      }
      if (this.curGameRoom.kingTiles.indexOf(lastTile) >= 0) {return chowTilesList}
      if(lastTile >= 30 && lastTile != const_val.DRAGON_WHITE){
        return chowTilesList;
      }
      if (lastTile == const_val.DRAGON_WHITE && this.curGameRoom.kingTiles.length > 0) { //白板当财神用
        lastTile = this.curGameRoom.kingTiles[0]
        if (lastTile >= 30) {
          return chowTilesList
        }
      }
      
      var neighborTileNumList = [0, 0, 1, 0, 0];
      for(var i = 0; i < tiles.length; i++){
        var t = tiles[i]
        if (this.curGameRoom.kingTiles.indexOf(t) >= 0) {
          continue;
        }
        if (t == const_val.DRAGON_WHITE && this.curGameRoom.kingTiles.length > 0) { //白板当财神用
          t = this.curGameRoom.kingTiles[0]
        }
        if(t - lastTile >= -2 && t - lastTile <= 2){
          neighborTileNumList[t - lastTile + 2]++;
        }
      }
      for(var i = 0; i < 3; i++){
        var tileList = [];
        for(var j = i; j < i + 3; j++){
          if(neighborTileNumList[j] > 0){
            tileList.push(lastTile - 2 + j);
          } else {
            break;
          }
        }
        // 三张连续的牌
        if(tileList.length >= 3){
          chowTilesList.push(tileList);
        }
      }
      //如果 有财神, 该张牌 还原成白板
      cc.log(chowTilesList)
      for (var i = 0; i < chowTilesList.length; i++) {
        for (var j = 0; j < chowTilesList[i].length; j++) {
          if (this.curGameRoom.kingTiles.indexOf(chowTilesList[i][j]) >= 0) {
            chowTilesList[i][j] = const_val.DRAGON_WHITE
          }
        }
      }
      return chowTilesList;
    },

    canChow:function(tiles, lastTile, sitNum){
      cc.log(tiles, lastTile, sitNum)
      if (tiles.length == 4 && this.getKingTilesNum(tiles) == 2) { //手上剩余4张牌 2张是财神，不能吃碰
        return false
      }
      if (this.curGameRoom.kingTiles.indexOf(lastTile) >= 0) {return false}
      if (this.curGameRoom.lastDiscardTileFrom !=  (sitNum + this.curGameRoom.player_num - 1)%this.curGameRoom.player_num) {return false}
      if (lastTile >= 30 && lastTile != const_val.DRAGON_WHITE){
        return false;
      }
      if (lastTile == const_val.DRAGON_WHITE && this.curGameRoom.kingTiles.length > 0) { //白板当财神用
        lastTile = this.curGameRoom.kingTiles[0]
        if (lastTile >= 30) {
          return false;
        }
      }
      var neighborTileNumList = [0, 0, 1, 0, 0];
      for(var i = 0; i < tiles.length; i++){
        var t = tiles[i]
        if (this.curGameRoom.kingTiles.indexOf(t) >= 0) {
          continue;
        }

        if (t == const_val.DRAGON_WHITE && this.curGameRoom.kingTiles.length > 0) {
          t = this.curGameRoom.kingTiles[0]
        }
        if(t - lastTile >= -2 && t - lastTile <= 2 ){
          neighborTileNumList[t - lastTile + 2]++;
        }
      }
      cc.log(neighborTileNumList)
      for(var i = 0; i < 3; i++){
        var tileNum = 0
        for(var j = i; j < i + 3; j++){
          if(neighborTileNumList[j] > 0){
            tileNum++;
          } else {
            break;
          }
        }
        // 三张连续的牌
        if(tileNum >= 3){
          return true;
        }
      }
      return false;
    },

  	// canWin:function(tiles){
  	// 	if (tiles.length % 3 != 2){
			// return false;
  	// 	}

   //    tiles = tiles.concat([]).sort(function(a, b){return a-b;});

  	// 	var tilesInfo = this.classifyTiles(tiles);
  	// 	var chars = tilesInfo[0];
  	// 	var bambs = tilesInfo[1];
  	// 	var dots = tilesInfo[2];
  	// 	var dragon_red = tilesInfo[3];
  	// 	var c_need1 = cutil.meld_only_need_num(chars, cutil.meld_history);
  	// 	var c_need2 = cutil.meld_with_pair_need_num(chars, cutil.meld_history);
  	// 	if (c_need1 > dragon_red && c_need2 > dragon_red){
  	// 		return false;
  	// 	}

  	// 	var b_need1 = cutil.meld_only_need_num(bambs, cutil.meld_history);
  	// 	var b_need2 = cutil.meld_with_pair_need_num(bambs, cutil.meld_history);
  	// 	if (b_need1 > dragon_red && b_need2 > dragon_red){
  	// 		return false;
  	// 	}

  	// 	var d_need1 = cutil.meld_only_need_num(dots, cutil.meld_history);
  	// 	var d_need2 = cutil.meld_with_pair_need_num(dots, cutil.meld_history);
  	// 	if (d_need1 > dragon_red && d_need2 > dragon_red){
  	// 		return false;
  	// 	}

  	// 	if(	(c_need2 + b_need1 + d_need1) <= dragon_red ||
  	// 		(c_need1 + b_need2 + d_need1) <= dragon_red ||
  	// 		(c_need1 + b_need1 + d_need2) <= dragon_red){
  	// 		return true;
  	// 	}
  	// 	return false;
  	// },
    canWin:function(handTiles, finalTile, win_op){
      var copyTiles = handTiles.concat([])
      copyTiles = copyTiles.sort(function(a,b){return a-b})
      var canWin = false
      cc.log(this.curGameRoom.raceHourseState , win_op == const_val.OP_GIVE_WIN , win_op == const_val.OP_KONG_WIN)
      if (this.curGameRoom.raceHourseState && win_op == const_val.OP_GIVE_WIN && win_op == const_val.OP_KONG_WIN) {
        return canWin
      }
      if (copyTiles.length % 3 == 2) {
        var classifyList = cutil.classifyTiles(copyTiles, this.curGameRoom.kingTiles)
        // 财神
        var curKingTiles = classifyList[0]
        // 白板
        var curDragonWhite = classifyList[1]
        // 非财神
        var handTilesButKing = []
        for (var i = 1; i < classifyList.length; i++) {
          handTilesButKing = handTilesButKing.concat(classifyList[i])
        }
        // 非白板
        var handTilesButWhite = []
        handTilesButWhite = handTilesButWhite.concat(classifyList[0])
        for (var i = 2; i < classifyList.length; i++) {
          handTilesButWhite = handTilesButWhite.concat(classifyList[i])
        }
        // 非财神 非白板
         var handTilesButKingWhite = []
        for (var i = 2; i < classifyList.length; i++) {
          handTilesButKingWhite = handTilesButKingWhite.concat(classifyList[i])
        }
        /******************************************************检查胡*****************************************************/

        // 3财神
        if (curKingTiles.length == 3) {
          canWin = true
        }
        // 8对
        if (copyTiles.length == 17 && cutil.checkIs8Pairs(handTilesButKing, curKingTiles.length)) {
          canWin = true

        } else if (cutil.canNormalWin(handTilesButKingWhite, this.curGameRoom.kingTiles[0], curKingTiles.length, curDragonWhite.length)) {
          canWin = true
        }
      }
      return canWin
    },
});
