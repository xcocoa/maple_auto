@echo off
chcp 65001 >nul
title 冒险岛截图工具

echo ========================================
echo    冒险岛截图工具
echo ========================================
echo.
echo 请确保模拟器已打开冒险岛游戏
echo.
pause

echo.
echo 正在截图...

D:\mumu\MuMu Player 12\shell\adb.exe -s emulator-5554 shell screencap -p > screen.png

if exist screen.png (
    echo.
    echo [成功] 截图已保存为 screen.png
    echo.
    echo 现在可以运行 get_position.py 获取坐标
    explorer .
) else (
    echo.
    echo [失败] 截图失败，请检查模拟器是否运行
)

echo.
pause
