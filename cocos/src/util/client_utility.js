"use strict";
var cutil = function(){}

cutil.lock_ui = function (){
	if(h1global.globalUIMgr){
		h1global.globalUIMgr.lock_ui.show();
	}
};

cutil.unlock_ui = function (){
	if(h1global.globalUIMgr){
		h1global.globalUIMgr.lock_ui.hide();
	}
};

cutil.deepCopy = function(obj){
    var str, newobj = obj.constructor === Array ? [] : {};
    if(typeof obj !== 'object'){
        return;
    } else if(window.JSON){
        str = JSON.stringify(obj), //系列化对象
        newobj = JSON.parse(str); //还原
    } else {
        for(var i in obj){
            newobj[i] = typeof obj[i] === 'object' ? 
            cutil.deepCopy(obj[i]) : obj[i]; 
        }
    }
    return newobj;
};

cutil.convert_time_to_date = function (rtime)
{
	var temp = os.date("*t", rtime)
	return temp.year.toString() + "年" + temp.month.toString() + "月" + temp.day.toString() + "日"
};

cutil.convert_time_to_hour2second = function (rtime)
{
	var temp = os.date("*t", rtime)
	return temp.hour.toString() + ":" + temp.min.toString()
};

cutil.convert_time_to_stime = function (ttime)
{
	var temp = os.date("*t", ttime)
	return temp.year.toString() + "/" + temp.month.toString() + "/" + temp.day.toString() + "  "+ temp.hour.toString() + ":"+ temp.min.toString() + ":" + temp.sec.toString()
};

cutil.convert_seconds_to_decimal = function(seconds, decimalNum){
	seconds = String(seconds)
	var lis = [[], []]
	var index = 0
	for (var i = 0; i < seconds.length; i++) {
		if (seconds[i] === '.') {
			index += 1
		}
		if (index <= 1 && seconds[i] !== '.') {
			lis[index].push(seconds[i])
		}
	}
	if (lis[0].length <= 0) {
		return null;
	}
	var integerPart = ""
	for (var i = 0; i < lis[0].length; i++) {
		integerPart += lis[0][i];
	}
	var decimalPart = ""
	if (lis[1].length < decimalNum) {
		for (var i = 0; i < lis[1].length; i++) {
			decimalPart += lis[1][i];
		}
		for (var i = 0; i < decimalNum-lis[1].length; i++) {
			decimalPart += '0';
		}
	} else {
		for (var i = 0; i < decimalNum; i++) {
			decimalPart += lis[1][i];
		}
	}
	return integerPart + "." + decimalPart
}

cutil.convert_second_to_hms = function (sec)
{
	if (!sec || sec <= 0) {return "00:00:00";}
	sec = Math.floor(sec);
	var hour = Math.floor(sec / 3600);
	var minute = Math.floor((sec % 3600) / 60);
	var second = (sec % 3600) % 60;
	// cc.log(second)
	
	var timeStr = "";
	if (hour < 10) {
		timeStr = timeStr + "0" + hour + ":";
	}else {
        timeStr = hour + ":";
    }
	if (minute < 10) {
		timeStr = timeStr + "0" + minute + ":";
	} else {
		timeStr = timeStr + minute + ":";
	}
	if (second < 10) {
		timeStr = timeStr + "0" + second;
	} else {
		timeStr = timeStr + second;
	}
	return timeStr;
}

cutil.convert_second_to_ms = function (sec)
{
	if (!sec || sec <= 0) {return "00:00";}
	sec = Math.floor(sec);

	var minute = Math.floor(sec / 60);
	var second = sec % 60;
	// cc.log(second)
	
	var timeStr = "";
	if (minute < 10) {
		timeStr = timeStr + "0" + minute + ":";
	} else {
		timeStr = timeStr + minute + ":";
	}
	if (second < 10) {
		timeStr = timeStr + "0" + second;
	} else {
		timeStr = timeStr + second;
	}
	return timeStr;
}


cutil.resize_img = function( item_img, size )
{
	var rect = item_img.getContentSize()
	var scale = size / rect.height
	var width = rect.width * scale
	if (width > size)
		scale = size / rect.width
	item_img.setScale(scale)
};

cutil.show_portrait_by_num = function (portrait_img,  characterNum)
{
	if (characterNum <= 100){
        portrait_img.loadTexture("res/portrait/zhujue" + characterNum + ".png")
	}
    else
    {
		// var table_mercenary = require("data/table_mercenary")
		var mercenary_info = table_mercenary[characterNum]
		KBEngine.DEBUG_MSG("mercenary_info", mercenary_info["PORTRAIT"])
		portrait_img.loadTexture("res/portrait/" + mercenary_info["PORTRAIT"] + ".png")
    }
};


cutil.print_table = function (lst)
{
	if (lst === undefined)
	{
		KBEngine.DEBUG_MSG("ERROR------>Table is undefined")
		return;
	} 
	for (var key in lst)
	{
		var info = lst[key];
    	KBEngine.DEBUG_MSG(key + " : " + info)
    	if (info instanceof Array)
    	{
        	cutil.print_table(info);
    	}
	}
};

cutil.is_in_list = function (x, t){
	for(var index in t){
		if (t[index] === x) {
			return  index;
		}
	}
	return null;
}


cutil.str_sub = function (strinput, len)
{
	if (strinput.length < len)
		return strinput
	if (strinput.length >= 128 && strinput.length < 192) 
		return cutil.str_sub(strinput, len - 1)
	return strinput.substring(0, len)
};

cutil.info_sub = function (strinput, len)
{
	var output = cutil.str_sub(strinput, len)
	if (output.length < strinput.length)
	{
		return output + "..."
	}
	return output
};
/*
cutil.deep_copy_table = 
	function (tb)
		if type(tb) ~= "table" then return tb end
		var result = {}
		for i, j in pairs(tb) do
			result[i] = cutil.deep_copy_table(j)
		end
		return result
	end
*/
cutil.convert_num_to_chstr = function(num)
{
	if (typeof num !== "number") {
		// 处理UINT64
		num = num.toDouble();
	}
	function convert(num, limit, word)
	{
		var integer = Math.floor(num / limit);
		var res_str = integer.toString();
		var floatNum = 0;
		if (integer < 10)
		{
			// floatNum = (Math.floor((num % limit) / (limit / 100))) * 0.01;
			floatNum = (Math.floor((num % limit) / (limit / 100)));
			if(floatNum < 1){
			} else if(floatNum < 10) {
				res_str = res_str + ".0" + floatNum.toString();
			} else {
				res_str = res_str + "." + floatNum.toString();
			}
		}
		else if (integer < 100)
		{
			floatNum = (Math.floor((num % limit) / (limit / 10)));
			if(floatNum < 1){
			} else {
				res_str = res_str + "." + floatNum.toString();
			}
		}
		// floatNum = Math.floor(floatNum * limit)/limit
		// integer += floatNum;

		// return integer.toString() + word;
		// cc.log(num)
		// cc.log(res_str + word)
		return res_str + word;
	}

	if (num >= 1000000000)
	{
		return convert(num, 1000000000, "B");
	}
	else if (num >= 1000000)
	{
		return convert(num, 1000000, "M");
	}
	else if (num >= 1000)
	{
		return convert(num, 1000, "K");
	}
	else
	{
		return Math.floor(num).toString();
	}
		
};

cutil.splite_list = function (list, interval, fix_length)
{
	var result_list = [];
	for (var i = 0; i < list.length; ++i)
	{
		var idx = Math.floor(i / interval);
		if (idx >= result_list.length)
		{
			result_list[idx] = [];
		}
		result_list[idx][i - idx * interval] = list[i];
	} 

	if (fix_length && result_list.length < fix_length)
	{
		for (var i = result_list.length; i < fix_length; ++i)
		{
			result_list.push([]);
		}
	}
	return result_list;
};


