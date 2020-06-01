 @Echo on 
  Setlocal Enabledelayedexpansion

echo 聚客通-Redmi_5A装机脚本

echo 获取所有devices
fastboot devices > E:/JuKeTool/fastdevices.text

set fn=E:/JuKeTool/fastdevices.text
REM for /f "skip=1" %%i in (%fn%) do (
for /f  %%i in (%fn%) do (
  start cmd /k redmi_5_recovery %%i
) 

