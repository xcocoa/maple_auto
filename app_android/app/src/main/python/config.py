# -*- coding: utf-8 -*-
"""
配置加载模块 (Android 版)

在 Android 上使用内置 JSON 默认配置，
后续可扩展为从 SharedPreferences 加载用户自定义配置。

坐标系基准：1280x720 横屏
支持动态分辨率缩放：所有坐标根据实际屏幕尺寸自动缩放
"""

import json
import logging
from typing import Dict, Any, Optional, Tuple, List

logger = logging.getLogger(__name__)

# 基准分辨率（所有默认坐标基于此）
BASE_WIDTH = 1280
BASE_HEIGHT = 720

# 默认配置（从 PC 版 config/roguelike.yaml 转换）
# 所有坐标基于 1280x720 横屏分辨率
DEFAULT_CONFIG = {
    "minimap": {
        "x1": 960,
        "y1": 0,
        "x2": 1280,
        "y2": 180,
        "colors": {
            "player": {
                "lower": [20, 150, 150],
                "upper": [35, 255, 255]
            },
            "monster": {
                "lower1": [0, 150, 150],
                "upper1": [15, 255, 255],
                "lower2": [160, 150, 150],
                "upper2": [180, 255, 255]
            },
            "npc": {
                "lower": [50, 150, 150],
                "upper": [70, 255, 255]
            },
            "portal": {
                "lower": [100, 150, 150],
                "upper": [130, 255, 255]
            }
        },
        "thresholds": {
            "player_min": 20,
            "player_max": 2000,
            "monster_min": 10,
            "monster_max": 50000,
            "npc_min": 15,
            "npc_max": 2000,
            "portal_min": 20,
            "portal_max": 2000
        }
    },
    "combat": {
        "attack_interval": 0.3,
        "move_interval": 0.1,
        "jump_cooldown": 0.6,
        "dodge_threshold": 0.3,
        "dodge_enemy_count": 5,
        "dodge_cooldown": 1.5,
        "joystick": [200, 550],
        "jump_pos": [1200, 630],
        "skill_positions": [
            [950, 550],
            [1050, 550],
            [1150, 550],
            [950, 650],
            [1050, 650],
            [1150, 650]
        ],
        "skill_configs": [
            {"cooldown": 0.5, "is_aoe": False, "priority": 0},
            {"cooldown": 0.5, "is_aoe": False, "priority": 1},
            {"cooldown": 0.5, "is_aoe": False, "priority": 2},
            {"cooldown": 1.0, "is_aoe": True, "priority": 3},
            {"cooldown": 1.0, "is_aoe": True, "priority": 4},
            {"cooldown": 1.5, "is_aoe": True, "priority": 5}
        ]
    },
    "navigation": {
        "move_interval": 0.1,
        "explore_duration": 2.0,
        "joystick": [200, 550],
        "jump": [1200, 630]
    },
    "skill": {
        "positions": [
            [950, 550],
            [1050, 550],
            [1150, 550],
            [950, 650],
            [1050, 650],
            [1150, 650]
        ],
        "jump": [1200, 630],
        "button_radius": 50,
        "color_threshold": 0.15
    },
    "game": {
        "max_combat_duration": 30.0,
        "npc_find_timeout": 10.0,
        "portal_timeout": 15.0,
        "idle_timeout": 8.0,
        "attack_range": 100,
        "portal_arrive_threshold": 30.0,
        "screen_center_x": 640,
        "screen_center_y": 360,
        "up_key_pos": [540, 400]
    },
    "ui_detection": {
        "template_threshold": 0.8,
        "color_threshold": 0.7,
        "ui_regions": {
            "skill_select": [400, 200, 880, 520],
            "shop": [200, 150, 1080, 570],
            "hp_bar": [50, 50, 200, 70],
            "mp_bar": [50, 75, 200, 95],
            "dialog": [300, 400, 980, 600],
            "message": [400, 100, 880, 200]
        },
        "templates": {
            "main_menu": "templates/main_menu.png",
            "skill_select": "templates/skill_select_new_cards.png",
            "skill_select_full": "templates/skill_select_full.png",
            "game_complete": "templates/game_complete.png",
            "route_select": "templates/route_select.png",
            "dialog": "templates/dialog_bottom.png",
            "minimap": "templates/minimap_game.png",
            "skill_buttons": "templates/skill_buttons.png",
            "hp_mp_bar": "templates/hp_mp_bar.png",
            "button_start": "templates/button_start_v2.png",
            "button_attack": "templates/button_attack.png",
            "button_confirm": "templates/button_confirm.png",
            "skill_card_1": "templates/skill_card_1.png",
            "skill_card_2": "templates/skill_card_2.png",
            "skill_card_3": "templates/skill_card_3.png"
        }
    },
    "skill_priority": {
        "attack_boost": 100,
        "damage_increase": 95,
        "critical_boost": 90,
        "attack_speed": 85,
        "heal": 80,
        "lifesteal": 75,
        "regeneration": 70,
        "defense_boost": 65,
        "damage_reduction": 60,
        "shield": 55,
        "speed_boost": 50,
        "cooldown_reduction": 45,
        "mana_regen": 40
    },
    "template_matcher": {
        "default_threshold": 0.8,
        "scales": [0.8, 0.9, 1.0, 1.1, 1.2],
        "cache_size": 50
    },
    "route_priority": {
        "boss": 100,
        "elite": 80,
        "shop": 70,
        "treasure": 60,
        "event": 50,
        "rest": 40,
        "normal": 30
    }
}