cutil.get_rotation_angle = function(vec2)
{
	var vec2_tan = Math.abs(vec2.y) / Math.abs(vec2.x);
	var angle = 0
	if (vec2.y == 0)
	{
		if (vec2.x > 0){
			angle = 90
		}
		else if (vec2.x < 0){
			angle = 270
		}
	}
	else if (vec2.x == 0){
		if (vec2.y > 0){
			angle = 0
		}
		else if (vec2.y < 0){
			angle = 180
		}
	}
	else if (vec2.y > 0 && vec2.x < 0){
		angle = Math.atan(vec2_tan)*180 / Math.pi - 90;
	}
	else if (vec2.y > 0 && vec2.x > 0){
		angle = 90 - Math.atan(vec2_tan)*180/Math.pi
	}
	else if (vec2.y < 0 && vec2.x < 0){
		angle = -Math.atan(vec2_tan)*180/Math.pi - 90;
	}
	else if (vec2.y < 0 && vec2.x > 0){
		angle = Math.atan(vec2_tan)*180/Math.pi + 90;
	}
	return angle
};

cutil.post_php_info = function (info, msg)
{
	var xhr = new cc.XMLHttpRequest()
	xhr.responseType = 0 // cc.XMLHTTPREQUEST_RESPONSE_STRING
	xhr.open("GET", "http://" + serverconfig.httpServerIP + "/log_client.php?key=" + info +   "&value=" +  msg)
	function onReadyStateChange()
	{

	}
	xhr.registerScriptHandler(onReadyStateChange)
	xhr.send()
};


cutil.post_php_feedback = function (info, msg)
{
	var xhr = new cc.XMLHttpRequest()
	xhr.responseType = 0 // cc.XMLHTTPREQUEST_RESPONSE_STRING
	xhr.open("GET", "http://" + serverconfig.httpServerIP + "/log_feedback.php?key=" + info +  "&value=" + msg)
	function onReadyStateChange(){}
	xhr.registerScriptHandler(onReadyStateChange)
	xhr.send()
};


cutil.printMessageToLogcat = function (message)
{
	if (targetPlatform === cc.PLATFORM_OS_ANDROID)
	{
        //var ok,ret  = luaj.callStaticMethod("org/cocos2dx/lua/AppActivity", "sPrintMsg", { message }, "(Ljava/lang/String;)V")
	}
};

cutil.openWebURL = function (url)
{
	if (targetPlatform == cc.PLATFORM_OS_ANDROID){
        //var ok,ret  = luaj.callStaticMethod("org/cocos2dx/lua/AppActivity", "sOpenWebURL", { url }, "(Ljava/lang/String;)V")
	}

};

cutil.get_uint32 = function (inputNum)
{
	return Math.ceil(inputNum) % 4294967294
};

cutil.schedule = function(node, callback, delay)
{
	// var delayAction = cc.DelayTime.create(delay);
	// var sequence = cc.Sequence.create(delay, cc.CallFunc.create(callback));
	// var action = cc.RepeatForever.create(sequence);
	// node.runAction(action);
	var action = cc.RepeatForever.create(cc.Sequence.create(cc.DelayTime.create(delay), cc.CallFunc.create(callback)));
	node.runAction(action);
	return action;
};

cutil.performWithDelay = function(node, callback, delay)
{
	var delayAction = cc.DelayTime.create(delay);
	var sequence = cc.Sequence.create(delay, cc.CallFunc.create(callback));
	node.runAction(sequence);
	return sequence;
};

cutil.binarySearch = function(targetList, val, func){
	func = func || function(x, val){return val - x;};
	var curIndex = 0;
	var fromIndex = 0;
	var toIndex = targetList.length - 1;
	while(toIndex > fromIndex){
		curIndex = Math.floor((fromIndex + toIndex) / 2);
		if (func(targetList[curIndex], val) < 0){
			toIndex = curIndex;
		}else if (func(targetList[curIndex], val) > 0){
			fromIndex = curIndex + 1;
		}else if (func(targetList[curIndex], val) == 0){
			return curIndex + 1;
		}
	}
	return toIndex;
};

cutil.get_count = function(tiles, t){
	var sum = 0;
	for(var i = 0; i < tiles.length; i++){
		if(tiles[i] == t){
			sum++;
		}
	}
	return sum;
};

cutil.meld_history = {};

cutil.meld_with_pair_need_num = function(tiles, history, used){

	var case1 = 999;
	var case2 = 999;
	if (cutil.meld_only_need_num(tiles, history) == 0){
		case1 = 2;
	}

	for(var i = 0; i < tiles.length; i++){
		var tmp = tiles.concat([]);

		if (cutil.get_count(tiles, tiles[i]) == 1){
			var idx = tmp.indexOf(tiles[i]);
			tmp.splice(idx, 1);
			case2 = Math.min(case2, 1 + cutil.meld_only_need_num(tmp, history));
		} else {
			var idx = tmp.indexOf(tiles[i]);
			tmp.splice(idx, 1);
			idx = tmp.indexOf(tiles[i]);
			tmp.splice(idx, 1);
			case2 = Math.min(case2, cutil.meld_only_need_num(tmp, history));
		}
	}

	return Math.min(case1, case2);
};

cutil.meld_only_need_num = function(tiles, history, used){
	used = used || 0;
	if (used > 4){
		return 999;
	}

	var key = tiles.concat([]).sort(function(a, b){return a-b;});
	if (history.hasOwnProperty(key)) {
		return history[key];
	}

	var size = tiles.length;
	if (size == 0){
		return 0;
	}
	if (size == 1){
		return 2;
	}
	if (size == 2){
		var p1 = tiles[0];
		var p2 = tiles[1];
		var case1 = 999;
		if (!(p1 == 9 || p1 == 19 || p1 >= 29)){
			if (p2 - p1 <= 2){
				case1 = 1;
			}
		}
		case2 = 0;
		if (p1 == p2) {
			case2 = 1;
		} else {
			case2 = 4
		}
		return Math.min(case1, case2);
		// if (p1 == p2 || p2 - p1 <= 2){
		// 	return 1;
		// } else {
		// 	return 4;
		// }
	}

	var first = tiles[0];
	// 自己组成顺子
	var case1 = 0;
	var left1 = tiles.slice();
	left1.shift();
	// console.log("left1 = ", left1);
	if (first == 9 || first == 19 || first >= 29) {
		case1 = 999
	} else {
		var idx1 = left1.indexOf(first+1);
		if (idx1 >= 0) {
			left1.splice(idx1, 1);
		} else {
			case1 += 1;
		}
		var idx2 = left1.indexOf(first+2);
		if (idx2 >= 0) {
			left1.splice(idx2, 1);
		} else {
			case1 += 1;
		}
		var res1 = this.meld_only_need_num(left1, history, used);
		history[left1] = res1;
		case1 += res1
	}

	
	// 自己组成刻子
	var case2 = 0;
	var left2 = tiles.slice();
	left2.shift();
	var count = this.get_count(left2, first);
	if (count >= 2) {
		var idx = left2.indexOf(first);
		left2.splice(idx, 1);
		idx = left2.indexOf(first);
		left2.splice(idx, 1);
	} else if (count == 1) {
		var idx = left2.indexOf(first);
		left2.splice(idx, 1);
		case2 += 1;
	} else {
		case2 += 2;
	}
	var res2 = this.meld_only_need_num(left2, history, used);
	history[left2] = res2;
	case2 += res2;
	var result = Math.min(case1, case2);
	history[tiles] = result;
	return result;
};

