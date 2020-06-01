echo off
echo. 卸载 高德
adb -s %1 uninstall com.autonavi.minimap

echo. 卸载 阅读
adb -s %1 uninstall com.duokan.reader

echo. 卸载 com.ss.android.ugc.live
adb -s %1 uninstall com.ss.android.ugc.live

echo. uninstll com.jingdong.app.mall
adb -s %1 uninstall com.jingdong.app.mall

echo. uninstll com.ss.android.article.news
adb -s %1 uninstall com.ss.android.article.news

echo. uninstll com.UCMobile
adb -s %1 uninstall com.UCMobile

echo. uninstll cmccwm.mobilemusic
adb -s %1 uninstall cmccwm.mobilemusic

echo. uninstll com.ss.android.article.video
adb -s %1 uninstall com.ss.android.article.video

echo. uninstll com.tencent.qqlive
adb -s %1 uninstall com.tencent.qqlive

echo. uninstll com.youku.phone
adb -s %1 uninstall com.youku.phone

echo. uninstll tv.yixia.bobo
adb -s %1 uninstall tv.yixia.bobo

echo. 卸载微信
adb -s %1 uninstall com.tencent.mm

echo. 将SuperSu.zip push到手机sdcard目录
adb -s %1 push D:\\JKT\\SuperSU-v2.82.zip /sdcard

echo. ******************************************************
echo install聚客通
echo. ******************************************************

REM echo. install devicehook
REM adb -s %1 install -r D:\JKT\apks\DeviceHooker-1.6.7.apk

echo. install XposedInstall
adb -s %1 install -r D:\JKT\apks\XposedInstaller_3.1.7-release.apk

echo. install Weike Test
adb -s %1 install -r D:\JKT\apks\Weike_V2.1.10-debug-androidTest.apk

echo. install Weike
adb -s %1 install -r D:\JKT\apks\Weike_V2.1.15-release.apk

echo. install JKT
adb -s %1 install -r D:\JKT\apks\JKT_V1.2.17-release.apk

echo. install 微信
adb -s %1 install -r -d D:\JKT\apks\Wechat_V6.6.5.apk

echo. ******************************************************
echo. 刷入recovery
echo. ******************************************************
echo. bootloader
adb -s %1 reboot bootloader

fastboot -s %1 flash recovery D:\\JKT\\RedMi_5P\\hm5plus.img 
fastboot -s %1  boot D:\\JKT\\RedMi_5P\\hm5plus.img
