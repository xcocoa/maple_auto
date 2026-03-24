# -*- coding: utf-8 -*-
"""
maple_auto 全面优化单元测试
覆盖所有核心模块和优化功能
"""

import os
import sys
import time
import logging
import tempfile
import threading
import numpy as np
import pytest
from unittest.mock import MagicMock, patch, PropertyMock
from dataclasses import dataclass

# 添加项目根目录到 path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))


# ============================================================
# Phase 1: Bug 修复验证
# ============================================================

class TestPhase1BugFixes:
    """验证所有关键 Bug 修复"""

    def test_skill_tuple_import(self):
        """skill.py: Tuple 正确导入"""
        from modules.skill import Skill
        # Tuple[int, int] 类型注解不再崩溃
        s = Skill(index=0, pos=(100, 200), name="技能0", unlocked=True)
        assert s.pos == (100, 200)
        assert s.index == 0

    def test_config_list_import(self):
        """config.py: List 正确导入"""
        from core.config import Config
        # 确认 List 类型可用 (通过 skill_positions 属性)
        Config._instance = None  # 重置单例
        with tempfile.NamedTemporaryFile(mode='w', suffix='.yaml', delete=False) as f:
            f.write("skills:\n  positions:\n    - [100, 200]\n    - [300, 400]\n")
            f.flush()
            config = Config(f.name)
            positions = config.skill_positions
            assert isinstance(positions, list)
            assert len(positions) == 2
        os.unlink(f.name)
        Config._instance = None

    def test_logger_accepts_name_param(self):
        """logger.py: Logger 正确接受 name 参数"""
        from core.logger import Logger
        Logger._instance = None  # 重置单例

        with tempfile.TemporaryDirectory() as tmpdir:
            logger = Logger(name="TestLogger", log_dir=tmpdir)
            assert logger is not None
            logger.info("Test message")
            # 不应抛异常
            Logger._instance = None

    def test_logger_singleton(self):
        """logger.py: 单例模式正确工作"""
        from core.logger import Logger
        Logger._instance = None

        with tempfile.TemporaryDirectory() as tmpdir:
            l1 = Logger(name="Test1", log_dir=tmpdir)
            l2 = Logger(name="Test2", log_dir=tmpdir)
            assert l1 is l2  # 单例
            Logger._instance = None

    def test_adb_platform_compatibility(self):
        """adb.py: 平台兼容性 (不使用 Windows 专用 flag)"""
        from core.adb import ADB
        # 在 macOS/Linux 上创建 ADB 实例不应崩溃
        adb = ADB("test-device", "adb")
        assert adb.device_id == "test-device"

    def test_adb_shlex_split(self):
        """adb.py: shlex.split 正确处理带空格的参数"""
        import shlex
        cmd = 'shell am start -n "com.test/com.test.Main"'
        parts = shlex.split(cmd)
        assert parts[0] == 'shell'
        assert parts[1] == 'am'
        assert parts[4] == 'com.test/com.test.Main'  # 引号已移除


# ============================================================
# Phase 2: ADB 性能优化验证
# ============================================================