// 用于调用本地时，保存回调方法的闭包
cutil.callFuncs = {};
cutil.callFuncMax = 10000;
cutil.callFuncIdx = -1;
cutil.addFunc = function(callback){
    cutil.callFuncIdx = (cutil.callFuncIdx + 1) % cutil.callFuncMax;
    cutil.callFuncs[cutil.callFuncIdx] = callback;
    return cutil.callFuncIdx;
}
cutil.runFunc = function(idx, param){
    if(cutil.callFuncs[idx]){
        (cutil.callFuncs[idx])(param);
        cutil.callFuncs[idx] = undefined;
    }
}

cutil.portraitCache = {};

cutil.loadPortraitTexture = function(url, callback, filename){
	cc.log("loadPortraitTexture:", url)
	if(!url){
		if(callback){
			callback("res/ui/Default/defaultPortrait.png");
		}
		return;
	}
	if(cutil.portraitCache[url]){
		callback(cutil.portraitCache[url]);
		return;
	}
	var fid = cutil.addFunc(function(img){cutil.portraitCache[url] = img;callback(img);});
	if((cc.sys.os == cc.sys.OS_ANDROID && cc.sys.isNative)){
		filename = filename || h1global.entityManager.player().uuid.toString() + ".png";
		// download portrait
        // var pathurl = 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6zHFzbk0YyibNTMxxibJ2yhg2eq0sIBOgFHCKvSBsibkm2pjYVcwgjwsJlI4yrJvWzXBYHRohiced8tQ/0';
        // var filename = 'me.jpg';
        jsb.reflection.callStaticMethod(switches.package_name + "/AppActivity", "downloadAndStoreFile", "(Ljava/lang/String;Ljava/lang/String;I)V", url, filename, fid);
	} else if((cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative)){
		filename = filename || h1global.entityManager.player().uuid.toString() + ".png";
		jsb.reflection.callStaticMethod("DownloaderOCBridge", "downloadAndStorePortrait:WithLocalFileName:AndFuncId:", url, filename, fid);
	} else {
		cc.loader.loadImg([url], {"isCrossOrigin":false}, function(err, img){cutil.runFunc(fid, img);});
	}
};

cutil.captureScreenCallback = function(success, filepath){
	// 安卓截屏回调
	if((cc.sys.os == cc.sys.OS_ANDROID && cc.sys.isNative) && success){
		jsb.reflection.callStaticMethod(switches.package_name + "/AppActivity", "callWechatShareImg", "(ZLjava/lang/String;)V", true, filepath);
	}
};

cutil.tileSortFunc = function(a, b){
	if(a == b){
		return 0;
	}

	var player = h1global.entityManager.player()
	if (!player.curGameRoom || player.curGameRoom.kingTiles.length <= 0) {
		return a-b;
	}
	
	if (player.curGameRoom.kingTiles.indexOf(a) >= 0) {
		return -1
	}
	if (player.curGameRoom.kingTiles.indexOf(b) >= 0) {
		return 1
	}
	if(a == const_val.DRAGON_WHITE){
		a = player.curGameRoom.kingTiles;
		return a - b;
	}
	if(b == const_val.DRAGON_WHITE){
		b = player.curGameRoom.kingTiles;
		return a - b;
	}
	return a-b;
}

cutil.classifyTiles = function(tiles, kingTiles){
    var kings = [];
    var dragons_white = []
    var chars = [];
    var bambs = [];
    var dots  = [];
    var winds = [];
    var dragons_red_green = [];
    
    tiles = cutil.deepCopy(tiles)
    tiles.sort(function(a,b){return a-b;})

    for (var i = 0; i < tiles.length; i++) {
        var t = tiles[i]
        if (kingTiles.indexOf(t) >= 0) {
            kings = kings.concat(t)
        } else if (t == const_val.DRAGON_WHITE) {
           dragons_white = dragons_white.concat(t)
        }  else if (const_val.CHARACTER.indexOf(t) >= 0) {
           chars = chars.concat(t)
        } else if (const_val.BAMBOO.indexOf(t) >= 0) {
            bambs = bambs.concat(t)
        } else if (const_val.DOT.indexOf(t) >= 0) {
            dots = dots.concat(t)
        } else if (const_val.WINDS.indexOf(t) >= 0) {
            winds = winds.concat(t)
        } else if (const_val.DRAGONS.indexOf(t) >= 0) {
            dragons_red_green = dragons_red_green.concat(t)
        } else {
            cc.log("iRoomRules classify tiles failed, no this tile " + t.toString());
        }
    }
    return [kings, dragons_white, chars, bambs, dots, winds, dragons_red_green]
}
cutil.classifyTiles4Type = function(tiles){

    var chars = [];
    var bambs = [];
    var dots  = [];
    var winds_dragons = [];

    tiles = cutil.deepCopy(tiles)
    tiles.sort(function(a,b){return a-b;})

    for (var i = 0; i < tiles.length; i++) {
    	var t = tiles[i]
        if (const_val.CHARACTER.indexOf(t) >= 0) {
           chars = chars.concat(t)
        } else if (const_val.BAMBOO.indexOf(t) >= 0) {
            bambs = bambs.concat(t)
        } else if (const_val.DOT.indexOf(t) >= 0) {
            dots = dots.concat(t)
        } else if (const_val.WINDS.indexOf(t) >= 0 || const_val.DRAGONS.indexOf(t) >= 0) {
            winds_dragons = winds_dragons.concat(t)
        } else {
            cc.log("classifyTiles4Type tiles failed, no this tile " + t.toString());
        }
    }
    return [chars, bambs, dots, winds_dragons]
}

//获取同样牌的张数 dict
cutil.getTileNumDict = function(tiles){
	var tileDict = {}
	for (var i = 0; i < tiles.length; i++) {
   		var t = tiles[i]
   		if (!tileDict[t]) {
   			tileDict[t] = 1
   		}else{
   			tileDict[t] += 1
   		}
   	}
   	return tileDict
}

// 对子数(不考虑牌的替换功能)
cutil.getPairsNum = function(tiles, isContainTriple, isContainKong){ //是否包含一组中的对子 是否包含杠中的对子
	isContainTriple = isContainTriple || false;
	isContainKong = isContainKong || false;
    var num = 0;
    var tileDict = cutil.getTileNumDict(tiles)
   	for (var tile in tileDict) {
   		if (tileDict[tile] == 2 || (tileDict[tile] == 3 && isContainTriple)) {
   			num += 1;
   		}
   		if (tileDict[tile] == 4 && isContainKong) {
   			num += 2;
   		}
   	}
    return num;
}

//除对子之外的牌 (不考虑牌的替换功能)
cutil.getExCeptPairsList = function(tiles, isContainTriple, isContainKong){
	isContainTriple = isContainTriple || false;
	isContainKong = isContainKong || false;
	var list = []
	var tileDict = cutil.getTileNumDict(tiles)
	for (var tile in tileDict) {
		if(tileDict[tile] == 1){
			list.push(tile)
		}
		if (tileDict[tile] == 3) {
			if (isContainTriple) {
				list.push(tile)
			}else{
				list.concat([tile, tile, tile])
			}
		}
		if (tileDict[tile] == 4 && !isContainKong) {
			list.concat([tile, tile, tile, tile])
		}
	}
	return list
}