class Config:
    """配置管理器 - 支持动态分辨率缩放"""

    _instance = None

    def __new__(cls, *args, **kwargs):
        if cls._instance is None:
            cls._instance = super().__new__(cls)
            cls._instance._config = {}
            cls._instance._initialized = False
        return cls._instance

    def __init__(self, config_data: Optional[Dict] = None):
        if self._initialized:
            return
        self._initialized = True

        # 加载默认配置
        self._config = json.loads(json.dumps(DEFAULT_CONFIG))

        # 合并自定义配置
        if config_data:
            self._deep_merge(self._config, config_data)

        # 分辨率缩放参数
        self._screen_width = BASE_WIDTH
        self._screen_height = BASE_HEIGHT
        self._scale_x = 1.0
        self._scale_y = 1.0
        self._screen_initialized = False

        logger.info("Config loaded successfully")

    # ==== 分辨率缩放 ====

    def init_screen_size(self, width: int, height: int) -> None:
        """
        初始化屏幕尺寸并计算缩放因子
        应在引擎启动时调用一次

        Args:
            width: 实际屏幕宽度（像素）
            height: 实际屏幕高度（像素）
        """
        if width <= 0 or height <= 0:
            logger.warning(f"Invalid screen size {width}x{height}, using base resolution")
            return

        # 确保是横屏格式（宽度 >= 高度）
        if width < height:
            logger.warning(f"Received portrait dimensions {width}x{height}, swapping to landscape")
            width, height = height, width

        self._screen_width = width
        self._screen_height = height
        self._scale_x = width / BASE_WIDTH
        self._scale_y = height / BASE_HEIGHT
        self._screen_initialized = True

        # 更新缩放后的配置值
        self._apply_scaling()

        logger.info(
            f"Screen initialized: {width}x{height} (landscape), "
            f"scale=({self._scale_x:.3f}, {self._scale_y:.3f}), "
            f"base=({BASE_WIDTH}, {BASE_HEIGHT})"
        )

    def _apply_scaling(self) -> None:
        """将缩放应用到所有坐标配置"""
        # 小地图区域
        self._config['minimap']['x1'] = self.scale_x(DEFAULT_CONFIG['minimap']['x1'])
        self._config['minimap']['y1'] = self.scale_y(DEFAULT_CONFIG['minimap']['y1'])
        self._config['minimap']['x2'] = self.scale_x(DEFAULT_CONFIG['minimap']['x2'])
        self._config['minimap']['y2'] = self.scale_y(DEFAULT_CONFIG['minimap']['y2'])
        logger.debug(
            f"Minimap scaled: ({DEFAULT_CONFIG['minimap']['x1']},{DEFAULT_CONFIG['minimap']['y1']})-"
            f"({DEFAULT_CONFIG['minimap']['x2']},{DEFAULT_CONFIG['minimap']['y2']}) → "
            f"({self._config['minimap']['x1']},{self._config['minimap']['y1']})-"
            f"({self._config['minimap']['x2']},{self._config['minimap']['y2']})"
        )

        # 小地图面积阈值也需要按面积比缩放
        area_scale = self._scale_x * self._scale_y
        base_thresholds = DEFAULT_CONFIG['minimap']['thresholds']
        for key in base_thresholds:
            self._config['minimap']['thresholds'][key] = int(
                base_thresholds[key] * area_scale
            )

        # 战斗坐标
        self._config['combat']['joystick'] = self.scale_pos(
            DEFAULT_CONFIG['combat']['joystick']
        )
        self._config['combat']['jump_pos'] = self.scale_pos(
            DEFAULT_CONFIG['combat']['jump_pos']
        )
        self._config['combat']['skill_positions'] = [
            self.scale_pos(pos)
            for pos in DEFAULT_CONFIG['combat']['skill_positions']
        ]
        logger.debug(
            f"Joystick scaled: {DEFAULT_CONFIG['combat']['joystick']} → {self._config['combat']['joystick']}"
        )
        logger.debug(
            f"Jump scaled: {DEFAULT_CONFIG['combat']['jump_pos']} → {self._config['combat']['jump_pos']}"
        )
        logger.debug(
            f"Skills scaled: {DEFAULT_CONFIG['combat']['skill_positions']} → {self._config['combat']['skill_positions']}"
        )

        # 导航坐标
        self._config['navigation']['joystick'] = self.scale_pos(
            DEFAULT_CONFIG['navigation']['joystick']
        )
        self._config['navigation']['jump'] = self.scale_pos(
            DEFAULT_CONFIG['navigation']['jump']
        )

        # 技能检测坐标
        self._config['skill']['positions'] = [
            self.scale_pos(pos)
            for pos in DEFAULT_CONFIG['skill']['positions']
        ]
        self._config['skill']['jump'] = self.scale_pos(
            DEFAULT_CONFIG['skill']['jump']
        )
        self._config['skill']['button_radius'] = int(
            DEFAULT_CONFIG['skill']['button_radius'] * self._scale_x
        )

        # 游戏逻辑坐标
        self._config['game']['screen_center_x'] = self._screen_width // 2
        self._config['game']['screen_center_y'] = self._screen_height // 2
        self._config['game']['up_key_pos'] = self.scale_pos(
            DEFAULT_CONFIG['game']['up_key_pos']
        )
        self._config['game']['attack_range'] = int(
            DEFAULT_CONFIG['game']['attack_range'] * self._scale_x
        )
        self._config['game']['portal_arrive_threshold'] = (
            DEFAULT_CONFIG['game']['portal_arrive_threshold'] * self._scale_x
        )

        logger.info("Coordinate scaling applied to all config sections")

    def scale_x(self, x: int) -> int:
        """缩放 X 坐标"""
        return int(x * self._scale_x)

    def scale_y(self, y: int) -> int:
        """缩放 Y 坐标"""
        return int(y * self._scale_y)

    def scale_pos(self, pos: List[int]) -> List[int]:
        """缩放坐标对 [x, y]"""
        return [self.scale_x(pos[0]), self.scale_y(pos[1])]

    def scale_coordinate(self, x: int, y: int) -> Tuple[int, int]:
        """缩放坐标（返回元组）"""
        return (self.scale_x(x), self.scale_y(y))

    @property
    def screen_width(self) -> int:
        return self._screen_width

    @property
    def screen_height(self) -> int:
        return self._screen_height

    @property
    def scale_factor(self) -> Tuple[float, float]:
        return (self._scale_x, self._scale_y)

    @property
    def screen_initialized(self) -> bool:
        return self._screen_initialized

    # ==== 配置读写 ====

    def get(self, key: str, default: Any = None) -> Any:
        """
        获取配置值（支持点号分隔的嵌套路径）
        返回缩放后的值（如果已初始化屏幕尺寸）
        
        例：config.get('minimap.x1') -> 缩放后的值
        """
        keys = key.split('.')
        value = self._config
        for k in keys:
            if isinstance(value, dict) and k in value:
                value = value[k]
            else:
                return default
        return value

    def get_base(self, key: str, default: Any = None) -> Any:
        """获取基准分辨率下的原始配置值（不缩放）"""
        keys = key.split('.')
        value = DEFAULT_CONFIG
        for k in keys:
            if isinstance(value, dict) and k in value:
                value = value[k]
            else:
                return default
        return value

    def set(self, key: str, value: Any) -> None:
        """设置配置值"""
        keys = key.split('.')
        target = self._config
        for k in keys[:-1]:
            if k not in target:
                target[k] = {}
            target = target[k]
        target[keys[-1]] = value

    def get_section(self, section: str) -> Dict[str, Any]:
        """获取整个配置段（返回缩放后的值）"""
        return self._config.get(section, {})

    def to_dict(self) -> Dict[str, Any]:
        """导出为字典"""
        return json.loads(json.dumps(self._config))

    def update_from_json(self, json_str: str) -> bool:
        """从 JSON 字符串更新配置"""
        try:
            data = json.loads(json_str)
            self._deep_merge(self._config, data)
            return True
        except Exception as e:
            logger.error(f"Failed to update config from JSON: {e}")
            return False

    @staticmethod
    def _deep_merge(base: dict, override: dict) -> dict:
        """深度合并字典"""
        for key, value in override.items():
            if key in base and isinstance(base[key], dict) and isinstance(value, dict):
                Config._deep_merge(base[key], value)
            else:
                base[key] = value
        return base

    @staticmethod
    def reset():
        """重置单例（测试用）"""
        Config._instance = None

    # ==== 配置持久化 ====

    def load_persisted_config(self) -> bool:
        """
        从 SharedPreferences 加载持久化配置
        合并到当前配置中（持久化配置优先）

        Returns:
            bool: 成功加载返回 True
        """
        try:
            import platform_bridge
            json_str = platform_bridge.load_config_json()
            if json_str:
                data = json.loads(json_str)
                self._deep_merge(self._config, data)
                logger.info("Loaded persisted config from SharedPreferences")
                return True
        except ImportError:
            # PC 环境无 platform_bridge，静默跳过
            pass
        except Exception as e:
            logger.error(f"Failed to load persisted config: {e}")
        return False

    def save_current_config(self) -> bool:
        """
        保存当前配置到 SharedPreferences

        Returns:
            bool: 成功保存返回 True
        """
        try:
            import platform_bridge
            json_str = json.dumps(self._config)
            if platform_bridge.save_config_json(json_str):
                logger.info("Config saved to SharedPreferences")
                return True
        except ImportError:
            pass
        except Exception as e:
            logger.error(f"Failed to save config: {e}")
        return False

    def export_json(self) -> str:
        """导出当前配置为 JSON 字符串"""
        return json.dumps(self._config, indent=2)

    def import_json(self, json_str: str) -> bool:
        """从 JSON 字符串导入配置"""
        return self.update_from_json(json_str)
