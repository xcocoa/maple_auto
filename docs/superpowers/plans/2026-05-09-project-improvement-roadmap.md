# Maple Auto 项目改进路线图 Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Systematically improve the Maple Auto project through 4 phases: cleanup, unified entry point with logging, robustness (Guardian + templates), and scheduled execution with notifications.

**Architecture:** The project uses a layered architecture: `core/` (ADB communication) → `engine/` (Player, SceneMatcher, TargetLocator) → `flows/` (YAML definitions) → `tools/` (CLI scripts). Improvements add a Guardian layer to the engine, a unified orchestrator script in tools/, and a cron wrapper in scripts/.

**Tech Stack:** Python 3, OpenCV (cv2), NumPy, PyYAML, PaddleOCR (optional), ADB, system crontab

---

## File Structure

### New Files
| File | Responsibility |
|------|---------------|
| `scripts/` (dir) | Utility/debug scripts moved from root |
| `scripts/legacy_tests/` (dir) | Old test scripts moved from root |
| `tools/run_daily_all.py` | Unified entry point: run all daily flows sequentially |
| `engine/run_logger.py` | JSON run-log writer and old-log cleaner |
| `engine/guardian.py` | Pre-step anomaly detection and recovery |
| `scripts/daily_cron.sh` | Cron wrapper: wake device, launch game, run daily |
| `scripts/notify.py` | Post-run notification sender (webhook) |
| `config/notify.yaml` | Notification channel configuration |

### Modified Files
| File | Changes |
|------|---------|
| `.gitignore` | Add `debug_screenshots/`, ensure `!templates/**/*.png` |
| `engine/player.py` | Integrate Guardian hook in `_try_step()` |
| `engine/player.py` | Support `target` + `x/y` fallback in `_resolve_target()` |
| `engine/flow_schema.py` | (No changes needed — `action_target` + `action_x/y` already coexist) |

---

## Task 1: Project Root Cleanup — Move PNGs and Scripts

**Files:**
- Modify: `.gitignore`
- Move: 33 root `*.png` → `debug_screenshots/` (gitignored)
- Move: `debug_*.py`, `validate_*.py`, `detect_*.py`, `get_position.py`, `extract_templates_from_scenes.py` → `scripts/`
- Move: `test_*.py` (root, non-pytest) → `scripts/legacy_tests/`
- Move: `run_test.sh` → `scripts/`
- Delete: `nohup.out`, `debug_output.log`, `e2e_test.log`

- [ ] **Step 1: Create target directories**

```bash
mkdir -p scripts/legacy_tests debug_screenshots
```

- [ ] **Step 2: Move PNG files to debug_screenshots**

```bash
mv compare_device_raw.png compare_device_screenshot.png compare_template_main_screen.png \
   current_check.png current_scaled.png current_screen.png current_screen2.png \
   current_screen3.png current_screen4.png current_screen5.png current_screenshot.png \
   debug_input.png grid_topright.png grid_x_button.png menu_open.png menu_panel.png \
   scaled_screen.png test_screenshot.png verify_after_close.png verify_close2.png \
   verify_close5.png verify_close6.png verify_close7.png verify_close8.png \
   verify_close9.png verify_current.png verify_e2e_after_reward.png \
   verify_e2e_after_use.png verify_menu.png verify_screenshot.png \
   verify_step0_initial.png "verify_step1_设置页面-点击铁匠铺.png" \
   "verify_step2_弹出菜单中选择星之力.png" \
   debug_screenshots/
```

- [ ] **Step 3: Move debug/utility scripts to scripts/**

```bash
mv debug_ocr.py debug_ocr_minimal.py detect_red_box.py \
   extract_templates_from_scenes.py get_position.py validate_scene_flow.py \
   run_test.sh \
   scripts/
```

- [ ] **Step 4: Move legacy test scripts to scripts/legacy_tests/**

```bash
mv test_daily_flow.py test_e2e.py test_e2e_ocr.py test_ocr.py \
   test_ocr_perf.py test_sign_in.py test_state_machine.py \
   test_verify_ocr_flow.py \
   scripts/legacy_tests/
```

- [ ] **Step 5: Delete temp files**

```bash
rm -f nohup.out debug_output.log e2e_test.log
```

- [ ] **Step 6: Update .gitignore**

Add the following block to `.gitignore` (after the existing `*.png` rules, replace them):

```gitignore
# 截图和调试文件（临时文件）
*.png
*.jpg
*.jpeg
# 保留模板资源
!templates/**/*.png
!templates/**/*.jpg

# 调试截图目录
debug_screenshots/
```

Ensure `nohup.out` and `*.log` entries already exist (they do).

- [ ] **Step 7: Verify root directory is clean**

```bash
ls *.png 2>/dev/null && echo "FAIL: PNGs still in root" || echo "PASS: no PNGs in root"
ls debug_*.py validate_*.py detect_*.py get_position.py 2>/dev/null && echo "FAIL" || echo "PASS"
```

Expected: Both print `PASS`.

- [ ] **Step 8: Commit**

```bash
git add -A
git commit -m "chore: 清理项目根目录，移动调试文件和截图到子目录"
```

---

## Task 2: Unified Daily Entry Point — `tools/run_daily_all.py`

**Files:**
- Create: `tools/run_daily_all.py`
- Test: manual run with `--help` and `--skip`

- [ ] **Step 1: Write the failing test (import check)**

Create `tests/test_run_daily_all.py`:

```python
"""Test the run_daily_all module can be imported and has correct flow list."""
import sys
import os
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))


def test_flow_list_complete():
    from tools.run_daily_all import DAILY_FLOWS
    assert len(DAILY_FLOWS) == 7
    assert all(f.endswith('.yaml') for f in DAILY_FLOWS)


def test_filter_skip():
    from tools.run_daily_all import filter_flows
    flows = filter_flows(skip=["gem_dungeon", "sky_island_hunt"], only=None)
    assert "flows/gem_dungeon.yaml" not in flows
    assert "flows/sky_island_hunt.yaml" not in flows
    assert len(flows) == 5


