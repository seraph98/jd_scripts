# 每3天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
50 23 */3 * * find /scripts/logs -name '*.log' | grep -v 'sharecodeCollection' | xargs rm -rf
#收集助力码
30 * * * * sh +x /scripts/docker/auto_help.sh collect |ts >> /data/logs/auto_help_collect.log 2>&1 &

##############短期活动##############
#女装盲盒 活动时间：2021-05-24到2021-06-22
35 1,22 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_nzmh.js |ts >> /data/logs/jd_nzmh.log 2>&1 &

#京东极速版红包(活动时间：2021-5-5至2021-5-31)
45 0,23 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_speed_redpocke.js |ts >> /data/logs/jd_speed_redpocke.log 2>&1 &

#超级直播间红包雨(活动时间不定期，出现异常提示请忽略。红包雨期间会正常)
1,31 0-23/1 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_live_redrain.js |ts >> /data/logs/jd_live_redrain.log 2>&1 &

#每日抽奖(活动时间：2021-05-01至2021-05-31)
13 1,22,23 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_daily_lottery.js |ts >> /data/logs/jd_daily_lottery.log 2>&1 &

#手机狂欢城
0 0,12,18,21 * * * spnode conc /scripts/jd_carnivalcity.js |ts >> /data/logs/jd_carnivalcity.log 2>&1 &
#618动物联萌
33 0,6-23/2 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_zoo.js |ts >> /data/logs/jd_zoo.log 2>&1 &
#618动物联萌专门收集金币(每小时的第30分运行一次)
0-59/30 * * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_zooCollect.js |ts >> /data/logs/jd_zooCollect.log 2>&1 &
#家电星推官 活动时间：2021年5月27日 00:00:00-2021年6月18日 23:59:59
#家电星推官好友互助 活动时间：2021年5月27日 00:00:00-2021年6月18日 23:59:59
#金榜创造营 活动时间：2021-05-21至2021-12-31
0 1,22 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_gold_creator.js |ts >> /data/logs/jd_gold_creator.log 2>&1 &
#5G超级盲盒(活动时间：2021-06-2到2021-07-31)
0 0-23/4 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_mohe.js |ts >> /data/logs/jd_mohe.log 2>&1 &
#明星小店(星店长，2021-06-10)
0 1,21 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_star_shop.js |ts >> /data/logs/jd_star_shop.log 2>&1 &
#新潮品牌狂欢（6.18过期）
20 1,21 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_mcxhd.js |ts >> /data/logs/jd_mcxhd.log 2>&1 &
#京喜领88元红包(6.31到期)
30 1,6,12,21 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_jxlhb.js |ts >> /data/logs/jd_jxlhb.log 2>&1 &
#省钱大赢家之翻翻乐
10,40 * * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_big_winner.js |ts >> /data/logs/jd_big_winner.log 2>&1 &
##############长期活动##############
# 签到
7 0,17 * * * cd /scripts && sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode jd_bean_sign.js |ts >> /data/logs/jd_bean_sign.log 2>&1 &
# 东东超市兑换奖品
0,30 0 * * * spnode conc /scripts/jd_blueCoin.js |ts >> /data/logs/jd_blueCoin.log 2>&1 &
# 摇京豆
6 0,23 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_club_lottery.js |ts >> /data/logs/jd_club_lottery.log 2>&1 &
# 东东农场
15 6-18/6 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_fruit.js |ts >> /data/logs/jd_fruit.log 2>&1 &
# 宠汪汪
45 */2,23 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_joy.js |ts >> /data/logs/jd_joy.log 2>&1 &
# 宠汪汪积分兑换京豆
0 0-16/8 * * * spnode conc /scripts/jd_joy_reward.js |ts >> /data/logs/jd_joy_reward.log 2>&1 &
# 宠汪汪喂食
35 */1 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_joy_feedPets.js |ts >> /data/logs/jd_joy_feedPets.log 2>&1 &
# 宠汪汪邀请助力
10 13-20/1 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_joy_run.js |ts >> /data/logs/jd_joy_run.log 2>&1 &
# 摇钱树
23 */2 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_moneyTree.js |ts >> /data/logs/jd_moneyTree.log 2>&1 &
# 东东萌宠
35 6-18/6 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_pet.js |ts >> /data/logs/jd_pet.log 2>&1 &
# 京东种豆得豆
10 7-22/1 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_plantBean.js |ts >> /data/logs/jd_plantBean.log 2>&1 &
# 京东全民开红包
12 0-23/4 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_redPacket.js |ts >> /data/logs/jd_redPacket.log 2>&1 &
# 进店领豆
6 0 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_shop.js |ts >> /data/logs/jd_shop.log 2>&1 &
# 东东超市
31 0,1-23/2 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_superMarket.js |ts >> /data/logs/jd_superMarket.log 2>&1 &
# 取关京东店铺商品
45 23 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_unsubscribe.js |ts >> /data/logs/jd_unsubscribe.log 2>&1 &
# 京豆变动通知
20 10 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_bean_change.js |ts >> /data/logs/jd_bean_change.log 2>&1 &
# 京东抽奖机
0 0,12,23 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_lotteryMachine.js |ts >> /data/logs/jd_lotteryMachine.log 2>&1 &
# 京东排行榜
21 9 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_rankingList.js |ts >> /data/logs/jd_rankingList.log 2>&1 &
# 天天提鹅
28 * * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_daily_egg.js |ts >> /data/logs/jd_daily_egg.log 2>&1 &
# 金融养猪
32 0-23/6 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_pigPet.js |ts >> /data/logs/jd_pigPet.log 2>&1 &
# 京喜工厂
50 * * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_dreamFactory.js |ts >> /data/logs/jd_dreamFactory.log 2>&1 &
# 东东小窝
46 6,23 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_small_home.js |ts >> /data/logs/jd_small_home.log 2>&1 &
# 东东工厂
26 * * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_jdfactory.js |ts >> /data/logs/jd_jdfactory.log 2>&1 &
# 赚京豆(微信小程序)
12 * * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_syj.js |ts >> /data/logs/jd_syj.log 2>&1 &
# 京东快递签到
47 1 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_kd.js |ts >> /data/logs/jd_kd.log 2>&1 &
# 京东汽车(签到满500赛点可兑换500京豆)
0 0 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_car.js |ts >> /data/logs/jd_car.log 2>&1 &
# 领京豆额外奖励(每日可获得3京豆)
23 1,12,22 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_bean_home.js |ts >> /data/logs/jd_bean_home.log 2>&1 &
# 微信小程序京东赚赚
6 0-5/1,11 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_jdzz.js |ts >> /data/logs/jd_jdzz.log 2>&1 &
# crazyJoy自动每日任务
30 7,23 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_crazy_joy.js |ts >> /data/logs/jd_crazy_joy.log 2>&1 &
# 京东汽车旅程赛点兑换金豆
0 0 * * * spnode /scripts/jd_car_exchange.js |ts >> /data/logs/jd_car_exchange.log 2>&1 &
# 导到所有互助码
23 7 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_get_share_code.js |ts >> /data/logs/jd_get_share_code.log 2>&1 &
# 口袋书店
38 8,12,18 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_bookshop.js |ts >> /data/logs/jd_bookshop.log 2>&1 &
# 京喜农场
30 9,12,18 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_jxnc.js |ts >> /data/logs/jd_jxnc.log 2>&1 &
# 签到领现金
10 */4 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_cash.js |ts >> /data/logs/jd_cash.log 2>&1 &
# 闪购盲盒
47 8,22 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_sgmh.js |ts >> /data/logs/jd_sgmh.log 2>&1 &
# 京东秒秒币
10 6,21 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_ms.js |ts >> /data/logs/jd_ms.log 2>&1 &
#美丽研究院
41 7,12,19 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_beauty.js |ts >> /data/logs/jd_beauty.log 2>&1 &
#京东保价
#41 0,23 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_price.js |ts >> /data/logs/jd_price.log 2>&1 &
#京东极速版签到+赚现金任务
21 1,6 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_speed_sign.js |ts >> /data/logs/jd_speed_sign.log 2>&1 &
#监控crazyJoy分红
10 12 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_crazy_joy_bonus.js |ts >> /data/logs/jd_crazy_joy_bonus.log 2>&1 &
#京喜财富岛
5 7,12,18 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_cfd.js |ts >> /data/logs/jd_cfd.log 2>&1 &
# 删除优惠券(默认注释，如需要自己开启，如有误删，已删除的券可以在回收站中还原，慎用)
#20 9 * * 6 sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_delCoupon.js |ts >> /data/logs/jd_delCoupon.log 2>&1 &
#家庭号
10 6,7 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_family.js |ts >> /data/logs/jd_family.log 2>&1 &
#京东直播（又回来了）
30-50/5 12,23 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_live.js |ts >> /data/logs/jd_live.log 2>&1 &
#京东健康社区
13 1,6,22 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_health.js |ts >> /data/logs/jd_health.log 2>&1 &
#京东健康社区收集健康能量
5-45/20 * * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_health_collect.js |ts >> /data/logs/jd_health_collect.log 2>&1 &
# 幸运大转盘
10 10,23 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_market_lottery.js |ts >> /data/logs/jd_market_lottery.log 2>&1 &
# 领金贴
5 0 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_jin_tie.js |ts >> /data/logs/jd_jin_tie.log 2>&1 &
# 跳跳乐瓜分京豆
15 0,12,22 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_jump.js |ts >> /data/logs/jd_jump.log 2>&1 &
#京喜牧场
15 0,12,22 * * * sleep $((RANDOM % $RANDOM_DELAY_MAX)); spnode /scripts/jd_jxmc.js |ts >> /data/logs/jd_jxmc.log 2>&1 &

