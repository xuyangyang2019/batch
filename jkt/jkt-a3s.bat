echo off
REM echo. 安装weiketest
REM adb -s %1 install C:\Users\lenovo\Desktop\JuKeTool\Weike_V2.1.10-debug-androidTest.apk
REM echo. 安装weike
REM adb -s %1 install C:\Users\lenovo\Desktop\JuKeTool\Weike_V2.1.16-release.apk
echo. 安装Juketool
adb -s %1 install -r C:\Users\lenovo\Desktop\JuKeTool\JKT_V1.2.24-release.apk
REM echo. 安装微信6.6.5
REM adb -s %1 install -r C:\Users\lenovo\Desktop\JuKeTool\wechat6.6.5.apk

REM adb -s %1 install E:\weike\apks\suits\DeviceHooker-1.6.7.apk

REM 不需要安装supersu 和xposed
REM echo. 安装supersu
REM adb -s %1 install C:\Users\lenovo\Desktop\JuKeTool\supersu-2-79.apk
REM echo. 安装xposed
REM adb -s %1 install C:\Users\lenovo\Desktop\JuKeTool\XposedInstaller.apk

echo. 安装完成
exit cmd
REM adb -s %1 shell pm list packages -3