def test_filter_only():
    from tools.run_daily_all import filter_flows
    flows = filter_flows(skip=None, only=["daily_tasks", "collect_mail"])
    assert len(flows) == 2
    assert "flows/daily_tasks.yaml" in flows
    assert "flows/collect_mail.yaml" in flows
```

- [ ] **Step 2: Run test to verify it fails**

```bash
python3 -m pytest tests/test_run_daily_all.py -v
```

Expected: FAIL with `ModuleNotFoundError` or `ImportError`.

- [ ] **Step 3: Write `tools/run_daily_all.py`**

```python
#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
一键执行所有日常流程
用法:
  python3 tools/run_daily_all.py
  python3 tools/run_daily_all.py --skip gem_dungeon,sky_island_hunt
  python3 tools/run_daily_all.py --only daily_tasks,collect_mail
  python3 tools/run_daily_all.py --verbose
"""

import sys
import os
import time
import argparse
import logging
from typing import List, Optional

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from engine.flow_schema import load_flow
from engine.player import Player, PlayResult
from core.scaled_adb import ScaledADB
from core.adb import ADB

# 执行顺序（按游戏逻辑依赖排列）
DAILY_FLOWS = [
    "flows/daily_tasks.yaml",
    "flows/daily_sign_in.yaml",
    "flows/collect_mail.yaml",
    "flows/send_popularity.yaml",
    "flows/gem_dungeon.yaml",
    "flows/sky_island_hunt.yaml",
    "flows/starforce_enhance.yaml",
]


def filter_flows(skip: Optional[List[str]], only: Optional[List[str]]) -> List[str]:
    """根据 --skip 和 --only 参数过滤流程列表"""
    flows = DAILY_FLOWS[:]
    if only:
        flows = [f for f in flows if any(name in f for name in only)]
    elif skip:
        flows = [f for f in flows if not any(name in f for name in skip)]
    return flows


def reset_to_main_screen(device) -> None:
    """流程之间执行回到主界面的保障序列"""
    # 恢复挂机
    device.tap(465, 522)
    time.sleep(3.0)
    # 停止挂机（确保菜单可交互）
    device.tap(819, 542)
    time.sleep(2.0)


def run_single_flow(player: Player, flow_path: str, verbose: bool) -> dict:
    """运行单个流程，返回结果摘要字典"""
    flow = load_flow(flow_path)
    start = time.time()
    try:
        result = player.play(flow)
        duration = time.time() - start
        steps_pass = sum(1 for r in result.step_results if r.success)
        steps_skip = sum(1 for r in result.step_results if r.skipped)
        steps_fail = sum(1 for r in result.step_results if not r.success and not r.skipped)
        return {
            "flow": flow.name,
            "display_name": flow.display_name,
            "success": result.success,
            "duration": round(duration, 1),
            "steps_total": len(result.step_results),
            "steps_pass": steps_pass,
            "steps_skip": steps_skip,
            "steps_fail": steps_fail,
            "error": result.error or None,
        }
    except Exception as e:
        duration = time.time() - start
        return {
            "flow": os.path.basename(flow_path).replace('.yaml', ''),
            "display_name": flow_path,
            "success": False,
            "duration": round(duration, 1),
            "steps_total": 0,
            "steps_pass": 0,
            "steps_skip": 0,
            "steps_fail": 0,
            "error": str(e),
        }


def print_summary(results: List[dict], total_duration: float) -> None:
    """输出彩色汇总表格"""
    print(f"\n{'=' * 60}")
    print(f"{'流程':<20} {'状态':<8} {'耗时':>8} {'通过/跳过/失败':>16}")
    print(f"{'-' * 60}")
    for r in results:
        if r["success"]:
            status = "\033[32mPASS\033[0m"
        else:
            status = "\033[31mFAIL\033[0m"
        steps = f"{r['steps_pass']}/{r['steps_skip']}/{r['steps_fail']}"
        print(f"  {r['display_name']:<18} {status:<8} {r['duration']:>6.1f}s {steps:>14}")
    print(f"{'=' * 60}")
    passed = sum(1 for r in results if r["success"])
    print(f"总计: {passed}/{len(results)} 通过, 耗时 {total_duration:.1f}s")
    if passed == len(results):
        print("\033[32m全部成功!\033[0m")
    else:
        print(f"\033[31m{len(results) - passed} 个流程失败\033[0m")


def main():
    parser = argparse.ArgumentParser(description="一键执行所有日常流程")
    parser.add_argument("--device", "-d", default="ZY22LJC9ST", help="设备序列号")
    parser.add_argument("--skip", type=str, default=None,
                        help="跳过的流程名(逗号分隔): gem_dungeon,sky_island_hunt")
    parser.add_argument("--only", type=str, default=None,
                        help="只执行的流程名(逗号分隔): daily_tasks,collect_mail")
    parser.add_argument("--verbose", "-v", action="store_true")
    args = parser.parse_args()

    level = logging.DEBUG if args.verbose else logging.INFO
    logging.basicConfig(level=level, format="%(levelname)s - %(name)s - %(message)s")

    # 过滤流程
    skip_list = args.skip.split(",") if args.skip else None
    only_list = args.only.split(",") if args.only else None
    flows = filter_flows(skip=skip_list, only=only_list)

    print(f"\n=== 一键日常执行 ({len(flows)} 个流程) ===\n")
    for f in flows:
        print(f"  • {f}")
    print()

    # 连接设备
    adb = ADB(device_id=args.device)
    scaled = ScaledADB(adb, base_w=1280, base_h=0)
    img = scaled.screenshot(force_refresh=True)
    if img is None:
        print("ERROR: 无法获取设备截图，请检查连接")
        sys.exit(1)
    print(f"设备已连接: {args.device}, 基准分辨率: {img.shape[1]}x{img.shape[0]}")

    # 逐个执行
    player = Player(device=scaled, base_dir=".", step_max_retries=3)
    results = []
    total_start = time.time()

    for i, flow_path in enumerate(flows):
        print(f"\n--- [{i+1}/{len(flows)}] {flow_path} ---")
        result = run_single_flow(player, flow_path, args.verbose)
        results.append(result)

        if result["success"]:
            print(f"  \033[32m✓\033[0m 完成 ({result['duration']:.1f}s)")
        else:
            print(f"  \033[31m✗\033[0m 失败: {result['error']}")

        # 流程间重置（最后一个流程后不需要）
        if i < len(flows) - 1:
            reset_to_main_screen(scaled)

    total_duration = time.time() - total_start
    print_summary(results, total_duration)

    # 写入日志
    from engine.run_logger import write_run_log
    write_run_log(results, total_duration, args.device)

    # 返回码
    all_pass = all(r["success"] for r in results)
    sys.exit(0 if all_pass else 1)


if __name__ == "__main__":
    main()
```

- [ ] **Step 4: Run test to verify it passes**

```bash
python3 -m pytest tests/test_run_daily_all.py -v
```

Expected: 3 tests PASS.

- [ ] **Step 5: Commit**

```bash
git add tools/run_daily_all.py tests/test_run_daily_all.py
git commit -m "feat: 添加一键日常入口脚本 tools/run_daily_all.py"
```

---

## Task 3: Run Logger — `engine/run_logger.py`

**Files:**
- Create: `engine/run_logger.py`
- Create: `tests/test_run_logger.py`

- [ ] **Step 1: Write failing test**

Create `tests/test_run_logger.py`:

```python
"""Test run_logger writes and cleans JSON logs."""
import sys
import os
import json
import tempfile
import time
from datetime import datetime, timedelta

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))


def test_write_run_log_creates_json(tmp_path):
    from engine.run_logger import write_run_log
    results = [
        {
            "flow": "daily_tasks",
            "display_name": "每日日常",
            "success": True,
            "duration": 42.3,
            "steps_total": 9,
            "steps_pass": 8,
            "steps_skip": 1,
            "steps_fail": 0,
            "error": None,
        }
    ]
    log_path = write_run_log(results, 42.3, "ZY22LJC9ST", log_dir=str(tmp_path))
    assert os.path.exists(log_path)
    with open(log_path, 'r') as f:
        data = json.load(f)
    assert data["device"] == "ZY22LJC9ST"
    assert data["overall_success"] is True
    assert data["flows_run"] == 1
    assert data["flows_pass"] == 1
    assert data["flows_fail"] == 0
    assert len(data["results"]) == 1


def test_clean_old_logs(tmp_path):
    from engine.run_logger import clean_old_logs
    # Create a fake old log (31 days ago)
    old_name = "2026-04-08_080000.json"
    (tmp_path / old_name).write_text("{}")
    # Create a recent log
    recent_name = "2026-05-09_080000.json"
    (tmp_path / recent_name).write_text("{}")
    
    clean_old_logs(log_dir=str(tmp_path), max_age_days=30)
    
    assert not (tmp_path / old_name).exists()
    assert (tmp_path / recent_name).exists()
```

- [ ] **Step 2: Run test to verify it fails**

```bash
python3 -m pytest tests/test_run_logger.py -v
```

Expected: FAIL with `ModuleNotFoundError`.

- [ ] **Step 3: Write `engine/run_logger.py`**

```python
# engine/run_logger.py
# -*- coding: utf-8 -*-
"""
执行日志持久化
将每次运行结果写入 logs/ 目录的 JSON 文件，并自动清理过期日志。
"""

import os
import json
import logging
from datetime import datetime, timedelta
from typing import List, Optional

logger = logging.getLogger('Engine.RunLogger')

DEFAULT_LOG_DIR = "logs"


def write_run_log(results: List[dict], total_duration: float, device: str,
                  log_dir: Optional[str] = None) -> str:
    """
    写入运行日志 JSON 文件。
    
    Returns:
        写入的日志文件绝对路径
    """
    if log_dir is None:
        log_dir = DEFAULT_LOG_DIR

    os.makedirs(log_dir, exist_ok=True)

    # 先清理旧日志
    clean_old_logs(log_dir=log_dir)

    now = datetime.now()
    filename = now.strftime("%Y-%m-%d_%H%M%S") + ".json"
    filepath = os.path.join(log_dir, filename)

    flows_pass = sum(1 for r in results if r["success"])
    flows_fail = len(results) - flows_pass

    log_data = {
        "run_at": now.isoformat(timespec="seconds"),
        "device": device,
        "total_duration": round(total_duration, 1),
        "overall_success": flows_fail == 0,
        "flows_run": len(results),
        "flows_pass": flows_pass,
        "flows_fail": flows_fail,
        "results": results,
    }

    with open(filepath, 'w', encoding='utf-8') as f:
        json.dump(log_data, f, ensure_ascii=False, indent=2)

    logger.info(f"运行日志已保存: {filepath}")
    return filepath


def clean_old_logs(log_dir: Optional[str] = None, max_age_days: int = 30) -> int:
    """
    删除超过 max_age_days 天的日志文件。
    
    Returns:
        删除的文件数量
    """
    if log_dir is None:
        log_dir = DEFAULT_LOG_DIR

    if not os.path.isdir(log_dir):
        return 0

    cutoff = datetime.now() - timedelta(days=max_age_days)
    deleted = 0

    for filename in os.listdir(log_dir):
        if not filename.endswith('.json'):
            continue
        # 从文件名解析日期: YYYY-MM-DD_HHMMSS.json
        try:
            date_str = filename.replace('.json', '')
            file_date = datetime.strptime(date_str, "%Y-%m-%d_%H%M%S")
        except ValueError:
            continue

        if file_date < cutoff:
            filepath = os.path.join(log_dir, filename)
            os.remove(filepath)
            logger.debug(f"删除过期日志: {filename}")
            deleted += 1

    return deleted
```

- [ ] **Step 4: Run test to verify it passes**

```bash
python3 -m pytest tests/test_run_logger.py -v
```

Expected: 2 tests PASS.

- [ ] **Step 5: Commit**

```bash
git add engine/run_logger.py tests/test_run_logger.py
git commit -m "feat: 添加运行日志模块 engine/run_logger.py"
```

---

## Task 4: Guardian — Anomaly Detection and Recovery

**Files:**
- Create: `engine/guardian.py`
- Create: `tests/test_guardian.py`
- Modify: `engine/player.py` (integrate Guardian)

- [ ] **Step 1: Write failing test for Guardian**

Create `tests/test_guardian.py`:

```python
"""Test Guardian anomaly detection."""
import sys
import os
import numpy as np

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))


class FakeDevice:
    """Mock device for testing Guardian."""
    def __init__(self, screenshots=None):
        self._screenshots = screenshots or []
        self._index = 0
        self.taps = []
        self.keys = []

    def screenshot(self, force_refresh=False):
        if self._index < len(self._screenshots):
            img = self._screenshots[self._index]
            self._index += 1
            return img
        return np.zeros((575, 1280, 3), dtype=np.uint8)

    def tap(self, x, y):
        self.taps.append((x, y))

    def run(self, cmd):
        self.keys.append(cmd)


def test_guardian_no_anomaly():
    """Normal screen should return 'ok'."""
    from engine.guardian import Guardian
    device = FakeDevice([np.random.randint(0, 255, (575, 1280, 3), dtype=np.uint8)])
    guardian = Guardian(device, templates_dir="templates")
    result = guardian.check_and_handle()
    assert result == "ok"


def test_guardian_stuck_detection():
    """Three identical frames should trigger stuck handling."""
    from engine.guardian import Guardian
    # Same frame repeated 4 times (1 current + 3 history)
    frame = np.ones((575, 1280, 3), dtype=np.uint8) * 128
    device = FakeDevice([frame, frame])
    guardian = Guardian(device, templates_dir="templates")
    # Feed history
    guardian._frame_history = [frame.copy(), frame.copy(), frame.copy()]
    result = guardian.check_and_handle()
    assert result == "stuck_handled"
    # Should have pressed back
    assert len(device.keys) > 0
```

- [ ] **Step 2: Run test to verify it fails**

```bash
python3 -m pytest tests/test_guardian.py -v
```

Expected: FAIL with `ModuleNotFoundError`.

- [ ] **Step 3: Write `engine/guardian.py`**

```python
# engine/guardian.py
# -*- coding: utf-8 -*-
"""
全局异常处理器
在每步执行前检查当前画面是否匹配已知异常场景，自动处理。
"""

import os
import cv2
import time
import logging
import numpy as np
from typing import Optional, List, Dict
from collections import deque

logger = logging.getLogger('Engine.Guardian')


class Guardian:
    """
    异常场景检测与恢复。
    
    check_and_handle() 返回值:
      - "ok": 无异常，正常继续
      - "popup_closed": 检测到弹窗并已关闭
      - "reconnected": 检测到断线并已重连
      - "stuck_handled": 检测到画面卡死并已处理
      - "abort_flow": 无法恢复，应终止当前流程
    """

    # 已知弹窗模板和对应关闭坐标 (基准坐标 1280x575)
    POPUP_HANDLERS = {
        "popups/ad_popup.png": (1122, 32),        # 广告弹窗 → 点击右上角X
        "popups/disconnect.png": (640, 400),      # 断线提示 → 点击重连
        "popups/stamina_empty.png": (640, 400),   # 体力不足 → 点击确认
    }

    def __init__(self, device, templates_dir: str = "templates",
                 stuck_threshold: int = 3, stuck_mse: float = 0.001):
        self._device = device
        self._templates_dir = templates_dir
        self._stuck_threshold = stuck_threshold
        self._stuck_mse = stuck_mse
        self._frame_history: List[np.ndarray] = []
        self._template_cache: Dict[str, Optional[np.ndarray]] = {}
        self._max_history = stuck_threshold + 1

    def _load_template(self, rel_path: str) -> Optional[np.ndarray]:
        """加载模板图片（带缓存）"""
        if rel_path in self._template_cache:
            return self._template_cache[rel_path]
        full_path = os.path.join(self._templates_dir, rel_path)
        if not os.path.exists(full_path):
            self._template_cache[rel_path] = None
            return None
        img = cv2.imread(full_path)
        self._template_cache[rel_path] = img
        return img

    def _match_template(self, screenshot: np.ndarray, template: np.ndarray,
                        threshold: float = 0.7) -> bool:
        """检查截图是否包含指定模板"""
        th, tw = template.shape[:2]
        sh, sw = screenshot.shape[:2]
        if tw > sw or th > sh:
            return False
        if template.std(axis=(0, 1)).max() < 1e-6:
            return False
        result = cv2.matchTemplate(screenshot, template, cv2.TM_CCOEFF_NORMED)
        _, max_val, _, _ = cv2.minMaxLoc(result)
        return max_val >= threshold

    def _check_popups(self, screenshot: np.ndarray) -> Optional[str]:
        """检查是否有已知弹窗，如有则处理并返回结果"""
        for template_rel, close_pos in self.POPUP_HANDLERS.items():
            template = self._load_template(template_rel)
            if template is None:
                continue
            if self._match_template(screenshot, template):
                logger.warning(f"Guardian: 检测到弹窗 {template_rel}，执行关闭")
                self._device.tap(close_pos[0], close_pos[1])
                time.sleep(1.5)

                if "disconnect" in template_rel:
                    # 断线需要更长等待
                    time.sleep(10.0)
                    return "reconnected"
                return "popup_closed"
        return None

    def _check_stuck(self, screenshot: np.ndarray) -> bool:
        """检查画面是否卡死（连续N帧几乎相同）"""
        if len(self._frame_history) < self._stuck_threshold:
            return False

        for hist_frame in self._frame_history[-self._stuck_threshold:]:
            if hist_frame.shape != screenshot.shape:
                return False
            mse = np.mean((hist_frame.astype(float) - screenshot.astype(float)) ** 2) / (255.0 ** 2)
            if mse > self._stuck_mse:
                return False
        return True

    def _handle_stuck(self) -> str:
        """处理画面卡死"""
        logger.warning("Guardian: 检测到画面卡死，尝试恢复")
        # 尝试按 back 退出
        if hasattr(self._device, 'run'):
            self._device.run('shell input keyevent KEYCODE_BACK')
        elif hasattr(self._device, '_adb'):
            self._device._adb.run('shell input keyevent KEYCODE_BACK')
        time.sleep(2.0)

        # 清除帧历史，避免重复触发
        self._frame_history.clear()
        return "stuck_handled"

    def check_and_handle(self) -> str:
        """
        主入口：截图 → 检查异常 → 自动处理。
        
        Returns:
            "ok" | "popup_closed" | "reconnected" | "stuck_handled" | "abort_flow"
        """
        screenshot = self._device.screenshot(force_refresh=True)
        if screenshot is None:
            return "ok"  # 截图失败不在这里处理

        # 更新帧历史
        self._frame_history.append(screenshot.copy())
        if len(self._frame_history) > self._max_history:
            self._frame_history.pop(0)

        # 1. 检查已知弹窗
        popup_result = self._check_popups(screenshot)
        if popup_result:
            return popup_result

        # 2. 检查画面卡死
        if self._check_stuck(screenshot):
            return self._handle_stuck()

        return "ok"

    def reset(self) -> None:
        """重置状态（新流程开始时调用）"""
        self._frame_history.clear()
```

- [ ] **Step 4: Run test to verify it passes**

```bash
python3 -m pytest tests/test_guardian.py -v
```

Expected: 2 tests PASS.

- [ ] **Step 5: Commit**

```bash
git add engine/guardian.py tests/test_guardian.py
git commit -m "feat: 添加 Guardian 全局异常处理器"
```

---

## Task 5: Integrate Guardian into Player

**Files:**
- Modify: `engine/player.py`
- Create: `tests/test_player_guardian.py`

- [ ] **Step 1: Write failing test for Guardian integration**

Create `tests/test_player_guardian.py`:

```python
"""Test Player integrates Guardian."""
import sys
import os
import numpy as np

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from engine.flow_schema import Flow, Step
from engine.player import Player, PlayResult


class MockDevice:
    """Mock device that returns random screenshots."""
    def __init__(self):
        self._frame = np.random.randint(0, 255, (575, 1280, 3), dtype=np.uint8)
        self.taps = []

    def screenshot(self, force_refresh=False):
        # Return slightly different frame each time to avoid stuck detection
        noise = np.random.randint(0, 10, self._frame.shape, dtype=np.uint8)
        return self._frame + noise

    def tap(self, x, y):
        self.taps.append((x, y))

    def run(self, cmd):
        pass


def test_player_has_guardian():
    """Player should accept guardian parameter."""
    from engine.guardian import Guardian
    device = MockDevice()
    guardian = Guardian(device, templates_dir="templates")
    player = Player(device=device, base_dir=".", guardian=guardian)
    assert player._guardian is guardian


def test_player_without_guardian():
    """Player without guardian should still work."""
    device = MockDevice()
    flow = Flow(name="test", display_name="Test", timeout=10, steps=[
        Step(id="tap1", description="test tap", action_type="tap",
             action_x=100, action_y=200, on_fail="skip", verify_change=False)
    ])
    player = Player(device=device, base_dir=".")
    result = player.play(flow)
    assert isinstance(result, PlayResult)
```

- [ ] **Step 2: Run test to verify it fails**

```bash
python3 -m pytest tests/test_player_guardian.py -v
```

Expected: FAIL — `Player.__init__()` does not accept `guardian` kwarg.

- [ ] **Step 3: Modify `engine/player.py` to integrate Guardian**

Add `guardian` parameter to `Player.__init__()`. Change line 48:

**Before (line 48):**
```python
    def __init__(self, device, base_dir: str = ".", step_max_retries: int = 3):
```

**After:**
```python
    def __init__(self, device, base_dir: str = ".", step_max_retries: int = 3, guardian=None):
```

Add after line 55 (`self._current_step_text = ""`):

```python
        self._guardian = guardian
```

Add at the start of `_try_step()`, after `result = StepResult(step_id=step.id, success=False)` (line 116):

```python
        # 0. Guardian 异常检查
        if self._guardian:
            guardian_result = self._guardian.check_and_handle()
            if guardian_result == "abort_flow":
                result.error = "guardian_abort"
                return result
```

- [ ] **Step 4: Run test to verify it passes**

```bash
python3 -m pytest tests/test_player_guardian.py -v
```

Expected: 2 tests PASS.

- [ ] **Step 5: Run full test suite to verify no regressions**

```bash
python3 -m pytest tests/ -v
```

Expected: All existing tests pass.

- [ ] **Step 6: Commit**

```bash
git add engine/player.py tests/test_player_guardian.py
git commit -m "feat: Player 集成 Guardian 异常处理器"
```

---

## Task 6: Mixed Targeting — Template + Coordinate Fallback

**Files:**
- Modify: `engine/player.py` (update `_resolve_target`)
- Create: `tests/test_mixed_targeting.py`

- [ ] **Step 1: Write failing test**

Create `tests/test_mixed_targeting.py`:

```python
"""Test mixed targeting: template first, coordinate fallback."""
import sys
import os
import numpy as np

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from engine.flow_schema import Flow, Step, Target
from engine.player import Player


class MockDevice:
    def __init__(self):
        self.taps = []

    def screenshot(self, force_refresh=False):
        return np.random.randint(0, 255, (575, 1280, 3), dtype=np.uint8)

    def tap(self, x, y):
        self.taps.append((x, y))

    def run(self, cmd):
        pass


def test_fallback_to_coordinates_when_target_template_missing():
    """When target is defined but template file doesn't exist, fall back to x/y."""
    device = MockDevice()
    flow = Flow(
        name="test", display_name="Test", timeout=10,
        steps=[
            Step(
                id="tap1", description="test",
                action_type="tap",
                action_target="some_button",
                action_x=500, action_y=300,
                on_fail="skip", verify_change=False,
            )
        ],
        targets={
            "some_button": Target(
                name="some_button",
                template="nonexistent.png",
                fallback_pos=(500, 300),
                threshold=0.75,
            )
        },
    )
    player = Player(device=device, base_dir=".")
    result = player.play(flow)
    # Should succeed using fallback coordinates
    assert result.step_results[0].success
    assert result.step_results[0].target_found_by == "fallback"