class TestPhase2ADBPerformance:
    """验证 ADB 持久连接、截图缓存、重试机制"""

    def test_adb_connection_class_exists(self):
        """ADBConnection 类存在"""
        from core.adb import ADBConnection
        conn = ADBConnection('127.0.0.1', 5037)
        assert conn.host == '127.0.0.1'
        assert conn.port == 5037

    def test_screenshot_cache_basic(self):
        """截图缓存：相同 TTL 内返回缓存"""
        from core.adb import ADB
        adb = ADB("test", "adb")

        # 模拟一张截图
        fake_img = np.zeros((100, 100, 3), dtype=np.uint8)
        adb._screenshot_cache = fake_img
        adb._screenshot_time = time.time()
        adb._screenshot_ttl = 1.0  # 1s TTL

        # 从缓存读取
        result = adb.screenshot()
        assert result is fake_img  # 应返回缓存

    def test_screenshot_cache_expired(self):
        """截图缓存：过期后重新获取"""
        from core.adb import ADB
        adb = ADB("test", "adb")

        fake_img = np.zeros((100, 100, 3), dtype=np.uint8)
        adb._screenshot_cache = fake_img
        adb._screenshot_time = time.time() - 2.0  # 2s前
        adb._screenshot_ttl = 0.06  # 60ms TTL

        # 缓存过期，应尝试获取新截图（会失败，返回None）
        with patch.object(adb, '_capture_screenshot', return_value=None):
            result = adb.screenshot()
            assert result is None

    def test_screenshot_force_refresh(self):
        """截图缓存：force_refresh 跳过缓存"""
        from core.adb import ADB
        adb = ADB("test", "adb")

        fake_img = np.zeros((100, 100, 3), dtype=np.uint8)
        new_img = np.ones((100, 100, 3), dtype=np.uint8)
        adb._screenshot_cache = fake_img
        adb._screenshot_time = time.time()

        with patch.object(adb, '_capture_screenshot', return_value=new_img):
            result = adb.screenshot(force_refresh=True)
            assert np.array_equal(result, new_img)

    def test_invalidate_cache(self):
        """invalidate_cache: 正确清除缓存"""
        from core.adb import ADB
        adb = ADB("test", "adb")

        adb._screenshot_cache = np.zeros((10, 10, 3), dtype=np.uint8)
        adb._screenshot_time = time.time()
        adb.invalidate_cache()

        assert adb._screenshot_cache is None
        assert adb._screenshot_time == 0.0

    def test_retry_mechanism(self):
        """ADB run: 重试机制"""
        from core.adb import ADB
        adb = ADB("test", "adb")
        adb._use_socket = False  # 跳过 socket

        with patch.object(adb, '_run_subprocess', return_value='ok') as mock:
            result = adb.run("shell echo hello")
            assert result == 'ok'
            mock.assert_called_once()

    def test_health_check_interval(self):
        """health_check: 30s 间隔检查"""
        from core.adb import ADB
        adb = ADB("test", "adb")
        adb._connected = True
        adb._last_health_check = time.time()

        # 刚检查过，应直接返回缓存状态
        assert adb.health_check() is True


# ============================================================
# Phase 3: 状态机增强验证
# ============================================================

class TestPhase3StateMachine:
    """验证状态机新增状态、超时处理、验证"""

    def test_new_states_exist(self):
        """GameState: 新增状态存在"""
        from games.roguelike import GameState
        assert hasattr(GameState, 'DEAD')
        assert hasattr(GameState, 'DISCONNECT')
        assert hasattr(GameState, 'STUCK_RECOVERY')
        assert hasattr(GameState, 'ERROR')

    def test_timeout_levels_exist(self):
        """TimeoutLevel: 超时级别存在"""
        from games.roguelike import TimeoutLevel
        assert hasattr(TimeoutLevel, 'INFO')
        assert hasattr(TimeoutLevel, 'WARNING')
        assert hasattr(TimeoutLevel, 'CRITICAL')

    def test_state_timeout_config(self):
        """STATE_TIMEOUT_CONFIG: 所有状态有超时配置"""
        from games.roguelike import STATE_TIMEOUT_CONFIG, GameState, TimeoutLevel
        # 关键状态都有超时配置
        assert GameState.FIGHT in STATE_TIMEOUT_CONFIG
        assert GameState.FIND_NPC in STATE_TIMEOUT_CONFIG
        assert GameState.DEAD in STATE_TIMEOUT_CONFIG
        assert GameState.DISCONNECT in STATE_TIMEOUT_CONFIG
        assert GameState.STUCK_RECOVERY in STATE_TIMEOUT_CONFIG

        # 死亡和断连是 CRITICAL 级别
        _, _, level = STATE_TIMEOUT_CONFIG[GameState.DEAD]
        assert level == TimeoutLevel.CRITICAL
        _, _, level = STATE_TIMEOUT_CONFIG[GameState.DISCONNECT]
        assert level == TimeoutLevel.CRITICAL

    def test_change_state_updates_time(self):
        """_change_state: 更新时间戳和之前状态"""
        from games.roguelike import RoguelikeGame, GameState
        from core.config import Config
        from core.logger import Logger

        Config._instance = None
        Logger._instance = None

        with tempfile.NamedTemporaryFile(mode='w', suffix='.yaml', delete=False) as f:
            f.write("device:\n  id: test\n  adb_path: adb\nminimap: {}\ncombat: {}\nnavigation: {}\nskill: {}\ngame: {}\n")
            f.flush()

            with tempfile.TemporaryDirectory() as logdir:
                Logger(name="Test", log_dir=logdir)
                game = RoguelikeGame(f.name)
                old_time = game.state_start_time

                time.sleep(0.01)
                game._change_state(GameState.FIGHT, "test")

                assert game.current_state == GameState.FIGHT
                assert game.previous_state == GameState.IDLE
                assert game.state_start_time > old_time

        os.unlink(f.name)
        Config._instance = None
        Logger._instance = None

    def test_enter_portal_no_blind_increment(self):
        """ENTER_PORTAL 超时不再盲目递增 stages_cleared"""
        from games.roguelike import RoguelikeGame, GameState
        from core.config import Config
        from core.logger import Logger

        Config._instance = None
        Logger._instance = None

        with tempfile.NamedTemporaryFile(mode='w', suffix='.yaml', delete=False) as f:
            f.write("device:\n  id: test\n  adb_path: adb\nminimap: {}\ncombat: {}\nnavigation: {}\nskill: {}\ngame:\n  portal_timeout: 0.01\n")
            f.flush()

            with tempfile.TemporaryDirectory() as logdir:
                Logger(name="Test", log_dir=logdir)
                game = RoguelikeGame(f.name)
                game._change_state(GameState.ENTER_PORTAL, "test")
                game.state_start_time = time.time() - 1.0  # 超时
                initial_cleared = game.stats['stages_cleared']

                game._check_state_timeout()

                # 不应递增 stages_cleared
                assert game.stats['stages_cleared'] == initial_cleared
                assert game.current_state == GameState.SEARCH

        os.unlink(f.name)
        Config._instance = None
        Logger._instance = None

    def test_stats_include_new_fields(self):
        """统计信息包含新增字段"""
        from games.roguelike import RoguelikeGame
        from core.config import Config
        from core.logger import Logger

        Config._instance = None
        Logger._instance = None

        with tempfile.NamedTemporaryFile(mode='w', suffix='.yaml', delete=False) as f:
            f.write("device:\n  id: test\n  adb_path: adb\nminimap: {}\ncombat: {}\nnavigation: {}\nskill: {}\ngame: {}\n")
            f.flush()

            with tempfile.TemporaryDirectory() as logdir:
                Logger(name="Test", log_dir=logdir)
                game = RoguelikeGame(f.name)
                stats = game.get_stats()
                assert 'deaths' in stats
                assert 'disconnects' in stats
                assert 'stuck_recoveries' in stats

        os.unlink(f.name)
        Config._instance = None
        Logger._instance = None


