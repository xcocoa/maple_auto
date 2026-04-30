# -*- coding: utf-8 -*-
"""
状态机引擎
基于事件驱动的场景状态机，替代线性流水线式的 ScenePlayer

核心思想：
  - 状态 = 当前画面（通过场景匹配/OCR 识别确定）
  - 转换 = 动作（点击/滑动/输入等）
  - 每帧循环：截图 → 识别当前状态 → 执行对应动作 → 等待状态转换

优势：
  1. 任意状态下都能正确响应（不依赖固定执行顺序）
  2. 全局异常处理：意外弹窗、网络延迟、界面卡顿都能自动恢复
  3. 超时回退：某个状态停留过久自动回退到已知状态
  4. 支持子流程嵌套：复杂任务可拆分为多个子状态机
"""

import time
import logging
import cv2
import numpy as np
from enum import Enum, auto
from typing import Optional, List, Dict, Any, Tuple, Callable
from dataclasses import dataclass, field

logger = logging.getLogger('AutoDaily')


# ==================== 数据结构 ====================

class MatchMode(Enum):
    """场景匹配模式"""
    TEMPLATE = "template"           # 模板匹配（全图相似度）
    REGION_FEATURE = "region_feature"  # UI 区域特征匹配（边缘密度）
    OCR_TEXT = "ocr_text"           # OCR 单文本检测
    OCR_MULTI = "ocr_multi"         # OCR 多文本组合检测（同时检测多个文本确认场景）
    ALWAYS = "always"              # 始终匹配（用于超时回退等）


class ActionType(Enum):
    """动作类型"""
    TAP = "tap"                         # 点击坐标
    CLICK_TEXT = "click_text"           # OCR 查找文本并点击
    INPUT_TEXT = "input_text"           # 输入文本
    SWIPE = "swipe"                     # 滑动
    SCROLL_AND_FIND = "scroll_and_find" # 滑动查找
    SELECT_EQUIP = "select_equip_by_color"  # 按颜色选装备
    REPEAT_TAP = "repeat_tap_until_gone"    # 重复点击直到场景变化
    WAIT = "wait"                       # 仅等待，不执行动作
    NONE = "none"                       # 无动作（用于终态）


@dataclass
class StateMatch:
    """状态匹配条件"""
    mode: MatchMode = MatchMode.TEMPLATE
    template: str = ""                  # 模板文件路径
    threshold: float = 0.7             # 匹配阈值
    ocr_text: str = ""                 # OCR 匹配文本（单文本模式）
    ocr_texts: List[str] = field(default_factory=list)  # OCR 多文本列表（多文本模式，全部匹配才算成功）
    ocr_any: bool = False              # True=任一文本匹配即成功, False=全部文本都要匹配
    ocr_exact: bool = False            # OCR 是否精确匹配
    ui_regions: List[Dict] = field(default_factory=list)  # 区域特征定义


@dataclass
class StateAction:
    """状态动作"""
    type: ActionType = ActionType.TAP
    tap_x: int = 0                     # 点击坐标
    tap_y: int = 0
    target_text: str = ""              # OCR 目标文本
    input_text: str = ""               # 输入文本内容
    swipe_params: Dict = field(default_factory=dict)  # 滑动参数
    equip_area: Dict = field(default_factory=dict)     # 装备区域
    color_priority: List[str] = field(default_factory=list)  # 颜色优先级
    max_repeats: int = 5               # 重复点击最大次数
    tap_count: int = 1                 # 点击次数
    tap_interval: float = 0.3          # 多次点击间隔


@dataclass
class State:
    """
    状态节点
    
    每个状态代表一个可识别的画面场景，包含：
    - 匹配条件：如何判断当前画面是否处于此状态
    - 动作：匹配成功后执行什么操作
    - 转换：执行动作后期望进入哪个状态
    """
    id: str                            # 状态 ID（唯一标识）
    description: str = ""              # 状态描述
    match: StateMatch = field(default_factory=StateMatch)  # 匹配条件
    action: StateAction = field(default_factory=StateAction)  # 执行动作
    next_state: str = ""               # 期望的下一个状态 ID
    wait_after: float = 1.0            # 动作执行后等待时间
    timeout: float = 10.0              # 在此状态等待的超时时间
    timeout_action: str = "skip"       # 超时处理: skip(跳过), retry(重试), abort(中止), fallback(回退)
    fallback_state: str = ""           # 超时回退的目标状态
    optional: bool = False             # 是否可选（匹配不到可跳过）
    is_terminal: bool = False          # 是否为终态（到达此状态表示流程完成）
    priority: int = 0                  # 匹配优先级（数值越大越优先）


