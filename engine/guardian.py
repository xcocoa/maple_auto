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
        "popups/ad_popup.png": (1122, 32),
        "popups/disconnect.png": (640, 400),
        "popups/stamina_empty.png": (640, 400),
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
        if hasattr(self._device, 'run'):
            self._device.run('shell input keyevent KEYCODE_BACK')
        elif hasattr(self._device, '_adb'):
            self._device._adb.run('shell input keyevent KEYCODE_BACK')
        time.sleep(2.0)
        self._frame_history.clear()
        return "stuck_handled"

    def check_and_handle(self) -> str:
        """
        主入口：截图 → 检查异常 → 自动处理。
        """
        screenshot = self._device.screenshot(force_refresh=True)
        if screenshot is None:
            return "ok"

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
