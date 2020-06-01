echo off
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
adb -s %1 install -r D:\JKT\apks\JKT_V1.2.17-release.apk

echo. install 微信
adb -s %1 install -r -d D:\JKT\apks\Wechat_V6.6.5.apk