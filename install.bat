@echo off
chcp 65001 >nul
title Python 安装助手

echo ========================================
echo    Python 安装助手
echo ========================================
echo.
echo 检测到 Windows 没有安装真正的 Python
echo.
echo 请选择安装方式:
echo.
echo   1. 使用 Microsoft Store 安装（推荐，简单）
echo   2. 从官网下载安装（传统方式）
echo   3. 我自己已经安装了 Python（跳过）
echo.
set /p choice="请输入选择 (1-3): "

if "%choice%"=="1" goto :store
if "%choice%"=="2" goto :manual
if "%choice%"=="3" goto :verify

:store
echo.
echo 正在打开 Microsoft Store Python 页面...
echo.
echo 在打开的页面中:
echo   1. 点击 "获取" 或 "安装"
echo   2. 等待安装完成
echo   3. 安装完成后关闭窗口
echo.
pause
start ms-windows-store://pdp/?ProductId=9NRWMJP3717K
echo.
echo 安装完成后，按回车继续...
pause
goto :verify

:manual
echo.
echo 正在打开 Python 官网下载页面...
echo.
echo 在下载页面:
echo   1. 下载 "Python 3.x.x Windows installer (64-bit)"
echo   2. 运行下载的安装程序
echo   3. !!! 重要：勾选 "Add Python to PATH" !!!
echo   4. 点击 "Install Now"
echo.
pause
start https://www.python.org/downloads/
echo.
echo 安装完成后，按回车继续...
pause
goto :verify

:verify
echo.
echo ========================================
echo 正在验证 Python 安装...
echo ========================================
echo.

REM 刷新环境变量
set "PATH=%PATH%;C:\Users\46269\AppData\Local\Programs\Python\Python313\;C:\Users\46269\AppData\Local\Microsoft\WindowsApps\"

python --version >nul 2>&1
if %errorlevel% equ 0 (
    echo [成功] Python 已安装!
    python --version
    goto :install_pip
)

py --version >nul 2>&1
if %errorlevel% equ 0 (
    echo [成功] Python 已安装 (通过 py 启动器)!
    py --version
    goto :install_pip
)

echo [失败] 未检测到 Python
echo.
echo 请重新运行此脚本并选择正确的安装方式
pause
exit /b 1

:install_pip
echo.
echo ========================================
echo 正在安装 Python 依赖库...
echo ========================================
echo.
echo 正在安装：opencv-python, numpy, pillow
echo.
echo 使用国内镜像源加速安装...
echo.

pip install opencv-python numpy pillow -i https://pypi.tuna.tsinghua.edu.cn/simple

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    安装完成!
    echo ========================================
    echo.
    echo 下一步:
    echo   1. 打开模拟器，启动冒险岛游戏
    echo   2. 进入肉鸽小游戏界面
    echo   3. 双击运行 "截图.bat"
    echo   4. 运行 "python get_position.py" 获取坐标
    echo   5. 制作模板图片到 templates 文件夹
    echo   6. 运行 "python maplem_auto.py" 开始自动化
    echo.
) else (
    echo.
    echo ========================================
    echo    pip 安装失败
    echo ========================================
    echo.
    echo 请尝试手动安装:
    echo   pip install opencv-python numpy pillow
    echo.
)

pause
