@Echo Off
 Setlocal Enabledelayedexpansion

echo AA3s手机设置脚本

echo 获取所有devices
adb devices > E:/JuKeTool/devices.text

set fn=E:/JuKeTool/devices.text
for /f "skip=1" %%i in (%fn%) do (
REM for /f "skip=1 tokens=1 delims= " %%i in (%fn%) do (
  echo 卸载devices
  REM start cmd /k fanka_uninstall %%i 
  start cmd /k uninstall-jkt-fk %%i 
  REM start cmd /k unf %%i 
) 