// 刻子数，若包含杠 杠只计算一次(不考虑牌的替换功能)
cutil.getTripletNum = function(tiles, isContainKong){ //是否包含杠中的刻子
    isContainKong = isContainKong || false;
    var num = 0;
    var tileDict = cutil.getTileNumDict(tiles)
    for (var tile in tileDict) {
    	if (tileDict[tile] == 3) {
   			num += 1;
   		}
   		if (tileDict[tile] == 4 && isContainKong) {
   			num += 1;
   		}
   	}
    return num;
}

//杠子数(不考虑牌的替换功能)
cutil.getKongNum = function(tiles){
	var num = 0;
	var tileDict = cutil.getTileNumDict(tiles)
	for (var tile in tileDict) {
   		if (tileDict[tile] == 4) {
   			num += 1;
   		}
   	}
	return num;
}

//财神数量
cutil.getKingTileNum = function(tiles, kingTile){
	var num = 0
	for (var i = 0; i < tiles.length; i++) {
		if (tiles[i] == kingTile) {
			num += 1
		}
	}
	return num
}

// //最大顺子数(不考虑牌的替换功能)
// cutil.getMaxSequenceNum = function(tiles){
// 	var num = 0
//  tiles = cutil.deepCopy(tiles)
// 	tiles.sort(function(a, b){return a-b;})
// 	for (var i = 0; i < tiles.length; i++) {
// 		if (!tiles[i+2]) {break;}
// 		if (tiles[i] >= 31) {break;}
// 		if (tiles[i] + 1 == tiles[i+1] && tiles[i+1] + 1 == tiles[i+2]) {
// 			num += 1;
// 			i += 2
// 		}
// 	}
// 	return num
// }

cutil.getTileNum = function(tiles, aimTile){
	var tileDict = cutil.getTileNumDict(tiles)
	if (aimTile in tileDict) {
		return tileDict[aimTile]
	}
	return 0
}
// 是否是7对(handTilesButKing = 除财神外手上所有牌)
cutil.checkIs7Pairs = function(handTilesButKing, kingTileNum){ //7对白板可以不起当财神的作用
    if (handTilesButKing.length + kingTileNum != 14) {
        return false;
    }

    //手牌检查
    var needNum = handTilesButKing.length - cutil.getPairsNum(handTilesButKing, true, true) * 2;
    if (kingTileNum > 0 && kingTileNum >= needNum) {
    	return true;
    }
    if (needNum == 0) {
    	return true;
    }
    return false;
}

//判断是否可以胡7对，七对可以杠 (handTilesButKing = 除财神外手上所有牌)
cutil.checkCanWin7Pairs = function(handTilesButKing, kingTileNum, kingTile, finalDrawTile, isFlush){
	if (finalDrawTile == kingTile && !isFlush) {
		return false
	}

	if (!cutil.checkIs7Pairs(handTilesButKing, kingTileNum)) {
		return false
	}
	if (!isFlush && !(cutil.getTileNum(handTilesButKing, finalDrawTile)%2 == 1)) { //最后一张牌 必须是不能配对的，否则不是暴头不能胡
		return false
	}
	return true
}

//胡 —— 乱风：14张全部东南西北中发白 成型后胡牌,摸到财神也可以胡（清牌）/ tiles 14张牌
cutil.checkCanWinAllWindDragon = function(handTiles, upTiles, kingTile){
	if (handTiles.length%3 != 2) {
		return false;
	}

	for (var i = 0; i < handTiles.length; i++) {
		var t = upTiles[i]
		if (t != kingTile && const_val.WINDS.indexOf(t) < 0 && const_val.DRAGONS.indexOf(t) < 0) {
			return false;
		}
	}
	for (var i = 0; i < upTiles.length; i++) {
		var t = upTiles[i]
		if (t != kingTile && const_val.WINDS.indexOf(t) < 0 && const_val.DRAGONS.indexOf(t) < 0) {
			return false
		}
	}
	return true
}

//胡 —— 四道杠：桌牌 4个杠子 就可以胡
cutil.checkCanWinFourKong = function(handTiles, upTiles){
	if (handTiles.length%3 != 2) {
		return false;
	}

	if (upTiles.length < 16) {
		return false
	}
	var dict = {}
	for (var i = 0; i < upTiles.length; i++) {
		if (!dict[upTiles[i]]) {
			dict[upTiles[i]] = 1
		}else{
			dict[upTiles[i]] += 1
		}
	}
	for (var k in dict) {
		if (dict[k] < 4) {return false}
	}

	return true
}

//十风张数
cutil.getTenWindDragonNum = function(discardTilesList, upTilesOpsList, cutIdxsList, seatNum){
	var num = 0
	//被其他玩家吃碰杠的牌 是否 是 东南西北中发白
	for (var i = 0; i < upTilesOpsList.length; i++) {
		if (i == seatNum) {
			continue;
		}
		for (var j = 0; j < upTilesOpsList[i].length; j++) {
			var op_r = upTilesOpsList[i][j]
			if (op_r[2] == seatNum && const_val.WINDS.indexOf(op_r[1]) < 0 && const_val.DRAGONS.indexOf(op_r[1]) < 0) { //自己打出 非 东南西北中发白
				return 0 	//注意，该张不是 东南西北中发白 直接返回0；
			}else if (op_r[2] == seatNum) {
				num += 1;
			}
		}
	}
	// 自己打出的牌
	for (var i = 0; i < discardTilesList[seatNum].length; i++) {
		for (var j = 0; j < discardTilesList[seatNum][i].length; j++) {
			var tile = discardTilesList[seatNum][i][j]
			if (cutIdxsList[seatNum].indexOf(j) >= 0) {
				continue;
			}
			if (const_val.WINDS.indexOf(tile) >= 0 || const_val.DRAGONS.indexOf(tile) >= 0) {
				num += 1
			}else{
				return 0 //注意，该张不是 东南西北中发白 直接返回0；
			}
		}
	}
	return num
}

//胡 —— 十风：连续打出十张
cutil.checkCanWinTenWindDragon = function(handTiles, discardTilesList, upTilesOpsList, cutIdxsList, seatNum){
	if (handTiles.length%3 != 2) {
		return false;
	}
	if (cutil.getTenWindDragonNum(discardTilesList, upTilesOpsList, cutIdxsList, seatNum) < 10) {
		return false;
	}
	return true;
}

//打出的牌的张数 ，用来判断天胡 地胡
cutil.getDiscardNum = function(discardTilesList, upTilesOpsList, cutIdxsList, seatNum){
	var num = 0
	//被其他玩家吃碰杠的牌 是否 是 东南西北中发白
	for (var i = 0; i < upTilesOpsList.length; i++) {
		if (i == seatNum) {
			continue;
		}
		for (var j = 0; j < upTilesOpsList[i].length; j++) {
			var op_r = upTilesOpsList[i][j]
			if (op_r[2] == seatNum ) { 
				num += 1;
			}
		}
	}
	// 自己打出的牌
	num += discardTilesList[seatNum].length - cutIdxsList[seatNum].length
	return num
}

//胡 —— 大吊车 
cutil.checkCanWinSingle = function(handTiles, kingTile, finalDrawTile){
	if (handTiles.length != 2 || finalDrawTile == kingTile) {
		return false;
	}
	var kingTileNum = cutil.getKingTileNum(handTiles, kingTile)
	if (kingTileNum > 0) {
		return true;
	}else if (handTiles[0] == handTiles[1]) {
		return  true;
	}
	return false;
}


