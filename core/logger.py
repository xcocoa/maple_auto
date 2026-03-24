# -*- coding: utf-8 -*-
"""
日志模块
支持控制台和文件输出、性能指标收集
"""

import time
import logging
import os
from datetime import datetime
from collections import deque
from typing import Optional, Dict


class Logger:
    """日志管理类"""

    _instance: Optional['Logger'] = None

    def __new__(cls, name: str = "AutoRogue", log_dir: str = "logs", level: int = logging.INFO):
        if cls._instance is None:
            cls._instance = super().__new__(cls)
            cls._instance._initialized = False
        return cls._instance

    def __init__(self, name: str = "AutoRogue", log_dir: str = "logs", level: int = logging.INFO):
        if self._initialized:
            return

        self._initialized = True

        # 创建日志目录
        os.makedirs(log_dir, exist_ok=True)

        # 日志文件名
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        log_file = os.path.join(log_dir, f"{timestamp}.log")

        # 配置 logger
        self.logger = logging.getLogger(name)
        self.logger.setLevel(level)

        # 清除现有 handlers
        self.logger.handlers.clear()

        # 文件 handler
        file_handler = logging.FileHandler(log_file, encoding='utf-8')
        file_handler.setLevel(level)

        # 控制台 handler
        console_handler = logging.StreamHandler()
        console_handler.setLevel(level)

        # 格式
        file_format = logging.Formatter(
            '%(asctime)s - %(name)s - %(levelname)s - %(message)s'
        )
        console_format = logging.Formatter(
            '%(levelname)s - %(message)s'
        )

        file_handler.setFormatter(file_format)
        console_handler.setFormatter(console_format)

        self.logger.addHandler(file_handler)
        self.logger.addHandler(console_handler)

        # 性能指标收集器
        self._perf = PerformanceMonitor()

    def debug(self, msg: str) -> None:
        self.logger.debug(msg)

    def info(self, msg: str) -> None:
        self.logger.info(msg)

    def warning(self, msg: str) -> None:
        self.logger.warning(msg)

    def error(self, msg: str) -> None:
        self.logger.error(msg)

    def critical(self, msg: str) -> None:
        self.logger.critical(msg)

    @property
    def perf(self) -> 'PerformanceMonitor':
        return self._perf


class PerformanceMonitor:
    """性能指标收集器"""

    def __init__(self, sample_window: int = 100):
        self._sample_window = sample_window
        self._frame_times: deque = deque(maxlen=sample_window)
        self._adb_times: deque = deque(maxlen=sample_window)
        self._detection_times: deque = deque(maxlen=sample_window)
        self._last_report_time: float = time.time()
        self._report_interval: float = 10.0  # 每10秒报告一次
        self._logger = logging.getLogger('AutoRogue.perf')

    def record_frame(self, duration: float) -> None:
        """记录帧处理时间"""
        self._frame_times.append(duration)

    def record_adb(self, duration: float) -> None:
        """记录ADB往返时间"""
        self._adb_times.append(duration)

    def record_detection(self, duration: float) -> None:
        """记录检测处理时间"""
        self._detection_times.append(duration)

    def maybe_report(self) -> None:
        """定期输出性能报告"""
        now = time.time()
        if now - self._last_report_time < self._report_interval:
            return
        self._last_report_time = now

        report = self.get_summary()
        if report:
            self._logger.info(
                f"性能: FPS={report.get('fps', 0):.1f} | "
                f"帧={report.get('avg_frame_ms', 0):.0f}ms | "
                f"ADB={report.get('avg_adb_ms', 0):.0f}ms | "
                f"检测={report.get('avg_detection_ms', 0):.0f}ms"
            )

    def get_summary(self) -> Dict[str, float]:
        """获取性能摘要"""
        result = {}
        if self._frame_times:
            avg_frame = sum(self._frame_times) / len(self._frame_times)
            result['avg_frame_ms'] = avg_frame * 1000
            result['fps'] = 1.0 / avg_frame if avg_frame > 0 else 0
        if self._adb_times:
            result['avg_adb_ms'] = sum(self._adb_times) / len(self._adb_times) * 1000
        if self._detection_times:
            result['avg_detection_ms'] = sum(self._detection_times) / len(self._detection_times) * 1000
        return result
