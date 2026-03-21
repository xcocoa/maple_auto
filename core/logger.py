# -*- coding: utf-8 -*-
"""
日志模块
支持控制台和文件输出
"""

import logging
import os
from datetime import datetime
from typing import Optional


class Logger:
    """日志管理类"""

    _instance: Optional['Logger'] = None

    def __new__(cls, log_dir: str = "logs", level: int = logging.INFO):
        if cls._instance is None:
            cls._instance = super().__new__(cls)
            cls._instance._initialized = False
        return cls._instance

    def __init__(self, log_dir: str = "logs", level: int = logging.INFO):
        if self._initialized:
            return

        self._initialized = True

        # 创建日志目录
        os.makedirs(log_dir, exist_ok=True)

        # 日志文件名
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        log_file = os.path.join(log_dir, f"{timestamp}.log")

        # 配置 logger
        self.logger = logging.getLogger('AutoRogue')
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
