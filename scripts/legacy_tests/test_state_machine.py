# -*- coding: utf-8 -*-
"""
状态机引擎验证测试
在真机上测试状态机引擎的核心功能：
1. 截图 + 主界面匹配
2. 全局处理器（弹窗关闭）
3. 状态转换（前3个状态）
"""

import sys
import os
import time
import cv2
import numpy as np

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from typing import Optional
from core.adb import ADB
from modules.state_machine import (
    StateMachineEngine, StateMachineConfigParser,
    State, StateMatch, StateAction, MatchMode, ActionType,
    StateMachineFlow, GlobalHandler, StateContext,
)
from modules.scene_player import ScenePlayer
from modules.ui_detector import UIDetector

import logging
logging.basicConfig(level=logging.INFO, format='%(asctime)s [%(levelname)s] %(message)s')
logger = logging.getLogger('AutoDaily')

BASE_W, BASE_H = 1280, 720


class ScaledADB:
    """ADB 代理：截图缩放到基准分辨率，触摸坐标反向缩放到设备分辨率"""

    def __init__(self, adb: ADB, base_w: int = 1280, base_h: int = 720):
        self._adb = adb
        self._base_w = base_w
        self._base_h = base_h
        self._scale_x = 1.0
        self._scale_y = 1.0
        self._calibrated = False
        self._crop_x = 0
        self._crop_y = 0
        self._crop_w = 0
        self._crop_h = 0

    def calibrate(self, device_w: int, device_h: int):
        """根据实际设备分辨率计算缩放比，处理全面屏比例差异"""
        base_ratio = self._base_w / self._base_h  # 1.778 (16:9)
        device_ratio = device_w / device_h

        if abs(device_ratio - base_ratio) < 0.05:
            self._crop_x = 0
            self._crop_y = 0
            self._crop_w = device_w
            self._crop_h = device_h
        elif device_ratio > base_ratio:
            target_w = int(device_h * base_ratio)
            self._crop_x = (device_w - target_w) // 2
            self._crop_y = 0
            self._crop_w = target_w
            self._crop_h = device_h
        else:
            target_h = int(device_w / base_ratio)
            self._crop_x = 0
            self._crop_y = (device_h - target_h) // 2
            self._crop_w = device_w
            self._crop_h = target_h

        self._scale_x = self._crop_w / self._base_w
        self._scale_y = self._crop_h / self._base_h
        self._calibrated = True

        logger.info(
            f"设备分辨率: {device_w}x{device_h}, "
            f"裁剪偏移: ({self._crop_x}, {self._crop_y}), "
            f"裁剪区域: {self._crop_w}x{self._crop_h}, "
            f"缩放比: ({self._scale_x:.3f}, {self._scale_y:.3f})"
        )

    def screenshot(self, force_refresh: bool = False) -> Optional[np.ndarray]:
        """截图并缩放到基准分辨率"""
        raw = self._adb.screenshot(force_refresh=force_refresh)
        if raw is None:
            return None

        h, w = raw.shape[:2]

        if not self._calibrated:
            self.calibrate(w, h)

        # 裁剪到 16:9 区域
        if self._crop_x > 0 or self._crop_y > 0:
            x1 = self._crop_x
            y1 = self._crop_y
            x2 = x1 + self._crop_w
            y2 = y1 + self._crop_h
            raw = raw[y1:y2, x1:x2]

        # 缩放到基准分辨率
        if raw.shape[1] != self._base_w or raw.shape[0] != self._base_h:
            raw = cv2.resize(raw, (self._base_w, self._base_h))

        return raw

    def tap(self, x: int, y: int) -> None:
        """点击：基准坐标 → 设备坐标"""
        if not self._calibrated:
            self._adb.tap(x, y)
            return
        device_x = int(x * self._scale_x) + self._crop_x
        device_y = int(y * self._scale_y) + self._crop_y
        logger.info(f"tap: 基准({x},{y}) → 设备({device_x},{device_y})")
        self._adb.tap(device_x, device_y)

    def swipe(self, x1: int, y1: int, x2: int, y2: int, duration: int = 100) -> None:
        """滑动：基准坐标 → 设备坐标"""
        if not self._calibrated:
            self._adb.swipe(x1, y1, x2, y2, duration)
            return
        self._adb.swipe(
            int(x1 * self._scale_x) + self._crop_x,
            int(y1 * self._scale_y) + self._crop_y,
            int(x2 * self._scale_x) + self._crop_x,
            int(y2 * self._scale_y) + self._crop_y,
            duration
        )

    def run(self, cmd: str) -> str:
        """透传 ADB 命令"""
        return self._adb.run(cmd)

    def get_screen_size(self):
        return self._adb.get_screen_size()

    def invalidate_cache(self):
        self._adb.invalidate_cache()


def test_screenshot(adb):
    """测试1：截图能力"""
    print("\n" + "=" * 60)
    print("测试1：截图能力")
    print("=" * 60)

    img = adb.screenshot()
    if img is None:
        print("❌ 截图失败")
        return None

    h, w = img.shape[:2]
    print(f"✅ 截图成功: {w}x{h}")

    # 缩放到基准分辨率
    if w != BASE_W or h != BASE_H:
        img = cv2.resize(img, (BASE_W, BASE_H))
        print(f"   已缩放到 {BASE_W}x{BASE_H}")

    return img