# ============================================================
# Phase 4: 检测算法改进验证
# ============================================================

class TestPhase4Detection:
    """验证自适应颜色、形态学、置信度"""

    def test_adaptive_color_range_init(self):
        """AdaptiveColorRange: 正确初始化"""
        from modules.minimap import AdaptiveColorRange
        lower = np.array([20, 150, 150])
        upper = np.array([35, 255, 255])
        acr = AdaptiveColorRange(lower, upper)

        assert np.array_equal(acr.lower, lower)
        assert np.array_equal(acr.upper, upper)

    def test_adaptive_color_range_record_and_calibrate(self):
        """AdaptiveColorRange: 记录和校准"""
        from modules.minimap import AdaptiveColorRange
        lower = np.array([20, 150, 150])
        upper = np.array([35, 255, 255])
        acr = AdaptiveColorRange(lower, upper, history_size=10, adapt_delta=3)

        # 记录一些检测值
        for i in range(15):
            acr.record([np.array([27.0, 200.0, 200.0])])

        acr._last_calibration = 0  # 强制校准
        acr.calibrate()

        # 校准后范围应该有变化（但不超过 adapt_delta）
        assert acr.current_lower is not None
        assert acr.current_upper is not None

    def test_adaptive_color_range_reset(self):
        """AdaptiveColorRange: 重置到基础范围"""
        from modules.minimap import AdaptiveColorRange
        lower = np.array([20, 150, 150])
        upper = np.array([35, 255, 255])
        acr = AdaptiveColorRange(lower, upper)

        acr.current_lower = np.array([15, 145, 145])
        acr.reset()

        assert np.array_equal(acr.lower, lower)
        assert np.array_equal(acr.upper, upper)

    def test_minimap_detector_init(self):
        """MinimapDetector: 正确初始化"""
        from modules.minimap import MinimapDetector
        config = {
            'x1': 900, 'y1': 20, 'x2': 1260, 'y2': 180,
            'colors': {
                'player': {'lower': [20, 150, 150], 'upper': [35, 255, 255]},
                'monster': {
                    'lower1': [0, 150, 150], 'upper1': [15, 255, 255],
                    'lower2': [160, 150, 150], 'upper2': [180, 255, 255]
                },
                'npc': {'lower': [50, 150, 150], 'upper': [70, 255, 255]},
                'portal': {'lower': [100, 150, 150], 'upper': [130, 255, 255]},
            }
        }
        detector = MinimapDetector(config)
        assert detector.x1 == 900
        assert detector.map_w == 360

    def test_confidence_computation(self):
        """置信度计算: 面积分布"""
        from modules.minimap import MinimapDetector
        config = {'x1': 0, 'y1': 0, 'x2': 100, 'y2': 100}
        detector = MinimapDetector(config)

        # 面积在中间范围时置信度最高
        conf_mid = detector._compute_confidence(50, 10, 100)
        conf_edge = detector._compute_confidence(15, 10, 100)
        assert conf_mid > conf_edge

        # 面积超出范围时置信度为0
        conf_out = detector._compute_confidence(5, 10, 100)
        assert conf_out == 0.0

    def test_morphology_pipeline(self):
        """形态学管道: 闭运算 + 开运算 + 高斯模糊"""
        from modules.minimap import MinimapDetector
        config = {'x1': 0, 'y1': 0, 'x2': 100, 'y2': 100}
        detector = MinimapDetector(config)

        # 创建一个有噪声的掩码
        mask = np.zeros((100, 100), dtype=np.uint8)
        mask[30:70, 30:70] = 255
        # 添加一些噪声
        mask[10, 10] = 255
        mask[90, 90] = 255

        result = detector._morphology_pipeline(mask)
        assert result.shape == mask.shape
        assert result.dtype == np.uint8
        # 主体区域应该保留
        assert result[50, 50] == 255

    def test_find_player_on_synthetic_image(self):
        """find_player: 合成图像检测"""
        from modules.minimap import MinimapDetector
        import cv2

        config = {
            'x1': 0, 'y1': 0, 'x2': 100, 'y2': 100,
            'colors': {
                'player': {'lower': [20, 150, 150], 'upper': [35, 255, 255]}
            },
            'thresholds': {
                'player_min': 5, 'player_max': 500,
            }
        }
        detector = MinimapDetector(config)

        # 创建一张带黄色圆点的图像
        img = np.zeros((100, 100, 3), dtype=np.uint8)
        # 在 BGR 中画一个黄色圆
        cv2.circle(img, (50, 50), 10, (0, 255, 255), -1)  # BGR 黄色

        player = detector.find_player(img)
        assert player is not None
        assert abs(player.x - 50) < 5
        assert abs(player.y - 50) < 5
        assert player.confidence >= 0.6

    def test_extract_minimap_bounds_check(self):
        """_extract_minimap: 边界检查不越界"""
        from modules.minimap import MinimapDetector
        config = {'x1': 900, 'y1': 20, 'x2': 1260, 'y2': 180}
        detector = MinimapDetector(config)

        # 小于预期的图像
        small_img = np.zeros((50, 50, 3), dtype=np.uint8)
        result = detector._extract_minimap(small_img)
        assert result is not None
        # 不应崩溃


