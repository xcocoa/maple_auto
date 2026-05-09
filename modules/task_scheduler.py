# -*- coding: utf-8 -*-
"""
日常任务调度器
管理多个日常子任务的优先级、执行顺序和完成状态
支持：任务依赖、重试、跳过、进度追踪
"""

import time
import logging
from enum import Enum, auto
from typing import Optional, List, Dict, Any, Callable
from dataclasses import dataclass, field

logger = logging.getLogger('AutoDaily')


class TaskStatus(Enum):
    """任务状态"""
    PENDING = auto()       # 待执行
    RUNNING = auto()       # 执行中
    COMPLETED = auto()     # 已完成
    FAILED = auto()        # 执行失败
    SKIPPED = auto()       # 已跳过


@dataclass
class Task:
    """日常任务"""
    name: str                           # 任务名称（唯一标识）
    display_name: str                   # 显示名称
    config: Dict[str, Any]              # 任务配置
    status: TaskStatus = TaskStatus.PENDING
    priority: int = 0                   # 优先级（越小越先执行）
    max_retries: int = 2                # 最大重试次数
    retry_count: int = 0                # 当前重试次数
    timeout: float = 60.0               # 超时时间（秒）
    start_time: float = 0.0            # 开始执行时间
    end_time: float = 0.0              # 结束时间
    error_msg: str = ""                 # 错误信息

    @property
    def is_done(self) -> bool:
        """任务是否已结束（完成/失败/跳过）"""
        return self.status in (TaskStatus.COMPLETED, TaskStatus.FAILED, TaskStatus.SKIPPED)

    @property
    def can_retry(self) -> bool:
        """是否可以重试"""
        return self.retry_count < self.max_retries

    @property
    def elapsed(self) -> float:
        """已执行时间"""
        if self.start_time == 0:
            return 0.0
        end = self.end_time if self.end_time > 0 else time.time()
        return end - self.start_time

    @property
    def is_timeout(self) -> bool:
        """是否超时"""
        if self.status != TaskStatus.RUNNING:
            return False
        return self.elapsed > self.timeout


# 任务显示名称映射
TASK_DISPLAY_NAMES = {
    'daily_all': '全部日常任务',
    'daily_sign_in': '每日签到',
    'collect_mail': '收取邮件',
    'daily_quest': '每日任务',
    'shop_buy': '商店购买',
    'auto_farm': '挂机打怪',
    'activity_event': '活动签到',
}


class TaskScheduler:
    """日常任务调度器"""

    def __init__(self, config: Dict[str, Any]):
        """
        Args:
            config: tasks 配置节点
        """
        self.config = config
        self._tasks: List[Task] = []
        self._current_index: int = 0

        # 构建任务列表
        self._build_task_list()

        logger.info(f"任务调度器初始化完成，共 {len(self._tasks)} 个任务")

    def _build_task_list(self):
        """根据配置构建任务列表"""
        enabled = self.config.get('enabled', [])

        for priority, task_name in enumerate(enabled):
            task_config = self.config.get(task_name, {})
            timeout = task_config.get('timeout', 60)
            display_name = TASK_DISPLAY_NAMES.get(task_name, task_name)

            task = Task(
                name=task_name,
                display_name=display_name,
                config=task_config,
                priority=priority,
                timeout=float(timeout),
            )
            self._tasks.append(task)

        logger.info(f"任务列表: {[t.display_name for t in self._tasks]}")

    def get_next_task(self) -> Optional[Task]:
        """
        获取下一个待执行的任务

        Returns:
            下一个 PENDING 状态的任务，全部完成返回 None
        """
        for task in self._tasks:
            if task.status == TaskStatus.PENDING:
                return task
        return None

    def get_current_task(self) -> Optional[Task]:
        """获取当前正在执行的任务"""
        for task in self._tasks:
            if task.status == TaskStatus.RUNNING:
                return task
        return None

    def start_task(self, task: Task):
        """开始执行任务"""
        task.status = TaskStatus.RUNNING
        task.start_time = time.time()
        task.end_time = 0.0
        logger.info(f"开始执行任务: {task.display_name} (超时: {task.timeout}s)")

    def complete_task(self, task: Task):
        """标记任务完成"""
        task.status = TaskStatus.COMPLETED
        task.end_time = time.time()
        logger.info(f"任务完成: {task.display_name} (耗时: {task.elapsed:.1f}s)")

    def fail_task(self, task: Task, error: str = ""):
        """标记任务失败"""
        task.error_msg = error

        if task.can_retry:
            task.retry_count += 1
            task.status = TaskStatus.PENDING
            task.start_time = 0.0
            task.end_time = 0.0
            logger.warning(
                f"任务失败，准备重试: {task.display_name} "
                f"(重试 {task.retry_count}/{task.max_retries}) - {error}"
            )
        else:
            task.status = TaskStatus.FAILED
            task.end_time = time.time()
            logger.error(
                f"任务失败（已达最大重试次数）: {task.display_name} - {error}"
            )

    def skip_task(self, task: Task, reason: str = ""):
        """跳过任务"""
        task.status = TaskStatus.SKIPPED
        task.end_time = time.time()
        task.error_msg = reason
        logger.info(f"跳过任务: {task.display_name} - {reason}")

    def check_timeout(self, task: Task) -> bool:
        """
        检查任务是否超时

        Returns:
            True 表示已超时
        """
        if task.is_timeout:
            logger.warning(
                f"任务超时: {task.display_name} "
                f"({task.elapsed:.1f}s > {task.timeout}s)"
            )
            return True
        return False

    def is_all_done(self) -> bool:
        """是否所有任务已完成（包括失败和跳过）"""
        return all(task.is_done for task in self._tasks)

    def get_completed_count(self) -> int:
        """获取已完成任务数"""
        return sum(1 for t in self._tasks if t.status == TaskStatus.COMPLETED)

    def get_total_count(self) -> int:
        """获取总任务数"""
        return len(self._tasks)

    def get_progress(self) -> str:
        """获取进度字符串"""
        completed = self.get_completed_count()
        total = self.get_total_count()
        return f"{completed}/{total}"

    def get_summary(self) -> Dict[str, Any]:
        """获取任务执行摘要"""
        summary = {
            'total': len(self._tasks),
            'completed': 0,
            'failed': 0,
            'skipped': 0,
            'pending': 0,
            'tasks': [],
        }

        for task in self._tasks:
            task_info = {
                'name': task.display_name,
                'status': task.status.name,
                'elapsed': round(task.elapsed, 1),
                'retries': task.retry_count,
            }
            if task.error_msg:
                task_info['error'] = task.error_msg

            summary['tasks'].append(task_info)

            if task.status == TaskStatus.COMPLETED:
                summary['completed'] += 1
            elif task.status == TaskStatus.FAILED:
                summary['failed'] += 1
            elif task.status == TaskStatus.SKIPPED:
                summary['skipped'] += 1
            else:
                summary['pending'] += 1

        return summary

    def reset(self):
        """重置所有任务状态（用于重新执行）"""
        for task in self._tasks:
            task.status = TaskStatus.PENDING
            task.retry_count = 0
            task.start_time = 0.0
            task.end_time = 0.0
            task.error_msg = ""
        logger.info("任务调度器已重置")
