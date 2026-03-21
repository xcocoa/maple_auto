# -*- coding: utf-8 -*-
"""
配置管理模块
支持 YAML 配置文件和热加载
"""

import yaml
import os
from typing import Any, Dict, Optional
from pathlib import Path


class Config:
    """配置管理类"""

    _instance: Optional['Config'] = None
    _config: Dict[str, Any] = {}

    def __new__(cls, config_file: Optional[str] = None):
        if cls._instance is None:
            cls._instance = super().__new__(cls)
        return cls._instance

    def __init__(self, config_file: Optional[str] = None):
        if config_file:
            self.load(config_file)

    def load(self, config_file: str) -> Dict[str, Any]:
        """加载配置文件"""
        if not os.path.exists(config_file):
            raise FileNotFoundError(f"配置文件不存在：{config_file}")

        with open(config_file, 'r', encoding='utf-8') as f:
            self._config = yaml.safe_load(f)

        return self._config

    def get(self, key: str, default: Any = None) -> Any:
        """获取配置值"""
        keys = key.split('.')
        value = self._config

        for k in keys:
            if isinstance(value, dict) and k in value:
                value = value[k]
            else:
                return default

        return value

    def set(self, key: str, value: Any) -> None:
        """设置配置值"""
        keys = key.split('.')
        config = self._config

        for k in keys[:-1]:
            if k not in config:
                config[k] = {}
            config = config[k]

        config[keys[-1]] = value

    def save(self, config_file: str) -> None:
        """保存配置到文件"""
        with open(config_file, 'w', encoding='utf-8') as f:
            yaml.dump(self._config, f, allow_unicode=True, default_flow_style=False)

    @property
    def device_id(self) -> str:
        return self.get('device.id', 'emulator-5560')

    @property
    def adb_path(self) -> str:
        return self.get('device.adb_path', r"D:\mumu\MuMu Player 12\shell\adb.exe")

    @property
    def minimap_rect(self) -> tuple:
        m = self.get('minimap')
        return (m['x1'], m['y1'], m['x2'], m['y2'])

    @property
    def colors(self) -> Dict[str, Any]:
        return self.get('colors', {})

    @property
    def skill_positions(self) -> List[List[int]]:
        return self.get('skills.positions', [])

    @property
    def combat(self) -> Dict[str, Any]:
        return self.get('combat', {})
