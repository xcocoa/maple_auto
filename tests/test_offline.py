# -*- coding: utf-8 -*-
"""
离线截图回放测试框架

核心思想：
  - MockADB 用预录截图序列模拟 screenshot() 返回
  - 支持"状态→截图"映射：根据当前状态机状态+执行的动作，自动切换到对应截图
  - 记录所有 tap/swipe 操作，用于验证动作是否正确
  - 不需要连接真机，完全离线运行

使用方式：
  1. 先运行 prepare_screenshots.py 准备截图素材
  2. 运行本脚本进行离线测试
"""

import os
import sys
import cv2
import time
import logging
import numpy as np
from typing import Optional, List, Dict, Tuple
from dataclasses import dataclass, field

# 添加项目根目录到 path
PROJECT_ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, PROJECT_ROOT)

from modules.state_machine import (
    StateMachineEngine, StateMachineConfigParser,
    StateMachineFlow, StateContext, MatchMode,
)
from modules.scene_player import ScenePlayer
from modules.ui_detector import UIDetector

# 配置日志
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s [%(levelname)s] %(message)s'
)
logger = logging.getLogger('AutoDaily')

SCREENSHOTS_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'screenshots')


# ==================== MockADB ====================

@dataclass
class ActionRecord:
    """记录一次操作"""
    action_type: str  # 'tap', 'swipe', 'run'
    params: dict
    timestamp: float
    state_id: str = ""  # 操作时的状态机状态


