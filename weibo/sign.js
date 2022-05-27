if (!process.env.Enable_VMOS || process.env.Enable_VMOS === '0') {
	console.log("不执行vmos")
	return
}


let Env = require('../env')
let $ = new Env("vmos_share")

let notify = $.isNode() ? require('../sendNotify') : '';

var request = require('request');

var headers = {
	'Host': 'm.weibo.cn',
	'Cookie': 'SUB=_2A25PdvkODeRhGeNG4lER9irKzDmIHXVs66FGrDV6PUJbitCOLUPmkWtNSu-zpiyzO6YrgmfYGQLiF8XG_ifZHWza; SUBP=0033WrSXqPxfM725Ws9jqgMF55529P9D9WhBvlwEL.ILBqYoDyVg.NPI5NHD95Qf1h.0ehqXSoMfWs4Dqcjxi--4iK.pi-i8Pc9aMJHc9Pzt; SCF=Aicd0MvzZvUS3Mh1DHbCq2ydSuzWMbvO2PvHAxRgNxld2CHtuvxFa4LKtESIcqy3dA..; _T_WM=29092905498; XSRF-TOKEN=0904df; WEIBOCN_FROM=10C4395010; mweibo_short_token=43a03c486c; MLOGIN=1; M_WEIBOCN_PARAMS=from%3D10C4395010%26luicode%3D20000101%26uicode%3D10000746',
	'accept': 'application/json, text/plain, */*',
	'user-agent': 'Mozilla/5.0 (Linux; Android 7.1.2; M2010J19SC Build/N6F26Q; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/81.0.4044.117 Mobile Safari/537.36 Weibo (Xiaomi-M2010J19SC__weibo__12.4.3__android__android7.1.2)',
	'x-requested-with': 'XMLHttpRequest',
	'sec-fetch-site': 'same-origin',
	'sec-fetch-mode': 'cors',
	'sec-fetch-dest': 'empty',
	'referer': 'https://m.weibo.cn/c/checkin?ua=Xiaomi-M2010J19SC__weibo__12.4.3__android__android7.1.2&from=10C4395010&luicode=20000101',
	'accept-language': 'zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.7'
};

var options = {
	url: 'https://m.weibo.cn/c/checkin/ug/v2/signin/signin?v3revision=1&ua=Xiaomi-M2010J19SC__weibo__12.4.3__android__android7.1.2&from=10C4395010&luicode=20000101&aid=01A_yZCDo2-5dTP1htkqrGC3uYac7yJsPsI2Q1_NzOgslscBI.&st=0904df',
	headers: headers
};

function callback(error, response, body) {
	if (!error && response.statusCode == 200) {
		console.log(body);
	} else {
		console.log(body);
		notify.sendNotify(`微博`, `签到失败, error: ${error}, response: ${response}, body: ${body}`);
	}
}

request(options, callback);
