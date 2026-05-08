# engine/flow_schema.py
# -*- coding: utf-8 -*-
"""
Flow YAML 数据结构定义和解析
每个日常任务对应一个 Flow 文件，描述完整的操作步骤。
"""

import yaml
from dataclasses import dataclass, field
from typing import Dict, List, Optional, Tuple


@dataclass
class Scene:
    """场景定义"""
    name: str
    templates: List[str]
    threshold: float = 0.7


@dataclass
class Target:
    """点击目标定义"""
    name: str
    template: Optional[str] = None
    fallback_pos: Optional[Tuple[int, int]] = None
    threshold: float = 0.75


@dataclass
class Step:
    """流程步骤"""
    id: str
    description: str
    expect_scene: Optional[str] = None
    action_type: str = "tap"
    action_target: Optional[str] = None
    action_x: Optional[int] = None
    action_y: Optional[int] = None
    action_text: Optional[str] = None  # input_text 动作的文本内容
    verify_scene: Optional[str] = None
    verify_timeout: float = 3.0
    verify_change: bool = True  # 执行后截图需和执行前不同
    verify_text: Optional[str] = None  # 执行后需包含此文字
    verify_text_gone: Optional[str] = None  # 执行后此文字需消失
    change_threshold: float = 0.02  # 截图差异阈值
    on_fail: str = "retry"  # retry | skip | abort
    delay: float = 0.0  # 动作执行后的等待时间（秒），0=使用Flow默认值


@dataclass
class Flow:
    """完整的任务流程"""
    name: str
    display_name: str
    timeout: int = 60
    max_retries: int = 2
    step_delay: float = 2.0  # 默认步骤间延迟（秒）
    steps: List[Step] = field(default_factory=list)
    scenes: Dict[str, Scene] = field(default_factory=dict)
    targets: Dict[str, Target] = field(default_factory=dict)


def load_flow(yaml_path: str) -> Flow:
    """从 YAML 文件加载 Flow 定义"""
    with open(yaml_path, 'r', encoding='utf-8') as f:
        data = yaml.safe_load(f)

    steps = []
    for step_data in data.get('steps', []):
        action = step_data.get('action', {})
        verify = step_data.get('verify', {})
        step = Step(
            id=step_data['id'],
            description=step_data.get('description', ''),
            expect_scene=step_data.get('expect_scene'),
            action_type=action.get('type', 'tap'),
            action_target=action.get('target'),
            action_x=action.get('x'),
            action_y=action.get('y'),
            action_text=action.get('text'),
            verify_scene=verify.get('scene'),
            verify_timeout=verify.get('timeout', 3.0),
            verify_change=verify.get('change', True),
            verify_text=verify.get('text'),
            verify_text_gone=verify.get('text_gone'),
            change_threshold=verify.get('threshold', 0.02),
            on_fail=step_data.get('on_fail', 'retry'),
            delay=step_data.get('delay', 0.0),
        )
        steps.append(step)

    scenes = {}
    for name, scene_data in data.get('scenes', {}).items():
        scenes[name] = Scene(
            name=name,
            templates=scene_data.get('templates', []),
            threshold=scene_data.get('threshold', 0.7),
        )

    targets = {}
    for name, target_data in data.get('targets', {}).items():
        fallback = target_data.get('fallback_pos')
        targets[name] = Target(
            name=name,
            template=target_data.get('template'),
            fallback_pos=tuple(fallback) if fallback else None,
            threshold=target_data.get('threshold', 0.75),
        )

    return Flow(
        name=data['name'],
        display_name=data.get('display_name', data['name']),
        timeout=data.get('timeout', 60),
        max_retries=data.get('max_retries', 2),
        step_delay=data.get('step_delay', 2.0),
        steps=steps,
        scenes=scenes,
        targets=targets,
    )
