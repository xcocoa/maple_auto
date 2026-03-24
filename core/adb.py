# -*- coding: utf-8 -*-
"""
ADB 通信模块
封装与 Android 设备的通信
支持：持久连接、截图缓存、自动重连、命令重试
"""

import cv2
import sys
import time
import shlex
import socket
import struct
import logging
import threading
import numpy as np
import subprocess
from typing import Optional, List, Tuple

logger = logging.getLogger('AutoRogue')


class ADBConnection:
    """ADB 持久 socket 连接（直连 ADB server）"""

    def __init__(self, host: str = '127.0.0.1', port: int = 5037):
        self.host = host
        self.port = port
        self._sock: Optional[socket.socket] = None
        self._lock = threading.Lock()

    def _connect(self) -> socket.socket:
        """建立到 ADB server 的 TCP 连接"""
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(5.0)
        sock.connect((self.host, self.port))
        return sock

    def _send_message(self, sock: socket.socket, msg: str) -> None:
        """发送 ADB 协议消息"""
        data = f"{len(msg):04x}{msg}".encode('utf-8')
        sock.sendall(data)

    def _read_response(self, sock: socket.socket) -> Tuple[bool, str]:
        """读取 ADB 响应"""
        status = sock.recv(4).decode('utf-8')
        if status == 'OKAY':
            return True, ''
        elif status == 'FAIL':
            length = int(sock.recv(4).decode('utf-8'), 16)
            msg = sock.recv(length).decode('utf-8')
            return False, msg
        return False, f'Unknown status: {status}'

    def _read_all(self, sock: socket.socket) -> bytes:
        """读取所有数据直到连接关闭"""
        chunks = []
        while True:
            try:
                chunk = sock.recv(65536)
                if not chunk:
                    break
                chunks.append(chunk)
            except socket.timeout:
                break
        return b''.join(chunks)

    def execute(self, device_id: str, command: str, timeout: float = 10.0) -> str:
        """通过 ADB 协议执行 shell 命令"""
        try:
            sock = self._connect()
            sock.settimeout(timeout)

            # 切换到目标设备
            transport_cmd = f"host:transport:{device_id}"
            self._send_message(sock, transport_cmd)
            ok, err = self._read_response(sock)
            if not ok:
                sock.close()
                raise ConnectionError(f"Transport failed: {err}")

            # 执行 shell 命令
            shell_cmd = f"shell:{command}"
            self._send_message(sock, shell_cmd)
            ok, err = self._read_response(sock)
            if not ok:
                sock.close()
                raise ConnectionError(f"Shell command failed: {err}")

            # 读取输出
            data = self._read_all(sock)
            sock.close()
            return data.decode('utf-8', errors='ignore').strip()

        except Exception:
            return ''

    def execute_raw(self, device_id: str, command: str, timeout: float = 10.0) -> bytes:
        """执行命令并返回原始字节数据（用于截图等二进制输出）"""
        try:
            sock = self._connect()
            sock.settimeout(timeout)

            transport_cmd = f"host:transport:{device_id}"
            self._send_message(sock, transport_cmd)
            ok, err = self._read_response(sock)
            if not ok:
                sock.close()
                raise ConnectionError(f"Transport failed: {err}")

            shell_cmd = f"exec:{command}"
            self._send_message(sock, shell_cmd)
            ok, err = self._read_response(sock)
            if not ok:
                sock.close()
                raise ConnectionError(f"Exec command failed: {err}")

            data = self._read_all(sock)
            sock.close()
            return data

        except Exception:
            return b''

    def check_device(self, device_id: str) -> bool:
        """检查设备是否在 ADB devices 列表中"""
        try:
            sock = self._connect()
            self._send_message(sock, "host:devices")
            ok, _ = self._read_response(sock)
            if not ok:
                sock.close()
                return False
            length = int(sock.recv(4).decode('utf-8'), 16)
            data = sock.recv(length).decode('utf-8') if length > 0 else ''
            sock.close()
            return device_id in data
        except Exception:
            return False