def test_fixed_coordinates_still_work():
    """Steps with only x/y (no target) still work as before."""
    device = MockDevice()
    flow = Flow(
        name="test", display_name="Test", timeout=10,
        steps=[
            Step(
                id="tap1", description="test",
                action_type="tap",
                action_x=100, action_y=200,
                on_fail="skip", verify_change=False,
            )
        ],
    )
    player = Player(device=device, base_dir=".")
    result = player.play(flow)
    assert result.step_results[0].success
    assert result.step_results[0].target_found_by == "fixed"
```

- [ ] **Step 2: Run test to verify current behavior**

```bash
python3 -m pytest tests/test_mixed_targeting.py -v
```

The `test_fixed_coordinates_still_work` should pass. The `test_fallback_to_coordinates_when_target_template_missing` may fail if `_resolve_target` doesn't try both target lookup AND x/y fallback.

- [ ] **Step 3: Update `_resolve_target` in `engine/player.py`**

Replace the current `_resolve_target` method (lines 211-217):

**Before:**
```python
    def _resolve_target(self, screenshot, step: Step, flow: Flow) -> Optional[LocateResult]:
        if step.action_x is not None and step.action_y is not None:
            return self._target_locator.locate_fixed(step.action_x, step.action_y)
        if step.action_target and step.action_target in flow.targets:
            target_def = flow.targets[step.action_target]
            return self._target_locator.locate(screenshot, target_def)
        return None
