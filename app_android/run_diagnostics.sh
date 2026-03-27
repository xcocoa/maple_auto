#!/bin/bash
# MapleAuto - 诊断信息收集脚本
# 用法: ./run_diagnostics.sh [device_id]

DEVICE_ID="${1:-}"
ADB_DEVICE=""
if [ -n "$DEVICE_ID" ]; then
    ADB_DEVICE="-s $DEVICE_ID"
fi

PACKAGE="com.maple.auto"

echo "============================================"
echo "MapleAuto - Device Diagnostics"
echo "============================================"

# 设备基本信息
echo ""
echo "=== Device Info ==="
echo "Model: $(adb $ADB_DEVICE shell getprop ro.product.model)"
echo "Android: $(adb $ADB_DEVICE shell getprop ro.build.version.release) (SDK $(adb $ADB_DEVICE shell getprop ro.build.version.sdk))"
echo "Manufacturer: $(adb $ADB_DEVICE shell getprop ro.product.manufacturer)"
echo "ABI: $(adb $ADB_DEVICE shell getprop ro.product.cpu.abi)"

# 屏幕信息
echo ""
echo "=== Screen Info ==="
adb $ADB_DEVICE shell wm size
adb $ADB_DEVICE shell wm density
adb $ADB_DEVICE shell dumpsys display | grep -E "mBaseDisplayInfo|DisplayDeviceInfo" | head -5

# 内存信息
echo ""
echo "=== Memory Info ==="
adb $ADB_DEVICE shell cat /proc/meminfo | head -5

# 应用状态
echo ""
echo "=== App Status ==="
INSTALLED=$(adb $ADB_DEVICE shell pm list packages | grep -c "$PACKAGE" || echo "0")
if [ "$INSTALLED" -gt 0 ]; then
    echo "App installed: YES"
    adb $ADB_DEVICE shell dumpsys package "$PACKAGE" | grep -E "versionName|versionCode|firstInstallTime" | head -5
    
    # 检查服务运行状态
    echo ""
    echo "=== Running Services ==="
    adb $ADB_DEVICE shell dumpsys activity services "$PACKAGE" | grep -E "ServiceRecord|intent=" | head -10
    
    # 检查无障碍服务
    echo ""
    echo "=== Accessibility Services ==="
    adb $ADB_DEVICE shell settings get secure enabled_accessibility_services | tr ':' '\n' | grep -i maple || echo "  Not enabled"
    
    # 应用日志（最近 50 行）
    echo ""
    echo "=== Recent App Logs ==="
    adb $ADB_DEVICE logcat -d -s "MainActivity:V" "GameEngineManager:V" "FloatingWindow:V" "DiagnosticTool:V" | tail -30
else
    echo "App installed: NO"
    echo "Run ./test_build_on_device.sh first"
fi

echo ""
echo "============================================"
echo "Diagnostics complete"
echo "============================================"