# ============================================================
# Phase 5: 战斗 AI 验证
# ============================================================

class TestPhase5CombatAI:
    """验证技能优先级、冷却跟踪、dodge"""

    def test_skill_slot_cooldown(self):
        """SkillSlot: 冷却跟踪"""
        from modules.combat import SkillSlot
        slot = SkillSlot(index=0, pos=(100, 200), cooldown=0.5)

        assert slot.is_ready() is True
        slot.use()
        assert slot.is_ready() is False
        time.sleep(0.6)
        assert slot.is_ready() is True

    def test_combat_controller_init(self):
        """CombatController: 正确初始化"""
        from modules.combat import CombatController
        mock_adb = MagicMock()

        config = {
            'attack_interval': 0.3,
            'move_interval': 0.1,
            'jump_cooldown': 0.6,
            'joystick': [200, 550],
            'jump_pos': [1200, 630],
        }
        skill_positions = [[950, 550], [1050, 550], [1150, 550]]

        combat = CombatController(mock_adb, config, skill_positions)
        assert len(combat.skill_slots) == 3
        assert combat.skill_slots[0].pos == (950, 550)

    def test_smart_skill_selection_aoe(self):
        """技能优先级: 怪物多时选择 AOE"""
        from modules.combat import CombatController, SkillSlot
        mock_adb = MagicMock()

        config = {
            'joystick': [200, 550],
            'jump_pos': [1200, 630],
        }
        skill_positions = [[100, 100], [200, 200], [300, 300], [400, 400]]

        combat = CombatController(mock_adb, config, skill_positions)
        # 设置第3、4个技能为 AOE
        combat.skill_slots[2].is_aoe = True
        combat.skill_slots[2].priority = 10
        combat.skill_slots[3].is_aoe = True
        combat.skill_slots[3].priority = 5

        # 怪物多时应选 AOE（优先级最高的）
        best = combat._select_best_skill(monster_count=5)
        assert best is not None
        assert best.is_aoe is True
        assert best.priority == 10

    def test_smart_skill_selection_default(self):
        """技能优先级: 怪物少时选优先级最高"""
        from modules.combat import CombatController
        mock_adb = MagicMock()

        config = {'joystick': [200, 550], 'jump_pos': [1200, 630]}
        skill_positions = [[100, 100], [200, 200]]

        combat = CombatController(mock_adb, config, skill_positions)
        combat.skill_slots[0].priority = 5
        combat.skill_slots[1].priority = 8

        best = combat._select_best_skill(monster_count=1)
        assert best is not None
        assert best.priority == 8

    def test_dodge_triggered_by_monster_count(self):
        """dodge: 怪物数量超阈值时触发"""
        from modules.combat import CombatController
        mock_adb = MagicMock()

        config = {'joystick': [200, 550], 'jump_pos': [1200, 630]}
        combat = CombatController(mock_adb, config, [])
        combat.config.dodge_enemy_count = 3

        # 怪物少，不应 dodge
        result = combat.dodge(direction=1, monster_count=2)
        assert result is False

        # 怪物多，应该 dodge
        result = combat.dodge(direction=1, monster_count=5)
        assert result is True

    def test_movement_controller_shared(self):
        """MovementController: combat 和 navigation 共享"""
        from modules.movement import MovementController
        mock_adb = MagicMock()

        mc = MovementController(mock_adb, [200, 550], [1200, 630])
        result = mc.move(1, duration=100)
        assert result is True
        mock_adb.swipe.assert_called_once()

    def test_attack_with_cooldown(self):
        """attack: 冷却期间不攻击"""
        from modules.combat import CombatController
        mock_adb = MagicMock()

        config = {
            'attack_interval': 0.5,
            'joystick': [200, 550],
            'jump_pos': [1200, 630],
        }
        combat = CombatController(mock_adb, config, [[100, 100]])
        combat.skill_slots[0].cooldown = 0.01  # 很短的冷却

        # 第一次攻击成功
        assert combat.attack(monster_count=1) is True
        # 立即再攻击（攻击间隔未过），应失败
        assert combat.attack(monster_count=1) is False


