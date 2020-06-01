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

REM echo. 卸载 阅读
REM adb -s %1 uninstall com.duokan.reader

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

echo. 卸载去哪儿
adb -s %1 uninstall com.Qunar

echo. 卸载微信
adb -s %1 uninstall com.tencent.mm

echo. 将SuperSu.zip push到手机sdcard目录
adb -s %1 push D:\\JKT\\SuperSU-v2.82.zip /sdcard

echo install聚客通

echo. install devicehook
adb -s %1 install -r D:\JKT\apks\DeviceHooker-1.6.7.apk

echo. install XposedInstall
adb -s %1 install -r D:\JKT\apks\XposedInstaller_3.1.7-release.apk

echo. install Weike Test
adb -s %1 install -r D:\JKT\apks\Weike_V2.1.10-debug-androidTest.apk

echo. install Weike
adb -s %1 install -r D:\JKT\apks\Weike_V2.1.15-release.apk

echo. install JKT
adb -s %1 install -r D:\JKT\apks\JKT_V1.2.21-release.apk

echo. install 微信
adb -s %1 install -r -d D:\JKT\apks\Wechat_V6.6.5.apk

echo. bootloader
adb -s %1 reboot bootloader

fastboot -s %1 flash recovery D:\\JKT\\RedMI_Note5\\redmi_note5.img 
fastboot -s %1  boot D:\\JKT\\RedMI_Note5\\redmi_note5.img