```

**After:**
```python
    def _resolve_target(self, screenshot, step: Step, flow: Flow) -> Optional[LocateResult]:
        # 优先尝试模板匹配（如果定义了 target）
        if step.action_target and step.action_target in flow.targets:
            target_def = flow.targets[step.action_target]
            result = self._target_locator.locate(screenshot, target_def)
            if result is not None:
                return result
            # 模板匹配失败，尝试使用固定坐标作为 fallback
            if step.action_x is not None and step.action_y is not None:
                logger.debug(f"模板匹配失败，使用固定坐标 ({step.action_x}, {step.action_y})")
                return self._target_locator.locate_fixed(step.action_x, step.action_y)
            return None

        # 无 target 定义，使用固定坐标
        if step.action_x is not None and step.action_y is not None:
            return self._target_locator.locate_fixed(step.action_x, step.action_y)
        return None
```

- [ ] **Step 4: Run test to verify it passes**

```bash
python3 -m pytest tests/test_mixed_targeting.py -v
```

Expected: 2 tests PASS.

- [ ] **Step 5: Run full test suite**

```bash
python3 -m pytest tests/ -v
```

Expected: All pass.

- [ ] **Step 6: Commit**

```bash
git add engine/player.py tests/test_mixed_targeting.py
git commit -m "feat: 混合定位升级 — 模板优先, 坐标作为 fallback"
```

---

## Task 7: Cron Wrapper Script

**Files:**
- Create: `scripts/daily_cron.sh`

- [ ] **Step 1: Write `scripts/daily_cron.sh`**

```bash
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
```

- [ ] **Step 2: Make executable**

```bash
chmod +x scripts/daily_cron.sh
```

- [ ] **Step 3: Verify syntax**

```bash
bash -n scripts/daily_cron.sh && echo "PASS: no syntax errors" || echo "FAIL"
```

Expected: `PASS: no syntax errors`

- [ ] **Step 4: Commit**

```bash
git add scripts/daily_cron.sh
git commit -m "feat: 添加 cron 定时执行 wrapper 脚本"
```

---

## Task 8: Notification Script — `scripts/notify.py`

**Files:**
- Create: `scripts/notify.py`
- Create: `config/notify.yaml`
- Create: `tests/test_notify.py`

- [ ] **Step 1: Write failing test**

Create `tests/test_notify.py`:

```python
"""Test notification module."""
import sys
import os
import json
import tempfile

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))


