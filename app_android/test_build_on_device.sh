#!/bin/bash
# MapleAuto - 真机测试脚本
# 用法: ./test_build_on_device.sh [device_id]

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$SCRIPT_DIR"
PACKAGE="com.maple.auto"
MAIN_ACTIVITY="$PACKAGE.MainActivity"

# 设备 ID（可选参数）
DEVICE_ID="${1:-}"
ADB_DEVICE=""
if [ -n "$DEVICE_ID" ]; then
    ADB_DEVICE="-s $DEVICE_ID"
fi

echo "============================================"
echo "MapleAuto - Build & Deploy to Device"
echo "============================================"

# 1. 检查 ADB 设备
echo ""
echo "[1/5] Checking connected devices..."
adb devices -l
DEVICE_COUNT=$(adb devices | grep -c "device$" || true)
if [ "$DEVICE_COUNT" -eq 0 ]; then
    echo "ERROR: No devices connected!"
    echo "  - Connect a device via USB"
    echo "  - Or start an emulator"
    exit 1
fi
echo "  Found $DEVICE_COUNT device(s)"

# 2. 构建 APK
echo ""
echo "[2/5] Building APK..."
cd "$PROJECT_DIR"
if [ -f "./gradlew" ]; then
    chmod +x ./gradlew
    ./gradlew assembleDebug --warning-mode all 2>&1 | tail -20
else
    echo "ERROR: gradlew not found in $PROJECT_DIR"
    exit 1
fi

APK_PATH="$PROJECT_DIR/app/build/outputs/apk/debug/app-debug.apk"
if [ ! -f "$APK_PATH" ]; then
    echo "ERROR: APK not found at $APK_PATH"
    exit 1
fi
echo "  APK: $APK_PATH"
echo "  Size: $(du -h "$APK_PATH" | cut -f1)"

# 3. 安装到设备
echo ""
echo "[3/5] Installing APK..."
adb $ADB_DEVICE install -r "$APK_PATH"
echo "  Installed successfully"

# 4. 启动应用
echo ""
echo "[4/5] Starting app..."
adb $ADB_DEVICE shell am start -n "$PACKAGE/$MAIN_ACTIVITY"
echo "  App started"

# 5. 收集初始日志
echo ""
echo "[5/5] Collecting initial logs (5 seconds)..."
adb $ADB_DEVICE logcat -c
sleep 5
adb $ADB_DEVICE logcat -d -s "MainActivity:*" "GameEngineManager:*" "FloatingWindow:*" "DiagnosticTool:*" "GestureService:*" "ScreenCapture:*" | head -50

echo ""
echo "============================================"
echo "Deployment complete!"
echo ""
echo "Useful commands:"
echo "  adb $ADB_DEVICE logcat -s 'MapleAuto:*'    # Filter app logs"
echo "  adb $ADB_DEVICE logcat -s 'DiagnosticTool'  # Diagnostic report"
echo "  ./collect_logs.sh                            # Full log collection"
echo "============================================"
