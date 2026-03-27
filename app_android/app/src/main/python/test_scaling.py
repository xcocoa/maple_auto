# -*- coding: utf-8 -*-
"""
分辨率缩放测试

验证 Config 的动态分辨率缩放功能在不同分辨率下正确工作。
可在 PC 上直接运行（不需要 Android 环境）。

用法: python test_scaling.py
"""

import json
import sys

# 先重置单例
from config import Config, DEFAULT_CONFIG, BASE_WIDTH, BASE_HEIGHT

RESOLUTIONS = [
    (1280, 720, "基准分辨率（模拟器）"),
    (1920, 1080, "标准手机 (1080p)"),
    (2560, 1440, "高端手机 (2K)"),
    (1440, 900, "平板"),
    (800, 480, "低分辨率"),
]

PASS = 0
FAIL = 0


def check(name, actual, expected, tolerance=1):
    """检查值是否在容差范围内"""
    global PASS, FAIL
    if isinstance(expected, (list, tuple)):
        ok = all(abs(a - e) <= tolerance for a, e in zip(actual, expected))
    else:
        ok = abs(actual - expected) <= tolerance
    
    status = "PASS" if ok else "FAIL"
    if ok:
        PASS += 1
    else:
        FAIL += 1
    print(f"  [{status}] {name}: actual={actual}, expected={expected}")


def test_resolution(width, height, label):
    """测试单个分辨率"""
    Config.reset()
    config = Config()
    config.init_screen_size(width, height)

    scale_x = width / BASE_WIDTH
    scale_y = height / BASE_HEIGHT

    print(f"\n{'='*60}")
    print(f"Testing: {width}x{height} ({label})")
    print(f"Scale: ({scale_x:.3f}, {scale_y:.3f})")
    print(f"{'='*60}")

    # 1. 屏幕属性
    print("\n-- Screen Properties --")
    check("screen_width", config.screen_width, width)
    check("screen_height", config.screen_height, height)
    check("scale_x", config.scale_factor[0], scale_x, tolerance=0.001)
    check("scale_y", config.scale_factor[1], scale_y, tolerance=0.001)

    # 2. 小地图区域
    print("\n-- Minimap Area --")
    check("minimap.x1", config.get('minimap.x1'), int(900 * scale_x))
    check("minimap.y1", config.get('minimap.y1'), int(20 * scale_y))
    check("minimap.x2", config.get('minimap.x2'), int(1260 * scale_x))
    check("minimap.y2", config.get('minimap.y2'), int(180 * scale_y))

    # 验证小地图区域在屏幕范围内
    x2 = config.get('minimap.x2')
    y2 = config.get('minimap.y2')
    check("minimap.x2 <= width", x2 <= width, True, tolerance=0)
    check("minimap.y2 <= height", y2 <= height, True, tolerance=0)

    # 3. 面积阈值（按面积比缩放）
    print("\n-- Area Thresholds --")
    area_scale = scale_x * scale_y
    check("player_min", config.get('minimap.thresholds.player_min'),
          int(20 * area_scale))
    check("monster_max", config.get('minimap.thresholds.monster_max'),
          int(1000 * area_scale))

    # 4. 战斗坐标
    print("\n-- Combat Coords --")
    check("joystick", config.get('combat.joystick'),
          [int(200 * scale_x), int(550 * scale_y)])
    check("jump_pos", config.get('combat.jump_pos'),
          [int(1200 * scale_x), int(630 * scale_y)])

    skill_pos_0 = config.get('combat.skill_positions')[0]
    check("skill[0]", skill_pos_0,
          [int(950 * scale_x), int(550 * scale_y)])

    # 验证技能按钮在屏幕范围内
    for i, pos in enumerate(config.get('combat.skill_positions')):
        in_bounds = pos[0] <= width and pos[1] <= height
        check(f"skill[{i}] in bounds", in_bounds, True, tolerance=0)

    # 5. 导航坐标
    print("\n-- Navigation Coords --")
    check("nav.joystick", config.get('navigation.joystick'),
          [int(200 * scale_x), int(550 * scale_y)])
    check("nav.jump", config.get('navigation.jump'),
          [int(1200 * scale_x), int(630 * scale_y)])

    # 6. 游戏逻辑
    print("\n-- Game Logic --")
    check("screen_center_x", config.get('game.screen_center_x'), width // 2)
    check("screen_center_y", config.get('game.screen_center_y'), height // 2)
    check("up_key_pos", config.get('game.up_key_pos'),
          [int(540 * scale_x), int(400 * scale_y)])
    check("attack_range", config.get('game.attack_range'),
          int(100 * scale_x))

    # 7. 技能检测
    print("\n-- Skill Detection --")
    check("button_radius", config.get('skill.button_radius'),
          int(50 * scale_x))

    # 8. get_base 返回原始值
    print("\n-- Base Values (unscaled) --")
    check("base minimap.x1", config.get_base('minimap.x1'), 900)
    check("base minimap.y1", config.get_base('minimap.y1'), 20)


def test_no_screen_init():
    """测试未初始化屏幕时使用默认值"""
    Config.reset()
    config = Config()

    print(f"\n{'='*60}")
    print("Testing: No screen init (default 1280x720)")
    print(f"{'='*60}")

    check("minimap.x1", config.get('minimap.x1'), 900)
    check("joystick", config.get('combat.joystick'), [200, 550])
    check("screen_initialized", config.screen_initialized, False, tolerance=0)


def test_invalid_screen_size():
    """测试无效屏幕尺寸"""
    Config.reset()
    config = Config()
    config.init_screen_size(0, 0)

    print(f"\n{'='*60}")
    print("Testing: Invalid screen size (0x0)")
    print(f"{'='*60}")

    # 应该保持默认值
    check("minimap.x1 unchanged", config.get('minimap.x1'), 900)
    check("screen_initialized", config.screen_initialized, False, tolerance=0)


if __name__ == '__main__':
    print("=" * 60)
    print("Resolution Scaling Test Suite")
    print("=" * 60)

    test_no_screen_init()
    test_invalid_screen_size()

    for w, h, label in RESOLUTIONS:
        test_resolution(w, h, label)

    print(f"\n{'='*60}")
    print(f"Results: {PASS} passed, {FAIL} failed")
    print(f"{'='*60}")

    sys.exit(1 if FAIL > 0 else 0)
