echo 删除粉咖手机的群控
adb -s %1 uninstall de.robv.android.xposed.installer
adb -s %1 uninstall com.tencent.mm
adb -s %1 uninstall com.jubo.kyd.test
adb -s %1 uninstall com.UCMobile
adb -s %1 uninstall com.weike.devicehooker
adb -s %1 uninstall com.p1.mobile.putong
adb -s %1 uninstall com.jubo.kyd
adb -s %1 uninstall eu.chainfire.supersu
adb -s %1 shell rm -r /data/data/com.android.launcher3
adb -s %1 shell reboot
exit