class MockADB:
    """
    模拟 ADB 设备，用预录截图替代真机截图
    
    支持两种模式：
    1. 序列模式：按顺序返回截图列表中的图片
    2. 状态映射模式：根据当前状态返回对应截图（更灵活）
    
    所有 tap/swipe 操作都会被记录，用于验证。
    """

    def __init__(self):
        # 截图序列（序列模式）
        self._screenshots: List[np.ndarray] = []
        self._current_index: int = 0
        
        # 状态→截图映射（状态映射模式）
        self._state_screenshots: Dict[str, np.ndarray] = {}
        self._current_state: str = ""
        
        # 动作→截图转换规则：(当前截图名, tap区域) → 下一截图名
        self._transition_rules: Dict[str, Dict[str, str]] = {}
        
        # 当前活跃截图（可被动作改变）
        self._active_screenshot: Optional[np.ndarray] = None
        self._active_name: str = ""
        
        # 操作记录
        self.action_log: List[ActionRecord] = []
        
        # 默认截图（当没有匹配的截图时返回）
        self._default_screenshot: Optional[np.ndarray] = None
        
        # 状态机引擎的上下文引用（用于获取当前状态）
        self._engine_context: Optional[StateContext] = None

    def load_screenshot(self, name: str, path: str) -> bool:
        """加载单张截图"""
        img = cv2.imread(path)
        if img is None:
            logger.warning(f"无法加载截图: {path}")
            return False
        
        # 确保是 1280x720
        h, w = img.shape[:2]
        if w != 1280 or h != 720:
            img = cv2.resize(img, (1280, 720))
        
        self._state_screenshots[name] = img
        if self._default_screenshot is None:
            self._default_screenshot = img
        return True

    def load_screenshots_dir(self, directory: str) -> int:
        """加载目录下所有截图"""
        count = 0
        if not os.path.exists(directory):
            logger.error(f"截图目录不存在: {directory}")
            return 0
        
        for filename in sorted(os.listdir(directory)):
            if filename.endswith('.png') or filename.endswith('.jpg'):
                name = os.path.splitext(filename)[0]
                path = os.path.join(directory, filename)
                if self.load_screenshot(name, path):
                    count += 1
        
        logger.info(f"已加载 {count} 张截图")
        return count

    def set_active(self, name: str):
        """设置当前活跃截图"""
        if name in self._state_screenshots:
            self._active_screenshot = self._state_screenshots[name]
            self._active_name = name
        else:
            logger.warning(f"截图不存在: {name}")

    def add_sequence(self, names: List[str]):
        """添加截图序列（序列模式）"""
        for name in names:
            if name in self._state_screenshots:
                self._screenshots.append(self._state_screenshots[name])
            else:
                logger.warning(f"序列中的截图不存在: {name}")

    def add_transition(self, from_screenshot: str, tap_region: str, to_screenshot: str):
        """
        添加动作转换规则
        
        Args:
            from_screenshot: 当前截图名
            tap_region: 点击区域描述（如 "menu_btn", "close_btn"）
            to_screenshot: 点击后切换到的截图名
        """
        if from_screenshot not in self._transition_rules:
            self._transition_rules[from_screenshot] = {}
        self._transition_rules[from_screenshot][tap_region] = to_screenshot

    def set_engine_context(self, ctx: StateContext):
        """设置状态机上下文引用"""
        self._engine_context = ctx

    # ==================== ADB 接口模拟 ====================

    def screenshot(self, force_refresh: bool = False) -> Optional[np.ndarray]:
        """模拟截图 - 返回当前活跃截图"""
        # 优先使用活跃截图
        if self._active_screenshot is not None:
            return self._active_screenshot.copy()
        
        # 序列模式
        if self._screenshots:
            if self._current_index < len(self._screenshots):
                img = self._screenshots[self._current_index]
                return img.copy()
            else:
                # 序列用完，返回最后一张
                return self._screenshots[-1].copy()
        
        # 默认截图
        if self._default_screenshot is not None:
            return self._default_screenshot.copy()
        
        return None

    def tap(self, x: int, y: int) -> None:
        """模拟点击 - 记录操作"""
        state_id = self._engine_context.current_state_id if self._engine_context else ""
        self.action_log.append(ActionRecord(
            action_type='tap',
            params={'x': x, 'y': y},
            timestamp=time.time(),
            state_id=state_id,
        ))
        logger.debug(f"MockADB.tap({x}, {y}) [state={state_id}]")

    def swipe(self, x1: int, y1: int, x2: int, y2: int, duration: int = 100) -> None:
        """模拟滑动 - 记录操作"""
        state_id = self._engine_context.current_state_id if self._engine_context else ""
        self.action_log.append(ActionRecord(
            action_type='swipe',
            params={'x1': x1, 'y1': y1, 'x2': x2, 'y2': y2, 'duration': duration},
            timestamp=time.time(),
            state_id=state_id,
        ))
        logger.debug(f"MockADB.swipe({x1},{y1} → {x2},{y2}) [state={state_id}]")

    def run(self, cmd: str) -> str:
        """模拟 ADB 命令 - 记录操作"""
        state_id = self._engine_context.current_state_id if self._engine_context else ""
        self.action_log.append(ActionRecord(
            action_type='run',
            params={'cmd': cmd},
            timestamp=time.time(),
            state_id=state_id,
        ))
        return ""

    def get_screen_size(self):
        return (1280, 720)

    def invalidate_cache(self):
        pass

    def advance(self):
        """手动推进到下一张截图（序列模式）"""
        if self._current_index < len(self._screenshots) - 1:
            self._current_index += 1

    # ==================== 分析工具 ====================

    def get_action_summary(self) -> str:
        """获取操作摘要"""
        lines = []
        lines.append(f"📋 操作记录 ({len(self.action_log)} 次操作):")
        for i, record in enumerate(self.action_log):
            if record.action_type == 'tap':
                lines.append(
                    f"  [{i+1}] TAP ({record.params['x']}, {record.params['y']}) "
                    f"[state={record.state_id}]"
                )
            elif record.action_type == 'swipe':
                p = record.params
                lines.append(
                    f"  [{i+1}] SWIPE ({p['x1']},{p['y1']}→{p['x2']},{p['y2']}) "
                    f"[state={record.state_id}]"
                )
            elif record.action_type == 'run':
                lines.append(
                    f"  [{i+1}] RUN: {record.params['cmd'][:60]} "
                    f"[state={record.state_id}]"
                )
        return "\n".join(lines)

    def get_taps_for_state(self, state_id: str) -> List[Tuple[int, int]]:
        """获取某个状态下的所有点击坐标"""
        return [
            (r.params['x'], r.params['y'])
            for r in self.action_log
            if r.action_type == 'tap' and r.state_id == state_id
        ]


# ==================== 离线测试运行器 ====================