@dataclass
class GlobalHandler:
    """
    全局处理器
    
    在任何状态下都会检测的条件，用于处理意外弹窗、错误恢复等。
    优先级高于普通状态匹配。
    """
    id: str                            # 处理器 ID
    description: str = ""
    match: StateMatch = field(default_factory=StateMatch)
    action: StateAction = field(default_factory=StateAction)
    wait_after: float = 1.0
    max_triggers: int = 3              # 最大触发次数（防止死循环）
    cooldown: float = 5.0              # 触发冷却时间（秒）


@dataclass
class StateMachineFlow:
    """
    状态机流程定义
    
    一个完整的任务流程，包含多个状态节点和全局处理器。
    """
    name: str
    description: str = ""
    initial_state: str = ""            # 初始状态 ID
    states: Dict[str, State] = field(default_factory=dict)
    global_handlers: List[GlobalHandler] = field(default_factory=list)
    max_total_time: float = 300.0      # 流程总超时（秒）
    max_state_transitions: int = 100   # 最大状态转换次数（防止死循环）


# ==================== 运行时上下文 ====================

@dataclass
class StateContext:
    """状态机运行时上下文"""
    current_state_id: str = ""         # 当前状态 ID
    previous_state_id: str = ""        # 上一个状态 ID
    state_enter_time: float = 0.0      # 进入当前状态的时间
    flow_start_time: float = 0.0       # 流程开始时间
    transition_count: int = 0          # 状态转换次数
    consecutive_timeouts: int = 0      # 连续超时次数
    global_trigger_counts: Dict[str, int] = field(default_factory=dict)  # 全局处理器触发计数
    global_last_trigger: Dict[str, float] = field(default_factory=dict)  # 全局处理器上次触发时间
    completed_states: List[str] = field(default_factory=list)  # 已完成的状态列表
    fallback_counts: Dict[str, int] = field(default_factory=dict)  # 每个状态的回退次数
    is_running: bool = False
    is_completed: bool = False
    is_aborted: bool = False
    abort_reason: str = ""


# ==================== 状态机引擎 ====================