//是否清一色（不判断是否能胡）
cutil.checkIsFlush = function(handTiles, upTiles, kingTile){
	var allTiles = handTiles.concat(upTiles)

	var flushList = [const_val.CHARACTER, const_val.BAMBOO, const_val.DOT]
	var index = -1
	for (var i = 0; i < allTiles.length; i++) {
		var tile = allTiles[i]
		if ((const_val.DRAGONS.indexOf(tile) >= 0 || const_val.WINDS.indexOf(tile) >= 0) && tile != kingTile) {
			return false
		}
		//查找 清一色类型索引
		if (tile != kingTile && index < 0) {
			for (var j = 0; j < flushList.length; j++) {
				if (flushList[j].indexOf(tile) >= 0) {
					index = j
					break
				}
			}
		}
		//不是财神 看索引，核对是否同一类型
		if (tile != kingTile) {
			if (index < 0) {return false;}
			if (flushList[index].indexOf(tile) < 0) {
				return false
			}
		}
	}
	return true
}

//是否是大对子(碰碰胡)（不判断是否能胡）// 全部是碰子或杠子 // 白板 在不考虑顺子的情况下 也可以无视
cutil.checkIsBigPair = function(handListButKing, upTiles, kingTilesNum){
	//桌牌,按连续索引(连续的碰杠才算，1,2,3, 1,2,3, 1,2,3 不算)
	cc.log("大对子检查")
	cc.log(handListButKing, upTiles, kingTilesNum)
	if (kingTilesNum >= 2) {return false}
	for (var i = 0; i < upTiles.length; i++) {
		if (upTiles[i+2] && upTiles[i] != upTiles[i+1] && upTiles[i+1] != upTiles[i+2]) {
			return false
		}
	}
	var tile2NumDict = cutil.getTileNumDict(handListButKing)
	var numList = [0, 0, 0, 0]
	for (var tile in tile2NumDict) {
		var num = tile2NumDict[tile]
		numList[num-1] += 1
	}
	if (kingTilesNum == 1) {
		if (numList[0] != 1 || numList[1] > 0) {
			return false
		}
	} else{
		if (numList[0] > 0 || numList[1] != 1) {
			return false
		}
	}
	return true
}

//倒数开始 连续扔出财神的张数
cutil.getDiscardSerialKingTileNum = function(handTiles, discardTilesList, cutIdxsList, kingTile, seatNum){
	var num = 0
	if (handTiles.indexOf(kingTile) < 0) {return num}
	for (var i = discardTilesList[seatNum].length - 1; i >= 0; i--) {
		if (cutIdxsList[seatNum].indexOf(i) >= 0) {continue;}
		if (discardTilesList[seatNum][i] != kingTile) {
			break;
		}
		num += 1;
	}
	return num
}
/**
 * @param  {玩家所有吃碰杠操作列表}
 * @param  {打牌列表}
 * @param  {切牌索引}
 * @return {玩家座次}
 */
cutil.getNearlyKongType = function(upTilesOpsList, discardTilesList, cutIdxsList, seatNum){
	cc.log("getNearlyKongType", upTilesOpsList, discardTilesList, cutIdxsList, seatNum)
	// 0 不是杠 1 明杠 2 暗杠
	var discardLen = discardTilesList[seatNum].length
	if (cutIdxsList[seatNum].indexOf(discardLen - 1) < 0) {
		return 0
	}
	var op_r = upTilesOpsList[seatNum][upTilesOpsList[seatNum].length - 1]
	if (op_r.length < 2) {
		if (op_r[0]["opId"] == const_val.OP_EXPOSED_KONG) {
			return 1
		}
		if (op_r[0]["opId"] == const_val.OP_CONCEALED_KONG) {
			return 2
		}
		if (op_r[0]["opId"] == const_val.OP_KONG_WREATH) {
			return 3
		}
	}
	if (op_r.length >= 2) {
		return 1
	}
	return 0
}

// --平胡 //普通牌型能否胡 (只检查 手牌)
cutil.checkIsNormalWin = function(listButKingWhite, kingTilesNum, dragonWhiteNum, kingTile, finalDrawTile){
	if (kingTilesNum > 0) {return false}
	
	if (cutil.checkIsWin(listButKingWhite, kingTilesNum, dragonWhiteNum, kingTile)) {
		return true
	}
	return false
}

// 是否可以 胡 -- 有财神必须 暴头 // 7对牌型不能用此方法判断
cutil.checkIsWin = function(listButKingWhite, kingTilesNum, dragonWhiteNum, kingTile, finalDrawTile, isFlush){
	if ((listButKingWhite.length + kingTilesNum + dragonWhiteNum)%3 != 2 || (kingTile == finalDrawTile && !isFlush)) {
		return false
	}

	var handTilesButKing = cutil.deepCopy(listButKingWhite)
	for (var i = 0; i < dragonWhiteNum; i++) {
		handTilesButKing.push(const_val.DRAGON_WHITE)
	}
	
	if (cutil.checkCanWin7Pairs(handTilesButKing, kingTilesNum, kingTile, finalDrawTile, isFlush)) {
		return true
	}

	listButKingWhite = cutil.deepCopy(listButKingWhite)
	listButKingWhite.sort(function(a,b){return a-b;})

	//n个白板当财神使
	var newList = cutil.deepCopy(listButKingWhite);
	for (var i = 0; i <= dragonWhiteNum; i++) { //i = 0 没有白板当财神使
		cc.log("===========================分割线==============================")
		cc.log("本局除掉财神和白板手牌是：", listButKingWhite)
		cc.log("现在手牌财神张数：",kingTilesNum, "白板张数：",dragonWhiteNum,"财神是：",kingTile)
		var copyList = cutil.deepCopy(newList)
		// 添加当财神的白板 和 不当财神的白板
		for (var j = 1; j <= dragonWhiteNum; j++) { 
			if (j > i) {//当财神的白板
				copyList.push(kingTile);
			}else{		//不当财神的白板
				copyList.push(const_val.DRAGON_WHITE)
			}
		}
		cc.log("一共"+dragonWhiteNum+"个白板,"+(dragonWhiteNum-i) + "个白板当财神使")

		//排序
		copyList.sort(function(a,b){return a-b;})

		cc.log("现在财神数量：", kingTilesNum)
		//有财神
		if (kingTilesNum > 0) { 
			cc.log("本局有财神，暴头胡,白板当财神使后手牌:",copyList)
			kingTilesNum -= 1 //有财神必须 暴头

			for (var k = 0; k < copyList.length; k++) {
				if (!(copyList[k] == finalDrawTile || isFlush)) {
					cc.log("删除的牌不是最后抓的牌,继续",copyList[k])
					continue
				}
				//暂时不判断 2个连续 3个连续 4个连续这种重复，写了600行，我0.0懒
				var delPairList = copyList.slice(0,k).concat(copyList.slice(k+1, copyList.length))
				cc.log("删除财神和一张手牌：",copyList[k],"后，财神数量：",kingTilesNum,"手牌：",delPairList)
				if (cutil.loop2Win(delPairList, kingTilesNum)) {
					cc.log("手牌可以胡")
					return true
				}
			}
			// var k = copyList.indexOf(finalDrawTile);
			// //暂时不判断 2个连续 3个连续 4个连续这种重复，写了600行，我0.0懒
			// var delPairList = copyList.slice(0,k).concat(copyList.slice(k+1, copyList.length))
			// cc.log("删除财神和一张手牌：",copyList[k],"后，财神数量：",kingTilesNum,"手牌：",delPairList)
			// if (cutil.loop2Win(delPairList, kingTilesNum)) {
			// 	cc.log("手牌可以胡")
			// 	return true
			// }
		}else{
			cc.log("本局没有财神，平胡，白板当财神使后手牌：",copyList)
			//删除一对后判断 是否可以胡
			for (var k = 0; k < copyList.length; k++) {
				if (copyList[k+1] && copyList[k] == copyList[k+1]) { //暂时不判断 3个连续 4个连续这种重复，写了600行，我0.0懒
					var delPairList = copyList.slice(0,k).concat(copyList.slice(k+2,copyList.length))
					cc.log("首先删除一对：",copyList[k],copyList[k+1],"现在手牌：",delPairList)
					if (cutil.loop2Win(delPairList, 0)) {
						cc.log("手牌可以胡")
						return true
					}
				}
				
			}
		}
	}
	cc.log("手牌不能胡")
	return false
}

