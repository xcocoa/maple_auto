# -*- coding: utf-8 -*-
"""
ADB 通信模块
封装与 Android 设备的通信
"""

import cv2
import numpy as np
import subprocess
from typing import Optional, List, Tuple


class ADB:
    """ADB 通信类"""

    def __init__(self, device_id: str, adb_path: str):
        self.device_id = device_id
        self.adb_path = adb_path

    def run(self, cmd: str, timeout: int = 10) -> str:
        """执行 ADB 命令"""
        full_cmd = [self.adb_path, "-s", self.device_id] + cmd.split()
        result = subprocess.run(
            full_cmd,
            capture_output=True,
            timeout=timeout,
            creationflags=subprocess.CREATE_NO_WINDOW
        )
        return result.stdout.decode('utf-8', errors='ignore').strip()

    def screenshot(self) -> Optional[np.ndarray]:
        """截图并返回 OpenCV 格式图像"""
        result = subprocess.run(
            [self.adb_path, "-s", self.device_id, "exec-out", "screencap", "-p"],
            capture_output=True
        )
        if not result.stdout:
            return None
        nparr = np.frombuffer(result.stdout, np.uint8)
        return cv2.imdecode(nparr, cv2.IMREAD_COLOR)

    def tap(self, x: int, y: int) -> None:
        """点击屏幕"""
        self.run(f"shell input tap {x} {y}")

    def swipe(self, x1: int, y1: int, x2: int, y2: int, duration: int = 100) -> None:
        """滑动屏幕"""
        self.run(f"shell input swipe {x1} {y1} {x2} {y2} {duration}")

    def long_press(self, x: int, y: int, duration: int = 500) -> None:
        """长按"""
        self.run(f"shell input swipe {x} {y} {x} {y} {duration}")

    def keyevent(self, key: str) -> None:
        """按键事件"""
        self.run(f"shell input keyevent {key}")

    def get_screen_size(self) -> Tuple[int, int]:
        """获取屏幕分辨率"""
        output = self.run("shell wm size")
        # 解析 "Physical size: 720x1280"
        try:
            size_str = output.split(":")[-1].strip()
            w, h = map(int, size_str.split("x"))
            return (w, h)
        except:
            return (720, 1280)

    def is_device_connected(self) -> bool:
        """检查设备是否连接"""
        result = subprocess.run(
            [self.adb_path, "devices"],
            capture_output=True
        )
        return self.device_id in result.stdout.decode('utf-8')
