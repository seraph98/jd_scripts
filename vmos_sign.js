let Env = require('./env')
let $ = new Env("vmos")

let notify = $.isNode() ? require('./sendNotify') : '';

var request = require('request');

var headers = {
	'Host': 'vproapi.vmos.cn',
	'androidapi': '1.9.0',
	'access-token': 'null',
	'content-type': 'application/json; charset=utf-8',
	'device-brand': 'Xiaomi',
	'device-model': 'MI 6 Plus',
	'device-fingerprint': 'OnePlus/OnePlus2/OnePlus2:6.0.1/MMB29M/1447841200:user/release-keys',
	'device-system-version-name': '6.0.1',
	'device-system-version-code': '23',
	'device-real-width': '1170',
	'device-real-height': '1872',
	'device-display-width': '1170',
	'device-display-height': '1872',
	'lang': 'zh',
	'device-system-bit': '64',
	'device-free-storage': '128459259904',
	'device-free-memory': '128459259904',
	'device-total-memory': '10480242688',
	'device-cpu-core': '4',
	'device-cpu-model': 'MT6739WA',
	'device-cpu-framework': 'AArch64 Processor rev 4 (aarch64)',
	'device-rom-name': 'MIUI',
	'device-gpu-brand': 'NetEase',
	'device-gpu-model': 'MuMu GL (Intel Inc. Intel(R) Iris(TM) Plus Graphics 645 OpenGL 4.1 core)',
	'device-gpu-version': 'OpenGL ES 2.0 (MuMu GL, Powered by ANGLE 2.1.0.23333333)',
	'user-agent': 'okhttp/5.0.0-alpha.2'
};

var options = {
	url: 'https://vproapi.vmos.cn/vmospro/login/userPoints/saveSign?s=4fb2c62039a3d27e3a14e109eecf5b25&k=eb759cd6d8e975ec29b999b743123721&auth_ver=2&n=1645057356329&u=2F5F446757D46DD6096FD1DFCE4C197F785977E5&c=app&v=10900&umid=19ebf73091f88d84e2e991371e21b9f6&mp=15305562330&at=A3864FAF313103B85BB2AB9A2D12A006&pb=Xiaomi&pm=MI%206%20Plus&sv=6.0.1&openid=oDRYU1Fdd1xy9Bee6V92VVAYqVFc&qqopenid=&userId=1014998&isVip=false',
	method: 'POST',
	headers: headers
};

function callback(error, response, body) {
	if (!error && response.statusCode == 200) {
		notify.sendNotify(`vmos 签到`, `签到成功, body: ${body}`);
	} else {
		notify.sendNotify(`vmos 签到`, `签到失败, error: ${error}, response: ${response}, body: ${body}`);
	}
}

request(options, callback);
