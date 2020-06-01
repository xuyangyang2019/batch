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

echo. 卸载 手机百度
adb -s %1 uninstall com.baidu.searchbox

echo. 卸载爱奇艺
adb -s %1 uninstall com.qiyi.video


将SuperSu.zip push到手机sdcard目录
REM adb -s %1 shell mkdir -p /sdcard/Android/data/de.robv.android.xposed.installer/cache/downloads/framework
REM adb -s %1 push D:\JKT\Redmi_Note3\xposed-v87-sdk23-arm64-MIUI-edition-by-SolarWarez-20161126.zip /sdcard/Android/data/de.robv.android.xposed.installer/cache/downloads/framework

REM echo. push xposed
REM adb -s %1 push D:/JKT/RedMi_Note2/xposed-v87-sdk21-arm64-MIUI-edition-by-SolarWarez-20161126.apk /sdcard

echo install聚客通

echo. install XposedInstall
adb -s %1 install -r D:\JKT\apks\XposedInstaller_3.1.6-release.apk

echo. install Weike Test
adb -s %1 install -r D:\JKT\apks\Weike_V2.1.10-debug-androidTest.apk

echo. install Weike
adb -s %1 install -r D:\JKT\apks\Weike_V2.1.15-release.apk

echo. install JKT
adb -s %1 install -r D:\JKT\apks\JKT_V1.2.10-release.apk

echo. install 微信
adb -s %1 install -r -d D:\JKT\apks\Wechat_V6.6.5.apk

REM echo. bootloader
REM adb -s %1 reboot bootloader
