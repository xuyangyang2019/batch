echo off
echo. *****************************************
echo. miui8.2 用的刷机脚本
echo. *****************************************
echo. 卸载 直播
adb -s %1 uninstall com.mi.liveassistant

echo. 卸载 秒拍
adb -s %1 uninstall com.yixia.videoeditor

echo. 卸载 Excel
adb -s %1 uninstall com.microsoft.office.excel

echo. 卸载 小米支持
adb -s %1 uninstall com.mi.misupport

echo. 卸载 小米金融
adb -s %1 uninstall com.xiaomi.jr

echo. 卸载 talkback
adb -s %1 uninstall com.google.android.marvin.talkback

echo. 卸载 outlook
adb -s %1 uninstall com.microsoft.office.outlook

echo. 卸载 小米论坛
adb -s %1 uninstall com.miui.miuibbs

echo. 卸载 word
adb -s %1 uninstall com.microsoft.office.word

echo. 卸载 ppt
adb -s %1 uninstall com.microsoft.office.powerpoint

echo. 卸载 小米商店
adb -s %1 uninstall com.xiaomi.shop

echo. 卸载 小米020
adb -s %1 uninstall com.xiaomi.o2o

echo. 卸载 喜马拉雅
adb -s %1 uninstall com.ximalaya.ting.android

echo. 卸载 cortana
adb -s %1 uninstall com.microsoft.cortana

echo. 卸载 鲁大师
adb -s %1 uninstall com.ludashi.benchmark

echo. 卸载 米家
adb -s %1 uninstall com.xiaomi.smarthome

echo. 卸载 WPS
adb -s %1 uninstall cn.wps.moffice_eng

echo. 卸载 米聊
adb -s %1 uninstall com.xiaomi.channel

echo. 卸载 阅读
adb -s %1 uninstall com.duokan.reader

echo. 卸载 美团
adb -s %1 uninstall com.sankuai.meituan

echo. 卸载 猎豹清理
adb -s %1 uninstall com.cleanmaster.mguard_cn

echo. 卸载 一点资讯
adb -s %1 uninstall com.yidian.xiaomi

echo. 卸载 QQ空间
adb -s %1 uninstall com.qzone

echo. 卸载 com.wali.live
adb -s %1 uninstall com.wali.live

echo. 卸载 微博
adb -s %1 uninstall com.sina.weibo

echo. 卸载爱奇艺
adb -s %1 uninstall com.qiyi.video

echo. 卸载领钉
adb -s %1 uninstall com.linkedin.android

echo. 卸载58
adb -s %1 uninstall com.wuba

echo. 卸载唯品秀
adb -s %1 uninstall com.achievo.vipshop

echo. 卸载携程
adb -s %1 uninstall ctrip.android.view

echo. 卸载手机百度
adb -s %1 uninstall com.baidu.searchbox

echo. 卸载高德地图
adb -s %1 uninstall com.autonavi.minimap

echo. 卸载微信
adb -s %1 uninstall com.tencent.mm

echo. 将SuperSu.zip push到手机sdcard目录
adb -s %1 push D:\\JKT\\SuperSU-v2.82.zip /sdcard
adb -s %1 push D:\\JKT\\Mi_4\\xposed-v86-sdk23-arm-MIUI8-edition-by-SolarWarez-20160710.zip /sdcard

echo install聚客通

REM echo. install devicehook
REM adb -s %1 install -r D:\JKT\apks\DeviceHooker-1.6.7.apk

echo. install XposedInstall
adb -s %1 install -r D:\JKT\apks\XposedInstaller_3.1.7-release.apk

echo. install Weike Test
adb -s %1 install -r D:\JKT\apks\Weike_V2.1.10-debug-androidTest.apk

echo. install Weike
adb -s %1 install -r D:\JKT\apks\Weike_V2.1.16-release.apk

echo. install JKT
adb -s %1 install -r D:\JKT\apks\JKT_V1.2.24-release.apk

echo. install 微信
adb -s %1 install -r -d D:\JKT\apks\Wechat_V6.6.5.apk

echo. bootloader
adb -s %1 reboot bootloader

fastboot -s %1 flash recovery D:\\JKT\\Mi_4\\recovery_mi4.img 
fastboot -s %1  boot D:\\JKT\\Mi_4\\recovery_mi4.img 