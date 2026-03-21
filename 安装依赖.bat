@echo off
chcp 65001 >nul
title 安装依赖库

echo ========================================
echo    Python 依赖库安装
echo ========================================
echo.

echo [检查] Python 是否已安装...
echo.

python --version >nul 2>&1
if %errorlevel% equ 0 (
    echo [成功] Python 已安装
    python --version
    goto :install
)

py --version >nul 2>&1
if %errorlevel% equ 0 (
    echo [成功] Python 已安装 (py)
    py --version
    goto :install
)

echo [错误] 未检测到 Python
echo.
echo 请先安装 Python:
echo   1. 访问 https://www.python.org/downloads/
echo   2. 下载并安装 Python 3.x
echo   3. 安装时勾选 "Add Python to PATH"
echo.
pause
exit /b 1

:install
echo.
echo ========================================
echo 正在安装依赖库...
echo ========================================
echo.
echo 正在安装：opencv-python, numpy, pillow
echo.
echo (使用国内镜像源加速)
echo.

pip install opencv-python numpy pillow -i https://pypi.tuna.tsinghua.edu.cn/simple

echo.
echo ========================================
if %errorlevel% equ 0 (
    echo    安装完成!
    echo ========================================
    echo.
    echo 可以开始使用冒险岛自动化了:
    echo   1. 打开模拟器，启动冒险岛
    echo   2. 双击 "截图.bat" 截图
    echo   3. 运行 "python get_position.py" 获取坐标
    echo   4. 制作模板到 templates 文件夹
    echo   5. 运行 "python maplem_auto.py" 开始自动化
) else (
    echo    安装失败
    echo ========================================
    echo.
    echo 请尝试手动安装:
    echo   python -m pip install opencv-python numpy pillow
)
echo.
pause