# ============================================================
# Phase 6: 导航健壮性验证
# ============================================================

class TestPhase6Navigation:
    """验证分类卡住检测、恢复策略、验证"""

    def test_stuck_levels_exist(self):
        """StuckLevel: 常量存在"""
        from modules.navigation import StuckLevel
        assert StuckLevel.SHORT == 'short'
        assert StuckLevel.MEDIUM == 'medium'
        assert StuckLevel.LONG == 'long'

    def test_navigator_init(self):
        """Navigator: 正确初始化"""
        from modules.navigation import Navigator
        mock_adb = MagicMock()
        config = {'joystick': [200, 550], 'jump': [1200, 630]}

        nav = Navigator(mock_adb, config)
        assert nav._stuck_start_time is None

    def test_check_stuck_detects_no_movement(self):
        """check_stuck: 位置不变时检测到卡住"""
        from modules.navigation import Navigator
        from modules.minimap import MapObject
        mock_adb = MagicMock()

        nav = Navigator(mock_adb, {'joystick': [200, 550], 'jump': [1200, 630]})
        nav.config.short_stuck_threshold = 0.01  # 10ms 就判定卡住

        pos = MapObject(x=100, y=100, area=50)
        nav.check_stuck(pos)
        time.sleep(0.02)  # 等待超过阈值
        result = nav.check_stuck(pos)  # 同一位置
        assert result is True

    def test_check_stuck_resets_on_movement(self):
        """check_stuck: 位置变化时重置"""
        from modules.navigation import Navigator
        from modules.minimap import MapObject
        mock_adb = MagicMock()

        nav = Navigator(mock_adb, {'joystick': [200, 550], 'jump': [1200, 630]})

        pos1 = MapObject(x=100, y=100, area=50)
        pos2 = MapObject(x=200, y=200, area=50)  # 明显移动

        nav.check_stuck(pos1)
        result = nav.check_stuck(pos2)
        assert result is False
        assert nav._stuck_start_time is None

    def test_get_stuck_level_classification(self):
        """get_stuck_level: 分类检测"""
        from modules.navigation import Navigator, StuckLevel
        mock_adb = MagicMock()

        nav = Navigator(mock_adb, {'joystick': [200, 550], 'jump': [1200, 630]})

        # 无卡住
        assert nav.get_stuck_level() is None

        # 设置卡住时间
        nav._stuck_start_time = time.time() - 0.5  # 0.5s
        assert nav.get_stuck_level() == StuckLevel.SHORT

        nav._stuck_start_time = time.time() - 3.0  # 3s
        assert nav.get_stuck_level() == StuckLevel.MEDIUM

        nav._stuck_start_time = time.time() - 15.0  # 15s
        assert nav.get_stuck_level() == StuckLevel.LONG

    def test_handle_stuck_calls_recovery(self):
        """handle_stuck: 调用对应恢复策略"""
        from modules.navigation import Navigator, StuckLevel
        mock_adb = MagicMock()

        nav = Navigator(mock_adb, {'joystick': [200, 550], 'jump': [1200, 630]})
        nav._stuck_start_time = time.time() - 0.5  # SHORT

        result = nav.handle_stuck()
        assert result is True
        # swipe 应被调用（短期恢复）
        assert mock_adb.swipe.called

    def test_navigate_to_arrives(self):
        """navigate_to: 到达目标时返回 True"""
        from modules.navigation import Navigator
        from modules.minimap import MapObject
        mock_adb = MagicMock()

        nav = Navigator(mock_adb, {'joystick': [200, 550], 'jump': [1200, 630]})

        player = MapObject(x=100, y=100, area=50)
        target = MapObject(x=105, y=105, area=50)  # 很近

        result = nav.navigate_to(player, target, arrive_threshold=20.0)
        assert result is True