def test_main_screen_match(screenshot, scene_player):
    """测试2：主界面匹配（区域特征）"""
    print("\n" + "=" * 60)
    print("测试2：主界面匹配（区域特征）")
    print("=" * 60)

    # 定义主界面的 UI 区域特征
    ui_regions = [
        {"name": "左上角-人物信息栏", "x1": 0, "y1": 0, "x2": 350, "y2": 120, "min_edge_density": 0.08},
        {"name": "右上角-工具操作栏", "x1": 900, "y1": 0, "x2": 1280, "y2": 120, "min_edge_density": 0.08},
        {"name": "左下角-虚拟摇杆", "x1": 0, "y1": 500, "x2": 300, "y2": 720, "min_edge_density": 0.08},
        {"name": "右下角-技能栏", "x1": 800, "y1": 500, "x2": 1280, "y2": 720, "min_edge_density": 0.08},
    ]

    matched, score = scene_player._match_by_region_feature(screenshot, ui_regions, 0.75)
    print(f"   匹配结果: {'✅ 匹配' if matched else '❌ 不匹配'}, 得分: {score:.3f}")
    return matched


def test_config_parse():
    """测试3：YAML 配置解析"""
    print("\n" + "=" * 60)
    print("测试3：YAML 配置解析")
    print("=" * 60)

    flows = StateMachineConfigParser.parse_file('config/daily_states.yaml')
    print(f"   解析到 {len(flows)} 个流程:")
    for name, flow in flows.items():
        print(f"     {name}: {len(flow.states)} 个状态, 初始={flow.initial_state}")

    return flows


def test_engine_dry_run(flows, scene_player, adb):
    """测试4：状态机引擎干跑（只执行前3个状态转换）"""
    print("\n" + "=" * 60)
    print("测试4：状态机引擎 - 前3步验证（含 OCR）")
    print("=" * 60)

    # 创建 UIDetector 实例（支持 OCR 匹配）
    ui_detector = UIDetector({})
    engine = StateMachineEngine(scene_player=scene_player, ui_detector=ui_detector)

    flow = flows.get('daily_all')
    if not flow:
        print("❌ 未找到 daily_all 流程")
        return

    # 手动执行前3步
    ctx = StateContext(
        current_state_id=flow.initial_state,
        flow_start_time=time.time(),
        state_enter_time=time.time(),
        is_running=True,
    )

    max_steps = 3
    step = 0

    while ctx.is_running and step < max_steps:
        step += 1
        print(f"\n--- 步骤 {step}/{max_steps} ---")
        print(f"   当前状态: {ctx.current_state_id}")

        # 截图
        screenshot = adb.screenshot()
        if screenshot is None:
            print("   ❌ 截图失败，跳过")
            time.sleep(1)
            continue

        h, w = screenshot.shape[:2]
        if w != BASE_W or h != BASE_H:
            screenshot = cv2.resize(screenshot, (BASE_W, BASE_H))

        # 获取当前状态
        current_state = flow.states.get(ctx.current_state_id)
        if current_state is None:
            print(f"   ❌ 未知状态: {ctx.current_state_id}")
            break

        print(f"   描述: {current_state.description}")
        print(f"   匹配模式: {current_state.match.mode.value}")

        # 尝试匹配
        matched = engine._match_state(current_state, screenshot, adb)
        print(f"   匹配结果: {'✅ 匹配' if matched else '⏳ 等待匹配'}")

        if matched:
            # 执行动作
            print(f"   动作类型: {current_state.action.type.value}")
            engine._execute_action(current_state, adb, screenshot)
            print(f"   ✅ 动作已执行")

            # 等待
            print(f"   等待 {current_state.wait_after}s...")
            time.sleep(current_state.wait_after)

            # 转换
            next_id = current_state.next_state
            print(f"   → 转换到: {next_id}")
            ctx.current_state_id = next_id
            ctx.state_enter_time = time.time()
        else:
            # 等待一段时间后重试
            print(f"   等待 2s 后重试...")
            time.sleep(2)

            # 再次截图匹配
            screenshot = adb.screenshot()
            if screenshot is not None:
                h, w = screenshot.shape[:2]
                if w != BASE_W or h != BASE_H:
                    screenshot = cv2.resize(screenshot, (BASE_W, BASE_H))
                matched = engine._match_state(current_state, screenshot, adb)
                if matched:
                    print(f"   ✅ 重试匹配成功")
                    engine._execute_action(current_state, adb, screenshot)
                    time.sleep(current_state.wait_after)
                    ctx.current_state_id = current_state.next_state
                    ctx.state_enter_time = time.time()
                else:
                    print(f"   ⏭️ 跳过此状态，继续下一个")
                    ctx.current_state_id = current_state.next_state
                    ctx.state_enter_time = time.time()

    print(f"\n最终停留在状态: {ctx.current_state_id}")
    print(f"引擎统计: {engine.stats}")


def main():
    print("🎮 状态机引擎验证测试")
    print("=" * 60)

    # 初始化 ADB（使用 ScaledADB 处理坐标缩放）
    raw_adb = ADB('ZY22LJC9ST')
    adb = ScaledADB(raw_adb, BASE_W, BASE_H)
    print(f"设备: {raw_adb.device_id}")

    # 初始化场景播放器（用于模板匹配）
    scene_player = ScenePlayer({})
    scene_player.load_config('config/daily_scenes.yaml')

    # 测试1：截图
    screenshot = test_screenshot(adb)
    if screenshot is None:
        return

    # 测试2：主界面匹配
    test_main_screen_match(screenshot, scene_player)

    # 测试3：配置解析
    flows = test_config_parse()

    # 测试4：引擎干跑（前3步）
    print("\n⚠️  即将执行前3步操作（会点击屏幕）")
    print("   3秒后开始...")
    time.sleep(3)
    test_engine_dry_run(flows, scene_player, adb)

    print("\n" + "=" * 60)
    print("✅ 验证测试完成")
    print("=" * 60)

    # 清理
    if os.path.exists('test_sm.png'):
        os.remove('test_sm.png')


if __name__ == '__main__':
    main()