def test_build_message_success(tmp_path):
    from scripts.notify import build_message
    log_data = {
        "run_at": "2026-05-09T08:30:00",
        "device": "ZY22LJC9ST",
        "total_duration": 310.5,
        "overall_success": True,
        "flows_run": 7,
        "flows_pass": 7,
        "flows_fail": 0,
        "results": [],
    }
    msg = build_message(log_data)
    assert "全部成功" in msg or "7/7" in msg


def test_build_message_failure(tmp_path):
    from scripts.notify import build_message
    log_data = {
        "run_at": "2026-05-09T08:30:00",
        "device": "ZY22LJC9ST",
        "total_duration": 310.5,
        "overall_success": False,
        "flows_run": 7,
        "flows_pass": 5,
        "flows_fail": 2,
        "results": [
            {"flow": "gem_dungeon", "display_name": "宝石副本", "success": False, "error": "timeout"}
        ],
    }
    msg = build_message(log_data)
    assert "失败" in msg or "5/7" in msg


def test_find_latest_log(tmp_path):
    from scripts.notify import find_latest_log
    # Create two logs
    (tmp_path / "2026-05-08_080000.json").write_text("{}")
    (tmp_path / "2026-05-09_083000.json").write_text("{}")
    latest = find_latest_log(str(tmp_path))
    assert "2026-05-09" in latest
