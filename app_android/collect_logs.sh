#!/bin/bash
# MapleAuto - 日志收集脚本
# 用法: ./collect_logs.sh [device_id] [duration_seconds]

DEVICE_ID="${1:-}"
DURATION="${2:-30}"
ADB_DEVICE=""
if [ -n "$DEVICE_ID" ]; then
    ADB_DEVICE="-s $DEVICE_ID"
fi

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
LOG_DIR="./logs"
mkdir -p "$LOG_DIR"

echo "============================================"
echo "MapleAuto - Log Collection"
echo "Duration: ${DURATION}s"
echo "============================================"

# 设备信息
echo ""
echo "Collecting device info..."
adb $ADB_DEVICE shell getprop ro.product.model > "$LOG_DIR/device_${TIMESTAMP}.txt"
adb $ADB_DEVICE shell getprop ro.build.version.release >> "$LOG_DIR/device_${TIMESTAMP}.txt"
adb $ADB_DEVICE shell wm size >> "$LOG_DIR/device_${TIMESTAMP}.txt"
adb $ADB_DEVICE shell wm density >> "$LOG_DIR/device_${TIMESTAMP}.txt"
echo "  Saved: $LOG_DIR/device_${TIMESTAMP}.txt"

# 清除旧日志
adb $ADB_DEVICE logcat -c

echo ""
echo "Collecting logs for ${DURATION} seconds..."
echo "  Press Ctrl+C to stop early"

# 收集应用日志
timeout "$DURATION" adb $ADB_DEVICE logcat -v time \
    "MainActivity:V" \
    "GameEngineManager:V" \
    "FloatingWindow:V" \
    "DiagnosticTool:V" \
    "GestureService:V" \
    "ScreenCapture:V" \
    "ConfigManager:V" \
    "python.stdout:V" \
    "python.stderr:V" \
    "*:S" \
    > "$LOG_DIR/app_${TIMESTAMP}.log" 2>&1 || true

# 收集完整日志（用于崩溃分析）
adb $ADB_DEVICE logcat -d > "$LOG_DIR/full_${TIMESTAMP}.log" 2>&1

echo ""
echo "Logs saved:"
echo "  App log:    $LOG_DIR/app_${TIMESTAMP}.log"
echo "  Full log:   $LOG_DIR/full_${TIMESTAMP}.log"
echo "  Device info: $LOG_DIR/device_${TIMESTAMP}.txt"

# 统计
APP_LINES=$(wc -l < "$LOG_DIR/app_${TIMESTAMP}.log" 2>/dev/null || echo "0")
echo ""
echo "App log lines: $APP_LINES"

# 检查错误
ERROR_COUNT=$(grep -c -i "error\|exception\|crash" "$LOG_DIR/app_${TIMESTAMP}.log" 2>/dev/null || echo "0")
if [ "$ERROR_COUNT" -gt 0 ]; then
    echo "WARNING: Found $ERROR_COUNT error/exception lines!"
    echo ""
    echo "Errors:"
    grep -i "error\|exception\|crash" "$LOG_DIR/app_${TIMESTAMP}.log" | head -20
fi

echo ""
echo "============================================"
echo "Done!"
echo "============================================"
