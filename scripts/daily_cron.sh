#!/bin/bash
# scripts/daily_cron.sh
# 定时日常任务执行器
# 用法: crontab 中配置: 30 8 * * * /Users/xuzhengxin/Code/maple_auto/scripts/daily_cron.sh

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
DEVICE_ID="ZY22LJC9ST"
GAME_PACKAGE="com.nexon.maplem"
LOG_FILE="${PROJECT_DIR}/logs/cron_$(date +%Y%m%d_%H%M%S).log"

# 确保日志目录存在
mkdir -p "${PROJECT_DIR}/logs"

echo "=== Daily Cron Start: $(date) ===" | tee -a "$LOG_FILE"

# 1. 前置检查：设备连接
if ! adb devices 2>/dev/null | grep -q "$DEVICE_ID"; then
    echo "ERROR: 设备 $DEVICE_ID 未连接" | tee -a "$LOG_FILE"
    exit 1
fi
echo "设备已连接: $DEVICE_ID" | tee -a "$LOG_FILE"

# 2. 唤醒设备
adb -s "$DEVICE_ID" shell input keyevent KEYCODE_WAKEUP
sleep 2

# 3. 解锁屏幕（向上滑动）
adb -s "$DEVICE_ID" shell input swipe 540 1800 540 800 300
sleep 1

# 4. 确认游戏在前台
CURRENT=$(adb -s "$DEVICE_ID" shell dumpsys activity activities 2>/dev/null | grep "topResumedActivity" || true)
if [[ "$CURRENT" != *"$GAME_PACKAGE"* ]]; then
    echo "游戏不在前台，正在启动..." | tee -a "$LOG_FILE"
    adb -s "$DEVICE_ID" shell am start -n "${GAME_PACKAGE}/.MainActivity"
    sleep 20  # 等待游戏加载
else
    echo "游戏已在前台" | tee -a "$LOG_FILE"
fi

# 5. 执行日常
cd "$PROJECT_DIR"
python3 tools/run_daily_all.py --verbose 2>&1 | tee -a "$LOG_FILE"
EXIT_CODE=${PIPESTATUS[0]}

# 6. 通知（如果配置了）
if [ -f "${PROJECT_DIR}/config/notify.yaml" ]; then
    python3 scripts/notify.py 2>&1 | tee -a "$LOG_FILE" || true
fi

echo "=== Daily Cron End: $(date), exit=$EXIT_CODE ===" | tee -a "$LOG_FILE"
exit $EXIT_CODE