class StateMachineEngine:
    """
    状态机引擎
    
    核心执行循环：
    1. 截图
    2. 检查全局处理器（意外弹窗等）
    3. 匹配当前期望状态
    4. 如果匹配成功，执行动作并转换到下一状态
    5. 如果匹配失败，检查超时并处理
    6. 重复直到到达终态或超时
    """

    BASE_W = 1280
    BASE_H = 720

    def __init__(self, scene_player=None, ui_detector=None):
        """
        Args:
            scene_player: ScenePlayer 实例（复用其场景匹配能力）
            ui_detector: UIDetector 实例（复用其 OCR 和模板匹配能力）
        """
        self._scene_player = scene_player
        self._ui_detector = ui_detector
        self._flows: Dict[str, StateMachineFlow] = {}
        self._context: Optional[StateContext] = None
        self._ocr_warmed_up = False  # OCR 是否已预热
        self._last_scan_results: List[Dict] = []  # 当前帧的全图OCR扫描结果缓存

        # 执行统计
        self.stats = {
            'flows_executed': 0,
            'states_executed': 0,
            'states_skipped': 0,
            'states_timeout': 0,
            'global_triggers': 0,
        }

    def register_flow(self, flow: StateMachineFlow):
        """注册状态机流程"""
        self._flows[flow.name] = flow
        logger.info(
            f"注册状态机流程: {flow.name} "
            f"({len(flow.states)} 个状态, {len(flow.global_handlers)} 个全局处理器)"
        )

    def get_flow_names(self) -> List[str]:
        """获取所有已注册的流程名称"""
        return list(self._flows.keys())

    # ==================== 主执行入口 ====================

    def run(self, flow_name: str, adb, on_progress=None) -> bool:
        """
        执行状态机流程
        
        Args:
            flow_name: 流程名称
            adb: ADB 实例（需支持 screenshot(), tap(), swipe() 等）
            on_progress: 进度回调 (state_id, description, elapsed)
            
        Returns:
            是否成功完成
        """
        flow = self._flows.get(flow_name)
        if flow is None:
            logger.error(f"未找到状态机流程: {flow_name}")
            return False

        logger.info(f"▶ 开始状态机流程: {flow.name} - {flow.description}")
        self.stats['flows_executed'] += 1

        # OCR 预热：首次运行时触发 PaddleOCR 初始化，避免初始化时间计入状态超时
        if not self._ocr_warmed_up and self._ui_detector:
            logger.info("预热 OCR 引擎...")
            warmup_start = time.time()
            try:
                _ = self._ui_detector.ocr  # 触发 PaddleOCR 懒加载初始化
                self._ocr_warmed_up = True
                warmup_elapsed = time.time() - warmup_start
                logger.info(f"OCR 引擎预热完成 (耗时 {warmup_elapsed:.1f}s)")
            except Exception as e:
                logger.warning(f"OCR 预热失败: {e}")

        # 初始化上下文
        ctx = StateContext(
            current_state_id=flow.initial_state,
            flow_start_time=time.time(),
            state_enter_time=time.time(),
            is_running=True,
        )
        self._context = ctx

        # 主循环
        while ctx.is_running:
            try:
                self._tick(flow, ctx, adb, on_progress)
            except KeyboardInterrupt:
                logger.info("用户中断状态机")
                ctx.is_aborted = True
                ctx.abort_reason = "用户中断"
                break
            except Exception as e:
                logger.error(f"状态机异常: {e}", exc_info=True)
                ctx.is_aborted = True
                ctx.abort_reason = str(e)
                break

            # 检查流程总超时
            elapsed = time.time() - ctx.flow_start_time
            if elapsed > flow.max_total_time:
                logger.error(f"状态机流程总超时: {elapsed:.1f}s > {flow.max_total_time}s")
                ctx.is_aborted = True
                ctx.abort_reason = "流程总超时"
                break

            # 检查最大转换次数
            if ctx.transition_count > flow.max_state_transitions:
                logger.error(f"状态转换次数过多: {ctx.transition_count}")
                ctx.is_aborted = True
                ctx.abort_reason = "状态转换次数过多（可能死循环）"
                break

        # 结果
        elapsed = time.time() - ctx.flow_start_time
        if ctx.is_completed:
            logger.info(
                f"✅ 状态机流程完成: {flow.name} "
                f"(耗时 {elapsed:.1f}s, {ctx.transition_count} 次转换)"
            )
            return True
        else:
            logger.warning(
                f"❌ 状态机流程未完成: {flow.name} "
                f"(原因: {ctx.abort_reason}, 耗时 {elapsed:.1f}s)"
            )
            return False

    # ==================== 核心 Tick ====================

    def _tick(self, flow: StateMachineFlow, ctx: StateContext, adb, on_progress):
        """单帧处理（优化版：一次截图+一次OCR完成所有匹配）"""
        # 1. 截图（每帧只截一次）
        screenshot = adb.screenshot(force_refresh=True)
        if screenshot is None:
            time.sleep(0.5)
            return

        # 确保基准分辨率
        h, w = screenshot.shape[:2]
        if w != self.BASE_W or h != self.BASE_H:
            screenshot = cv2.resize(screenshot, (self.BASE_W, self.BASE_H))

        # 2. 一次性全图 OCR 扫描（结果复用于全局处理器+状态匹配）
        scan_results = []
        if self._ui_detector:
            scan_results = self._ui_detector.ocr_full_scan(screenshot)
        self._last_scan_results = scan_results

        # 3. 检查全局处理器（使用已有的 OCR 扫描结果，零额外开销）
        global_handled = self._check_global_handlers(flow, ctx, adb, screenshot, scan_results)
        if global_handled:
            time.sleep(0.3)
            return

        # 4. 获取当前状态
        current_state = flow.states.get(ctx.current_state_id)
        if current_state is None:
            logger.error(f"未知状态: {ctx.current_state_id}")
            ctx.is_aborted = True
            ctx.abort_reason = f"未知状态: {ctx.current_state_id}"
            ctx.is_running = False
            return

        # 检查是否为终态
        if current_state.is_terminal:
            ctx.is_completed = True
            ctx.is_running = False
            return

        # 进度回调
        if on_progress:
            elapsed = time.time() - ctx.flow_start_time
            on_progress(ctx.current_state_id, current_state.description, elapsed)

        # 5. 尝试匹配当前状态（优先使用已有的 OCR 扫描结果）
        matched = self._match_state(current_state, screenshot, adb, scan_results)

        if matched:
            # 匹配成功，执行动作
            ctx.consecutive_timeouts = 0
            logger.info(
                f"  ✓ 状态匹配: {current_state.id} - {current_state.description}"
            )

            self._execute_action(current_state, adb, screenshot)
            self.stats['states_executed'] += 1
            ctx.completed_states.append(current_state.id)

            # 等待
            time.sleep(current_state.wait_after)

            # 转换到下一状态
            self._transition(flow, ctx, current_state.next_state, current_state.id)

        else:
            # 匹配失败，检查超时
            state_elapsed = time.time() - ctx.state_enter_time
            if state_elapsed > current_state.timeout:
                self._handle_state_timeout(flow, ctx, current_state)
            else:
                # 还没超时，等待后重试（间隔2s减少无效截图+OCR次数）
                time.sleep(2.0)

    # ==================== 状态匹配 ====================

    def _match_state(self, state: State, screenshot: np.ndarray, adb,
                     scan_results: Optional[List[Dict]] = None) -> bool:
        """匹配单个状态（优化版：优先使用已有的OCR扫描结果）"""
        match = state.match

        if match.mode == MatchMode.ALWAYS:
            return True

        elif match.mode == MatchMode.TEMPLATE:
            if self._scene_player and match.template:
                matched, score = self._scene_player.match_scene(
                    screenshot, match.template, match.threshold
                )
                return matched
            return False

        elif match.mode == MatchMode.REGION_FEATURE:
            if self._scene_player and match.ui_regions:
                matched, score = self._scene_player._match_by_region_feature(
                    screenshot, match.ui_regions, match.threshold
                )
                return matched
            return False

        elif match.mode == MatchMode.OCR_TEXT:
            if self._ui_detector and match.ocr_text:
                # 优先使用已有的全图扫描结果（零耗时）
                if scan_results is not None:
                    element = self._ui_detector.match_text_in_scan(
                        scan_results, match.ocr_text, exact_match=match.ocr_exact
                    )
                    return element is not None
                # 回退：单独调用 OCR
                element = self._ui_detector.find_text(
                    screenshot, match.ocr_text, exact_match=match.ocr_exact
                )
                return element is not None
            return False

        elif match.mode == MatchMode.OCR_MULTI:
            if self._ui_detector and match.ocr_texts:
                # 优先使用已有的全图扫描结果（零耗时）
                if scan_results is not None:
                    found = []
                    for text in match.ocr_texts:
                        element = self._ui_detector.match_text_in_scan(
                            scan_results, text, exact_match=match.ocr_exact
                        )
                        found.append(element is not None)
                    if match.ocr_any:
                        return any(found)
                    else:
                        return all(found)
                # 回退：单独调用 OCR
                results = self._ui_detector.find_texts(
                    screenshot, match.ocr_texts, exact_match=match.ocr_exact
                )
                if match.ocr_any:
                    return any(r is not None for r in results.values())
                else:
                    return all(r is not None for r in results.values())
            return False

        return False

    # ==================== 动作执行 ====================

    def _execute_action(self, state: State, adb, screenshot: np.ndarray):
        """执行状态动作"""
        action = state.action

        if action.type == ActionType.NONE or action.type == ActionType.WAIT:
            return

        elif action.type == ActionType.TAP:
            for i in range(action.tap_count):
                adb.tap(action.tap_x, action.tap_y)
                logger.info(f"    点击 ({action.tap_x}, {action.tap_y})")
                if i < action.tap_count - 1:
                    time.sleep(action.tap_interval)

        elif action.type == ActionType.CLICK_TEXT:
            self._action_click_text(adb, action, state.timeout)

        elif action.type == ActionType.INPUT_TEXT:
            self._action_input_text(adb, action)

        elif action.type == ActionType.SCROLL_AND_FIND:
            self._action_scroll_and_find(adb, state, screenshot)

        elif action.type == ActionType.SELECT_EQUIP:
            self._action_select_equip(adb, action, screenshot)

        elif action.type == ActionType.REPEAT_TAP:
            self._action_repeat_tap(adb, state, screenshot)

        elif action.type == ActionType.SWIPE:
            params = action.swipe_params
            adb.swipe(
                params.get('x1', 640), params.get('y1', 480),
                params.get('x2', 640), params.get('y2', 180),
                params.get('duration', 500)
            )

    def _action_click_text(self, adb, action: StateAction, timeout: float):
        """OCR 查找文本并点击"""
        if not self._ui_detector:
            logger.warning("UIDetector 未初始化，回退为坐标点击")
            adb.tap(action.tap_x, action.tap_y)
            return

        target = action.target_text
        start = time.time()
        check_interval = 1.0

        while time.time() - start < timeout:
            screenshot = adb.screenshot(force_refresh=True)
            if screenshot is None:
                time.sleep(check_interval)
                continue

            h, w = screenshot.shape[:2]
            if w != self.BASE_W or h != self.BASE_H:
                screenshot = cv2.resize(screenshot, (self.BASE_W, self.BASE_H))

            element = self._ui_detector.find_text(screenshot, target)
            if element:
                adb.tap(element.x, element.y)
                logger.info(f"    OCR 点击 '{target}' → ({element.x}, {element.y})")
                return

            time.sleep(check_interval)

        # 超时回退
        logger.warning(f"    OCR 未找到 '{target}'，回退点击 ({action.tap_x}, {action.tap_y})")
        adb.tap(action.tap_x, action.tap_y)

    def _action_input_text(self, adb, action: StateAction):
        """输入文本"""
        text = action.input_text
        if not text:
            return

        # 点击输入框
        adb.tap(action.tap_x, action.tap_y)
        time.sleep(0.8)

        # 清空
        adb.run("shell input keyevent KEYCODE_MOVE_HOME")
        time.sleep(0.1)
        adb.run("shell input keyevent --longpress 123")
        time.sleep(0.1)
        adb.run("shell input keyevent KEYCODE_DEL")
        time.sleep(0.3)

        # 输入
        try:
            text.encode('ascii')
            escaped = text.replace(' ', '%s').replace('&', '\\&')
            adb.run(f"shell input text '{escaped}'")
            logger.info(f"    输入文本: {text}")
        except UnicodeEncodeError:
            adb.run(f"shell am broadcast -a clipper.set -e text '{text}'")
            time.sleep(0.3)
            adb.run("shell input keyevent 279")
            logger.info(f"    剪贴板输入: {text}")

        time.sleep(0.5)

    def _action_scroll_and_find(self, adb, state: State, screenshot: np.ndarray):
        """滑动查找"""
        max_scrolls = 5
        scroll_distance = 300

        scroll_x = self.BASE_W // 2
        scroll_start_y = self.BASE_H * 2 // 3
        scroll_end_y = scroll_start_y - scroll_distance

        try:
            screen_w, screen_h = adb.get_screen_size()
        except Exception:
            screen_w, screen_h = 720, 1280

        scale_x = screen_w / self.BASE_W
        scale_y = screen_h / self.BASE_H

        for i in range(max_scrolls):
            screenshot = adb.screenshot(force_refresh=True)
            if screenshot is None:
                time.sleep(0.5)
                continue

            h, w = screenshot.shape[:2]
            if w != self.BASE_W or h != self.BASE_H:
                screenshot = cv2.resize(screenshot, (self.BASE_W, self.BASE_H))

            matched = self._match_state(state, screenshot, adb)
            if matched:
                adb.tap(state.action.tap_x, state.action.tap_y)
                logger.info(f"    滑动查找成功（第{i}次），点击 ({state.action.tap_x}, {state.action.tap_y})")
                return

            # 滑动
            dx = int(scroll_x * scale_x)
            dy1 = int(scroll_start_y * scale_y)
            dy2 = int(scroll_end_y * scale_y)
            adb.swipe(dx, dy1, dx, dy2, 500)
            logger.info(f"    滑动查找 [{i+1}/{max_scrolls}]")
            time.sleep(1.0)

        # 回退
        logger.warning(f"    滑动查找未找到，回退点击 ({state.action.tap_x}, {state.action.tap_y})")
        adb.tap(state.action.tap_x, state.action.tap_y)

    def _action_select_equip(self, adb, action: StateAction, screenshot: np.ndarray):
        """按颜色选装备"""
        equip_area = action.equip_area
        color_priority = action.color_priority

        if not equip_area or not color_priority:
            adb.tap(action.tap_x, action.tap_y)
            return

        x1 = equip_area.get('x1', 0)
        y1 = equip_area.get('y1', 0)
        x2 = equip_area.get('x2', self.BASE_W)
        y2 = equip_area.get('y2', self.BASE_H)
        equip_region = screenshot[y1:y2, x1:x2]

        color_ranges = {
            'blue':   {'lower': np.array([100, 80, 80]),  'upper': np.array([130, 255, 255])},
            'purple': {'lower': np.array([130, 60, 60]),  'upper': np.array([160, 255, 255])},
            'orange': {'lower': np.array([10, 150, 150]), 'upper': np.array([25, 255, 255])},
        }

        hsv = cv2.cvtColor(equip_region, cv2.COLOR_BGR2HSV)

        for color_name in color_priority:
            if color_name not in color_ranges:
                continue
            cr = color_ranges[color_name]
            mask = cv2.inRange(hsv, cr['lower'], cr['upper'])
            kernel = np.ones((3, 3), np.uint8)
            mask = cv2.morphologyEx(mask, cv2.MORPH_CLOSE, kernel)
            mask = cv2.morphologyEx(mask, cv2.MORPH_OPEN, kernel)

            contours, _ = cv2.findContours(mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
            valid = []
            for cnt in contours:
                area = cv2.contourArea(cnt)
                if area < 200:
                    continue
                bx, by, bw, bh = cv2.boundingRect(cnt)
                ratio = bw / max(bh, 1)
                if 0.3 < ratio < 3.0:
                    valid.append((area, bx, by, bw, bh))

            if valid:
                valid.sort(key=lambda c: c[0], reverse=True)
                _, bx, by, bw, bh = valid[0]
                cx = x1 + bx + bw // 2
                cy = y1 + by + bh // 2
                adb.tap(cx, cy)
                logger.info(f"    选择{color_name}色装备 ({cx}, {cy})")
                return

        # 回退
        adb.tap(action.tap_x, action.tap_y)
        logger.warning(f"    未找到装备，回退点击 ({action.tap_x}, {action.tap_y})")

    def _action_repeat_tap(self, adb, state: State, screenshot: np.ndarray):
        """重复点击直到场景变化"""
        action = state.action
        for i in range(action.max_repeats):
            adb.tap(action.tap_x, action.tap_y)
            logger.info(f"    重复点击 [{i+1}/{action.max_repeats}] ({action.tap_x}, {action.tap_y})")
            time.sleep(state.wait_after)

            screenshot = adb.screenshot(force_refresh=True)
            if screenshot is None:
                break
            h, w = screenshot.shape[:2]
            if w != self.BASE_W or h != self.BASE_H:
                screenshot = cv2.resize(screenshot, (self.BASE_W, self.BASE_H))

            if not self._match_state(state, screenshot, adb):
                logger.info(f"    场景已变化，停止重复点击（共 {i+1} 次）")
                return

        logger.info(f"    已达最大重复次数 {action.max_repeats}")

    # ==================== 全局处理器 ====================

    def _check_global_handlers(
        self, flow: StateMachineFlow, ctx: StateContext,
        adb, screenshot: np.ndarray,
        scan_results: Optional[List[Dict]] = None
    ) -> bool:
        """
        检查全局处理器（优化版：使用已有的OCR扫描结果，零额外OCR开销）
        
        Returns:
            True 表示某个全局处理器被触发并执行了动作
        """
        now = time.time()

        for handler in flow.global_handlers:
            # 检查触发次数限制
            trigger_count = ctx.global_trigger_counts.get(handler.id, 0)
            if trigger_count >= handler.max_triggers:
                continue

            # 检查冷却时间
            last_trigger = ctx.global_last_trigger.get(handler.id, 0)
            if now - last_trigger < handler.cooldown:
                continue

            # 匹配（使用已有的 OCR 扫描结果）
            matched = self._match_global_handler(handler, screenshot, scan_results)
            if matched:
                logger.info(f"  ⚡ 全局处理器触发: {handler.id} - {handler.description}")

                # 执行动作
                self._execute_global_action(handler, adb, screenshot)

                # 更新计数
                ctx.global_trigger_counts[handler.id] = trigger_count + 1
                ctx.global_last_trigger[handler.id] = now
                self.stats['global_triggers'] += 1

                time.sleep(handler.wait_after)
                return True

        return False

    def _match_global_handler(self, handler: GlobalHandler, screenshot: np.ndarray,
                              scan_results: Optional[List[Dict]] = None) -> bool:
        """匹配全局处理器（优化版：优先使用已有的OCR扫描结果）"""
        match = handler.match

        if match.mode == MatchMode.TEMPLATE:
            if self._scene_player and match.template:
                matched, _ = self._scene_player.match_scene(
                    screenshot, match.template, match.threshold
                )
                return matched

        elif match.mode == MatchMode.OCR_TEXT:
            if self._ui_detector and match.ocr_text:
                # 优先使用已有的全图扫描结果
                if scan_results is not None:
                    element = self._ui_detector.match_text_in_scan(
                        scan_results, match.ocr_text, exact_match=match.ocr_exact
                    )
                    return element is not None
                element = self._ui_detector.find_text(
                    screenshot, match.ocr_text, exact_match=match.ocr_exact
                )
                return element is not None

        elif match.mode == MatchMode.OCR_MULTI:
            if self._ui_detector and match.ocr_texts:
                # 优先使用已有的全图扫描结果
                if scan_results is not None:
                    found = []
                    for text in match.ocr_texts:
                        element = self._ui_detector.match_text_in_scan(
                            scan_results, text, exact_match=match.ocr_exact
                        )
                        found.append(element is not None)
                    if match.ocr_any:
                        return any(found)
                    else:
                        return all(found)
                results = self._ui_detector.find_texts(
                    screenshot, match.ocr_texts, exact_match=match.ocr_exact
                )
                if match.ocr_any:
                    return any(r is not None for r in results.values())
                else:
                    return all(r is not None for r in results.values())

        elif match.mode == MatchMode.REGION_FEATURE:
            if self._scene_player and match.ui_regions:
                matched, _ = self._scene_player._match_by_region_feature(
                    screenshot, match.ui_regions, match.threshold
                )
                return matched

        return False

    def _execute_global_action(self, handler: GlobalHandler, adb, screenshot: np.ndarray):
        """执行全局处理器动作"""
        action = handler.action

        if action.type == ActionType.TAP:
            adb.tap(action.tap_x, action.tap_y)
            logger.info(f"    全局点击 ({action.tap_x}, {action.tap_y})")

        elif action.type == ActionType.CLICK_TEXT:
            if self._ui_detector and action.target_text:
                element = self._ui_detector.find_text(screenshot, action.target_text)
                if element:
                    adb.tap(element.x, element.y)
                    logger.info(f"    全局 OCR 点击 '{action.target_text}' → ({element.x}, {element.y})")
                else:
                    adb.tap(action.tap_x, action.tap_y)

    # ==================== 状态转换 ====================

    def _transition(self, flow: StateMachineFlow, ctx: StateContext,
                    next_state_id: str, from_state_id: str):
        """执行状态转换"""
        if not next_state_id:
            # 没有指定下一状态，流程完成
            ctx.is_completed = True
            ctx.is_running = False
            return

        next_state = flow.states.get(next_state_id)
        if next_state is None:
            logger.error(f"转换目标状态不存在: {next_state_id}")
            ctx.is_aborted = True
            ctx.abort_reason = f"目标状态不存在: {next_state_id}"
            ctx.is_running = False
            return

        ctx.previous_state_id = ctx.current_state_id
        ctx.current_state_id = next_state_id
        ctx.state_enter_time = time.time()
        ctx.transition_count += 1

        logger.debug(f"  → 状态转换: {from_state_id} → {next_state_id}")

        # 清除 OCR 缓存（画面即将变化）
        if self._ui_detector:
            from modules.ui_detector import UIDetector
            UIDetector.invalidate_ocr_cache()

    def _handle_state_timeout(self, flow: StateMachineFlow, ctx: StateContext, state: State):
        """处理状态超时"""
        logger.warning(
            f"  ⏰ 状态超时: {state.id} - {state.description} "
            f"(等待 {state.timeout}s)"
        )
        self.stats['states_timeout'] += 1
        ctx.consecutive_timeouts += 1

        if state.optional:
            # 可选状态，跳过
            logger.info(f"    可选状态，跳过")
            self.stats['states_skipped'] += 1
            self._transition(flow, ctx, state.next_state, state.id)
            return

        action = state.timeout_action

        if action == "skip":
            # 跳过当前状态，继续下一个
            logger.info(f"    跳过当前状态，继续下一步")
            self._transition(flow, ctx, state.next_state, state.id)

        elif action == "fallback":
            # 回退到指定状态（最多回退3次，防止死循环）
            fallback_key = f"{state.id}->{state.fallback_state}"
            fallback_count = ctx.fallback_counts.get(fallback_key, 0)
            max_fallbacks = 3
            
            if state.fallback_state and state.fallback_state in flow.states and fallback_count < max_fallbacks:
                ctx.fallback_counts[fallback_key] = fallback_count + 1
                logger.info(f"    回退到状态: {state.fallback_state} (第 {fallback_count + 1}/{max_fallbacks} 次)")
                self._transition(flow, ctx, state.fallback_state, state.id)
            else:
                if fallback_count >= max_fallbacks:
                    logger.warning(f"    回退次数已达上限 ({max_fallbacks} 次)，跳过当前任务")
                else:
                    logger.warning(f"    回退状态无效，跳过")
                self._transition(flow, ctx, state.next_state, state.id)

        elif action == "retry":
            # 重试（重置超时计时器）
            if ctx.consecutive_timeouts < 3:
                logger.info(f"    重试（第 {ctx.consecutive_timeouts} 次）")
                ctx.state_enter_time = time.time()
            else:
                logger.error(f"    连续超时 {ctx.consecutive_timeouts} 次，中止流程")
                ctx.is_aborted = True
                ctx.abort_reason = f"连续超时 {ctx.consecutive_timeouts} 次"
                ctx.is_running = False

        elif action == "abort":
            # 直接中止
            ctx.is_aborted = True
            ctx.abort_reason = f"状态 {state.id} 超时"
            ctx.is_running = False

        else:
            # 默认跳过
            self._transition(flow, ctx, state.next_state, state.id)


# ==================== YAML 配置解析器 ====================

class StateMachineConfigParser:
    """
    从 YAML 配置文件解析状态机流程定义
    
    YAML 格式示例见 config/daily_states.yaml
    """

    @staticmethod
    def parse_file(config_path: str) -> Dict[str, StateMachineFlow]:
        """解析 YAML 配置文件"""
        import yaml

        if not __import__('os').path.exists(config_path):
            logger.error(f"配置文件不存在: {config_path}")
            return {}

        with open(config_path, 'r', encoding='utf-8') as f:
            data = yaml.safe_load(f)

        if not data or 'flows' not in data:
            logger.error(f"配置文件格式错误: {config_path}")
            return {}

        flows = {}
        global_cfg = data.get('global', {})

        for flow_name, flow_data in data['flows'].items():
            flow = StateMachineConfigParser._parse_flow(flow_name, flow_data, global_cfg)
            if flow:
                flows[flow_name] = flow

        return flows

    @staticmethod
    def _parse_flow(name: str, data: Dict, global_cfg: Dict) -> Optional[StateMachineFlow]:
        """解析单个流程"""
        try:
            flow = StateMachineFlow(
                name=name,
                description=data.get('description', ''),
                initial_state=data.get('initial_state', ''),
                max_total_time=data.get('max_total_time', 300.0),
                max_state_transitions=data.get('max_state_transitions', 100),
            )

            # 解析状态
            default_threshold = global_cfg.get('match_threshold', 0.7)
            default_wait = global_cfg.get('default_wait', 1.5)

            for state_id, state_data in data.get('states', {}).items():
                state = StateMachineConfigParser._parse_state(
                    state_id, state_data, default_threshold, default_wait
                )
                if state:
                    flow.states[state_id] = state

            # 自动推断 initial_state
            if not flow.initial_state and flow.states:
                flow.initial_state = next(iter(flow.states))

            # 解析全局处理器
            for handler_data in data.get('global_handlers', []):
                handler = StateMachineConfigParser._parse_global_handler(
                    handler_data, default_threshold
                )
                if handler:
                    flow.global_handlers.append(handler)

            return flow

        except Exception as e:
            logger.error(f"解析流程 {name} 失败: {e}", exc_info=True)
            return None

    @staticmethod
    def _parse_state(state_id: str, data: Dict,
                     default_threshold: float, default_wait: float) -> Optional[State]:
        """解析单个状态"""
        try:
            # 解析匹配条件
            match_data = data.get('match', {})
            match = StateMatch(
                mode=MatchMode(match_data.get('mode', 'template')),
                template=match_data.get('template', data.get('scene_template', '')),
                threshold=match_data.get('threshold', data.get('match_threshold', default_threshold)),
                ocr_text=match_data.get('ocr_text', ''),
                ocr_texts=match_data.get('ocr_texts', []),
                ocr_any=match_data.get('ocr_any', False),
                ocr_exact=match_data.get('ocr_exact', False),
                ui_regions=match_data.get('ui_regions', data.get('ui_regions', [])),
            )

            # 解析动作
            action_data = data.get('action', {})
            # 兼容旧格式：action 可能是字符串（动作类型）
            if isinstance(action_data, str):
                action_type_str = action_data
                action_data = {}
            else:
                action_type_str = action_data.get('type', data.get('action_type', 'tap'))

            action = StateAction(
                type=ActionType(action_type_str),
                tap_x=action_data.get('tap_x', data.get('tap_x', 0)),
                tap_y=action_data.get('tap_y', data.get('tap_y', 0)),
                target_text=action_data.get('target_text', data.get('target_text', '')),
                input_text=action_data.get('input_text', data.get('input_text', '')),
                swipe_params=action_data.get('swipe_params', {}),
                equip_area=action_data.get('equip_area', data.get('equip_area', {})),
                color_priority=action_data.get('color_priority', data.get('color_priority', [])),
                max_repeats=action_data.get('max_repeats', data.get('max_repeats', 5)),
                tap_count=action_data.get('tap_count', data.get('tap_count', 1)),
                tap_interval=action_data.get('tap_interval', data.get('tap_interval', 0.3)),
            )

            state = State(
                id=state_id,
                description=data.get('description', ''),
                match=match,
                action=action,
                next_state=data.get('next_state', ''),
                wait_after=data.get('wait_after', default_wait),
                timeout=data.get('timeout', 10.0),
                timeout_action=data.get('timeout_action', 'skip'),
                fallback_state=data.get('fallback_state', ''),
                optional=data.get('optional', False),
                is_terminal=data.get('is_terminal', False),
                priority=data.get('priority', 0),
            )

            return state

        except Exception as e:
            logger.error(f"解析状态 {state_id} 失败: {e}", exc_info=True)
            return None

    @staticmethod
    def _parse_global_handler(data: Dict, default_threshold: float) -> Optional[GlobalHandler]:
        """解析全局处理器"""
        try:
            match_data = data.get('match', {})
            match = StateMatch(
                mode=MatchMode(match_data.get('mode', 'template')),
                template=match_data.get('template', ''),
                threshold=match_data.get('threshold', default_threshold),
                ocr_text=match_data.get('ocr_text', ''),
                ocr_texts=match_data.get('ocr_texts', []),
                ocr_any=match_data.get('ocr_any', False),
                ocr_exact=match_data.get('ocr_exact', False),
                ui_regions=match_data.get('ui_regions', []),
            )

            action_data = data.get('action', {})
            action = StateAction(
                type=ActionType(action_data.get('type', 'tap')),
                tap_x=action_data.get('tap_x', 0),
                tap_y=action_data.get('tap_y', 0),
                target_text=action_data.get('target_text', ''),
            )

            return GlobalHandler(
                id=data.get('id', ''),
                description=data.get('description', ''),
                match=match,
                action=action,
                wait_after=data.get('wait_after', 1.0),
                max_triggers=data.get('max_triggers', 3),
                cooldown=data.get('cooldown', 5.0),
            )

        except Exception as e:
            logger.error(f"解析全局处理器失败: {e}", exc_info=True)
            return None
