# engine/player.py
# -*- coding: utf-8 -*-
"""
回放引擎
读取 Flow 定义，逐步执行，带场景验证和重试。
"""

import time
import logging
import numpy as np
from dataclasses import dataclass, field
from typing import List, Optional

from engine.flow_schema import Flow, Step
from engine.scene_matcher import SceneMatcher
from engine.target_locator import TargetLocator, LocateResult

logger = logging.getLogger('Engine.Player')


@dataclass
class StepResult:
    """单步执行结果"""
    step_id: str
    success: bool
    skipped: bool = False
    scene_matched: bool = False
    scene_confidence: float = 0.0
    target_found_by: str = ""
    verify_matched: bool = False
    verify_confidence: float = 0.0
    error: str = ""


@dataclass
class PlayResult:
    """整个 Flow 的执行结果"""
    flow_name: str
    success: bool
    step_results: List[StepResult] = field(default_factory=list)
    total_time: float = 0.0
    error: str = ""


class Player:
    """回放引擎 — 执行 Flow YAML 定义的步骤序列"""

    def __init__(self, device, base_dir: str = ".", step_max_retries: int = 3, guardian=None):
        self._device = device
        self._base_dir = base_dir
        self._step_max_retries = step_max_retries
        self._scene_matcher: Optional[SceneMatcher] = None
        self._target_locator = TargetLocator(base_dir=base_dir)
        self._ocr = None  # 延迟加载
        self._current_step_text = ""
        self._guardian = guardian

    def play(self, flow: Flow) -> PlayResult:
        """执行完整的 Flow"""
        start_time = time.time()
        logger.info(f"开始执行流程: {flow.display_name}")

        self._scene_matcher = SceneMatcher(flow.scenes, base_dir=self._base_dir)
        step_results = []
        success = True

        for step in flow.steps:
            elapsed = time.time() - start_time
            if elapsed > flow.timeout:
                logger.error(f"流程超时 ({elapsed:.1f}s > {flow.timeout}s)")
                return PlayResult(
                    flow_name=flow.name, success=False,
                    step_results=step_results, total_time=elapsed, error="flow_timeout",
                )

            step_result = self._execute_step(step, flow)
            step_results.append(step_result)

            if not step_result.success and not step_result.skipped:
                success = False
                break

            # 步骤间延迟：优先使用步骤自身的 delay，否则用 Flow 默认值
            delay = step.delay if step.delay > 0 else flow.step_delay
            if delay > 0:
                logger.debug(f"步骤延迟: {delay:.1f}s")
                time.sleep(delay)

        total_time = time.time() - start_time
        return PlayResult(
            flow_name=flow.name, success=success,
            step_results=step_results, total_time=total_time,
        )

    def _execute_step(self, step: Step, flow: Flow) -> StepResult:
        """执行单个步骤（带重试逻辑）"""
        max_attempts = self._step_max_retries if step.on_fail == "retry" else 1

        for attempt in range(max_attempts):
            result = self._try_step(step, flow)
            if result.success:
                return result
            if step.on_fail == "skip":
                result.skipped = True
                return result
            if step.on_fail == "abort":
                return result
            if attempt < max_attempts - 1:
                time.sleep(0.5)

        if step.on_fail == "skip":
            result.skipped = True
        return result

    def _try_step(self, step: Step, flow: Flow) -> StepResult:
        """尝试执行一次步骤"""
        result = StepResult(step_id=step.id, success=False)

        # 0. Guardian 异常检查
        if self._guardian:
            guardian_result = self._guardian.check_and_handle()
            if guardian_result == "abort_flow":
                result.error = "guardian_abort"
                return result

        # 1. 检查前置场景
        if step.expect_scene:
            screenshot = self._device.screenshot(force_refresh=False)
            if screenshot is None:
                result.error = "screenshot_failed"
                return result

            confidence = self._scene_matcher.match_scene(screenshot, step.expect_scene)
            scene_def = flow.scenes.get(step.expect_scene)
            threshold = scene_def.threshold if scene_def else 0.7

            if confidence < threshold:
                result.error = f"expect_scene_mismatch:{step.expect_scene}={confidence:.3f}"
                return result

            result.scene_matched = True
            result.scene_confidence = confidence

        # 2. 定位目标（back/wait/input_text 等无坐标动作跳过定位）
        if step.action_type in ("back", "wait", "input_text"):
            locate_result = None
            result.target_found_by = step.action_type
            self._current_step_text = step.action_text or ''
        else:
            screenshot = self._device.screenshot(force_refresh=False)
            if screenshot is None:
                result.error = "screenshot_failed"
                return result

            locate_result = self._resolve_target(screenshot, step, flow)
            if locate_result is None:
                result.error = "target_not_found"
                return result
            result.target_found_by = locate_result.found_by

        # 3. 执行前截图（用于差异校验）
        before_screenshot = None
        should_verify_change = (
            step.verify_change
            and step.action_type not in ("wait", "back", "input_text")
            and step.on_fail != "skip"
            and not step.verify_scene  # 有 verify_scene 时用场景验证，不重复做差异检测
        )
        if should_verify_change or step.verify_text or step.verify_text_gone:
            before_screenshot = self._device.screenshot(force_refresh=True)

        # 4. 执行动作
        self._execute_action(step.action_type, locate_result)

        # 5. 等待画面更新
        if should_verify_change or step.verify_text or step.verify_text_gone:
            time.sleep(0.8)

        # 6. 执行后截图 + 校验
        if should_verify_change or step.verify_text or step.verify_text_gone:
            after_screenshot = self._device.screenshot(force_refresh=True)

            # 6a. 截图差异校验
            if should_verify_change:
                if not self._check_screen_changed(before_screenshot, after_screenshot, step.change_threshold):
                    result.error = "verify_change_failed"
                    logger.warning(f"步骤 {step.id}: 画面无变化，操作可能未生效")
                    return result

            # 6b. OCR 文字存在校验
            if step.verify_text:
                if not self._check_text_present(after_screenshot, step.verify_text):
                    result.error = f"verify_text_not_found:{step.verify_text}"
                    logger.warning(f"步骤 {step.id}: 未检测到文字 '{step.verify_text}'")
                    return result
                result.verify_matched = True

            # 6c. OCR 文字消失校验
            if step.verify_text_gone:
                if self._check_text_present(after_screenshot, step.verify_text_gone):
                    result.error = f"verify_text_still_present:{step.verify_text_gone}"
                    logger.warning(f"步骤 {step.id}: 文字 '{step.verify_text_gone}' 仍然存在")
                    return result

        # 7. 场景验证（原有逻辑）
        if step.verify_scene:
            verified = self._wait_for_scene(step.verify_scene, flow, step.verify_timeout)
            if verified is not None:
                result.verify_matched = True
                result.verify_confidence = verified
                result.success = True
            else:
                result.error = f"verify_scene_timeout:{step.verify_scene}"
        else:
            result.success = True

        return result

    def _resolve_target(self, screenshot, step: Step, flow: Flow) -> Optional[LocateResult]:
        # 优先尝试模板匹配（如果定义了 target）
        if step.action_target and step.action_target in flow.targets:
            target_def = flow.targets[step.action_target]
            result = self._target_locator.locate(screenshot, target_def)
            if result is not None:
                return result
            # 模板匹配失败，尝试使用固定坐标作为 fallback
            if step.action_x is not None and step.action_y is not None:
                logger.debug(f"模板匹配失败，使用固定坐标 ({step.action_x}, {step.action_y})")
                return self._target_locator.locate_fixed(step.action_x, step.action_y)
            return None

        # 无 target 定义，使用固定坐标
        if step.action_x is not None and step.action_y is not None:
            return self._target_locator.locate_fixed(step.action_x, step.action_y)
        return None

    def _execute_action(self, action_type: str, location: Optional[LocateResult]):
        if action_type == "tap":
            self._device.tap(location.x, location.y)
        elif action_type == "long_press":
            self._device.long_press(location.x, location.y)
        elif action_type == "back":
            self._run_shell('input keyevent KEYCODE_BACK')
        elif action_type == "input_text":
            # 通过剪贴板粘贴输入文字（支持中文）
            text = self._current_step_text or ""
            self._run_shell(f'cmd clipboard set "{text}"')
            time.sleep(0.3)
            self._run_shell('input keyevent 279')  # KEYCODE_PASTE
        elif action_type == "wait":
            time.sleep(1.0)

    def _run_shell(self, cmd: str):
        """执行 adb shell 命令"""
        if hasattr(self._device, 'run'):
            self._device.run(f'shell {cmd}')
        elif hasattr(self._device, '_adb'):
            self._device._adb.run(f'shell {cmd}')

    def _check_screen_changed(self, before, after, threshold: float = 0.02) -> bool:
        """对比两张截图是否有显著差异"""
        if before is None or after is None:
            return True  # 无法对比，认为有变化
        if before.shape != after.shape:
            return True  # 尺寸不同，认为有变化
        diff = np.abs(before.astype(float) - after.astype(float))
        change_ratio = np.mean(diff) / 255.0
        logger.debug(f"截图差异: {change_ratio:.4f} (阈值: {threshold})")
        return change_ratio > threshold

    def _check_text_present(self, screenshot, text: str) -> bool:
        """OCR 检查截图中是否包含指定文字"""
        if screenshot is None:
            return False
        if self._ocr is None:
            try:
                from paddleocr import PaddleOCR
                self._ocr = PaddleOCR(lang='ch')
            except ImportError:
                logger.warning("PaddleOCR 未安装，跳过文字验证")
                return True  # 无法验证，默认通过
        try:
            results = self._ocr.predict(screenshot)
            for res in results:
                for t in res['rec_texts']:
                    if text in t:
                        return True
            return False
        except Exception as e:
            logger.warning(f"OCR 失败: {e}")
            return True  # OCR 异常，默认通过

    def _wait_for_scene(self, scene_name: str, flow: Flow, timeout: float) -> Optional[float]:
        scene_def = flow.scenes.get(scene_name)
        threshold = scene_def.threshold if scene_def else 0.7
        deadline = time.time() + timeout
        poll_interval = 0.3
        first_poll = True

        while time.time() < deadline:
            # First poll: tap already advanced the device to the next frame,
            # so read current screenshot without forcing another advance.
            screenshot = self._device.screenshot(force_refresh=not first_poll)
            first_poll = False
            if screenshot is not None:
                confidence = self._scene_matcher.match_scene(screenshot, scene_name)
                if confidence >= threshold:
                    return confidence
            time.sleep(poll_interval)

        return None