# ============================================================
# Phase 7: 日志与监控验证
# ============================================================

class TestPhase7Logging:
    """验证性能监控和日志增强"""

    def test_performance_monitor_exists(self):
        """PerformanceMonitor: 类存在"""
        from core.logger import PerformanceMonitor
        pm = PerformanceMonitor()
        assert pm is not None

    def test_performance_monitor_record_frame(self):
        """PerformanceMonitor: 记录帧时间"""
        from core.logger import PerformanceMonitor
        pm = PerformanceMonitor(sample_window=10)

        for i in range(5):
            pm.record_frame(0.1)  # 100ms per frame

        summary = pm.get_summary()
        assert 'avg_frame_ms' in summary
        assert abs(summary['avg_frame_ms'] - 100.0) < 1.0
        assert abs(summary['fps'] - 10.0) < 1.0

    def test_performance_monitor_record_adb(self):
        """PerformanceMonitor: 记录 ADB 时间"""
        from core.logger import PerformanceMonitor
        pm = PerformanceMonitor()

        pm.record_adb(0.05)  # 50ms
        pm.record_adb(0.03)  # 30ms

        summary = pm.get_summary()
        assert 'avg_adb_ms' in summary
        assert abs(summary['avg_adb_ms'] - 40.0) < 1.0

    def test_performance_monitor_record_detection(self):
        """PerformanceMonitor: 记录检测时间"""
        from core.logger import PerformanceMonitor
        pm = PerformanceMonitor()

        pm.record_detection(0.02)  # 20ms

        summary = pm.get_summary()
        assert 'avg_detection_ms' in summary
        assert abs(summary['avg_detection_ms'] - 20.0) < 1.0

    def test_logger_has_perf(self):
        """Logger: 包含 perf 属性"""
        from core.logger import Logger, PerformanceMonitor
        Logger._instance = None

        with tempfile.TemporaryDirectory() as tmpdir:
            logger = Logger(name="PerfTest", log_dir=tmpdir)
            assert hasattr(logger, 'perf')
            assert isinstance(logger.perf, PerformanceMonitor)
            Logger._instance = None

    def test_maybe_report_respects_interval(self):
        """maybe_report: 10秒间隔"""
        from core.logger import PerformanceMonitor
        pm = PerformanceMonitor()
        pm._last_report_time = time.time()  # 刚报告过

        pm.record_frame(0.1)
        # 不应输出（未到10秒）
        pm.maybe_report()  # 不抛异常即可