21 */1 * * * sleep 10; sed -i "/desp += author/d" /scripts/sendNotify.js
59 23 * * * echo ''>/data/logs/jd_carnivalcity.log; sleep 85; curl -X DELETE https://sharecode.akyakya.com/api/carnivalcity/del/token_8950E221977344068879623F83617E0E; curl -X POST https://sharecode.akyakya.com/api/mgc_carnivalcity/add/$(cat /data/logs/jd_carnivalcity.log  | grep 的京东手机狂欢城好友互助码】|awk '{print $4}' | tr '】' ' ' | sort |uniq | awk '{print $2}' |tr '\n' '&')
21 */1 * * * docker_entrypoint.sh |ts >> /data/logs/default_task.log 2>&1 &
#monk-coder仓库任务-手机狂欢城(z_carnivalcity.js)
2 0-18/6 * 5 * spnode /scripts/z_carnivalcity.js |ts >>/data/logs/z_carnivalcity.log 2>&1 &
#monk-coder仓库任务-城城分现金(z_city_cash.js)
1 0-23/4 * 5,6 *  spnode /scripts/z_city_cash.js |ts >>/data/logs/z_city_cash.log 2>&1 &
#monk-coder仓库任务-粉丝互动(z_fanslove.js)
3 10 * * * spnode /scripts/z_fanslove.js |ts >>/data/logs/z_fanslove.log 2>&1 &
#monk-coder仓库任务-健康社区(z_health_community.js)
25 10-22/3 * * * spnode /scripts/z_health_community.js |ts >>/data/logs/z_health_community.log 2>&1 &
#monk-coder仓库任务-健康社区收取能量(z_health_energy.js)
25 * * * * spnode /scripts/z_health_energy.js |ts >>/data/logs/z_health_energy.log 2>&1 &
#monk-coder仓库任务-京东超市-大转盘(z_marketLottery.js)
3 10 * * * spnode /scripts/z_marketLottery.js |ts >>/data/logs/z_marketLottery.log 2>&1 &
#monk-coder仓库任务-母婴跳一跳(z_mother_jump.js)
5 8,14,20 19-25 5 *  spnode /scripts/z_mother_jump.js |ts >>/data/logs/z_mother_jump.log 2>&1 &
#monk-coder仓库任务-超级摇一摇(z_shake.js)
3 20 * * * spnode /scripts/z_shake.js |ts >>/data/logs/z_shake.log 2>&1 &
#monk-coder仓库任务-超级无线组队分京豆(z_shop_captain.js)
25 3 * * 2 spnode /scripts/z_shop_captain.js |ts >>/data/logs/z_shop_captain.log 2>&1 &
#monk-coder仓库任务-(adolf_flp.js)
15 9 * 5,6 * spnode /scripts/adolf_flp.js |ts >>/data/logs/adolf_flp.log 2>&1 &
#monk-coder仓库任务-(adolf_oneplus.js)
25 9 * 5,6 * spnode /scripts/adolf_oneplus.js |ts >>/data/logs/adolf_oneplus.log 2>&1 &
#monk-coder仓库任务-有机牧场(monk_pasture.js)
0 0,1-22/2 1-31 4-7 * spnode /scripts/monk_pasture.js |ts >>/data/logs/monk_pasture.log 2>&1 &
#monk-coder仓库任务-(adolf_jxhb.js)
15 9 * 5,6 * spnode /scripts/adolf_jxhb.js |ts >>/data/logs/adolf_jxhb.log 2>&1 &
#monk-coder仓库任务-(adolf_martin.js)
20 9 20-31 5 * spnode /scripts/adolf_martin.js |ts >>/data/logs/adolf_martin.log 2>&1 &
#monk-coder仓库任务-(adolf_newInteraction.js)
15 9,20 * 5,6 * spnode /scripts/adolf_newInteraction.js |ts >>/data/logs/adolf_newInteraction.log 2>&1 &
#monk-coder仓库任务-(adolf_pk.js)
15 8,13,18 17-31 5 * spnode /scripts/adolf_pk.js |ts >>/data/logs/adolf_pk.log 2>&1 &
#monk-coder仓库任务-(adolf_superbox.js)
15 9,20 * 5,6 * spnode /scripts/adolf_superbox.js |ts >>/data/logs/adolf_superbox.log 2>&1 &
#monk-coder仓库任务-(adolf_urge.js)
28 9 * 5 * spnode /scripts/adolf_urge.js |ts >>/data/logs/adolf_urge.log 2>&1 &
#monk-coder仓库任务-interCenter渠道店铺签到(monk_inter_shop_sign.js)
0 0 * * * spnode /scripts/monk_inter_shop_sign.js |ts >>/data/logs/monk_inter_shop_sign.log 2>&1 &
#monk-coder仓库任务-店铺关注有礼(monk_shop_follow_sku.js)
15 15 * * * spnode /scripts/monk_shop_follow_sku.js |ts >>/data/logs/monk_shop_follow_sku.log 2>&1 &
#monk-coder仓库任务-店铺大转盘(monk_shop_lottery.js)
3 0,10,23 * * * spnode /scripts/monk_shop_lottery.js |ts >>/data/logs/monk_shop_lottery.log 2>&1 &
#longzhuzhu仓库任务-半点京豆雨(jd_half_redrain.js)
30 16-23/1 * * * spnode conc /scripts/jd_half_redrain.js |ts >>/data/logs/jd_half_redrain.log 2>&1 &
#longzhuzhu仓库任务-整点京豆雨(jd_super_redrain.js)
1 0-23/1 * * * spnode conc /scripts/jd_super_redrain.js |ts >>/data/logs/jd_super_redrain.log 2>&1 &
#longzhuzhu仓库任务-618主会场红包雨(long_hby_lottery.js)
1 20 1-18 6 * spnode conc /scripts/long_hby_lottery.js |ts >>/data/logs/long_hby_lottery.log 2>&1 &
#custom_scripts保存文件任务-京享值PK(ddo_pk.js)
15 0,6,13,19,21 * * * spnode /scripts/ddo_pk.js |ts >>/data/logs/ddo_pk.log 2>&1 &
#custom_scripts保存文件任务-点点券(jd_necklace.js)
10 0,20 * * * spnode /scripts/jd_necklace.js |ts >>/data/logs/jd_necklace.log 2>&1 &
#custom_scripts保存文件任务-618动物联萌(jd_zoo.js)
33 0,6-23/2 * * * spnode /scripts/jd_zoo.js |ts >>/data/logs/jd_zoo.log 2>&1 &
#custom_scripts保存文件任务-618动物联萌收集金币(jd_zooCollect.js)
0-59/30 * * * * spnode /scripts/jd_zooCollect.js |ts >>/data/logs/jd_zooCollect.log 2>&1 &
#curtinlv的会员开卡仓库任务 
0 8 * * * cd /data/cust_repo/curtinlv/OpenCard && python3 jd_OpenCard.py |ts >>/data/logs/jd_OpenCard.log 2>&1 &
15 15 * * * cd /data/cust_repo/curtinlv/OpenCard && python3 jd_OpenCard.py |ts >>/data/logs/jd_OpenCard.log 2>&1 &
#curtinlv的关注有礼任务 
15 8 * * * cd /data/cust_repo/curtinlv/getFollowGifts && python3 jd_getFollowGift.py |ts >>/data/logs/jd_getFollowGift.log 2>&1 &
30 15 * * * cd /data/cust_repo/curtinlv/getFollowGifts && python3 jd_getFollowGift.py |ts >>/data/logs/jd_getFollowGift.log 2>&1 &
32 23 * * 6 cd /scripts && sleep 222; && sh submitShareCode.sh >> /data/logs/submitCode.log 2>&1 & 
