echo off
echo. 卸载 直播
adb -s %1 uninstall com.mi.liveassistant

echo. 卸载 想看
adb -s %1 uninstall com.xiangkan.android

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

echo. 卸载 猎豹清理
adb -s %1 uninstall com.cleanmaster.mguard_cn

REM echo. 卸载 cortana
REM adb -s %1 uninstall com.microsoft.cortana

REM echo. 卸载 鲁大师
REM adb -s %1 uninstall com.ludashi.benchmark

echo. 卸载 米家
adb -s %1 uninstall com.xiaomi.smarthome

echo. 卸载 WPS
adb -s %1 uninstall cn.wps.moffice_eng

echo. 卸载 米聊
adb -s %1 uninstall com.xiaomi.channel

echo. 卸载 阅读
adb -s %1 uninstall com.duokan.reader

echo. 卸载 微信
adb -s %1 uninstall com.tencent.mm

REM echo. 卸载 美团
REM adb -s %1 uninstall com.sankuai.meituan

REM echo. 卸载 猎豹清理
REM adb -s %1 uninstall com.cleanmaster.mguard_cn

echo. 卸载 一点资讯
adb -s %1 uninstall com.yidian.xiaomi

REM echo. 卸载 QQ空间
REM adb -s %1 uninstall com.qzone

echo. 卸载 com.wali.live
adb -s %1 uninstall com.wali.live

echo. 卸载 手机百度
adb -s %1 uninstall com.baidu.searchbox

echo. 卸载爱奇艺
adb -s %1 uninstall com.qiyi.video

echo. 删除 Xposed.zip
REM adb -s %1 shell rm /sdcard/xposed-v89-sdk25-arm64.zip

echo. push xposed
adb -s %1 push D:/JKT/SuperSU-v2.82.zip /sdcard
adb -s %1 push D:/JKT/RedMi4X/xposed-v89-sdk25-arm64.zip /sdcard


echo 安装聚客通

REM echo. install devicehook
REM adb -s %1 install -r D:\JKT\apks\DeviceHooker-1.6.7.apk

REM echo. 安装 XposedInstall
REM adb -s %1 install D:\JKT\apks\XposedInstaller_3.1.7-release.apk

REM echo. 安装 Weike Test
REM adb -s %1 install D:\JKT\apks\Weike_V2.1.10-debug-androidTest.apk

REM echo. 安装 Weike
REM adb -s %1 install D:\JKT\apks\Weike_V2.1.16-release.apk

REM echo. 安装 JKT
REM adb -s %1 install -r D:\JKT\apks\JKT_V1.2.24-release.apk

REM echo. 安装 微信
REM adb -s %1 install D:\JKT\apks\Wechat_V6.6.5.apk

echo. bootloader
adb -s %1 reboot bootloader


fastboot -s %1 flash recovery D:\\JKT\\RedMi_4X\\redmi_4x.img 
fastboot -s %1  boot D:\\JKT\\RedMi_4X\\redmi_4x.img
