@Echo Off
 Setlocal Enabledelayedexpansion

echo 联想手机删除多余app

echo 获取所有devices
adb devices > E:/JuKeTool/devices.text

set fn=E:/JuKeTool/devices.text
for /f "skip=1" %%i in (%fn%) do (
  echo 卸载devices
  start cmd /k lenovo_uninstall %%i 
) 