class ADB:
    """ADB 通信类 - 支持持久连接、截图缓存、自动重试"""

    def __init__(self, device_id: str, adb_path: str = 'adb',
                 adb_host: str = '127.0.0.1', adb_port: int = 5037):
        self.device_id = device_id
        self.adb_path = adb_path

        # 持久连接（优先使用 socket 直连）
        self._conn = ADBConnection(adb_host, adb_port)
        self._use_socket = True  # 尝试使用 socket 模式

        # 截图缓存
        self._screenshot_cache: Optional[np.ndarray] = None
        self._screenshot_time: float = 0.0
        self._screenshot_ttl: float = 0.06  # 60ms TTL
        self._screenshot_lock = threading.Lock()

        # 重试配置
        self._max_retries = 3
        self._retry_delay = 0.1

        # 连接状态
        self._connected = True
        self._last_health_check = 0.0
        self._health_check_interval = 30.0  # 30s

    def run(self, cmd: str, timeout: int = 10) -> str:
        """执行 ADB 命令（带重试）"""
        # 尝试 socket 直连
        if self._use_socket and cmd.startswith('shell '):
            shell_cmd = cmd[6:]  # 去掉 "shell " 前缀
            for attempt in range(self._max_retries):
                result = self._conn.execute(self.device_id, shell_cmd, timeout=timeout)
                if result is not None:
                    return result
                time.sleep(self._retry_delay)

        # 回退到 subprocess
        return self._run_subprocess(cmd, timeout)

    def _run_subprocess(self, cmd: str, timeout: int = 10) -> str:
        """通过 subprocess 执行 ADB 命令（备用方案）"""
        full_cmd = [self.adb_path, "-s", self.device_id] + shlex.split(cmd)
        kwargs = dict(capture_output=True, timeout=timeout)
        if sys.platform == 'win32':
            kwargs['creationflags'] = subprocess.CREATE_NO_WINDOW
        try:
            result = subprocess.run(full_cmd, **kwargs)
            return result.stdout.decode('utf-8', errors='ignore').strip()
        except (subprocess.TimeoutExpired, FileNotFoundError, OSError) as e:
            logger.warning(f"ADB subprocess failed: {e}")
            return ''

    def screenshot(self, force_refresh: bool = False) -> Optional[np.ndarray]:
        """截图并返回 OpenCV 格式图像（带缓存）"""
        now = time.time()

        # 检查缓存是否有效
        with self._screenshot_lock:
            if (not force_refresh and
                    self._screenshot_cache is not None and
                    now - self._screenshot_time < self._screenshot_ttl):
                return self._screenshot_cache

        # 获取新截图
        img = self._capture_screenshot()

        # 更新缓存
        with self._screenshot_lock:
            if img is not None:
                self._screenshot_cache = img
                self._screenshot_time = time.time()

        return img

    def _capture_screenshot(self) -> Optional[np.ndarray]:
        """实际执行截图操作"""
        # 尝试 socket 直连
        if self._use_socket:
            raw = self._conn.execute_raw(self.device_id, "screencap -p", timeout=5.0)
            if raw:
                nparr = np.frombuffer(raw, np.uint8)
                img = cv2.imdecode(nparr, cv2.IMREAD_COLOR)
                if img is not None:
                    return img

        # 回退到 subprocess
        kwargs = dict(capture_output=True)
        if sys.platform == 'win32':
            kwargs['creationflags'] = subprocess.CREATE_NO_WINDOW
        try:
            result = subprocess.run(
                [self.adb_path, "-s", self.device_id, "exec-out", "screencap", "-p"],
                **kwargs
            )
            if result.stdout:
                nparr = np.frombuffer(result.stdout, np.uint8)
                return cv2.imdecode(nparr, cv2.IMREAD_COLOR)
        except Exception as e:
            logger.warning(f"Screenshot subprocess failed: {e}")

        return None

    def invalidate_cache(self) -> None:
        """强制清除截图缓存（状态转换时调用）"""
        with self._screenshot_lock:
            self._screenshot_cache = None
            self._screenshot_time = 0.0

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
        try:
            size_str = output.split(":")[-1].strip()
            w, h = map(int, size_str.split("x"))
            return (w, h)
        except Exception:
            return (720, 1280)

    def is_device_connected(self) -> bool:
        """检查设备是否连接"""
        # 优先使用 socket 检查
        if self._use_socket:
            connected = self._conn.check_device(self.device_id)
            if connected:
                self._connected = True
                return True

        # 回退到 subprocess
        kwargs = dict(capture_output=True)
        if sys.platform == 'win32':
            kwargs['creationflags'] = subprocess.CREATE_NO_WINDOW
        try:
            result = subprocess.run(
                [self.adb_path, "devices"],
                **kwargs
            )
            self._connected = self.device_id in result.stdout.decode('utf-8')
            return self._connected
        except Exception:
            self._connected = False
            return False

    def health_check(self) -> bool:
        """定期健康检查（游戏循环中调用）"""
        now = time.time()
        if now - self._last_health_check < self._health_check_interval:
            return self._connected

        self._last_health_check = now
        self._connected = self.is_device_connected()
        if not self._connected:
            logger.warning("ADB device disconnected, attempting reconnect...")
            self._try_reconnect()
        return self._connected

    def _try_reconnect(self) -> bool:
        """尝试重新连接设备"""
        for attempt in range(self._max_retries):
            try:
                self._run_subprocess(f"connect {self.device_id}", timeout=5)
                time.sleep(1.0)
                if self.is_device_connected():
                    logger.info("ADB device reconnected successfully")
                    self._connected = True
                    return True
            except Exception:
                pass
            time.sleep(self._retry_delay * (attempt + 1))

        logger.error("Failed to reconnect ADB device")
        return False
