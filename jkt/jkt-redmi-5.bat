echo off
echo. 卸载 直播
adb -s %1 uninstall com.mi.liveassistant

echo. 卸载 Excel
adb -s %1 uninstall com.microsoft.office.excel

echo. 卸载 领英
adb -s %1 uninstall com.linkedin.android

echo. 卸载 小米金融
adb -s %1 uninstall com.xiaomi.jr

echo. 卸载 talkback
adb -s %1 uninstall com.google.android.marvin.talkback

echo. 卸载 高德
adb -s %1 uninstall com.autonavi.minimap

echo. 卸载 word
adb -s %1 uninstall com.microsoft.office.word

echo. 卸载 ppt
adb -s %1 uninstall com.microsoft.office.powerpoint

echo. 卸载 小米商店
adb -s %1 uninstall com.xiaomi.shop

echo. 卸载 小米020
adb -s %1 uninstall com.xiaomi.o2o

echo. 卸载 猎豹清理
adb -s %1 uninstall com.cleanmaster.mguard_cn

echo. 卸载 米家
adb -s %1 uninstall com.xiaomi.smarthome

echo. 卸载 WPS
adb -s %1 uninstall cn.wps.moffice_eng

echo. 卸载 米聊
adb -s %1 uninstall com.xiaomi.channel

echo. 卸载 阅读
adb -s %1 uninstall com.duokan.reader

echo. 卸载 一点资讯
adb -s %1 uninstall com.yidian.xiaomi

echo. 卸载 com.wali.live
adb -s %1 uninstall com.wali.live

echo. 卸载 com.sina.weibo
adb -s %1 uninstall com.sina.weibo

echo. 卸载 com.ss.android.ugc.live
adb -s %1 uninstall com.ss.android.ugc.live

echo. 卸载 手机百度
adb -s %1 uninstall com.baidu.searchbox

echo. 卸载爱奇艺
adb -s %1 uninstall com.qiyi.video

echo. uninstll com.jingdong.app.mall
adb -s %1 uninstall com.jingdong.app.mall

echo. uninstll sogou.mobile.explorer
adb -s %1 uninstall sogou.mobile.explorer

echo. uninstll com.ss.android.article.news
adb -s %1 uninstall com.ss.android.article.news

echo. uninstll com.ss.android.article.news
adb -s %1 uninstall com.ss.android.article.news

echo. uninstll com.qihoo.browser
adb -s %1 uninstall com.qihoo.browser

echo. uninstll cn.kuwo.player
adb -s %1 uninstall cn.kuwo.player

echo. uninstll com.dianping.v1
adb -s %1 uninstall com.dianping.v1

echo. uninstll com.storm.smart
adb -s %1 uninstall com.storm.smart

echo. uninstll com.UCMobile
adb -s %1 uninstall com.UCMobile

echo. uninstll cmccwm.mobilemusic
adb -s %1 uninstall cmccwm.mobilemusic

echo. uninstll com.qwkj.wwlotery
adb -s %1 uninstall com.qwkj.wwlotery

echo. uninstll com.iflytek.inputmethod
adb -s %1 uninstall com.iflytek.inputmethod

echo. 卸载微信
adb -s %1 uninstall com.tencent.mm

echo. 将SuperSu.zip push到手机sdcard目录
adb -s %1 push D:\\JKT\\SuperSU-v2.82.zip


echo *********************************************************************
echo install聚客通
echo *********************************************************************

REM echo. install devicehook
REM adb -s %1 install -r D:\JKT\apks\DeviceHooker-1.6.7.apk

REM echo. install XposedInstall
REM adb -s %1 install -r D:\JKT\apks\XposedInstaller_3.1.7-release.apk

REM echo. install Weike Test
REM adb -s %1 install -r D:\JKT\apks\Weike_V2.1.10-debug-androidTest.apk

REM echo. install Weike
REM adb -s %1 install -r D:\JKT\apks\Weike_V2.1.15-release.apk

REM echo. install JKT
REM adb -s %1 install -r D:\JKT\apks\JKT_V1.2.17-release.apk

REM echo. install 微信
REM adb -s %1 install -r -d D:\JKT\apks\Wechat_V6.6.5.apk



echo *********************************************************************
echo push聚客通
echo *********************************************************************
adb -s %1 shell mkdir -p /sdcard/JKT

REM echo. install DeviceHooker
REM adb -s %1 push D:\JKT\apks\DeviceHooker-1.6.7.apk /sdcard/JKT

echo. push XposedInstall
adb -s %1 push D:\JKT\apks\XposedInstaller_3.1.7-release.apk /sdcard/JKT

echo. push Weike Test
adb -s %1 push D:\JKT\apks\Weike_V2.1.10-debug-androidTest.apk /sdcard/JKT

echo. push JKT
adb -s %1 push D:\JKT\apks\JKT_V1.2.17-release.apk /sdcard/JKT

echo. push Weike
adb -s %1 push D:\JKT\apks\Weike_V2.1.15-release.apk /sdcard/JKT

echo. push 微信
adb -s %1 push D:\JKT\apks\Wechat_V6.6.5.apk /sdcard/JKT

echo. bootloader
adb -s %1 reboot bootloader

fastboot -s %1 flash recovery D:\\JKT\\RedMi_5\\recovery_5.img
fastboot -s %1  boot D:\\JKT\\RedMi_5\\recovery_5.img