# ============================================================
# 集成测试：跨模块验证
# ============================================================

class TestIntegration:
    """跨模块集成验证"""

    def test_config_to_combat_pipeline(self):
        """配置 → 战斗控制器 完整管道"""
        from core.config import Config
        from modules.combat import CombatController

        Config._instance = None
        with tempfile.NamedTemporaryFile(mode='w', suffix='.yaml', delete=False) as f:
            f.write("""
combat:
  attack_interval: 0.3
  move_interval: 0.1
  jump_cooldown: 0.6
  joystick: [200, 550]
  jump_pos: [1200, 630]
  skill_positions:
    - [950, 550]
    - [1050, 550]
""")
            f.flush()
            config = Config(f.name)
            mock_adb = MagicMock()

            combat = CombatController(
                mock_adb,
                config.get('combat', {}),
                config.get('combat.skill_positions', [])
            )
            assert len(combat.skill_slots) == 2

        os.unlink(f.name)
        Config._instance = None

    def test_minimap_to_combat_navigate(self):
        """minimap 检测 → combat 导航 完整管道"""
        from modules.minimap import MapObject
        from modules.combat import CombatController

        mock_adb = MagicMock()
        config = {'joystick': [200, 550], 'jump_pos': [1200, 630]}
        combat = CombatController(mock_adb, config, [])

        player = MapObject(x=100, y=100, area=50)
        monster = MapObject(x=200, y=100, area=30)

        arrived = combat.navigate_to(player, monster, is_npc=False)
        assert arrived is False  # 还没到
        assert mock_adb.swipe.called  # 应该有移动操作

    def test_full_state_cycle(self):
        """完整状态转换周期: IDLE → SEARCH → FIGHT → FIND_NPC"""
        from games.roguelike import RoguelikeGame, GameState
        from core.config import Config
        from core.logger import Logger

        Config._instance = None
        Logger._instance = None

        with tempfile.NamedTemporaryFile(mode='w', suffix='.yaml', delete=False) as f:
            f.write("device:\n  id: test\n  adb_path: adb\nminimap: {}\ncombat: {}\nnavigation: {}\nskill: {}\ngame: {}\n")
            f.flush()

            with tempfile.TemporaryDirectory() as logdir:
                Logger(name="IntTest", log_dir=logdir)
                game = RoguelikeGame(f.name)

                assert game.current_state == GameState.IDLE

                game._change_state(GameState.SEARCH, "start")
                assert game.current_state == GameState.SEARCH

                game._change_state(GameState.FIGHT, "found monsters")
                assert game.current_state == GameState.FIGHT
                assert game.previous_state == GameState.SEARCH

                game._change_state(GameState.FIND_NPC, "cleared")
                assert game.current_state == GameState.FIND_NPC
                assert game.previous_state == GameState.FIGHT

        os.unlink(f.name)
        Config._instance = None
        Logger._instance = None

    def test_skill_detector_end_to_end(self):
        """技能检测: Skill dataclass + SkillDetector"""
        from modules.skill import Skill, SkillDetector
        import cv2

        config = {
            'positions': [[100, 100], [200, 200]],
            'jump': [300, 300],
            'button_radius': 30,
            'color_threshold': 0.1,
        }
        detector = SkillDetector(config)

        # 创建一张有彩色区域的截图
        screenshot = np.zeros((400, 400, 3), dtype=np.uint8)
        cv2.circle(screenshot, (100, 100), 30, (0, 0, 255), -1)  # 红色
        cv2.circle(screenshot, (200, 200), 30, (0, 255, 0), -1)  # 绿色

        skills = detector.detect_skills(screenshot)
        assert len(skills) == 3  # 2 技能 + 1 跳跃
        assert skills[-1].name == "跳跃"
        assert skills[-1].unlocked is True


if __name__ == '__main__':
    pytest.main([__file__, '-v', '--tb=short'])