```

- [ ] **Step 2: Run test to verify it fails**

```bash
python3 -m pytest tests/test_notify.py -v
```

Expected: FAIL with `ModuleNotFoundError`.

- [ ] **Step 3: Write `scripts/notify.py`**

```python
#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
执行结果通知
读取最新日志，通过 webhook 发送结果摘要。
支持: 钉钉、飞书、企业微信
"""

import os
import sys
import json
import glob
import yaml
import logging
import urllib.request
import urllib.error
from typing import Optional

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

logger = logging.getLogger('Notify')

DEFAULT_CONFIG_PATH = "config/notify.yaml"
DEFAULT_LOG_DIR = "logs"


def find_latest_log(log_dir: str = DEFAULT_LOG_DIR) -> Optional[str]:
    """找到最新的运行日志文件"""
    pattern = os.path.join(log_dir, "*.json")
    files = sorted(glob.glob(pattern))
    # 排除 cron_ 前缀的原始日志
    json_files = [f for f in files if not os.path.basename(f).startswith("cron_")]
    if not json_files:
        return None
    return json_files[-1]


def build_message(log_data: dict) -> str:
    """构建通知消息文本"""
    success = log_data.get("overall_success", False)
    flows_run = log_data.get("flows_run", 0)
    flows_pass = log_data.get("flows_pass", 0)
    flows_fail = log_data.get("flows_fail", 0)
    duration = log_data.get("total_duration", 0)
    run_at = log_data.get("run_at", "")

    if success:
        header = f"✅ 日常任务全部成功 ({flows_pass}/{flows_run})"
    else:
        header = f"❌ 日常任务有失败 ({flows_pass}/{flows_run} 通过, {flows_fail} 失败)"

    lines = [
        header,
        f"时间: {run_at}",
        f"耗时: {duration:.1f}s",
        "",
    ]

    # 列出失败的流程
    if not success:
        lines.append("失败流程:")
        for r in log_data.get("results", []):
            if not r.get("success"):
                lines.append(f"  • {r.get('display_name', r.get('flow'))} - {r.get('error', '未知错误')}")

    return "\n".join(lines)


def send_dingtalk(webhook_url: str, message: str) -> bool:
    """发送钉钉机器人消息"""
    payload = json.dumps({
        "msgtype": "text",
        "text": {"content": message}
    }).encode('utf-8')

    req = urllib.request.Request(
        webhook_url,
        data=payload,
        headers={"Content-Type": "application/json"}
    )
    try:
        with urllib.request.urlopen(req, timeout=10) as resp:
            return resp.status == 200
    except urllib.error.URLError as e:
        logger.error(f"钉钉通知发送失败: {e}")
        return False


def send_feishu(webhook_url: str, message: str) -> bool:
    """发送飞书机器人消息"""
    payload = json.dumps({
        "msg_type": "text",
        "content": {"text": message}
    }).encode('utf-8')

    req = urllib.request.Request(
        webhook_url,
        data=payload,
        headers={"Content-Type": "application/json"}
    )
    try:
        with urllib.request.urlopen(req, timeout=10) as resp:
            return resp.status == 200
    except urllib.error.URLError as e:
        logger.error(f"飞书通知发送失败: {e}")
        return False


def send_wecom(webhook_url: str, message: str) -> bool:
    """发送企业微信机器人消息"""
    payload = json.dumps({
        "msgtype": "text",
        "text": {"content": message}
    }).encode('utf-8')

    req = urllib.request.Request(
        webhook_url,
        data=payload,
        headers={"Content-Type": "application/json"}
    )
    try:
        with urllib.request.urlopen(req, timeout=10) as resp:
            return resp.status == 200
    except urllib.error.URLError as e:
        logger.error(f"企业微信通知发送失败: {e}")
        return False


def main():
    logging.basicConfig(level=logging.INFO, format="%(levelname)s - %(message)s")

    # 加载配置
    config_path = DEFAULT_CONFIG_PATH
    if not os.path.exists(config_path):
        logger.info("未找到通知配置文件，跳过通知")
        return

    with open(config_path, 'r') as f:
        config = yaml.safe_load(f)

    if not config.get("enabled", False):
        logger.info("通知已禁用")
        return

    # 找到最新日志
    log_path = find_latest_log()
    if log_path is None:
        logger.warning("未找到运行日志")
        return

    with open(log_path, 'r') as f:
        log_data = json.load(f)

    # 根据配置决定是否发送
    success = log_data.get("overall_success", False)
    on_success = config.get("on_success", "brief")
    on_failure = config.get("on_failure", "full")

    if success and on_success == "silent":
        logger.info("成功时静默，不发送通知")
        return

    # 构建消息
    message = build_message(log_data)
    logger.info(f"通知内容:\n{message}")

    # 发送
    channel = config.get("channel", "none")
    webhook_url = config.get("webhook_url", "")

    if not webhook_url or channel == "none":
        logger.info("未配置 webhook，仅打印消息")
        return

    senders = {
        "dingtalk": send_dingtalk,
        "feishu": send_feishu,
        "wecom": send_wecom,
    }
    sender = senders.get(channel)
    if sender:
        ok = sender(webhook_url, message)
        if ok:
            logger.info(f"通知已发送 ({channel})")
        else:
            logger.error(f"通知发送失败 ({channel})")
    else:
        logger.warning(f"不支持的通知渠道: {channel}")


if __name__ == "__main__":
    main()
```

- [ ] **Step 4: Create `config/notify.yaml`**

```yaml
# 通知配置
# 将 webhook_url 替换为你的实际机器人地址
enabled: false
channel: dingtalk  # dingtalk | feishu | wecom | none
webhook_url: "https://oapi.dingtalk.com/robot/send?access_token=YOUR_TOKEN_HERE"
on_success: brief   # brief | full | silent
on_failure: full     # brief | full
```

- [ ] **Step 5: Run test to verify it passes**

```bash
python3 -m pytest tests/test_notify.py -v
```

Expected: 3 tests PASS.

- [ ] **Step 6: Commit**

```bash
git add scripts/notify.py config/notify.yaml tests/test_notify.py
git commit -m "feat: 添加执行结果通知模块 (钉钉/飞书/企业微信)"
```

---

## Task 9: Template Directory Structure

**Files:**
- Create: `templates/scenes/.gitkeep`
- Create: `templates/popups/.gitkeep`
- Create: `templates/buttons/.gitkeep`

- [ ] **Step 1: Create template directory structure**

```bash
mkdir -p templates/scenes templates/popups templates/buttons
```

- [ ] **Step 2: Add .gitkeep files so empty dirs are tracked**

```bash
touch templates/scenes/.gitkeep templates/popups/.gitkeep templates/buttons/.gitkeep
```

- [ ] **Step 3: Verify .gitignore allows template PNGs**

Check that `.gitignore` has `!templates/**/*.png`. It should already be there from Task 1.

```bash
grep "templates" .gitignore
```

Expected: Shows `!templates/**/*.png`.

- [ ] **Step 4: Commit**

```bash
git add templates/
git commit -m "chore: 添加模板目录结构 templates/{scenes,popups,buttons}"
```

---

## Task 10: Update Guardian Integration in `run_daily_all.py`

**Files:**
- Modify: `tools/run_daily_all.py`

- [ ] **Step 1: Update `run_daily_all.py` to create Guardian and pass to Player**

In `tools/run_daily_all.py`, after the line `player = Player(device=scaled, base_dir=".", step_max_retries=3)`, change it to:

**Before:**
```python
    # 逐个执行
    player = Player(device=scaled, base_dir=".", step_max_retries=3)
```

**After:**
```python
    # 创建 Guardian（如果模板目录存在）
    from engine.guardian import Guardian
    guardian = None
    if os.path.isdir("templates"):
        guardian = Guardian(device=scaled, templates_dir="templates")

    # 逐个执行
    player = Player(device=scaled, base_dir=".", step_max_retries=3, guardian=guardian)
```

Also add Guardian reset between flows. In the loop body, after calling `reset_to_main_screen`, add:

```python
        # 重置 Guardian 状态
        if guardian:
            guardian.reset()
```

- [ ] **Step 2: Verify the script still works (import test)**

```bash
python3 -c "from tools.run_daily_all import DAILY_FLOWS, filter_flows; print('OK')"
```

Expected: `OK`

- [ ] **Step 3: Run all tests**

```bash
python3 -m pytest tests/ -v
```

Expected: All pass.

- [ ] **Step 4: Commit**

```bash
git add tools/run_daily_all.py
git commit -m "feat: run_daily_all 集成 Guardian 异常处理"
```

---

## Task 11: Update CLAUDE.md with New Commands

**Files:**
- Modify: `CLAUDE.md`

- [ ] **Step 1: Update the 运行命令 section in CLAUDE.md**

Add these entries to the `运行命令` section:

```markdown
# 一键执行所有日常
python3 tools/run_daily_all.py -v

# 跳过指定流程
python3 tools/run_daily_all.py --skip gem_dungeon,sky_island_hunt

# 只执行指定流程
python3 tools/run_daily_all.py --only daily_tasks,collect_mail

# 定时执行 (crontab)
# 30 8 * * * /Users/xuzhengxin/Code/maple_auto/scripts/daily_cron.sh
```

- [ ] **Step 2: Update 已验证流程 table**

Add template directory info and update the 待完成 section to reflect progress.

- [ ] **Step 3: Commit**

```bash
git add CLAUDE.md
git commit -m "docs: 更新 CLAUDE.md 运行命令和项目状态"
```

---

## Task 12: Final Integration Verification

**Files:** None (verification only)

- [ ] **Step 1: Run full test suite**

```bash
python3 -m pytest tests/ -v
```

Expected: All tests pass.

- [ ] **Step 2: Verify project root is clean**

```bash
ls *.png *.log nohup.out 2>/dev/null | wc -l
```

Expected: `0`

- [ ] **Step 3: Verify import chain works**

```bash
python3 -c "
from tools.run_daily_all import DAILY_FLOWS, filter_flows, run_single_flow
from engine.guardian import Guardian
from engine.run_logger import write_run_log, clean_old_logs
from scripts.notify import build_message, find_latest_log
print(f'All imports OK. {len(DAILY_FLOWS)} flows configured.')
"
```

Expected: `All imports OK. 7 flows configured.`

- [ ] **Step 4: Verify scripts are executable**

```bash
test -x scripts/daily_cron.sh && echo "PASS" || echo "FAIL"
```

Expected: `PASS`

- [ ] **Step 5: Final commit (if any uncommitted changes)**

```bash
git status
```

If clean: done. Otherwise commit remaining changes.

---

## Notes for Manual Steps (require real device)

These cannot be automated and must be done by the developer with the physical device connected:

1. **gem_dungeon.yaml coordinates** — Run `python3 tools/locate_tap.py --count 2` while navigating to the gem dungeon "立即前往" and "入场" buttons. Update `flows/gem_dungeon.yaml` lines 55-56 and 64-65 with recorded coordinates.

2. **sky_island_hunt.yaml verification** — Run `python3 tools/run_flow.py flows/sky_island_hunt.yaml -v` and check each step passes. Adjust delays if needed.

3. **Template capture** — For each scene in `templates/scenes/` and `templates/popups/`, capture the relevant game screen and crop the distinguishing region. Use `adb exec-out screencap -p > raw.png` + manual cropping or `tools/make_templates.py`.

4. **Crontab installation** — Run `crontab -e` and add:
   ```
   30 8 * * * /Users/xuzhengxin/Code/maple_auto/scripts/daily_cron.sh
   ```

5. **Notification setup** — Edit `config/notify.yaml`, set `enabled: true` and fill in your webhook URL.
