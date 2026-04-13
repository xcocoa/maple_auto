# -*- coding: utf-8 -*-
"""
冒险岛日常自动化 - 游戏逻辑层
整合 UI 检测、任务调度、战斗模块，实现完整的日常任务自动化
支持：签到、邮件、每日任务、商店购买、挂机打怪
"""

import os
import time
import cv2
import numpy as np
from enum import Enum, auto
from typing import Optional, Dict, Any, List

from core.adb import ADB
from core.config import Config
from core.logger import Logger
from modules.ui_detector import UIDetector, UIElement
from modules.task_scheduler import TaskScheduler, Task, TaskStatus
from modules.minimap import MinimapDetector
from modules.combat import CombatController
from modules.navigation import Navigator
from modules.skill import SkillDetector
from modules.scene_player import ScenePlayer


class DailyState(Enum):
    """日常自动化状态"""
    IDLE = auto()              # 空闲/初始化
    CHECK_TASKS = auto()       # 检查待完成任务列表
    NAVIGATE_UI = auto()       # UI 导航（打开菜单、切换页面）
    EXECUTE_TASK = auto()      # 执行具体任务
    COLLECT_REWARD = auto()    # 领取奖励
    AUTO_FARM = auto()         # 挂机打怪
    TASK_COMPLETE = auto()     # 单个任务完成
    ALL_DONE = auto()          # 所有日常完成
    ERROR = auto()             # 错误恢复
    DISCONNECT = auto()        # 断线重连


class ScaledADB:
    """ADB 代理：截图缩放到基准分辨率，触摸坐标反向缩放到设备分辨率

    处理全面屏比例差异：
    - 设备分辨率可能是 2248x1080（比例 2.08:1）
    - 基准分辨率是 1280x720（比例 1.78:1, 16:9）
    - 策略：截图时居中裁剪到 16:9 再缩放，点击时反向映射
    """

    def __init__(self, adb: ADB, base_w: int = 1280, base_h: int = 720):
        self._adb = adb
        self._base_w = base_w
        self._base_h = base_h
        self._scale_x = 1.0
        self._scale_y = 1.0
        self._calibrated = False
        # 全面屏裁剪偏移（横屏时左右裁剪的像素数）
        self._crop_x = 0
        self._crop_y = 0
        # 裁剪后的设备区域尺寸
        self._crop_w = 0
        self._crop_h = 0

    def calibrate(self, device_w: int, device_h: int):
        """根据实际设备分辨率计算缩放比，处理全面屏比例差异

        策略：以高度为基准，居中裁剪宽度到 16:9 比例
        这样游戏的主要内容区域（通常居中）不会变形
        """
        base_ratio = self._base_w / self._base_h  # 1.778 (16:9)
        device_ratio = device_w / device_h

        if abs(device_ratio - base_ratio) < 0.05:
            # 比例接近，直接缩放
            self._crop_x = 0
            self._crop_y = 0
            self._crop_w = device_w
            self._crop_h = device_h
        elif device_ratio > base_ratio:
            # 设备更宽（全面屏横屏），以高度为基准裁剪宽度
            target_w = int(device_h * base_ratio)
            self._crop_x = (device_w - target_w) // 2
            self._crop_y = 0
            self._crop_w = target_w
            self._crop_h = device_h
        else:
            # 设备更高（全面屏竖屏），以宽度为基准裁剪高度
            target_h = int(device_w / base_ratio)
            self._crop_x = 0
            self._crop_y = (device_h - target_h) // 2
            self._crop_w = device_w
            self._crop_h = target_h

        self._scale_x = self._crop_w / self._base_w
        self._scale_y = self._crop_h / self._base_h
        self._calibrated = True

    def screenshot(self, force_refresh: bool = False) -> Optional[np.ndarray]:
        """截图并缩放到基准分辨率（处理全面屏裁剪）"""
        raw = self._adb.screenshot(force_refresh=force_refresh)
        if raw is None:
            return None

        h, w = raw.shape[:2]

        # 首次截图时自动校准
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
        """点击：基准坐标 → 设备坐标（考虑裁剪偏移）"""
        device_x = int(x * self._scale_x) + self._crop_x
        device_y = int(y * self._scale_y) + self._crop_y
        self._adb.tap(device_x, device_y)

    def swipe(self, x1: int, y1: int, x2: int, y2: int, duration: int = 100) -> None:
        self._adb.swipe(
            int(x1 * self._scale_x) + self._crop_x,
            int(y1 * self._scale_y) + self._crop_y,
            int(x2 * self._scale_x) + self._crop_x,
            int(y2 * self._scale_y) + self._crop_y,
            duration
        )

    def long_press(self, x: int, y: int, duration: int = 500) -> None:
        device_x = int(x * self._scale_x) + self._crop_x
        device_y = int(y * self._scale_y) + self._crop_y
        self._adb.long_press(device_x, device_y, duration)

    def __getattr__(self, name):
        return getattr(self._adb, name)


