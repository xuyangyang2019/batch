@Echo Off
echo 粉咖新机装机脚本
echo 先删除手机中的无用的app
echo 删除粉宝apk
adb -s %1 uninstall com.njmomlnnmcmlml.beishanadsa
echo 删除粉宝
adb -s %1 uninstall com.b3ad.marketing
echo 删除人脉通
adb -s %1 uninstall com.bizsocialnet
echo 删除Y3云监控
adb -s %1 uninstall com.agsoft.wechatx
echo 删除探探
adb -s %1 uninstall com.p1.mobile.putong
echo 删除leb
adb -s %1 uninstall com.lbe.security
echo 删除QQ
adb -s %1 uninstall com.tencent.mobileqq
echo 删除UC
adb -s %1 uninstall com.UCMobile
@rem adb shell pm list packages -s
@rem adb shell pm path com.xx.xx
@rem adb shell rm path com.agsoft.share
::挂在读写权限
adb -s %1 remount
::s删除系统包
adb -s %1 shell rm /system/app/OldDriver/OldDriver.apk

echo 删除wxhook
adb -s %1 uninstall com.weike.wxhook
echo delete phonehook
adb -s %1 uninstall com.weike.phonehook
echo delete UCMobile
adb -s %1 uninstall com.UCMobile
echo delete QQ
adb -s %1 uninstall com.tencent.mobileqq
echo delete weixinhelprer
adb -s %1 uninstall com.weike.helper


REM echo 安装聚客通相关app
REM :REM echo 安装supersu
REM @REM adb -s %1 install E:/JuKeTool/supersu-2-79.apk
REM echo 安装微信6.6.5
REM adb -s %1 install -r E:/JuKeTool/wechat6.6.5.apk 

REM @echo "安装Weike"
REM adb -s %1 install -r E:/JuKeTool/Weike_V2.1.10-release.apk

REM echo "安装Weike test"
REM adb -s %1 install -r E:/JuKeTool/Weike_V2.1.2-debug-androidTest.apk

REM echo "adb -s %1 root"
REM adb -s %1 root

REM echo "remount"
REM adb -s %1 remount

REM echo "push apk"
REM adb -s %1 push E:/JuKeTool/JKT_Vapks-beta-release.apk /system/app/JuKeTool.apk

REM echo "push lib"
REM adb -s %1 push E:/JuKeTool/lib/libBugly.so /vendor/lib/
REM adb -s %1 push E:/JuKeTool/lib/libNameProvider.so /vendor/lib/
REM adb -s %1 push E:/JuKeTool/lib64/libBugly.so /vendor/lib64/
REM adb -s %1 push E:/JuKeTool/lib64/libNameProvider.so /vendor/lib64/

echo "重启"
adb -s %1 reboot

