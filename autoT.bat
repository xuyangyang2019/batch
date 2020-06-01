@echo off
setlocal enabledelayedexpansion
:main
for /l %%i in (1,1,100) do (
    REM echo %%i
    adb shell input tap 540 1000
)
goto main
REM pause