if (!process.env.Enable_VMOS || process.env.Enable_VMOS === '0') {
	console.log("不执行vmos")
	return
}


let Env = require('../env')
let $ = new Env("vmos_share")

let notify = $.isNode() ? require('../sendNotify') : '';

var request = require('request');

var headers = {
	'Host': 'api.weibo.cn',
	'x-validator': 'cbPBZLkdYZW3sB8vJxFxBKE6FBz8S+NUnpxgYW/z5eQ=',
	'x-log-uid': '5893064675',
	'x-sessionid': '820fbe0a-7ef3-46d2-8c42-8f8f07799419',
	'user-agent': 'Weibo (Xiaomi-M2010J19SC__weibo__12.4.3__android__android7.1.2) wbox (Xiaomi-M2010J19SC__weibo__12.4.3__android__android7.1.2_110_225_285560_w95xo2of1f)',
	'authorization': 'WB-SUT _2A95PdvkODeRxGeNG4lER9irKzDmIHXVqIgvGrDV6PUJbkdCOLUbakWpNSu-zpjNuevhqyIEDHdl417zWG3iQNB2Z'
};

var options = {
	url: 'https://api.weibo.cn/2/!/ug/fishery_task_report?t_source=feedingfish&networktype=wifi&accuracy_level=0&launchid=10000365--x&ul_hid=480ae1a1-5774-42d9-83d8-9a2b2917e91a&ul_sid=480ae1a1-5774-42d9-83d8-9a2b2917e91a&moduleID=700&wb_version=5558&c=android&s=af081de3&ft=0&ua=Xiaomi-M2010J19SC__weibo__12.4.3__android__android7.1.2&wm=5091_0008&aid=01A_yZCDo2-5dTP1htkqrGC3uYac7yJsPsI2Q1_NzOgslscBI.&v_f=2&v_p=90&from=10C4395010&gsid=_2A25PdvkODeRxGeNG4lER9irKzDmIHXVqIgvGrDV6PUJbkdCOLW3bkWpNSu-zpgOXrzTx16EAeW2QpG-RhhZPaYq5&lang=zh_CN&skin=default&oldwm=5091_0008&sflag=1&android_id=dc07f689504aad74&ul_ctime=1651674154435&cum=36014DC4',
	headers: headers
};

function callback(error, response, body) {
	if (!error && response.statusCode == 200) {
		console.log(body);
	} else {
		notify.sendNotify(`微博渔场`, `领取定时礼包失败, error: ${error}, response: ${response}, body: ${body}`);
	}
}

request(options, callback);