cutil.removeSequence = function(tiles, kingTileNum){
	var newTiles = cutil.deepCopy(tiles)
	newTiles.sort(function(a,b){return a-b;})
	for (var i = 0; i < newTiles.length; i++) {
		var t = newTiles[i]
		if (newTiles[i+1] && newTiles[i+2] && newTiles[i] + 1 == newTiles[i+1] && newTiles[i+1] + 1 == newTiles[i+2]) { //不缺
			var newList = newTiles.slice(0,i).concat(newTiles.slice(i+3,newTiles.length))
			return [newList, kingTileNum, true]
		} else if (newTiles[i+1] && (newTiles[i] + 1 == newTiles[i+1] || newTiles[i] + 2 == newTiles[i+1]) && kingTileNum >= 1) { //缺1
			kingTileNum -= 1
			var newList = newTiles.slice(0,i).concat(newTiles.slice(i+2,newTiles.length))
			return [newList, kingTileNum, true]
		}else if (kingTileNum >= 2) { //缺2
			kingTileNum -= 2
			var newList = newTiles.slice(0,i).concat(newTiles.slice(i+1,newTiles.length))
			return [newList, kingTileNum, true]
		}
	}
	return [newTiles, kingTileNum, false]
}

cutil.removeTriple = function(tiles, kingTileNum){
	var newTiles = cutil.deepCopy(tiles)
	newTiles.sort(function(a,b){return a-b;})
	
	for (var i = 0; i < newTiles.length; i++) {
		var t = newTiles[i]
		if (newTiles[i+1] && newTiles[i+2] && newTiles[i] == newTiles[i+1] && newTiles[i+1] == newTiles[i+2]) {
			var newList = newTiles.slice(0,i).concat(newTiles.slice(i+3,newTiles.length))
			return [newList, kingTileNum, true]
		}else if (newTiles[i+1] && newTiles[i] == newTiles[i+1] && kingTileNum >= 1) { //缺1
			kingTileNum -= 1
			var newList = newTiles.slice(0,i).concat(newTiles.slice(i+2,newTiles.length))
			return [newList, kingTileNum, true]
		} else if (kingTileNum >= 2) {	//缺2
			kingTileNum -= 2
			var newList = newTiles.slice(0,i).concat(newTiles.slice(i+1,newTiles.length))
			return [newList, kingTileNum, true]
		}
	}
	return [newTiles, kingTileNum, false]
}

cutil.check_wind_dragon = function(listWindDragon, kingTilesNum){
	var result = cutil.removeTriple(listWindDragon, kingTilesNum)
	kingTilesNum = result[1]
	if (result[2]) {
		result = cutil.check_wind_dragon(result[0], kingTilesNum)
	}
	return result
}

// 循环check 是否满足 顺子，同三张，杠 - 334 ()
/**
 * @param  {手牌删除对子后的牌，白板已经替换了财神的所有情况}
 * @param  {删除对子后的 财神数，该财神可以随便替}
 * @return {bool}
 */
cutil.loop2Win = function(delPairList, kingTilesNum){
	cc.log("||")
	cc.log("VV")
	cc.log("进入查询手牌是否是3x阶段")
	if (delPairList.length <= 0) {
		if (kingTilesNum <= 0) {	//删除一对后手上没有牌
			cc.log("删除一对后手上没有牌")
			return true
		}
		cc.log("删除一对后手上只剩财神 不能胡")
		return false	//删除一对后手上只剩财神 不能胡
	}
	var classifyList = cutil.classifyTiles4Type(delPairList)

	
	var listExceptWindDragon = []
	var listWindDragon = []
	listExceptWindDragon = classifyList[0].concat(classifyList[1].concat(classifyList[2]))
	listWindDragon = classifyList[3]

	var result = cutil.check_wind_dragon(listWindDragon, kingTilesNum)
	var windDragonPairNum = cutil.getPairsNum(result[0])
	kingTilesNum = result[1]
	
	if (result[0].length * 2 - windDragonPairNum*3 > kingTilesNum) {
		cc.log("东南西北中发白 字牌不满足条件 无法胡，缺张数：",result[0].length * 2 - windDragonPairNum*3 - kingTilesNum)
		return false
	}
	cc.log("东南西北中发白 字牌满足条件,现在财神数量:",kingTilesNum)
	var needNum = cutil.meld_only_need_num(listExceptWindDragon, {})
	if (needNum > kingTilesNum) {
		cc.log("万, 条, 筒不满足,无法胡，缺张数：",needNum,"财神数:",kingTilesNum)
		return false
	}
	cc.log("万, 条, 筒满足,可以胡。缺",needNum,"财神数:",kingTilesNum)
	return true
}

cutil.get_user_info = function(accountName, callback){
	var info_dict = eval('(' + cc.sys.localStorage.getItem("INFO_JSON") + ')');
	var user_info_xhr = cc.loader.getXMLHttpRequest();
    user_info_xhr.open("GET", switches.PHP_SERVER_URL + "/api/user_info", true);
    user_info_xhr.onreadystatechange = function(){
         if(user_info_xhr.readyState === 4 && user_info_xhr.status === 200){
            // cc.log(user_info_xhr.responseText);
            if(callback){
            	callback(user_info_xhr.responseText);
            }
        }
    };
    user_info_xhr.setRequestHeader("Authorization", "Bearer " + info_dict["token"]);
    user_info_xhr.send();
};

cutil.count = function(list, key){
	var dict = {}
	for (var i = 0; i < list.length; i++) {
		if (dict[list[i]]) {
			dict[list[i]] += 1;
		}else{
			dict[list[i]] = 1;
		}
	}
	if (dict[key]) {
		return dict[key]
	}
	return 0
};

//移除边 3张，不判断胡
cutil.getRemoveEdgeDict = function(handTilesButKing, finalTile, kingTilesList){
	var tiles = handTilesButKing.concat([])
	var removeEdgeDict = {}

	if (kingTilesList && kingTilesList.indexOf(finalTile) >= 0) {
		for (var i in const_val.LEFT_EDGE) {
			var t = const_val.LEFT_EDGE[i]
			var edgeList = []
			if (tiles.indexOf(t-1) >= 0) {
				edgeList.push(t-1)
			}else {
				edgeList.push(-1)
			}
			if (tiles.indexOf(t-2) >= 0) {
				edgeList.push(t-2)
			}else {
				edgeList.push(-1)
			}
			edgeList.push(-1)
			removeEdgeDict[edgeList] = cutil.count(edgeList, -1)
		}

		for (var i in const_val.RIGHT_EDGE){
			var t = const_val.RIGHT_EDGE[i]
			var edgeList = [-1]
			if (tiles.indexOf(t+1) >= 0) {
				edgeList.push(t+1)
			}else{
				edgeList.push(-1)
			}
			if (tiles.indexOf(t+2) >= 0) {
				edgeList.push(t+2)
			}else{
				edgeList.push(-1)
			}
			removeEdgeDict[edgeList] = cutil.count(edgeList, -1)
		}
	}else if (const_val.LEFT_EDGE.indexOf(finalTile) >= 0) {
		var edgeList = [];
		if (tiles.indexOf(finalTile-1) >= 0) {
			edgeList.push(finalTile-1)
		}else{
			edgeList.push(-1)
		}
		if (tiles.indexOf(finalTile-2) >= 0) {
			edgeList.push(finalTile-2)
		}else{
			edgeList.push(-1)
		}
		edgeList.push(finalTile)
		removeEdgeDict[edgeList] = cutil.count(edgeList, -1)
	} else if (const_val.RIGHT_EDGE.indexOf(finalTile) >= 0) {
		var edgeList = []
		edgeList.push(finalTile)
		if (tiles.indexOf(finalTile+1) >= 0) {
			edgeList.push(finalTile+1)
		}else{
			edgeList.push(-1)
		}
		if (tiles.indexOf(finalTile+2) >= 0) {
			edgeList.push(finalTile+2)
		}else{
			edgeList.push(-1)
		}
		removeEdgeDict[edgeList] = cutil.count(edgeList, -1)
	}
	return removeEdgeDict
};