class OfflineTestRunner:
    """
    离线测试运行器
    
    加载截图和配置，运行状态机引擎的匹配逻辑（不执行实际动作），
    验证每个状态的匹配结果和全局处理器的触发情况。
    """

    def __init__(self):
        self.mock_adb = MockADB()
        self.scene_player = ScenePlayer({})
        self.ui_detector = UIDetector({})
        self.engine = StateMachineEngine(
            scene_player=self.scene_player,
            ui_detector=self.ui_detector,
        )
        
        # 加载场景配置
        scenes_config = os.path.join(PROJECT_ROOT, 'config', 'daily_scenes.yaml')
        if os.path.exists(scenes_config):
            self.scene_player.load_config(scenes_config)

    def load_screenshots(self, directory: str = None):
        """加载测试截图"""
        if directory is None:
            directory = SCREENSHOTS_DIR
        return self.mock_adb.load_screenshots_dir(directory)

    def load_flow(self, config_path: str = None) -> Dict[str, StateMachineFlow]:
        """加载状态机配置"""
        if config_path is None:
            config_path = os.path.join(PROJECT_ROOT, 'config', 'daily_states.yaml')
        
        flows = StateMachineConfigParser.parse_file(config_path)
        for name, flow in flows.items():
            self.engine.register_flow(flow)
        return flows

    def test_single_screenshot_matching(self, screenshot_name: str, flow_name: str = 'daily_all'):
        """
        测试单张截图对所有状态和全局处理器的匹配情况
        
        这是最核心的离线测试功能：给定一张截图，检查它能匹配到哪些状态和全局处理器。
        """
        flow = self.engine._flows.get(flow_name)
        if flow is None:
            print(f"❌ 流程不存在: {flow_name}")
            return

        img = self.mock_adb._state_screenshots.get(screenshot_name)
        if img is None:
            print(f"❌ 截图不存在: {screenshot_name}")
            return

        print(f"\n{'='*70}")
        print(f"📸 测试截图: {screenshot_name}")
        print(f"{'='*70}")

        # 1. OCR 全图扫描
        print("\n--- OCR 全图扫描结果 ---")
        scan_results = self.ui_detector.ocr_full_scan(img)
        if scan_results:
            for item in scan_results:
                print(f"  [{item['confidence']:.2f}] \"{item['text']}\" "
                      f"@ ({item['x']}, {item['y']}) {item['w']}x{item['h']}")
        else:
            print("  (无 OCR 结果)")

        # 2. 测试所有状态匹配
        print(f"\n--- 状态匹配测试 ({len(flow.states)} 个状态) ---")
        matched_states = []
        for state_id, state in flow.states.items():
            matched = self.engine._match_state(state, img, self.mock_adb, scan_results)
            if matched:
                matched_states.append(state_id)
                print(f"  ✅ {state_id}: {state.description}")
                print(f"     匹配模式: {state.match.mode.value}, "
                      f"动作: {state.action.type.value}, "
                      f"下一状态: {state.next_state}")

        if not matched_states:
            print("  (无匹配状态)")

        # 3. 测试全局处理器匹配
        print(f"\n--- 全局处理器匹配测试 ({len(flow.global_handlers)} 个处理器) ---")
        matched_handlers = []
        for handler in flow.global_handlers:
            matched = self.engine._match_global_handler(handler, img, scan_results)
            if matched:
                matched_handlers.append(handler.id)
                print(f"  ⚡ {handler.id}: {handler.description}")
                print(f"     动作: TAP ({handler.action.tap_x}, {handler.action.tap_y})")

        if not matched_handlers:
            print("  (无匹配处理器)")

        # 4. 区域特征匹配（主界面检测）
        print(f"\n--- 区域特征匹配 ---")
        main_regions = [
            {"name": "左上角-人物信息栏", "x1": 0, "y1": 0, "x2": 350, "y2": 120, "min_edge_density": 0.08},
            {"name": "右上角-工具操作栏", "x1": 900, "y1": 0, "x2": 1280, "y2": 120, "min_edge_density": 0.08},
            {"name": "左下角-虚拟摇杆", "x1": 0, "y1": 500, "x2": 300, "y2": 720, "min_edge_density": 0.08},
            {"name": "右下角-技能栏", "x1": 800, "y1": 500, "x2": 1280, "y2": 720, "min_edge_density": 0.08},
        ]
        matched, score = self.scene_player._match_by_region_feature(img, main_regions, 0.75)
        print(f"  主界面区域特征: {'✅ 匹配' if matched else '❌ 不匹配'} (得分={score:.3f})")

        # 5. 冲突检测
        if len(matched_states) > 1:
            print(f"\n⚠️  警告：多个状态同时匹配！可能导致误匹配:")
            for sid in matched_states:
                state = flow.states[sid]
                print(f"     - {sid}: {state.description}")

        if matched_handlers and matched_states:
            print(f"\n⚠️  注意：全局处理器和状态同时匹配（全局处理器优先级更高）:")
            for hid in matched_handlers:
                print(f"     - 处理器: {hid}")
            for sid in matched_states:
                print(f"     - 状态: {sid}")

        return {
            'screenshot': screenshot_name,
            'ocr_results': scan_results,
            'matched_states': matched_states,
            'matched_handlers': matched_handlers,
            'is_main_screen': matched,
            'main_screen_score': score,
        }

    def test_all_screenshots(self, flow_name: str = 'daily_all'):
        """对所有已加载的截图运行匹配测试"""
        results = {}
        for name in sorted(self.mock_adb._state_screenshots.keys()):
            results[name] = self.test_single_screenshot_matching(name, flow_name)
        
        # 汇总报告
        print(f"\n{'='*70}")
        print(f"📊 汇总报告")
        print(f"{'='*70}")
        
        for name, result in results.items():
            states = result['matched_states']
            handlers = result['matched_handlers']
            is_main = result['is_main_screen']
            
            status = []
            if is_main:
                status.append("主界面")
            if states:
                status.append(f"状态: {', '.join(states)}")
            if handlers:
                status.append(f"处理器: {', '.join(handlers)}")
            if not status:
                status.append("❌ 无匹配")
            
            print(f"  {name}: {' | '.join(status)}")
        
        return results

    def simulate_flow(self, flow_name: str, screenshot_sequence: List[str],
                      max_ticks: int = 50):
        """
        模拟状态机流程执行
        
        Args:
            flow_name: 流程名称
            screenshot_sequence: 截图序列（每次tick使用下一张截图）
            max_ticks: 最大tick次数
        """
        flow = self.engine._flows.get(flow_name)
        if flow is None:
            print(f"❌ 流程不存在: {flow_name}")
            return

        print(f"\n{'='*70}")
        print(f"🎮 模拟流程: {flow_name}")
        print(f"   截图序列: {screenshot_sequence}")
        print(f"{'='*70}")

        # 设置截图序列
        self.mock_adb._screenshots = []
        for name in screenshot_sequence:
            if name in self.mock_adb._state_screenshots:
                self.mock_adb._screenshots.append(self.mock_adb._state_screenshots[name])
            else:
                print(f"⚠️  截图不存在: {name}")
        self.mock_adb._current_index = 0
        self.mock_adb.action_log = []

        # 初始化上下文
        ctx = StateContext(
            current_state_id=flow.initial_state,
            flow_start_time=time.time(),
            state_enter_time=time.time(),
            is_running=True,
        )
        self.mock_adb.set_engine_context(ctx)

        # 模拟 tick 循环（不使用 time.sleep）
        tick_count = 0
        while ctx.is_running and tick_count < max_ticks:
            tick_count += 1
            
            # 获取截图
            screenshot = self.mock_adb.screenshot()
            if screenshot is None:
                break

            h, w = screenshot.shape[:2]
            if w != 1280 or h != 720:
                screenshot = cv2.resize(screenshot, (1280, 720))

            # OCR 扫描
            scan_results = self.ui_detector.ocr_full_scan(screenshot)

            # 检查全局处理器
            global_handled = self._check_global_handlers_offline(
                flow, ctx, screenshot, scan_results
            )
            if global_handled:
                continue

            # 获取当前状态
            current_state = flow.states.get(ctx.current_state_id)
            if current_state is None or current_state.is_terminal:
                if current_state and current_state.is_terminal:
                    ctx.is_completed = True
                ctx.is_running = False
                break

            # 匹配
            matched = self.engine._match_state(current_state, screenshot, self.mock_adb, scan_results)

            if matched:
                ctx.consecutive_timeouts = 0
                print(f"  [tick {tick_count}] ✅ 匹配: {current_state.id} - {current_state.description}")
                print(f"      动作: {current_state.action.type.value}", end="")
                if current_state.action.type.value == 'tap':
                    print(f" ({current_state.action.tap_x}, {current_state.action.tap_y})", end="")
                print(f" → 下一状态: {current_state.next_state}")
                
                # 执行动作（记录到 MockADB）
                self.engine._execute_action(current_state, self.mock_adb, screenshot)
                ctx.completed_states.append(current_state.id)
                
                # 推进截图
                self.mock_adb.advance()
                UIDetector.invalidate_ocr_cache()
                
                # 转换状态
                if current_state.next_state:
                    ctx.previous_state_id = ctx.current_state_id
                    ctx.current_state_id = current_state.next_state
                    ctx.state_enter_time = time.time()
                    ctx.transition_count += 1
                else:
                    ctx.is_completed = True
                    ctx.is_running = False
            else:
                # 模拟超时（离线模式直接超时）
                print(f"  [tick {tick_count}] ⏳ 未匹配: {current_state.id} - {current_state.description}")
                self._handle_timeout_offline(flow, ctx, current_state)

        # 结果
        print(f"\n--- 模拟结果 ---")
        print(f"  完成: {ctx.is_completed}")
        print(f"  最终状态: {ctx.current_state_id}")
        print(f"  状态转换: {ctx.transition_count} 次")
        print(f"  已完成状态: {ctx.completed_states}")
        print(f"\n{self.mock_adb.get_action_summary()}")

    def _check_global_handlers_offline(self, flow, ctx, screenshot, scan_results):
        """离线版全局处理器检查"""
        for handler in flow.global_handlers:
            trigger_count = ctx.global_trigger_counts.get(handler.id, 0)
            if trigger_count >= handler.max_triggers:
                continue

            matched = self.engine._match_global_handler(handler, screenshot, scan_results)
            if matched:
                print(f"  ⚡ 全局处理器触发: {handler.id} - {handler.description}")
                
                # 记录动作
                if handler.action.type.value == 'tap':
                    self.mock_adb.tap(handler.action.tap_x, handler.action.tap_y)
                
                ctx.global_trigger_counts[handler.id] = trigger_count + 1
                
                # 离线模式：全局处理器触发后推进截图（模拟弹窗关闭后画面变化）
                self.mock_adb.advance()
                UIDetector.invalidate_ocr_cache()
                return True
        return False

    def _handle_timeout_offline(self, flow, ctx, state):
        """离线版超时处理"""
        ctx.consecutive_timeouts += 1
        
        if state.optional:
            print(f"    → 可选状态，跳过")
            if state.next_state:
                ctx.current_state_id = state.next_state
                ctx.state_enter_time = time.time()
                ctx.transition_count += 1
            return

        action = state.timeout_action
        if action == "skip":
            print(f"    → 超时跳过")
            if state.next_state:
                ctx.current_state_id = state.next_state
                ctx.state_enter_time = time.time()
                ctx.transition_count += 1
        elif action == "fallback":
            fallback_key = f"{state.id}->{state.fallback_state}"
            fallback_count = ctx.fallback_counts.get(fallback_key, 0)
            max_fallbacks = 3
            
            if state.fallback_state and fallback_count < max_fallbacks:
                ctx.fallback_counts[fallback_key] = fallback_count + 1
                print(f"    → 回退到: {state.fallback_state} (第 {fallback_count + 1}/{max_fallbacks} 次)")
                ctx.current_state_id = state.fallback_state
                ctx.state_enter_time = time.time()
                ctx.transition_count += 1
            else:
                if fallback_count >= max_fallbacks:
                    print(f"    → 回退次数已达上限 ({max_fallbacks} 次)，跳过当前任务")
                else:
                    print(f"    → 回退状态无效，跳过")
                if state.next_state:
                    ctx.current_state_id = state.next_state
                    ctx.state_enter_time = time.time()
                    ctx.transition_count += 1
        elif action == "retry":
            if ctx.consecutive_timeouts < 3:
                print(f"    → 重试 (第 {ctx.consecutive_timeouts} 次)")
                ctx.state_enter_time = time.time()
            else:
                print(f"    → 连续超时 {ctx.consecutive_timeouts} 次，中止")
                ctx.is_aborted = True
                ctx.is_running = False
        elif action == "abort":
            print(f"    → 中止流程")
            ctx.is_aborted = True
            ctx.is_running = False


