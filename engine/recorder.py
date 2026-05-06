# engine/recorder.py
# -*- coding: utf-8 -*-
"""
录制器
连接真机，监听用户操作，自动保存截图和生成 Flow YAML。
"""

import os
import re
import cv2
import time
import yaml
import logging
import threading
import subprocess
import numpy as np
from typing import List, Optional
from dataclasses import dataclass, field

logger = logging.getLogger('Engine.Recorder')


@dataclass
class RecordedAction:
    """录制的单个操作"""
    timestamp: float
    action_type: str  # tap | swipe | long_press
    x: int
    y: int
    x2: int = 0
    y2: int = 0
    screenshot_before: Optional[np.ndarray] = field(default=None, repr=False)
    screenshot_after: Optional[np.ndarray] = field(default=None, repr=False)


class Recorder:
    """录制器 — 捕获手动操作并生成 Flow YAML"""

    def __init__(self, adb, task_name: str, output_dir: str = "."):
        self._adb = adb
        self._task_name = task_name
        self._output_dir = output_dir
        self._actions: List[RecordedAction] = []
        self._running = False
        self._screenshot_thread: Optional[threading.Thread] = None
        self._event_thread: Optional[threading.Thread] = None
        self._current_screenshot: Optional[np.ndarray] = None
        self._screenshot_lock = threading.Lock()

    def start(self):
        """开始录制"""
        logger.info(f"开始录制任务: {self._task_name}")
        logger.info("请在设备上手动操作，完成后按 Ctrl+C 结束录制")
        self._running = True

        self._screenshot_thread = threading.Thread(target=self._screenshot_loop, daemon=True)
        self._screenshot_thread.start()

        self._event_thread = threading.Thread(target=self._event_loop, daemon=True)
        self._event_thread.start()

        try:
            while self._running:
                time.sleep(0.1)
        except KeyboardInterrupt:
            pass

        self.stop()

    def stop(self):
        """停止录制并保存结果"""
        self._running = False
        logger.info(f"录制结束，共捕获 {len(self._actions)} 个操作")
        if self._actions:
            self._save_results()

    def _screenshot_loop(self):
        """持续截图"""
        while self._running:
            img = self._adb.screenshot(force_refresh=True)
            if img is not None:
                with self._screenshot_lock:
                    self._current_screenshot = img.copy()
            time.sleep(0.5)

    def _event_loop(self):
        """监听 ADB input 事件"""
        try:
            adb_path = getattr(self._adb, 'adb_path', 'adb')
            device_id = getattr(self._adb, 'device_id', '')
            cmd = [adb_path, '-s', device_id, 'shell', 'getevent', '-lt']
            proc = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True, bufsize=1)

            touch_x = 0
            touch_y = 0
            touch_down_time = 0.0
            is_touching = False

            for line in proc.stdout:
                if not self._running:
                    break

                if 'ABS_MT_POSITION_X' in line:
                    match = re.search(r'([0-9a-f]+)\s*$', line.strip())
                    if match:
                        touch_x = int(match.group(1), 16)
                elif 'ABS_MT_POSITION_Y' in line:
                    match = re.search(r'([0-9a-f]+)\s*$', line.strip())
                    if match:
                        touch_y = int(match.group(1), 16)
                elif 'BTN_TOUCH' in line and 'DOWN' in line:
                    touch_down_time = time.time()
                    is_touching = True
                elif 'BTN_TOUCH' in line and 'UP' in line:
                    if is_touching:
                        duration = time.time() - touch_down_time
                        action_type = 'long_press' if duration > 0.5 else 'tap'

                        with self._screenshot_lock:
                            before = self._current_screenshot.copy() if self._current_screenshot is not None else None

                        action = RecordedAction(
                            timestamp=time.time(),
                            action_type=action_type,
                            x=touch_x, y=touch_y,
                            screenshot_before=before,
                        )
                        self._actions.append(action)
                        logger.info(f"捕获操作: {action_type} ({touch_x}, {touch_y})")

                        time.sleep(1.0)
                        after = self._adb.screenshot(force_refresh=True)
                        if after is not None:
                            action.screenshot_after = after.copy()

                    is_touching = False

            proc.terminate()
        except Exception as e:
            logger.error(f"事件监听异常: {e}")

    def _save_results(self):
        """保存录制结果"""
        screenshot_dir = os.path.join(self._output_dir, "screenshots", self._task_name)
        scenes_dir = os.path.join(screenshot_dir, "scenes")
        targets_dir = os.path.join(screenshot_dir, "targets")
        flows_dir = os.path.join(self._output_dir, "flows")
        os.makedirs(scenes_dir, exist_ok=True)
        os.makedirs(targets_dir, exist_ok=True)
        os.makedirs(flows_dir, exist_ok=True)

        steps = []
        scenes = {}
        targets = {}

        for i, action in enumerate(self._actions):
            step_id = f"step_{i+1:02d}"
            scene_name = f"scene_{i+1:02d}"
            target_name = f"target_{i+1:02d}"

            # Save scene screenshot
            if action.screenshot_before is not None:
                scene_file = f"scenes/{scene_name}.png"
                cv2.imwrite(os.path.join(screenshot_dir, scene_file), action.screenshot_before)
                scenes[scene_name] = {'templates': [scene_file], 'threshold': 0.7}

            # Crop and save target template
            if action.screenshot_before is not None:
                target_file = f"targets/{target_name}.png"
                crop = self._crop_target(action.screenshot_before, action.x, action.y)
                if crop is not None:
                    cv2.imwrite(os.path.join(screenshot_dir, target_file), crop)
                    targets[target_name] = {
                        'template': target_file,
                        'fallback_pos': [action.x, action.y],
                        'threshold': 0.75,
                    }

            # Save final scene
            verify_scene = None
            if action.screenshot_after is not None:
                if i == len(self._actions) - 1:
                    verify_name = "scene_final"
                else:
                    verify_name = f"scene_{i+2:02d}"
                verify_file = f"scenes/{verify_name}.png"
                cv2.imwrite(os.path.join(screenshot_dir, verify_file), action.screenshot_after)
                scenes[verify_name] = {'templates': [verify_file], 'threshold': 0.7}
                verify_scene = verify_name

            # Build step
            step = {
                'id': step_id,
                'description': f"操作 {i+1}: {action.action_type} ({action.x}, {action.y})",
                'expect_scene': scene_name,
                'action': {'type': action.action_type, 'target': target_name},
                'verify': {'scene': verify_scene or f"scene_{i+2:02d}", 'timeout': 3.0},
                'on_fail': 'retry',
            }
            steps.append(step)

        flow_data = {
            'name': self._task_name,
            'display_name': self._task_name,
            'timeout': 60,
            'max_retries': 2,
            'steps': steps,
            'scenes': scenes,
            'targets': targets,
        }

        flow_path = os.path.join(flows_dir, f"{self._task_name}.yaml")
        with open(flow_path, 'w', encoding='utf-8') as f:
            yaml.dump(flow_data, f, allow_unicode=True, default_flow_style=False, sort_keys=False)

        logger.info(f"Flow YAML 已保存: {flow_path}")
        logger.info(f"截图已保存: {screenshot_dir}")

    def _crop_target(self, screenshot: np.ndarray, x: int, y: int, size: int = 100) -> Optional[np.ndarray]:
        """裁剪点击位置周围区域作为目标模板"""
        h, w = screenshot.shape[:2]
        half = size // 2
        x1 = max(0, x - half)
        y1 = max(0, y - half)
        x2 = min(w, x + half)
        y2 = min(h, y + half)
        if x2 - x1 < 20 or y2 - y1 < 20:
            return None
        return screenshot[y1:y2, x1:x2]