//移除夹 3张 不判断胡
cutil.getRemoveMidDict = function(handTilesButKing, finalTile, kingTilesList){
	var tiles = handTilesButKing.concat([])
	var removeMidDict = {}
	if (kingTilesList && kingTilesList.indexOf(finalTile) >= 0) {
		for (var i in const_val.MID) {
			var mid = const_val.MID[i]
			for (var j in mid) {
				var t = mid[j]
				midList = []
				if (tiles.indexOf(t-1) >= 0) {
					midList.push(t-1)
				}else{
					midList.push(-1)
				}
				midList.push(t)
				if (tiles.indexOf(t+1) >= 0) {
					midList.push(t+1)
				}else{
					midList.push(-1)
				}
				removeMidDict[midList] = cutil.count(midList, -1)
			}
		}
	}else if (const_val.CHAR_MID[finalTile] || const_val.DOT_MID[finalTile] || const_val.BAMB_MID[finalTile]) {
		var midList = []
		if (tiles.indexOf(finalTile-1) >= 0) {
			midList.push(finalTile-1)
		}else{
			midList.push(-1)
		}
		midList.push(finalTile)
		if (tiles.indexOf(finalTile+1) >= 0) {
			midList.push(finalTile+1)
		}else{
			midList.push(-1)
		}
		removeMidDict[midList] = cutil.count(midList, -1)
	}
	return removeMidDict
}

//移除单吊 2张 不判断胡
cutil.getRemoveSingleCraneDict = function(handTilesButKing, finalTile, kingTilesList){
	var tiles = handTilesButKing.concat([])
	var tile2NumDict = cutil.getTileNumDict(tiles)
	var removeSingleCraneDict = {}
	if (const_val.SEASON.indexOf(finalTile) >= 0 || const_val.FLOWER.indexOf(finalTile) >= 0) {
		return removeSingleCraneDict
	}
	if (kingTilesList.indexOf(finalTile) >= 0) {
		for (var t in tile2NumDict) {
			var key = (-1, t)
			removeSingleCraneDict[key] = cutil.count(key, -1)
		}
		var key = (-1, -1)
		removeSingleCraneDict[key] = cutil.count(key, -1)
	}else if (tile2NumDict[finalTile]) {
		if (tile2NumDict[finalTile] == 1) {
			var key = [finalTile, -1]
			removeSingleCraneDict[key] = cutil.count(key, -1)
		}else if (tile2NumDict[finalTile] >= 2) {
			var key = [finalTile, finalTile]
			removeSingleCraneDict[key] = cutil.count(key, -1)
		}
	}
	return removeSingleCraneDict
}

//移除对倒
cutil.getRemoveMatchOrderDict = function(handTilesButKing, finalTile, kingTilesList){
	var tiles = handTilesButKing.concat([])
	var tile2NumDict = cutil.getTileNumDict(tiles)
	var matchOrderDict = {}
	if (const_val.SEASON.indexOf(finalTile) >= 0 || const_val.FLOWER.indexOf(finalTile) >= 0) {
		return matchOrderDict
	}
	if (kingTilesList.indexOf(finalTile) >= 0) {
		for (var t in tile2NumDict){
			if (tile2NumDict[t] == 1) {
				var key = [-1, -1, t]
				matchOrderDict[key] = cutil.count(key, -1)
			}else if (tile2NumDict[t] >= 2) {
				var key = [-1, t, t]
				matchOrderDict[key] = cutil.count(key, -1)
			}
		}
		var key = [-1, -1, -1]
		matchOrderDict[key] = cutil.count(key, -1)
	}else if (tile2NumDict[finalTile]) {
		if (tile2NumDict[finalTile] == 1) {
			var key = [finalTile, -1, -1]
			matchOrderDict[key] = cutil.count(key, -1)
		}else if (tile2NumDict[finalTile] == 2) {
			var key = [finalTile, finalTile, -1]
			matchOrderDict[key] = cutil.count(key, -1)
		}else{
			var key = [finalTile, finalTile, finalTile]
			matchOrderDict[key] = cutil.count(key, -1)
		}
	}
	return matchOrderDict
};

cutil.getTileColorType = function(handTilesButKing, upTiles){
	var suitNumList = [0, 0, 0];
	var honorNum = 0;
	for (var i = 0; i < handTilesButKing.length; i++) {
		var t = handTilesButKing[i]
		if (const_val.CHARACTER.indexOf(t) >= 0) {
			suitNumList[0] = 1
		} else if (const_val.BAMBOO.indexOf(t) >= 0) {
			suitNumList[1] = 1
		} else if (const_val.DOT.indexOf(t) >= 0) {
			suitNumList[2] = 1
		} else if (const_val.DRAGONS.indexOf(t) >= 0 || const_val.WINDS.indexOf(t) >= 0) {
			honorNum = 1
		}
	}

	for (var i = 0; i < upTiles.length; i++) {
		var meld = upTiles[i]
		for (var j = 0; j < meld.length; j++) {
			var t = meld[j]
			if (const_val.CHARACTER.indexOf(t) >= 0) {
				suitNumList[0] = 1
			} else if (const_val.BAMBOO.indexOf(t) >= 0) {
				suitNumList[1] = 1
			} else if (const_val.DOT.indexOf(t) >= 0) {
				suitNumList[2] = 1
			} else if (const_val.DRAGONS.indexOf(t) >= 0 || const_val.WINDS.indexOf(t) >= 0) {
				honorNum = 1
			}
		}
	}

	var suitNum = suitNumList[0] + suitNumList[1] + suitNumList[2]
	if (suitNum > 1) {
		return const_val.MIX_X_SUIT
	} else if (suitNum == 1) {
		if (honorNum == 1) {
			return const_val.MIXED_ONE_SUIT
		}else {
			return const_val.SAME_SUIT
		}
	}else {
		if (honorNum == 1) {
			return const_val.SAME_HONOR
		}else{
			return const_val.MIX_X_SUIT
		}
	}
};