# ==================== 主测试入口 ====================

def main():
    """运行离线测试"""
    print("🔬 离线截图回放测试框架")
    print("=" * 70)

    runner = OfflineTestRunner()

    # 1. 加载截图
    count = runner.load_screenshots()
    if count == 0:
        print("❌ 没有可用的截图，请先运行 prepare_screenshots.py")
        return

    # 2. 加载状态机配置
    flows = runner.load_flow()
    print(f"\n已加载 {len(flows)} 个流程:")
    for name, flow in flows.items():
        print(f"  {name}: {len(flow.states)} 个状态, {len(flow.global_handlers)} 个全局处理器")

    # 3. 对所有截图运行匹配测试
    print("\n" + "=" * 70)
    print("📸 阶段1：单张截图匹配测试")
    print("=" * 70)
    results = runner.test_all_screenshots('daily_all')

    # 4. 模拟流程执行（使用主界面→菜单面板的序列）
    print("\n" + "=" * 70)
    print("🎮 阶段2：模拟流程执行")
    print("=" * 70)
    
    # 构建一个简单的截图序列来测试前几个状态
    available = list(runner.mock_adb._state_screenshots.keys())
    print(f"\n可用截图: {available}")
    
    # 尝试用 main_screen → menu_panel → guild_page 序列
    sequence = []
    for name in ['main_screen', 'menu_panel', 'guild_page', 'main_screen']:
        if name in available:
            sequence.append(name)
    
    if sequence:
        runner.simulate_flow('daily_all', sequence, max_ticks=20)

    print("\n" + "=" * 70)
    print("✅ 离线测试完成")
    print("=" * 70)


if __name__ == '__main__':
    main()