class DailyGame:
    """日常自动化主逻辑"""

    def __init__(self, config_path: str = "config/daily.yaml"):
        self.logger = Logger(name="DailyGame")

        # 加载配置
        self.config = Config(config_path)

        # 初始化 ADB（包装缩放代理）
        device_id = self.config.get('device.id', 'emulator-5560')
        adb_path = self.config.get('device.adb_path', 'adb')
        self._raw_adb = ADB(device_id, adb_path)
        self._base_w = self.config.get('device.base_width', 1280)
        self._base_h = self.config.get('device.base_height', 720)
        self.adb = ScaledADB(self._raw_adb, self._base_w, self._base_h)

        # 初始化 UI 检测器
        self.ui_detector = UIDetector(self.config.get('ui', {}))

        # 初始化任务调度器
        self.scheduler = TaskScheduler(self.config.get('tasks', {}))

        # 初始化战斗相关模块（挂机打怪时使用）
        self.minimap = MinimapDetector(self.config.get('minimap', {}))
        self.combat = CombatController(
            self.adb,
            self.config.get('combat', {}),
            self.config.get('combat.skill_positions', [])
        )
        self.navigator = Navigator(
            self.adb,
            self.config.get('navigation', {})
        )
        self.skill_detector = SkillDetector(self.config.get('skill', {}))

        # 初始化场景回放引擎（全自动模式）
        self.scene_player = ScenePlayer(self.config.get('ui', {}))
        scenes_config = self.config.get('scene_config', 'config/daily_scenes.yaml')
        if os.path.exists(scenes_config):
            self.scene_player.load_config(scenes_config)
            self.logger.info(f"场景回放引擎已加载: {self.scene_player.get_flow_names()}")

        # 状态机
        self.current_state = DailyState.IDLE
        self.previous_state = DailyState.IDLE
        self.state_start_time = time.time()

        # 当前执行的任务
        self._current_task: Optional[Task] = None

        # 挂机打怪计时
        self._farm_start_time: float = 0.0
        self._farm_last_check: float = 0.0

        # 截图失败计数
        self._screenshot_fail_count = 0
        self._max_screenshot_fails = 5

        # 统计信息
        self.stats = {
            'tasks_completed': 0,
            'tasks_failed': 0,
            'tasks_skipped': 0,
            'total_time': 0.0,
            'disconnects': 0,
        }

        self.logger.info("日常自动化初始化完成")

    # ==================== 状态管理 ====================

    def _change_state(self, new_state: DailyState, reason: str = "") -> None:
        """状态转换"""
        old_state = self.current_state
        if old_state == new_state:
            return

        self.previous_state = old_state
        self.current_state = new_state
        self.state_start_time = time.time()
        self.adb.invalidate_cache()

        log_msg = f"状态转换: {old_state.name} → {new_state.name}"
        if reason:
            log_msg += f" ({reason})"
        self.logger.info(log_msg)

    # ==================== 主循环 ====================

    def start(self):
        """启动日常自动化"""
        self.logger.info("=" * 50)
        self.logger.info("启动日常自动化...")
        self.logger.info(f"待执行任务: {self.scheduler.get_total_count()} 个")
        self.logger.info("=" * 50)

        self._change_state(DailyState.CHECK_TASKS, "开始日常")
        start_time = time.time()

        while True:
            try:
                self._game_loop()

                # 所有任务完成后退出
                if self.current_state == DailyState.ALL_DONE:
                    break

            except KeyboardInterrupt:
                self.logger.info("用户中断，退出日常自动化")
                break
            except Exception as e:
                self.logger.error(f"日常循环错误：{e}")
                self._change_state(DailyState.ERROR, str(e))
                time.sleep(2)

        # 输出最终统计
        self.stats['total_time'] = time.time() - start_time
        self._print_summary()

    def _game_loop(self):
        """主循环"""
        frame_start = time.time()

        # 健康检查
        if not self.adb.health_check():
            if self.current_state != DailyState.DISCONNECT:
                self._change_state(DailyState.DISCONNECT, "设备连接丢失")
            self._handle_disconnect()
            return

        # 截图（ScaledADB 自动处理全面屏裁剪+缩放到 1280x720）
        screenshot = self.adb.screenshot(force_refresh=True)
        if screenshot is None:
            self._screenshot_fail_count += 1
            if self._screenshot_fail_count >= self._max_screenshot_fails:
                self._change_state(DailyState.DISCONNECT, "截图持续失败")
            time.sleep(0.5)
            return
        self._screenshot_fail_count = 0

        # 首次截图时记录校准信息
        if not hasattr(self, '_calibration_logged'):
            self._calibration_logged = True
            if self.adb._crop_x > 0 or self.adb._crop_y > 0:
                self.logger.info(
                    f"全面屏裁剪: 偏移=({self.adb._crop_x}, {self.adb._crop_y}), "
                    f"裁剪区域={self.adb._crop_w}x{self.adb._crop_h} → "
                    f"{self._base_w}x{self._base_h}"
                )
            else:
                self.logger.info(f"标准比例缩放 → {self._base_w}x{self._base_h}")
        # 状态分发
        handler = {
            DailyState.IDLE: self._handle_idle,
            DailyState.CHECK_TASKS: self._handle_check_tasks,
            DailyState.NAVIGATE_UI: self._handle_navigate_ui,
            DailyState.EXECUTE_TASK: self._handle_execute_task,
            DailyState.COLLECT_REWARD: self._handle_collect_reward,
            DailyState.AUTO_FARM: self._handle_auto_farm,
            DailyState.TASK_COMPLETE: self._handle_task_complete,
            DailyState.ALL_DONE: self._handle_all_done,
            DailyState.ERROR: self._handle_error,
        }.get(self.current_state)

        if handler:
            handler(screenshot)

        # 性能记录
        self.logger.perf.record_frame(time.time() - frame_start)
        self.logger.perf.maybe_report()

        # 帧率控制
        time.sleep(0.2)

    # ==================== 核心状态处理 ====================

    def _handle_idle(self, screenshot: np.ndarray):
        """IDLE: 初始化等待"""
        time.sleep(1.0)
        self._change_state(DailyState.CHECK_TASKS, "初始化完成")

    def _handle_check_tasks(self, screenshot: np.ndarray):
        """CHECK_TASKS: 检查下一个待执行任务"""
        # 先关闭可能存在的对话框
        if self.ui_detector.is_dialog_open(screenshot):
            self.logger.info("检测到对话框，尝试关闭")
            self.ui_detector.close_dialog(self.adb, screenshot)
            time.sleep(0.5)
            return

        # 获取下一个任务
        task = self.scheduler.get_next_task()
        if task is None:
            self._change_state(DailyState.ALL_DONE, "所有任务已完成")
            return

        self._current_task = task
        self.scheduler.start_task(task)
        self.logger.info(f"准备执行任务: {task.display_name} [{self.scheduler.get_progress()}]")

        # 根据任务类型决定下一步
        if task.name == 'auto_farm':
            self._change_state(DailyState.AUTO_FARM, f"开始{task.display_name}")
        else:
            self._change_state(DailyState.EXECUTE_TASK, f"执行{task.display_name}")

    def _handle_navigate_ui(self, screenshot: np.ndarray):
        """NAVIGATE_UI: UI 导航（预留，当前直接在 EXECUTE_TASK 中处理）"""
        self._change_state(DailyState.EXECUTE_TASK, "导航完成")

    def _handle_execute_task(self, screenshot: np.ndarray):
        """EXECUTE_TASK: 执行具体任务"""
        task = self._current_task
        if task is None:
            self._change_state(DailyState.CHECK_TASKS, "无当前任务")
            return

        # 超时检查
        if self.scheduler.check_timeout(task):
            self.scheduler.fail_task(task, "任务超时")
            self.stats['tasks_failed'] += 1
            self._ensure_main_screen(screenshot)
            self._change_state(DailyState.CHECK_TASKS, f"{task.display_name}超时")
            return

        # 根据任务类型分发
        # 优先尝试场景回放（全自动模式生成的流程）
        if task.name in self.scene_player.get_flow_names():
            self.logger.info(f"使用场景回放执行: {task.name}")
            success = self.scene_player.play(task.name, self.adb)
            if success:
                self._change_state(DailyState.TASK_COMPLETE, f"{task.display_name}场景回放完成")
            else:
                self.logger.warning(f"场景回放失败，回退到模板匹配: {task.name}")
                # 回退到传统模板匹配方式
                self._execute_with_template(screenshot, task)
            return

        # 传统模板匹配方式
        self._execute_with_template(screenshot, task)

    def _execute_with_template(self, screenshot: np.ndarray, task: Task):
        """使用传统模板匹配方式执行任务"""
        task_handlers = {
            'daily_sign_in': self._execute_sign_in,
            'collect_mail': self._execute_collect_mail,
            'daily_quest': self._execute_daily_quest,
            'shop_buy': self._execute_shop_buy,
            'activity_event': self._execute_activity,
        }

        handler = task_handlers.get(task.name)
        if handler:
            success = handler(screenshot, task)
            if success:
                self._change_state(DailyState.TASK_COMPLETE, f"{task.display_name}执行完成")
        else:
            self.logger.warning(f"未知任务类型: {task.name}，跳过")
            self.scheduler.skip_task(task, "未知任务类型")
            self.stats['tasks_skipped'] += 1
            self._change_state(DailyState.CHECK_TASKS, "跳过未知任务")

    def _handle_collect_reward(self, screenshot: np.ndarray):
        """COLLECT_REWARD: 领取奖励"""
        task = self._current_task
        if task is None:
            self._change_state(DailyState.CHECK_TASKS, "无当前任务")
            return

        # 尝试点击奖励领取按钮
        reward_template = task.config.get('reward_template')
        if reward_template:
            element = self.ui_detector.find_element(screenshot, reward_template)
            if element:
                self.ui_detector.tap_element(self.adb, element)
                time.sleep(0.5)

        # 关闭可能的奖励弹窗
        if self.ui_detector.is_dialog_open(screenshot):
            self.ui_detector.close_dialog(self.adb, screenshot)
            time.sleep(0.3)

        self._change_state(DailyState.TASK_COMPLETE, "奖励已领取")

    def _handle_auto_farm(self, screenshot: np.ndarray):
        """AUTO_FARM: 挂机打怪"""
        task = self._current_task
        if task is None:
            self._change_state(DailyState.CHECK_TASKS, "无当前任务")
            return

        farm_config = task.config
        duration = farm_config.get('duration', 600)
        check_interval = farm_config.get('check_interval', 30)
        use_auto_battle = farm_config.get('use_auto_battle', True)

        # 初始化挂机
        if self._farm_start_time == 0:
            self._farm_start_time = time.time()
            self._farm_last_check = time.time()
            self.logger.info(f"开始挂机打怪，持续 {duration} 秒")

            # 尝试开启自动战斗
            if use_auto_battle:
                auto_btn_template = farm_config.get('auto_battle_template', 'auto_battle.png')
                auto_btn = self.ui_detector.find_element(screenshot, auto_btn_template)
                if auto_btn:
                    self.ui_detector.tap_element(self.adb, auto_btn)
                    self.logger.info("已开启自动战斗")

        # 检查挂机时长
        elapsed = time.time() - self._farm_start_time
        if elapsed >= duration:
            self.logger.info(f"挂机完成，持续 {elapsed:.0f} 秒")
            self._farm_start_time = 0
            self._change_state(DailyState.TASK_COMPLETE, "挂机完成")
            return

        # 定期状态检查
        now = time.time()
        if now - self._farm_last_check >= check_interval:
            self._farm_last_check = now
            remaining = duration - elapsed
            self.logger.info(f"挂机中... 剩余 {remaining:.0f} 秒")

            # 检查是否死亡（通过小地图检测玩家）
            if farm_config.get('death_check', True):
                player = self.minimap.find_player(screenshot)
                if player is None:
                    self.logger.warning("挂机中未检测到玩家，可能死亡")
                    # 尝试点击屏幕中央复活
                    screen_cx = self.config.get('game.screen_center_x', 640)
                    screen_cy = self.config.get('game.screen_center_y', 360)
                    self.adb.tap(screen_cx, screen_cy)
                    time.sleep(1.0)

            # 检查自动战斗是否还在运行
            if use_auto_battle:
                auto_btn_template = farm_config.get('auto_battle_template', 'auto_battle.png')
                auto_btn = self.ui_detector.find_element(screenshot, auto_btn_template)
                if auto_btn:
                    # 自动战斗按钮可见说明可能已关闭，重新点击
                    self.ui_detector.tap_element(self.adb, auto_btn)
                    self.logger.info("重新开启自动战斗")

        # 如果没有自动战斗，手动战斗
        if not use_auto_battle:
            self._manual_farm(screenshot)

        # 超时检查
        if self.scheduler.check_timeout(task):
            self.logger.warning("挂机超时")
            self._farm_start_time = 0
            self.scheduler.fail_task(task, "挂机超时")
            self.stats['tasks_failed'] += 1
            self._change_state(DailyState.CHECK_TASKS, "挂机超时")

    def _manual_farm(self, screenshot: np.ndarray):
        """手动挂机打怪（复用战斗模块）"""
        player = self.minimap.find_player(screenshot)
        if player is None:
            return

        monsters = self.minimap.find_monsters(screenshot)
        if monsters:
            target = monsters[0]
            monster_count = len(monsters)

            # 检测技能
            self.skill_detector.detect_skills(screenshot)

            # 导航到怪物
            arrived = self.combat.navigate_to(player, target, is_npc=False)

            # 攻击
            attack_range = self.config.get('game.attack_range', 100)
            if arrived or self.minimap.get_distance(player, target) < attack_range:
                self.combat.attack(monster_count=monster_count)
        else:
            # 没有怪物，随机探索
            self.navigator.explore()

    def _handle_task_complete(self, screenshot: np.ndarray):
        """TASK_COMPLETE: 单个任务完成"""
        task = self._current_task
        if task and task.status == TaskStatus.RUNNING:
            self.scheduler.complete_task(task)
            self.stats['tasks_completed'] += 1

        # 确保回到主界面
        self._ensure_main_screen(screenshot)
        time.sleep(0.5)

        self._current_task = None
        self._change_state(DailyState.CHECK_TASKS, "检查下一个任务")

    def _handle_all_done(self, screenshot: np.ndarray):
        """ALL_DONE: 所有日常完成"""
        self.logger.info("=" * 50)
        self.logger.info("所有日常任务已完成！")
        self.logger.info("=" * 50)

    def _handle_error(self, screenshot: np.ndarray):
        """ERROR: 错误恢复"""
        self.logger.warning("错误状态，尝试恢复...")

        # 尝试关闭对话框
        if screenshot is not None and self.ui_detector.is_dialog_open(screenshot):
            self.ui_detector.close_dialog(self.adb, screenshot)
            time.sleep(0.5)

        # 如果当前有任务在执行，标记失败
        task = self._current_task
        if task and task.status == TaskStatus.RUNNING:
            self.scheduler.fail_task(task, "错误恢复")
            self.stats['tasks_failed'] += 1

        time.sleep(2)
        self._current_task = None
        self._change_state(DailyState.CHECK_TASKS, "错误恢复")

    def _handle_disconnect(self):
        """DISCONNECT: 设备断连"""
        self.logger.warning("设备断开，尝试重连...")
        self.stats['disconnects'] += 1

        if self.adb._try_reconnect():
            self._change_state(DailyState.CHECK_TASKS, "设备重连成功")
        else:
            self.logger.error("重连失败，等待后重试")
            time.sleep(5.0)

    # ==================== 具体任务实现 ====================

    def _execute_sign_in(self, screenshot: np.ndarray, task: Task) -> bool:
        """执行每日签到"""
        config = task.config
        template = config.get('template', 'sign_in_btn.png')

        # 查找签到按钮
        sign_btn = self.ui_detector.find_element(screenshot, template)
        if sign_btn:
            self.ui_detector.tap_element(self.adb, sign_btn, delay=1.0)
            self.logger.info("已点击签到按钮")

            # 等待奖励弹窗并关闭
            reward_template = config.get('reward_template')
            if reward_template:
                time.sleep(1.0)
                reward_screenshot = self._raw_adb.screenshot(force_refresh=True)
                if reward_screenshot is not None:
                    reward = self.ui_detector.find_element(reward_screenshot, reward_template)
                    if reward:
                        self.ui_detector.tap_element(self.adb, reward)

            return True

        # 签到按钮未找到，可能已签到
        self.logger.info("未找到签到按钮，可能已完成签到")
        return True

    def _execute_collect_mail(self, screenshot: np.ndarray, task: Task) -> bool:
        """执行收取邮件"""
        config = task.config
        template = config.get('template', 'mail_btn.png')

        # 查找邮箱按钮
        mail_btn = self.ui_detector.find_element(screenshot, template)
        if mail_btn:
            self.ui_detector.tap_element(self.adb, mail_btn, delay=1.0)
            self.logger.info("已打开邮箱")

            # 等待邮箱界面加载
            time.sleep(1.0)
            mail_screenshot = self._raw_adb.screenshot(force_refresh=True)
            if mail_screenshot is None:
                return False

            # 缩放
            h, w = mail_screenshot.shape[:2]
            if w != self._base_w or h != self._base_h:
                mail_screenshot = cv2.resize(mail_screenshot, (self._base_w, self._base_h))

            # 检查是否有邮件
            empty_template = config.get('empty_template')
            if empty_template:
                empty = self.ui_detector.find_element(mail_screenshot, empty_template)
                if empty:
                    self.logger.info("邮箱为空")
                    return True

            # 点击一键领取
            collect_template = config.get('collect_all_template', 'collect_all.png')
            collect_btn = self.ui_detector.find_element(mail_screenshot, collect_template)
            if collect_btn:
                self.ui_detector.tap_element(self.adb, collect_btn, delay=1.0)
                self.logger.info("已一键领取邮件")

            return True

        self.logger.info("未找到邮箱按钮")
        return True

    def _execute_daily_quest(self, screenshot: np.ndarray, task: Task) -> bool:
        """执行每日任务"""
        config = task.config
        template = config.get('template', 'quest_btn.png')

        # 查找任务按钮
        quest_btn = self.ui_detector.find_element(screenshot, template)
        if quest_btn:
            self.ui_detector.tap_element(self.adb, quest_btn, delay=1.0)
            self.logger.info("已打开任务面板")

            # 等待任务面板加载
            time.sleep(1.0)
            quest_screenshot = self._raw_adb.screenshot(force_refresh=True)
            if quest_screenshot is None:
                return False

            # 缩放
            h, w = quest_screenshot.shape[:2]
            if w != self._base_w or h != self._base_h:
                quest_screenshot = cv2.resize(quest_screenshot, (self._base_w, self._base_h))

            # 切换到每日标签
            daily_tab_template = config.get('daily_tab_template')
            if daily_tab_template:
                daily_tab = self.ui_detector.find_element(quest_screenshot, daily_tab_template)
                if daily_tab:
                    self.ui_detector.tap_element(self.adb, daily_tab, delay=0.5)

            # 查找并领取可领取的奖励
            reward_template = config.get('quest_reward_template')
            if reward_template:
                time.sleep(0.5)
                reward_screenshot = self._raw_adb.screenshot(force_refresh=True)
                if reward_screenshot is not None:
                    h, w = reward_screenshot.shape[:2]
                    if w != self._base_w or h != self._base_h:
                        reward_screenshot = cv2.resize(reward_screenshot, (self._base_w, self._base_h))

                    rewards = self.ui_detector.find_all_elements(
                        reward_screenshot, reward_template, max_count=5
                    )
                    for reward in rewards:
                        self.ui_detector.tap_element(self.adb, reward, delay=0.5)
                        self.logger.info(f"领取任务奖励: ({reward.x}, {reward.y})")

                        # 关闭可能的奖励弹窗
                        time.sleep(0.5)
                        popup = self._raw_adb.screenshot(force_refresh=True)
                        if popup is not None:
                            if self.ui_detector.is_dialog_open(popup):
                                self.ui_detector.close_dialog(self.adb, popup)
                                time.sleep(0.3)

            return True

        self.logger.info("未找到任务按钮")
        return True

    def _execute_shop_buy(self, screenshot: np.ndarray, task: Task) -> bool:
        """执行商店购买"""
        config = task.config
        template = config.get('template', 'shop_btn.png')

        # 查找商店按钮
        shop_btn = self.ui_detector.find_element(screenshot, template)
        if shop_btn:
            self.ui_detector.tap_element(self.adb, shop_btn, delay=1.0)
            self.logger.info("已打开商店")

            # 等待商店加载
            time.sleep(1.0)

            # 遍历购买列表
            buy_list = config.get('buy_list', [])
            for item in buy_list:
                item_template = item.get('template')
                max_count = item.get('max_count', 1)

                if not item_template:
                    continue

                for i in range(max_count):
                    shop_screenshot = self._raw_adb.screenshot(force_refresh=True)
                    if shop_screenshot is None:
                        break

                    h, w = shop_screenshot.shape[:2]
                    if w != self._base_w or h != self._base_h:
                        shop_screenshot = cv2.resize(shop_screenshot, (self._base_w, self._base_h))

                    # 查找商品
                    item_elem = self.ui_detector.find_element(shop_screenshot, item_template)
                    if item_elem is None:
                        self.logger.info(f"未找到商品: {item.get('name', item_template)}")
                        break

                    # 点击商品
                    self.ui_detector.tap_element(self.adb, item_elem, delay=0.5)

                    # 点击购买按钮
                    buy_template = config.get('buy_template', 'buy_btn.png')
                    buy_btn = self.ui_detector.wait_for_element(
                        self._raw_adb, buy_template, timeout=3.0
                    )
                    if buy_btn:
                        self.ui_detector.tap_element(self.adb, buy_btn, delay=0.5)

                        # 确认购买
                        confirm_template = config.get('confirm_template', 'buy_confirm.png')
                        confirm_btn = self.ui_detector.wait_for_element(
                            self._raw_adb, confirm_template, timeout=3.0
                        )
                        if confirm_btn:
                            self.ui_detector.tap_element(self.adb, confirm_btn, delay=0.5)
                            self.logger.info(
                                f"购买成功: {item.get('name', '未知')} ({i + 1}/{max_count})"
                            )

                    time.sleep(0.5)

            return True

        self.logger.info("未找到商店按钮")
        return True

    def _execute_activity(self, screenshot: np.ndarray, task: Task) -> bool:
        """执行活动签到"""
        config = task.config
        template = config.get('template', 'activity_btn.png')

        # 查找活动按钮
        activity_btn = self.ui_detector.find_element(screenshot, template)
        if activity_btn:
            self.ui_detector.tap_element(self.adb, activity_btn, delay=1.0)
            self.logger.info("已打开活动面板")

            # 等待加载
            time.sleep(1.0)
            activity_screenshot = self._raw_adb.screenshot(force_refresh=True)
            if activity_screenshot is not None:
                h, w = activity_screenshot.shape[:2]
                if w != self._base_w or h != self._base_h:
                    activity_screenshot = cv2.resize(activity_screenshot, (self._base_w, self._base_h))

                # 检测红点（有可领取的奖励）
                if self.ui_detector.detect_red_dot(activity_screenshot):
                    # 点击屏幕中央领取
                    screen_cx = self.config.get('game.screen_center_x', 640)
                    screen_cy = self.config.get('game.screen_center_y', 360)
                    self.adb.tap(screen_cx, screen_cy)
                    time.sleep(1.0)

            return True

        self.logger.info("未找到活动按钮")
        return True

    # ==================== 工具方法 ====================

    def _ensure_main_screen(self, screenshot: np.ndarray):
        """确保回到主界面"""
        # 尝试关闭所有对话框
        for _ in range(3):
            if screenshot is not None and self.ui_detector.is_dialog_open(screenshot):
                self.ui_detector.close_dialog(self.adb, screenshot)
                time.sleep(0.5)
                screenshot = self._raw_adb.screenshot(force_refresh=True)
                if screenshot is not None:
                    h, w = screenshot.shape[:2]
                    if w != self._base_w or h != self._base_h:
                        screenshot = cv2.resize(screenshot, (self._base_w, self._base_h))
            else:
                break

        # 尝试点击返回按钮
        if screenshot is not None:
            back_btn = self.ui_detector.find_button(screenshot, 'back_btn')
            if back_btn:
                self.ui_detector.tap_element(self.adb, back_btn)
                time.sleep(0.5)

    def _print_summary(self):
        """输出任务执行摘要"""
        summary = self.scheduler.get_summary()
        self.logger.info("=" * 50)
        self.logger.info("日常自动化执行摘要")
        self.logger.info("=" * 50)
        self.logger.info(
            f"完成: {summary['completed']} | "
            f"失败: {summary['failed']} | "
            f"跳过: {summary['skipped']} | "
            f"总耗时: {self.stats['total_time']:.1f}s"
        )
        for task_info in summary['tasks']:
            status_icon = {
                'COMPLETED': '✅',
                'FAILED': '❌',
                'SKIPPED': '⏭️',
                'PENDING': '⏳',
                'RUNNING': '🔄',
            }.get(task_info['status'], '❓')
            line = f"  {status_icon} {task_info['name']}: {task_info['status']}"
            if task_info['elapsed'] > 0:
                line += f" ({task_info['elapsed']}s)"
            if task_info.get('error'):
                line += f" - {task_info['error']}"
            self.logger.info(line)
        self.logger.info("=" * 50)

    def get_stats(self) -> Dict[str, Any]:
        """获取统计信息"""
        return {
            **self.stats,
            'current_state': self.current_state.name,
            'progress': self.scheduler.get_progress(),
            'task_summary': self.scheduler.get_summary(),
        }