cutil.checkIsPongPongWin = function(handTilesButKing, upTiles, kingTilesNum){
	for (var i = 0; i < upTiles.length; i++) {
		var meld = upTiles[i]
		if ((meld.length != 3 && meld.length != 4) || meld[0] != meld[2]) {
			return false
		}
	}
	var tiles = handTilesButKing.concat([])
	var tile2NumDict = cutil.getTileNumDict(tiles)
	var isRemovePair = false
	for (var t in tile2NumDict) {
		if (tile2NumDict[t] == 2) {
			delete tile2NumDict[t]
			isRemovePair = true
			break
		}
	}
	if (!isRemovePair) {
		for (var t in tile2NumDict) {
			if (tile2NumDict[t] == 1) {
				delete tile2NumDict[t]
				kingTilesNum -= 1
				isRemovePair = true
				break
			}
		}
	}
	if (!isRemovePair) {
		for (var t in tile2NumDict) {
			if (tile2NumDict[t] == 4) {
				delete tile2NumDict[t]
				kingTilesNum -= 1
				isRemovePair = true
				break
			}
		}
	}
	if (!isRemovePair) {
		for (var t in tile2NumDict) {
			if (tile2NumDict[t] == 3) {
				tile2NumDict[t] = 1
				isRemovePair = true
				break
			}
		}
	}
	for (var t in tile2NumDict) {
		kingTilesNum -= Math.abs(3-tile2NumDict[t])
	}
	if (!isRemovePair || kingTilesNum < 0) {
		return false
	}
	return true
};

cutil.checkIsDiscard = function(op_record){
	for (var i = op_record.length - 1; i >= 0; i--) {
		if (op_record[i][0] == const_val.OP_DISCARD) {
			return true
		}
	}
	return false
};

cutil.checkIsKongDrawWin = function(p_op_r){
	for (var i = p_op_r.length - 1; i >= 0; i--) {
		if (p_op_r[i][0] == const_val.OP_DRAW || p_op_r[i][0] == const_val.OP_CUT) {
			continue
		}
		if (p_op_r[i][0] == const_val.OP_CONCEALED_KONG) {
			return true
		} else if (p_op_r[i][0] == const_val.OP_EXPOSED_KONG) {
			return true
		} else if (p_op_r[i][0] == const_val.OP_KONG_WREATH) {
			return true
		}
		return false
	}
	return false
};

cutil.getHandTileQuantity = function(handTilesButKing, p_wind, prevailing_wind){
	var tile2NumDict = cutil.getTileNumDict(handTilesButKing)
	var quantity = 0
	for (var t in tile2NumDict) {
		if (t >= 3) {
			if (t == prevailing_wind) {
				quantity += 1
			}
			if (t == p_wind) {
				quantity += 1
			}
		}
	}
	return quantity
};

cutil.getUpTileQuantity = function(upTiles, p_wind, prevailing_wind){
	var quantity = 0;
	for (var i = 0; i < upTiles.length; i++) {
		var tileList = upTiles[i]
		if (tileList[0] == prevailing_wind) {
			quantity += 1
		}
		if (tileList[0] == p_wind) {
			quantity += 1
		}
		if (const_val.DRAGONS.indexOf(tileList[0]) >= 0) {
			quantity += 1
		}
	}
	return quantity
};

cutil.getWreathQuantity = function(wreaths, p_wind){
	var p_wind_index = const_val.WINDS.indexOf(p_wind)
	var seasonList = [0,0,0,0]
	var flowerList = [0,0,0,0]
	for (var i = 0; i < wreaths.length; i++) {
		var t = wreaths[i]
		if (const_val.SEASON.indexOf(t) >= 0) {
			seasonList[const_val.SEASON.indexOf(t)] = 1
		}else if (const_val.FLOWER.indexOf(t) >= 0) {
			flowerList[const_val.FLOWER.indexOf(t)] = 1
		}
	}
	var quantity = 0
	if (seasonList[0] + seasonList[1] + seasonList[2] + seasonList[3] == 4) {
		quantity += 2
	}
	if (flowerList[0] + flowerList[1] + flowerList[2] + flowerList[3] == 4) {
		quantity += 2
	}
	if (seasonList[p_wind_index] == 1) {
		quantity += 1
	}
	if (flowerList[p_wind_index] == 1) {
		quantity += 1
	}
	if (wreaths.length == 8) {
		quantity += 16
	}
	return quantity
}

/*****************************************************温州麻将*******************************************************/
// 8对
cutil.checkIs8Pairs = function(handTilesButKing, kingTilesNum){
	var tile2NumDict = cutil.getTileNumDict(handTilesButKing)
	var needNum = 0
	for (var tile in tile2NumDict) {
		var num = tile2NumDict[tile]
		if (num%2 == 1) {
			needNum += 1
		}
	}
	if (needNum - kingTilesNum <= 1) {
		return true
	}
	return false
};

// 能否对财神胡
cutil.canKingPairWin = function(handTilesButKingWhite, king, kingTilesNum, dragonWhiteNum){
	if (kingTilesNum < 2) {
		return false
	}
	kingTilesNum -= 2;
	for (var i = 0; i < dragonWhiteNum+1; i++) {
		var copyTiles = handTilesButKingWhite.concat([])
		var kingInstead = []
		for (var j = 0; j < i; j++) {
			kingInstead.push(king)
		}
		var dragonWhite = []
		for (var j = 0; j < dragonWhiteNum - i; j++) {
			dragonWhite.push(const_val.DRAGON_WHITE)
		}
		copyTiles = copyTiles.concat(kingInstead)
		copyTiles = copyTiles.concat(dragonWhite)
		copyTiles.sort(function(a,b){return a-b;})
		if (cutil.meld_only_need_num(copyTiles, {}) <= kingTilesNum) {
			return true
		}
	}
	return false
};

// 普通 3x+2能不能胡
cutil.canNormalWin = function(handTilesButKingWhite, king, kingTilesNum, dragonWhiteNum){
	for (var i = 0; i < dragonWhiteNum+1; i++) {
		var copyTiles = handTilesButKingWhite.concat([])
		var kingInstead = []
		for (var j = 0; j < i; j++) {
			kingInstead.push(king)
		}
		var dragonWhite = []
		for (var j = 0; j < dragonWhiteNum - i; j++) {
			dragonWhite.push(const_val.DRAGON_WHITE)
		}
		copyTiles = copyTiles.concat(kingInstead)
		copyTiles = copyTiles.concat(dragonWhite)
		copyTiles.sort(function(a,b){return a-b;})
		if (cutil.meld_with_pair_need_num(copyTiles, {}) <= kingTilesNum) {
			return true
		}
	}
	return false
};

cutil.postDataFormat = function(obj){
    if(typeof obj != "object" ) {
        alert("输入的参数必须是对象");
        return;
    }

    // 支持有FormData的浏览器（Firefox 4+ , Safari 5+, Chrome和Android 3+版的Webkit）
    if(typeof FormData == "function") {
        var data = new FormData();
        for(var attr in obj) {
            data.append(attr,obj[attr]);
        }
        return data;
    }else {
        // 不支持FormData的浏览器的处理 
        var arr = new Array();
        var i = 0;
        for(var attr in obj) {
            arr[i] = encodeURIComponent(attr) + "=" + encodeURIComponent(obj[attr]);
            i++;
        }
        return arr.join("&");
    }
};

cutil.app_bind_agent = function(accountName, invite_code, callback){
	var info_dict = eval('(' + cc.sys.localStorage.getItem("INFO_JSON") + ')');
	var bind_xhr = cc.loader.getXMLHttpRequest();
    bind_xhr.open("POST", switches.PHP_SERVER_URL + "/api/app_bind_agent", true);
    bind_xhr.onreadystatechange = function(){
         if(bind_xhr.readyState === 4 && bind_xhr.status === 200){
            // cc.log(bind_xhr.responseText);
            if(callback){
            	callback(bind_xhr.responseText);
            }
        }
    };
    bind_xhr.setRequestHeader("Authorization", "Bearer " + info_dict["token"]);
    bind_xhr.send(cutil.postDataFormat({"invite_code" : invite_code}));
};