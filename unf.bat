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
adb -s %1 shell rm -r /data/data/com.android.launcher3
adb -s %1 shell reboot