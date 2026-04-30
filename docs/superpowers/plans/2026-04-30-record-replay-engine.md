# Record-Replay Engine Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build a record-replay engine for daily task automation — record once on device, replay offline with state verification and retry.

**Architecture:** Three-layer system: SceneMatcher identifies current screen state via template matching, TargetLocator finds tap targets (template-first with coordinate fallback), and Player orchestrates step-by-step flow execution with verification loops. A Recorder tool captures manual operations into Flow YAML + screenshot library. MockADB enables full offline testing.

**Tech Stack:** Python 3, OpenCV (template matching, SSIM), PyYAML (flow definitions), NumPy, existing ADB/ScaledADB infrastructure.

---

## File Structure

| File | Responsibility |
|------|---------------|
| `core/scaled_adb.py` | Extract ScaledADB from daily.py — resolution adaptation layer |
| `engine/__init__.py` | Package init |
| `engine/scene_matcher.py` | Match screenshots against scene templates, return confidence scores |
| `engine/target_locator.py` | Locate tap targets via template matching with fallback coordinates |
| `engine/player.py` | Execute Flow YAML step-by-step with verification and retry |
| `engine/flow_schema.py` | Dataclasses for Flow, Step, Scene, Target definitions |
| `engine/recorder.py` | Record manual device operations into Flow YAML + screenshots |
| `engine/mock_adb.py` | Mock device for offline testing — returns screenshots in sequence |
| `tools/recorder.py` | CLI entry point for recording |
| `tools/test_flow.py` | CLI entry point for offline flow testing |
| `tests/test_scene_matcher.py` | Unit tests for scene matching |
| `tests/test_target_locator.py` | Unit tests for target location |
| `tests/test_player.py` | Unit tests for player execution logic |
| `tests/test_flow_schema.py` | Unit tests for YAML parsing |

---

## Task 1: Extract ScaledADB to core/scaled_adb.py

**Files:**
- Create: `core/scaled_adb.py`
- Modify: `games/daily.py` (import from new location)
- Test: `tests/test_scaled_adb.py`

- [ ] **Step 1: Write failing test for ScaledADB calibration**

```python
# tests/test_scaled_adb.py
import numpy as np
import pytest
from core.scaled_adb import ScaledADB


class FakeADB:
    """Minimal ADB stub for testing"""
    def __init__(self, screen_w=2248, screen_h=1080):
        self._screen_w = screen_w
        self._screen_h = screen_h
        self.tap_log = []

    def screenshot(self, force_refresh=False):
        return np.zeros((self._screen_h, self._screen_w, 3), dtype=np.uint8)

    def tap(self, x, y):
        self.tap_log.append((x, y))

    def swipe(self, x1, y1, x2, y2, duration=100):
        pass

    def long_press(self, x, y, duration=500):
        pass

    def invalidate_cache(self):
        pass


class TestScaledADB:
    def test_calibrate_widescreen(self):
        """2248x1080 device should crop width to 16:9"""
        fake = FakeADB(2248, 1080)
        scaled = ScaledADB(fake, base_w=1280, base_h=720)
        scaled.calibrate(2248, 1080)

        # 16:9 of height 1080 => width = 1920
        # crop_x = (2248 - 1920) // 2 = 164
        assert scaled._crop_x == 164
        assert scaled._crop_y == 0
        assert scaled._crop_w == 1920
        assert scaled._crop_h == 1080

    def test_calibrate_standard_ratio(self):
        """1280x720 should have zero crop"""
        fake = FakeADB(1280, 720)
        scaled = ScaledADB(fake, base_w=1280, base_h=720)
        scaled.calibrate(1280, 720)

        assert scaled._crop_x == 0
        assert scaled._crop_y == 0

    def test_tap_maps_coordinates(self):
        """Tap at base coords should map to device coords with crop offset"""
        fake = FakeADB(2248, 1080)
        scaled = ScaledADB(fake, base_w=1280, base_h=720)
        scaled.calibrate(2248, 1080)

        scaled.tap(640, 360)  # Center of 1280x720

        # scale_x = 1920/1280 = 1.5, scale_y = 1080/720 = 1.5
        # device_x = 640 * 1.5 + 164 = 1124
        # device_y = 360 * 1.5 + 0 = 540
        assert len(fake.tap_log) == 1
        assert fake.tap_log[0] == (1124, 540)

    def test_screenshot_returns_base_resolution(self):
        """Screenshot should be resized to base resolution"""
        fake = FakeADB(2248, 1080)
        scaled = ScaledADB(fake, base_w=1280, base_h=720)

        result = scaled.screenshot(force_refresh=True)
        assert result is not None
        assert result.shape == (720, 1280, 3)
```

- [ ] **Step 2: Run test to verify it fails**

Run: `cd /Users/xuzhengxin/Code/maple_auto && python -m pytest tests/test_scaled_adb.py -v`
Expected: FAIL — `ModuleNotFoundError: No module named 'core.scaled_adb'`

- [ ] **Step 3: Create core/scaled_adb.py**

```python
# core/scaled_adb.py
# -*- coding: utf-8 -*-
"""
分辨率适配层
处理全面屏比例差异：截图时居中裁剪到 16:9 再缩放到基准分辨率，
触摸坐标反向映射回设备物理坐标。
"""

import cv2
import numpy as np
from typing import Optional


class ScaledADB:
    """ADB 代理：截图缩放到基准分辨率，触摸坐标反向缩放到设备分辨率"""

    def __init__(self, adb, base_w: int = 1280, base_h: int = 720):
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
        base_ratio = self._base_w / self._base_h
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

    def screenshot(self, force_refresh: bool = False) -> Optional[np.ndarray]:
        """截图并缩放到基准分辨率"""
        raw = self._adb.screenshot(force_refresh=force_refresh)
        if raw is None:
            return None

        h, w = raw.shape[:2]

        if not self._calibrated:
            self.calibrate(w, h)

        if self._crop_x > 0 or self._crop_y > 0:
            x1 = self._crop_x
            y1 = self._crop_y
            x2 = x1 + self._crop_w
            y2 = y1 + self._crop_h
            raw = raw[y1:y2, x1:x2]

        if raw.shape[1] != self._base_w or raw.shape[0] != self._base_h:
            raw = cv2.resize(raw, (self._base_w, self._base_h))

        return raw

    def tap(self, x: int, y: int) -> None:
        """点击：基准坐标 -> 设备坐标"""
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

    def invalidate_cache(self) -> None:
        """清除截图缓存"""
        if hasattr(self._adb, 'invalidate_cache'):
            self._adb.invalidate_cache()

    def __getattr__(self, name):
        return getattr(self._adb, name)
```

- [ ] **Step 4: Run tests to verify they pass**

Run: `cd /Users/xuzhengxin/Code/maple_auto && python -m pytest tests/test_scaled_adb.py -v`
Expected: All 4 tests PASS

- [ ] **Step 5: Commit**

```bash
git add core/scaled_adb.py tests/test_scaled_adb.py
git commit -m "refactor: extract ScaledADB to core/scaled_adb.py with tests"
```

---

## Task 2: Flow Schema — YAML Parsing Dataclasses

**Files:**
- Create: `engine/__init__.py`
- Create: `engine/flow_schema.py`
- Test: `tests/test_flow_schema.py`

- [ ] **Step 1: Write failing test for Flow YAML parsing**

```python
# tests/test_flow_schema.py
import os
import tempfile
import pytest
from engine.flow_schema import Flow, Step, Scene, Target, load_flow


SAMPLE_FLOW_YAML = """
name: test_sign_in
display_name: 测试签到
timeout: 60
max_retries: 2

steps:
  - id: open_menu
    description: "点击菜单"
    expect_scene: "main_screen"
    action:
      type: tap
      target: "menu_button"
    verify:
      scene: "main_menu"
      timeout: 3.0
    on_fail: retry

  - id: click_sign
    description: "点击签到"
    expect_scene: "main_menu"
    action:
      type: tap
      x: 610
      y: 450
    verify:
      scene: "sign_page"
      timeout: 3.0
    on_fail: skip

scenes:
  main_screen:
    templates: ["scenes/main_01.png", "scenes/main_02.png"]
    threshold: 0.7
  main_menu:
    templates: ["scenes/menu_01.png"]
    threshold: 0.75
  sign_page:
    templates: ["scenes/sign_01.png"]
    threshold: 0.7

targets:
  menu_button:
    template: "targets/menu_btn.png"
    fallback_pos: [1150, 100]
    threshold: 0.75
"""


class TestFlowSchema:
    def test_load_flow_from_yaml(self):
        with tempfile.NamedTemporaryFile(mode='w', suffix='.yaml', delete=False) as f:
            f.write(SAMPLE_FLOW_YAML)
            f.flush()
            flow = load_flow(f.name)

        os.unlink(f.name)

        assert flow.name == "test_sign_in"
        assert flow.display_name == "测试签到"
        assert flow.timeout == 60
        assert flow.max_retries == 2
        assert len(flow.steps) == 2

    def test_step_with_target(self):
        with tempfile.NamedTemporaryFile(mode='w', suffix='.yaml', delete=False) as f:
            f.write(SAMPLE_FLOW_YAML)
            f.flush()
            flow = load_flow(f.name)

        os.unlink(f.name)

        step = flow.steps[0]
        assert step.id == "open_menu"
        assert step.expect_scene == "main_screen"
        assert step.action_type == "tap"
        assert step.action_target == "menu_button"
        assert step.action_x is None
        assert step.verify_scene == "main_menu"
        assert step.verify_timeout == 3.0
        assert step.on_fail == "retry"

    def test_step_with_fixed_coords(self):
        with tempfile.NamedTemporaryFile(mode='w', suffix='.yaml', delete=False) as f:
            f.write(SAMPLE_FLOW_YAML)
            f.flush()
            flow = load_flow(f.name)

        os.unlink(f.name)

        step = flow.steps[1]
        assert step.action_target is None
        assert step.action_x == 610
        assert step.action_y == 450
        assert step.on_fail == "skip"

    def test_scenes_parsed(self):
        with tempfile.NamedTemporaryFile(mode='w', suffix='.yaml', delete=False) as f:
            f.write(SAMPLE_FLOW_YAML)
            f.flush()
            flow = load_flow(f.name)

        os.unlink(f.name)

        assert "main_screen" in flow.scenes
        scene = flow.scenes["main_screen"]
        assert scene.templates == ["scenes/main_01.png", "scenes/main_02.png"]
        assert scene.threshold == 0.7

    def test_targets_parsed(self):
        with tempfile.NamedTemporaryFile(mode='w', suffix='.yaml', delete=False) as f:
            f.write(SAMPLE_FLOW_YAML)
            f.flush()
            flow = load_flow(f.name)

        os.unlink(f.name)

        assert "menu_button" in flow.targets
        target = flow.targets["menu_button"]
        assert target.template == "targets/menu_btn.png"
        assert target.fallback_pos == (1150, 100)
        assert target.threshold == 0.75
```

- [ ] **Step 2: Run test to verify it fails**

Run: `cd /Users/xuzhengxin/Code/maple_auto && python -m pytest tests/test_flow_schema.py -v`
Expected: FAIL — `ModuleNotFoundError: No module named 'engine'`

- [ ] **Step 3: Create engine/__init__.py and engine/flow_schema.py**

```python
# engine/__init__.py
# -*- coding: utf-8 -*-
"""录制回放引擎"""
```

```python
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
    # Action
    action_type: str = "tap"
    action_target: Optional[str] = None  # target name reference
    action_x: Optional[int] = None  # fixed x coordinate
    action_y: Optional[int] = None  # fixed y coordinate
    # Verify
    verify_scene: Optional[str] = None
    verify_timeout: float = 3.0
    # Failure handling
    on_fail: str = "retry"  # retry | skip | abort


@dataclass
class Flow:
    """完整的任务流程"""
    name: str
    display_name: str
    timeout: int = 60
    max_retries: int = 2
    steps: List[Step] = field(default_factory=list)
    scenes: Dict[str, Scene] = field(default_factory=dict)
    targets: Dict[str, Target] = field(default_factory=dict)


def load_flow(yaml_path: str) -> Flow:
    """从 YAML 文件加载 Flow 定义"""
    with open(yaml_path, 'r', encoding='utf-8') as f:
        data = yaml.safe_load(f)

    # Parse steps
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
            verify_scene=verify.get('scene'),
            verify_timeout=verify.get('timeout', 3.0),
            on_fail=step_data.get('on_fail', 'retry'),
        )
        steps.append(step)

    # Parse scenes
    scenes = {}
    for name, scene_data in data.get('scenes', {}).items():
        scenes[name] = Scene(
            name=name,
            templates=scene_data.get('templates', []),
            threshold=scene_data.get('threshold', 0.7),
        )

    # Parse targets
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
        steps=steps,
        scenes=scenes,
        targets=targets,
    )
```

- [ ] **Step 4: Run tests to verify they pass**

Run: `cd /Users/xuzhengxin/Code/maple_auto && python -m pytest tests/test_flow_schema.py -v`
Expected: All 5 tests PASS

- [ ] **Step 5: Commit**

```bash
git add engine/__init__.py engine/flow_schema.py tests/test_flow_schema.py
git commit -m "feat: add Flow YAML schema and parser"
```

---

## Task 3: SceneMatcher — Template-Based Scene Identification

**Files:**
- Create: `engine/scene_matcher.py`
- Test: `tests/test_scene_matcher.py`

- [ ] **Step 1: Write failing test for SceneMatcher**

```python
# tests/test_scene_matcher.py
import os
import cv2
import tempfile
import numpy as np
import pytest
from engine.scene_matcher import SceneMatcher
from engine.flow_schema import Scene


def make_color_image(color_bgr, size=(720, 1280)):
    """Create a solid color image"""
    img = np.zeros((size[0], size[1], 3), dtype=np.uint8)
    img[:] = color_bgr
    return img


def save_template(img, tmpdir, filename):
    """Save image as template file"""
    path = os.path.join(tmpdir, filename)
    os.makedirs(os.path.dirname(path), exist_ok=True)
    cv2.imwrite(path, img)
    return path


class TestSceneMatcher:
    def setup_method(self):
        self.tmpdir = tempfile.mkdtemp()

    def test_match_exact_scene(self):
        """Should match when screenshot matches a scene template"""
        # Create a distinctive template (blue rectangle on black)
        template = np.zeros((100, 100, 3), dtype=np.uint8)
        template[20:80, 20:80] = [255, 0, 0]  # blue square
        save_template(template, self.tmpdir, "scenes/blue.png")

        # Create screenshot containing the template
        screenshot = np.zeros((720, 1280, 3), dtype=np.uint8)
        screenshot[100:200, 100:200] = template

        scenes = {
            "blue_scene": Scene(
                name="blue_scene",
                templates=["scenes/blue.png"],
                threshold=0.9,
            )
        }

        matcher = SceneMatcher(scenes, base_dir=self.tmpdir)
        result = matcher.match(screenshot)

        assert result is not None
        assert result[0] == "blue_scene"
        assert result[1] >= 0.9

    def test_no_match_returns_none(self):
        """Should return None when no scene matches"""
        template = np.zeros((100, 100, 3), dtype=np.uint8)
        template[:] = [0, 255, 0]  # solid green
        save_template(template, self.tmpdir, "scenes/green.png")

        # Screenshot is all black — won't match green
        screenshot = np.zeros((720, 1280, 3), dtype=np.uint8)

        scenes = {
            "green_scene": Scene(
                name="green_scene",
                templates=["scenes/green.png"],
                threshold=0.9,
            )
        }

        matcher = SceneMatcher(scenes, base_dir=self.tmpdir)
        result = matcher.match(screenshot)

        assert result is None

    def test_match_specific_scene(self):
        """match_scene should only check the named scene"""
        template = np.zeros((100, 100, 3), dtype=np.uint8)
        template[20:80, 20:80] = [0, 0, 255]  # red square
        save_template(template, self.tmpdir, "scenes/red.png")

        screenshot = np.zeros((720, 1280, 3), dtype=np.uint8)
        screenshot[300:400, 600:700] = template

        scenes = {
            "red_scene": Scene(
                name="red_scene",
                templates=["scenes/red.png"],
                threshold=0.9,
            )
        }

        matcher = SceneMatcher(scenes, base_dir=self.tmpdir)

        # Should match
        confidence = matcher.match_scene(screenshot, "red_scene")
        assert confidence >= 0.9

        # Non-existent scene should return 0
        confidence = matcher.match_scene(screenshot, "nonexistent")
        assert confidence == 0.0

    def test_multi_template_takes_best(self):
        """When scene has multiple templates, use the best match"""
        t1 = np.zeros((100, 100, 3), dtype=np.uint8)
        t1[20:80, 20:80] = [255, 255, 0]
        save_template(t1, self.tmpdir, "scenes/t1.png")

        t2 = np.zeros((100, 100, 3), dtype=np.uint8)
        t2[10:90, 10:90] = [255, 255, 0]  # larger yellow area
        save_template(t2, self.tmpdir, "scenes/t2.png")

        screenshot = np.zeros((720, 1280, 3), dtype=np.uint8)
        screenshot[100:200, 100:200] = t2  # matches t2 better

        scenes = {
            "yellow_scene": Scene(
                name="yellow_scene",
                templates=["scenes/t1.png", "scenes/t2.png"],
                threshold=0.8,
            )
        }

        matcher = SceneMatcher(scenes, base_dir=self.tmpdir)
        result = matcher.match(screenshot)

        assert result is not None
        assert result[0] == "yellow_scene"
```

- [ ] **Step 2: Run test to verify it fails**

Run: `cd /Users/xuzhengxin/Code/maple_auto && python -m pytest tests/test_scene_matcher.py -v`
Expected: FAIL — `ModuleNotFoundError: No module named 'engine.scene_matcher'`

- [ ] **Step 3: Implement engine/scene_matcher.py**

```python
# engine/scene_matcher.py
# -*- coding: utf-8 -*-
"""
场景匹配器
基于模板匹配识别当前屏幕场景，支持多模板、阈值配置。
"""

import os
import cv2
import logging
import numpy as np
from typing import Dict, Optional, Tuple

from engine.flow_schema import Scene

logger = logging.getLogger('Engine.SceneMatcher')


class SceneMatcher:
    """场景匹配器 — 识别当前屏幕属于哪个场景"""

    def __init__(self, scenes: Dict[str, Scene], base_dir: str = "."):
        """
        Args:
            scenes: 场景名 -> Scene 定义
            base_dir: 模板文件的基础目录
        """
        self._scenes = scenes
        self._base_dir = base_dir
        self._template_cache: Dict[str, Optional[np.ndarray]] = {}

    def _load_template(self, template_path: str) -> Optional[np.ndarray]:
        """加载模板图片（带缓存）"""
        if template_path in self._template_cache:
            return self._template_cache[template_path]

        full_path = os.path.join(self._base_dir, template_path)
        if not os.path.exists(full_path):
            logger.warning(f"模板文件不存在: {full_path}")
            self._template_cache[template_path] = None
            return None

        img = cv2.imread(full_path)
        self._template_cache[template_path] = img
        return img

    def _match_template(self, screenshot: np.ndarray, template: np.ndarray) -> float:
        """执行单次模板匹配，返回最大置信度"""
        th, tw = template.shape[:2]
        sh, sw = screenshot.shape[:2]

        if tw > sw or th > sh:
            return 0.0

        result = cv2.matchTemplate(screenshot, template, cv2.TM_CCOEFF_NORMED)
        _, max_val, _, _ = cv2.minMaxLoc(result)
        return float(max_val)

    def match_scene(self, screenshot: np.ndarray, scene_name: str) -> float:
        """
        检查截图是否匹配指定场景

        Args:
            screenshot: 当前截图
            scene_name: 场景名

        Returns:
            最高匹配置信度（0.0 表示不匹配或场景不存在）
        """
        scene = self._scenes.get(scene_name)
        if scene is None:
            return 0.0

        best_confidence = 0.0
        for template_path in scene.templates:
            template = self._load_template(template_path)
            if template is None:
                continue

            confidence = self._match_template(screenshot, template)
            if confidence > best_confidence:
                best_confidence = confidence

        return best_confidence

    def match(self, screenshot: np.ndarray) -> Optional[Tuple[str, float]]:
        """
        在所有已注册场景中寻找最佳匹配

        Args:
            screenshot: 当前截图

        Returns:
            (scene_name, confidence) 或 None（无匹配）
        """
        best_scene = None
        best_confidence = 0.0

        for scene_name, scene in self._scenes.items():
            confidence = self.match_scene(screenshot, scene_name)
            if confidence >= scene.threshold and confidence > best_confidence:
                best_scene = scene_name
                best_confidence = confidence

        if best_scene is not None:
            return (best_scene, best_confidence)
        return None
```

- [ ] **Step 4: Run tests to verify they pass**

Run: `cd /Users/xuzhengxin/Code/maple_auto && python -m pytest tests/test_scene_matcher.py -v`
Expected: All 4 tests PASS

- [ ] **Step 5: Commit**

```bash
git add engine/scene_matcher.py tests/test_scene_matcher.py
git commit -m "feat: add SceneMatcher for template-based scene identification"
```

---

## Task 4: TargetLocator — Find Tap Targets

**Files:**
- Create: `engine/target_locator.py`
- Test: `tests/test_target_locator.py`

- [ ] **Step 1: Write failing test for TargetLocator**

```python
# tests/test_target_locator.py
import os
import cv2
import tempfile
import numpy as np
import pytest
from engine.target_locator import TargetLocator, LocateResult
from engine.flow_schema import Target


class TestTargetLocator:
    def setup_method(self):
        self.tmpdir = tempfile.mkdtemp()

    def test_locate_by_template(self):
        """Should find target via template matching"""
        # Create a distinctive target template
        template = np.zeros((40, 40, 3), dtype=np.uint8)
        template[5:35, 5:35] = [0, 255, 255]  # yellow square
        path = os.path.join(self.tmpdir, "targets", "btn.png")
        os.makedirs(os.path.dirname(path), exist_ok=True)
        cv2.imwrite(path, template)

        # Place template in screenshot
        screenshot = np.zeros((720, 1280, 3), dtype=np.uint8)
        screenshot[300:340, 600:640] = template

        target = Target(
            name="test_btn",
            template="targets/btn.png",
            fallback_pos=(500, 500),
            threshold=0.9,
        )

        locator = TargetLocator(base_dir=self.tmpdir)
        result = locator.locate(screenshot, target)

        assert result is not None
        assert result.found_by == "template"
        # Center of template at (600+20, 300+20) = (620, 320)
        assert abs(result.x - 620) <= 2
        assert abs(result.y - 320) <= 2
        assert result.confidence >= 0.9

    def test_fallback_to_coordinates(self):
        """Should use fallback when template not found"""
        # No template file exists
        target = Target(
            name="missing_btn",
            template="targets/nonexistent.png",
            fallback_pos=(800, 400),
            threshold=0.9,
        )

        screenshot = np.zeros((720, 1280, 3), dtype=np.uint8)

        locator = TargetLocator(base_dir=self.tmpdir)
        result = locator.locate(screenshot, target)

        assert result is not None
        assert result.found_by == "fallback"
        assert result.x == 800
        assert result.y == 400
        assert result.confidence == 0.0

    def test_no_target_no_fallback(self):
        """Should return None when no template and no fallback"""
        target = Target(
            name="empty_btn",
            template=None,
            fallback_pos=None,
            threshold=0.9,
        )

        screenshot = np.zeros((720, 1280, 3), dtype=np.uint8)

        locator = TargetLocator(base_dir=self.tmpdir)
        result = locator.locate(screenshot, target)

        assert result is None

    def test_fixed_coordinates(self):
        """locate_fixed should return coords directly"""
        locator = TargetLocator(base_dir=self.tmpdir)
        result = locator.locate_fixed(640, 360)

        assert result.x == 640
        assert result.y == 360
        assert result.found_by == "fixed"
```

- [ ] **Step 2: Run test to verify it fails**

Run: `cd /Users/xuzhengxin/Code/maple_auto && python -m pytest tests/test_target_locator.py -v`
Expected: FAIL — `ModuleNotFoundError: No module named 'engine.target_locator'`

- [ ] **Step 3: Implement engine/target_locator.py**

```python
# engine/target_locator.py
# -*- coding: utf-8 -*-
"""
目标定位器
在截图中定位点击目标：优先模板匹配，备用固定坐标。
"""

import os
import cv2
import logging
import numpy as np
from dataclasses import dataclass
from typing import Dict, Optional

from engine.flow_schema import Target

logger = logging.getLogger('Engine.TargetLocator')


@dataclass
class LocateResult:
    """定位结果"""
    x: int
    y: int
    confidence: float
    found_by: str  # "template" | "fallback" | "fixed"


class TargetLocator:
    """目标定位器 — 在截图中找到点击位置"""

    def __init__(self, base_dir: str = "."):
        self._base_dir = base_dir
        self._template_cache: Dict[str, Optional[np.ndarray]] = {}

    def _load_template(self, template_path: str) -> Optional[np.ndarray]:
        """加载模板图片（带缓存）"""
        if template_path in self._template_cache:
            return self._template_cache[template_path]

        full_path = os.path.join(self._base_dir, template_path)
        if not os.path.exists(full_path):
            self._template_cache[template_path] = None
            return None

        img = cv2.imread(full_path)
        self._template_cache[template_path] = img
        return img

    def locate(self, screenshot: np.ndarray, target: Target) -> Optional[LocateResult]:
        """
        定位目标：先尝试模板匹配，失败则用 fallback 坐标

        Args:
            screenshot: 当前截图
            target: 目标定义

        Returns:
            LocateResult 或 None
        """
        # 尝试模板匹配
        if target.template:
            template = self._load_template(target.template)
            if template is not None:
                th, tw = template.shape[:2]
                sh, sw = screenshot.shape[:2]

                if tw <= sw and th <= sh:
                    result = cv2.matchTemplate(
                        screenshot, template, cv2.TM_CCOEFF_NORMED
                    )
                    _, max_val, _, max_loc = cv2.minMaxLoc(result)

                    if max_val >= target.threshold:
                        cx = max_loc[0] + tw // 2
                        cy = max_loc[1] + th // 2
                        logger.debug(
                            f"目标 '{target.name}' 模板匹配成功: "
                            f"({cx}, {cy}) 置信度={max_val:.3f}"
                        )
                        return LocateResult(
                            x=cx, y=cy,
                            confidence=float(max_val),
                            found_by="template"
                        )

        # 使用备用坐标
        if target.fallback_pos:
            logger.debug(
                f"目标 '{target.name}' 使用备用坐标: {target.fallback_pos}"
            )
            return LocateResult(
                x=target.fallback_pos[0],
                y=target.fallback_pos[1],
                confidence=0.0,
                found_by="fallback"
            )

        logger.warning(f"目标 '{target.name}' 无法定位（无模板、无备用坐标）")
        return None

    def locate_fixed(self, x: int, y: int) -> LocateResult:
        """使用固定坐标定位（action 中直接指定了 x/y）"""
        return LocateResult(x=x, y=y, confidence=1.0, found_by="fixed")
```

- [ ] **Step 4: Run tests to verify they pass**

Run: `cd /Users/xuzhengxin/Code/maple_auto && python -m pytest tests/test_target_locator.py -v`
Expected: All 4 tests PASS

- [ ] **Step 5: Commit**

```bash
git add engine/target_locator.py tests/test_target_locator.py
git commit -m "feat: add TargetLocator for tap target positioning"
```

---

## Task 5: Player — Flow Execution Engine

**Files:**
- Create: `engine/player.py`
- Test: `tests/test_player.py`

- [ ] **Step 1: Write failing test for Player**

```python
# tests/test_player.py
import os
import cv2
import tempfile
import numpy as np
import pytest
from engine.player import Player, PlayResult, StepResult
from engine.flow_schema import Flow, Step, Scene, Target


class FakeDevice:
    """Fake device that returns pre-loaded screenshots in sequence"""

    def __init__(self, screenshots: list):
        self._screenshots = screenshots
        self._index = 0
        self.tap_log = []
        self.swipe_log = []

    def screenshot(self, force_refresh=False):
        if force_refresh and self._index < len(self._screenshots) - 1:
            self._index += 1
        if self._index < len(self._screenshots):
            return self._screenshots[self._index]
        return self._screenshots[-1]

    def tap(self, x, y):
        self.tap_log.append((x, y))
        # Advance to next screenshot after tap
        if self._index < len(self._screenshots) - 1:
            self._index += 1

    def swipe(self, x1, y1, x2, y2, duration=100):
        self.swipe_log.append((x1, y1, x2, y2))

    def long_press(self, x, y, duration=500):
        self.tap_log.append((x, y))

    def invalidate_cache(self):
        pass


def make_scene_image(color_bgr):
    """Create a 720x1280 image with a 100x100 colored square at (100,100)"""
    img = np.zeros((720, 1280, 3), dtype=np.uint8)
    img[100:200, 100:200] = color_bgr
    return img


class TestPlayer:
    def setup_method(self):
        self.tmpdir = tempfile.mkdtemp()

    def _save_template(self, img, path):
        full = os.path.join(self.tmpdir, path)
        os.makedirs(os.path.dirname(full), exist_ok=True)
        cv2.imwrite(full, img)

    def test_simple_two_step_flow(self):
        """Player should execute steps sequentially"""
        # Scene templates
        blue_square = np.zeros((100, 100, 3), dtype=np.uint8)
        blue_square[10:90, 10:90] = [255, 0, 0]
        self._save_template(blue_square, "scenes/scene_a.png")

        red_square = np.zeros((100, 100, 3), dtype=np.uint8)
        red_square[10:90, 10:90] = [0, 0, 255]
        self._save_template(red_square, "scenes/scene_b.png")

        # Screenshots sequence: scene_a -> scene_b
        img_a = make_scene_image([255, 0, 0])   # blue at (100,100)
        img_b = make_scene_image([0, 0, 255])   # red at (100,100)

        device = FakeDevice([img_a, img_b])

        flow = Flow(
            name="test_flow",
            display_name="Test",
            timeout=10,
            max_retries=1,
            steps=[
                Step(
                    id="step1",
                    description="Tap to go from A to B",
                    expect_scene="scene_a",
                    action_type="tap",
                    action_x=640, action_y=360,
                    verify_scene="scene_b",
                    verify_timeout=2.0,
                    on_fail="abort",
                ),
            ],
            scenes={
                "scene_a": Scene(name="scene_a", templates=["scenes/scene_a.png"], threshold=0.8),
                "scene_b": Scene(name="scene_b", templates=["scenes/scene_b.png"], threshold=0.8),
            },
            targets={},
        )

        player = Player(device=device, base_dir=self.tmpdir)
        result = player.play(flow)

        assert result.success is True
        assert len(result.step_results) == 1
        assert result.step_results[0].success is True
        assert device.tap_log == [(640, 360)]

    def test_on_fail_skip(self):
        """Step with on_fail=skip should not block the flow"""
        blue_square = np.zeros((100, 100, 3), dtype=np.uint8)
        blue_square[10:90, 10:90] = [255, 0, 0]
        self._save_template(blue_square, "scenes/scene_a.png")

        img_a = make_scene_image([255, 0, 0])

        device = FakeDevice([img_a, img_a, img_a])

        flow = Flow(
            name="test_skip",
            display_name="Test Skip",
            timeout=10,
            max_retries=1,
            steps=[
                Step(
                    id="step1",
                    description="This step will fail verify",
                    expect_scene="scene_a",
                    action_type="tap",
                    action_x=100, action_y=100,
                    verify_scene="nonexistent_scene",
                    verify_timeout=0.5,
                    on_fail="skip",
                ),
            ],
            scenes={
                "scene_a": Scene(name="scene_a", templates=["scenes/scene_a.png"], threshold=0.8),
            },
            targets={},
        )

        player = Player(device=device, base_dir=self.tmpdir)
        result = player.play(flow)

        # Flow succeeds because step was skipped
        assert result.success is True
        assert result.step_results[0].success is False
        assert result.step_results[0].skipped is True

    def test_on_fail_abort(self):
        """Step with on_fail=abort should stop the flow"""
        blue_square = np.zeros((100, 100, 3), dtype=np.uint8)
        blue_square[10:90, 10:90] = [255, 0, 0]
        self._save_template(blue_square, "scenes/scene_a.png")

        img_a = make_scene_image([255, 0, 0])
        device = FakeDevice([img_a, img_a, img_a])

        flow = Flow(
            name="test_abort",
            display_name="Test Abort",
            timeout=10,
            max_retries=0,
            steps=[
                Step(
                    id="step1",
                    description="This step will fail",
                    expect_scene="scene_a",
                    action_type="tap",
                    action_x=100, action_y=100,
                    verify_scene="nonexistent_scene",
                    verify_timeout=0.5,
                    on_fail="abort",
                ),
            ],
            scenes={
                "scene_a": Scene(name="scene_a", templates=["scenes/scene_a.png"], threshold=0.8),
            },
            targets={},
        )

        player = Player(device=device, base_dir=self.tmpdir)
        result = player.play(flow)

        assert result.success is False
```

- [ ] **Step 2: Run test to verify it fails**

Run: `cd /Users/xuzhengxin/Code/maple_auto && python -m pytest tests/test_player.py -v`
Expected: FAIL — `ModuleNotFoundError: No module named 'engine.player'`

- [ ] **Step 3: Implement engine/player.py**

```python
# engine/player.py
# -*- coding: utf-8 -*-
"""
回放引擎
读取 Flow 定义，逐步执行，带场景验证和重试。
"""

import time
import logging
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

    def __init__(self, device, base_dir: str = ".", step_max_retries: int = 3):
        """
        Args:
            device: ADB 设备（或 MockADB）, 需要 screenshot/tap/swipe/long_press
            base_dir: 截图模板的基础目录
            step_max_retries: 单步最大重试次数
        """
        self._device = device
        self._base_dir = base_dir
        self._step_max_retries = step_max_retries
        self._scene_matcher: Optional[SceneMatcher] = None
        self._target_locator = TargetLocator(base_dir=base_dir)

    def play(self, flow: Flow) -> PlayResult:
        """
        执行完整的 Flow

        Args:
            flow: Flow 定义

        Returns:
            PlayResult
        """
        start_time = time.time()
        logger.info(f"开始执行流程: {flow.display_name}")

        # 初始化场景匹配器
        self._scene_matcher = SceneMatcher(flow.scenes, base_dir=self._base_dir)

        step_results = []
        success = True

        for step in flow.steps:
            # 整体超时检查
            elapsed = time.time() - start_time
            if elapsed > flow.timeout:
                logger.error(f"流程超时 ({elapsed:.1f}s > {flow.timeout}s)")
                return PlayResult(
                    flow_name=flow.name,
                    success=False,
                    step_results=step_results,
                    total_time=elapsed,
                    error="flow_timeout",
                )

            # 执行步骤（带重试）
            step_result = self._execute_step(step, flow)
            step_results.append(step_result)

            if not step_result.success and not step_result.skipped:
                # on_fail=abort
                success = False
                logger.error(f"步骤 '{step.id}' 失败，中止流程")
                break

        total_time = time.time() - start_time
        logger.info(
            f"流程 '{flow.display_name}' 完成: "
            f"{'成功' if success else '失败'} "
            f"({len(step_results)}/{len(flow.steps)} 步, {total_time:.1f}s)"
        )

        return PlayResult(
            flow_name=flow.name,
            success=success,
            step_results=step_results,
            total_time=total_time,
        )

    def _execute_step(self, step: Step, flow: Flow) -> StepResult:
        """执行单个步骤（带重试逻辑）"""
        max_attempts = self._step_max_retries if step.on_fail == "retry" else 1

        for attempt in range(max_attempts):
            result = self._try_step(step, flow)

            if result.success:
                return result

            if step.on_fail == "skip":
                logger.info(f"步骤 '{step.id}' 失败，跳过")
                result.skipped = True
                return result

            if step.on_fail == "abort":
                return result

            # retry
            if attempt < max_attempts - 1:
                logger.info(
                    f"步骤 '{step.id}' 重试 ({attempt + 1}/{max_attempts})"
                )
                time.sleep(0.5)

        # 所有重试耗尽
        if step.on_fail == "skip":
            result.skipped = True
            return result
        return result

    def _try_step(self, step: Step, flow: Flow) -> StepResult:
        """尝试执行一次步骤"""
        result = StepResult(step_id=step.id, success=False)

        # 1. 检查前置场景
        if step.expect_scene:
            screenshot = self._device.screenshot(force_refresh=True)
            if screenshot is None:
                result.error = "screenshot_failed"
                return result

            confidence = self._scene_matcher.match_scene(
                screenshot, step.expect_scene
            )
            scene_def = flow.scenes.get(step.expect_scene)
            threshold = scene_def.threshold if scene_def else 0.7

            if confidence < threshold:
                result.error = f"expect_scene_mismatch:{step.expect_scene}={confidence:.3f}"
                return result

            result.scene_matched = True
            result.scene_confidence = confidence

        # 2. 定位目标
        screenshot = self._device.screenshot(force_refresh=False)
        if screenshot is None:
            result.error = "screenshot_failed"
            return result

        locate_result = self._resolve_target(screenshot, step, flow)
        if locate_result is None:
            result.error = "target_not_found"
            return result
        result.target_found_by = locate_result.found_by

        # 3. 执行动作
        self._execute_action(step.action_type, locate_result)

        # 4. 验证结果
        if step.verify_scene:
            verified = self._wait_for_scene(
                step.verify_scene, flow, step.verify_timeout
            )
            if verified is not None:
                result.verify_matched = True
                result.verify_confidence = verified
                result.success = True
            else:
                result.error = f"verify_scene_timeout:{step.verify_scene}"
        else:
            # 无验证条件，动作执行即成功
            result.success = True

        return result

    def _resolve_target(
        self, screenshot, step: Step, flow: Flow
    ) -> Optional[LocateResult]:
        """解析步骤中的目标位置"""
        if step.action_x is not None and step.action_y is not None:
            return self._target_locator.locate_fixed(step.action_x, step.action_y)

        if step.action_target and step.action_target in flow.targets:
            target_def = flow.targets[step.action_target]
            return self._target_locator.locate(screenshot, target_def)

        return None

    def _execute_action(self, action_type: str, location: LocateResult):
        """执行动作"""
        if action_type == "tap":
            self._device.tap(location.x, location.y)
        elif action_type == "long_press":
            self._device.long_press(location.x, location.y)
        elif action_type == "wait":
            time.sleep(1.0)

    def _wait_for_scene(
        self, scene_name: str, flow: Flow, timeout: float
    ) -> Optional[float]:
        """
        等待指定场景出现

        Returns:
            匹配置信度，超时返回 None
        """
        scene_def = flow.scenes.get(scene_name)
        threshold = scene_def.threshold if scene_def else 0.7
        deadline = time.time() + timeout
        poll_interval = 0.3

        while time.time() < deadline:
            screenshot = self._device.screenshot(force_refresh=True)
            if screenshot is not None:
                confidence = self._scene_matcher.match_scene(screenshot, scene_name)
                if confidence >= threshold:
                    return confidence
            time.sleep(poll_interval)

        return None
```

- [ ] **Step 4: Run tests to verify they pass**

Run: `cd /Users/xuzhengxin/Code/maple_auto && python -m pytest tests/test_player.py -v`
Expected: All 3 tests PASS

- [ ] **Step 5: Commit**

```bash
git add engine/player.py tests/test_player.py
git commit -m "feat: add Player flow execution engine with verification and retry"
```

---

## Task 6: MockADB + Offline Test Tool

**Files:**
- Create: `engine/mock_adb.py`
- Create: `tools/test_flow.py`
- Test: `tests/test_mock_adb.py`

- [ ] **Step 1: Write failing test for MockADB**

```python
# tests/test_mock_adb.py
import os
import cv2
import tempfile
import numpy as np
import pytest
from engine.mock_adb import MockADB


class TestMockADB:
    def setup_method(self):
        self.tmpdir = tempfile.mkdtemp()
        # Create numbered screenshot files
        for i in range(3):
            img = np.zeros((720, 1280, 3), dtype=np.uint8)
            img[:] = [i * 80, i * 80, i * 80]  # different brightness
            cv2.imwrite(os.path.join(self.tmpdir, f"step_{i:02d}.png"), img)

    def test_screenshots_in_order(self):
        mock = MockADB(self.tmpdir)
        # First call returns first screenshot
        s0 = mock.screenshot()
        assert s0 is not None
        assert s0[0, 0, 0] == 0

        # force_refresh advances
        s1 = mock.screenshot(force_refresh=True)
        assert s1[0, 0, 0] == 80

        s2 = mock.screenshot(force_refresh=True)
        assert s2[0, 0, 0] == 160

    def test_tap_recorded(self):
        mock = MockADB(self.tmpdir)
        mock.tap(100, 200)
        mock.tap(300, 400)

        assert mock.tap_log == [(100, 200), (300, 400)]

    def test_tap_advances_screenshot(self):
        mock = MockADB(self.tmpdir)
        s0 = mock.screenshot()
        assert s0[0, 0, 0] == 0

        mock.tap(100, 100)
        s1 = mock.screenshot()
        assert s1[0, 0, 0] == 80

    def test_stays_on_last_screenshot(self):
        mock = MockADB(self.tmpdir)
        mock.screenshot(force_refresh=True)
        mock.screenshot(force_refresh=True)
        mock.screenshot(force_refresh=True)
        # Past the end, should stay on last
        s = mock.screenshot(force_refresh=True)
        assert s[0, 0, 0] == 160
```

- [ ] **Step 2: Run test to verify it fails**

Run: `cd /Users/xuzhengxin/Code/maple_auto && python -m pytest tests/test_mock_adb.py -v`
Expected: FAIL — `ModuleNotFoundError: No module named 'engine.mock_adb'`

- [ ] **Step 3: Implement engine/mock_adb.py**

```python
# engine/mock_adb.py
# -*- coding: utf-8 -*-
"""
模拟设备
用截图序列模拟真实设备，支持离线测试 Player 逻辑。
"""

import os
import cv2
import logging
import numpy as np
from typing import List, Optional, Tuple

logger = logging.getLogger('Engine.MockADB')


class MockADB:
    """模拟 ADB 设备，按顺序返回截图"""

    def __init__(self, screenshot_dir: str):
        """
        Args:
            screenshot_dir: 包含按文件名排序的截图的目录
        """
        self._screenshots = self._load_screenshots(screenshot_dir)
        self._index = 0
        self.tap_log: List[Tuple[int, int]] = []
        self.swipe_log: List[Tuple[int, int, int, int]] = []

    def _load_screenshots(self, directory: str) -> List[np.ndarray]:
        """加载目录中所有图片，按文件名排序"""
        images = []
        if not os.path.isdir(directory):
            logger.warning(f"截图目录不存在: {directory}")
            return images

        files = sorted([
            f for f in os.listdir(directory)
            if f.lower().endswith(('.png', '.jpg', '.jpeg'))
        ])

        for filename in files:
            path = os.path.join(directory, filename)
            img = cv2.imread(path)
            if img is not None:
                images.append(img)
            else:
                logger.warning(f"无法读取截图: {path}")

        logger.info(f"MockADB: 已加载 {len(images)} 张截图")
        return images

    def screenshot(self, force_refresh: bool = False) -> Optional[np.ndarray]:
        """返回当前截图，force_refresh 时切换到下一张"""
        if not self._screenshots:
            return None

        if force_refresh and self._index < len(self._screenshots) - 1:
            self._index += 1

        return self._screenshots[self._index]

    def tap(self, x: int, y: int) -> None:
        """记录点击并推进截图"""
        self.tap_log.append((x, y))
        if self._index < len(self._screenshots) - 1:
            self._index += 1

    def swipe(self, x1: int, y1: int, x2: int, y2: int, duration: int = 100) -> None:
        """记录滑动"""
        self.swipe_log.append((x1, y1, x2, y2))

    def long_press(self, x: int, y: int, duration: int = 500) -> None:
        """记录长按"""
        self.tap_log.append((x, y))
        if self._index < len(self._screenshots) - 1:
            self._index += 1

    def invalidate_cache(self) -> None:
        """无操作"""
        pass

    def reset(self) -> None:
        """重置到第一张截图"""
        self._index = 0
        self.tap_log.clear()
        self.swipe_log.clear()

    @property
    def current_index(self) -> int:
        return self._index

    @property
    def total_screenshots(self) -> int:
        return len(self._screenshots)
```

- [ ] **Step 4: Run tests to verify they pass**

Run: `cd /Users/xuzhengxin/Code/maple_auto && python -m pytest tests/test_mock_adb.py -v`
Expected: All 4 tests PASS

- [ ] **Step 5: Create tools/test_flow.py CLI**

```python
# tools/test_flow.py
#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
离线流程测试工具
用录制的截图验证 Flow YAML 的执行逻辑
"""

import sys
import os
import argparse
import logging

# Add project root to path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from engine.flow_schema import load_flow
from engine.mock_adb import MockADB
from engine.player import Player


def main():
    parser = argparse.ArgumentParser(description="离线测试 Flow YAML")
    parser.add_argument("flow_yaml", help="Flow YAML 文件路径")
    parser.add_argument(
        "--screenshots", "-s",
        help="截图目录（默认从 flow 同名目录读取）",
        default=None,
    )
    parser.add_argument(
        "--base-dir", "-b",
        help="模板基础目录（默认: screenshots/<flow_name>）",
        default=None,
    )
    parser.add_argument("--verbose", "-v", action="store_true")
    args = parser.parse_args()

    # Setup logging
    level = logging.DEBUG if args.verbose else logging.INFO
    logging.basicConfig(
        level=level,
        format="%(levelname)s - %(name)s - %(message)s"
    )

    # Load flow
    flow = load_flow(args.flow_yaml)
    print(f"\n=== Flow Test: {flow.display_name} ===\n")

    # Determine screenshot directory
    if args.screenshots:
        screenshot_dir = args.screenshots
    else:
        screenshot_dir = os.path.join("screenshots", flow.name)

    if not os.path.isdir(screenshot_dir):
        print(f"ERROR: 截图目录不存在: {screenshot_dir}")
        print("提示: 先用 tools/recorder.py 录制截图")
        sys.exit(1)

    # Determine base dir for templates
    base_dir = args.base_dir or screenshot_dir

    # Create mock device and player
    mock = MockADB(screenshot_dir)
    if mock.total_screenshots == 0:
        print(f"ERROR: 截图目录为空: {screenshot_dir}")
        sys.exit(1)

    print(f"已加载 {mock.total_screenshots} 张截图")
    print(f"模板目录: {base_dir}")
    print()

    player = Player(device=mock, base_dir=base_dir)
    result = player.play(flow)

    # Print report
    print(f"\n{'=' * 50}")
    for i, step_result in enumerate(result.step_results):
        step = flow.steps[i]
        status = "PASS" if step_result.success else ("SKIP" if step_result.skipped else "FAIL")
        icon = {"PASS": "OK", "SKIP": "WARN", "FAIL": "FAIL"}[status]

        print(f"\nStep {i+1}: {step.id}")
        if step_result.scene_matched:
            print(f"  {icon} Scene match: {step.expect_scene} ({step_result.scene_confidence:.2f})")
        elif step.expect_scene:
            print(f"  FAIL Scene mismatch: {step.expect_scene}")

        print(f"  {'OK' if step_result.target_found_by else 'FAIL'} Target: {step_result.target_found_by or 'not found'}")

        if step_result.verify_matched:
            print(f"  OK Verify: {step.verify_scene} ({step_result.verify_confidence:.2f})")
        elif step.verify_scene and not step_result.skipped:
            print(f"  FAIL Verify timeout: {step.verify_scene}")

        if step_result.error:
            print(f"  Error: {step_result.error}")

    # Summary
    passed = sum(1 for r in result.step_results if r.success)
    total = len(result.step_results)
    final_status = "PASSED" if result.success else "FAILED"
    print(f"\n{'=' * 50}")
    print(f"Result: {passed}/{total} steps {final_status} ({result.total_time:.1f}s)")
    print()

    sys.exit(0 if result.success else 1)


if __name__ == "__main__":
    main()
```

- [ ] **Step 6: Commit**

```bash
git add engine/mock_adb.py tests/test_mock_adb.py tools/test_flow.py
git commit -m "feat: add MockADB and offline flow test tool"
```

---

## Task 7: Recorder — Capture Manual Operations

**Files:**
- Create: `engine/recorder.py`
- Create: `tools/recorder.py`

- [ ] **Step 1: Implement engine/recorder.py**

```python
# engine/recorder.py
# -*- coding: utf-8 -*-
"""
录制器
连接真机，监听用户操作，自动保存截图和生成 Flow YAML。
"""

import os
import re
import cv2
import time
import yaml
import logging
import threading
import subprocess
import numpy as np
from typing import List, Optional, Tuple
from dataclasses import dataclass, field

logger = logging.getLogger('Engine.Recorder')


@dataclass
class RecordedAction:
    """录制的单个操作"""
    timestamp: float
    action_type: str  # tap | swipe | long_press
    x: int
    y: int
    x2: int = 0  # for swipe
    y2: int = 0  # for swipe
    screenshot_before: Optional[np.ndarray] = field(default=None, repr=False)
    screenshot_after: Optional[np.ndarray] = field(default=None, repr=False)


class Recorder:
    """录制器 — 捕获手动操作并生成 Flow YAML"""

    def __init__(self, adb, task_name: str, output_dir: str = "."):
        """
        Args:
            adb: ADB 实例（需要 screenshot, run 方法）
            task_name: 任务名称（用于文件命名）
            output_dir: 输出目录
        """
        self._adb = adb
        self._task_name = task_name
        self._output_dir = output_dir
        self._actions: List[RecordedAction] = []
        self._running = False
        self._screenshot_thread: Optional[threading.Thread] = None
        self._event_thread: Optional[threading.Thread] = None
        self._current_screenshot: Optional[np.ndarray] = None
        self._screenshot_lock = threading.Lock()

    def start(self):
        """开始录制"""
        logger.info(f"开始录制任务: {self._task_name}")
        logger.info("请在设备上手动操作，完成后按 Ctrl+C 结束录制")
        self._running = True

        # 持续截图线程
        self._screenshot_thread = threading.Thread(
            target=self._screenshot_loop, daemon=True
        )
        self._screenshot_thread.start()

        # 监听输入事件线程
        self._event_thread = threading.Thread(
            target=self._event_loop, daemon=True
        )
        self._event_thread.start()

        # 等待用户中断
        try:
            while self._running:
                time.sleep(0.1)
        except KeyboardInterrupt:
            pass

        self.stop()

    def stop(self):
        """停止录制并保存结果"""
        self._running = False
        logger.info(f"录制结束，共捕获 {len(self._actions)} 个操作")

        if self._actions:
            self._save_results()

    def _screenshot_loop(self):
        """持续截图（每 0.5s）"""
        while self._running:
            img = self._adb.screenshot(force_refresh=True)
            if img is not None:
                with self._screenshot_lock:
                    self._current_screenshot = img.copy()
            time.sleep(0.5)

    def _event_loop(self):
        """监听 ADB input 事件"""
        try:
            cmd = [
                self._adb.adb_path if hasattr(self._adb, 'adb_path') else 'adb',
                '-s', self._adb.device_id,
                'shell', 'getevent', '-lt'
            ]
            proc = subprocess.Popen(
                cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                text=True, bufsize=1
            )

            touch_x = 0
            touch_y = 0
            touch_down_time = 0.0
            is_touching = False

            for line in proc.stdout:
                if not self._running:
                    break

                # Parse ABS_MT_POSITION_X
                if 'ABS_MT_POSITION_X' in line:
                    match = re.search(r'([0-9a-f]+)\s*$', line.strip())
                    if match:
                        touch_x = int(match.group(1), 16)

                # Parse ABS_MT_POSITION_Y
                elif 'ABS_MT_POSITION_Y' in line:
                    match = re.search(r'([0-9a-f]+)\s*$', line.strip())
                    if match:
                        touch_y = int(match.group(1), 16)

                # Touch down
                elif 'BTN_TOUCH' in line and 'DOWN' in line:
                    touch_down_time = time.time()
                    is_touching = True

                # Touch up
                elif 'BTN_TOUCH' in line and 'UP' in line:
                    if is_touching:
                        duration = time.time() - touch_down_time
                        action_type = 'long_press' if duration > 0.5 else 'tap'

                        with self._screenshot_lock:
                            before = self._current_screenshot.copy() if self._current_screenshot is not None else None

                        action = RecordedAction(
                            timestamp=time.time(),
                            action_type=action_type,
                            x=touch_x,
                            y=touch_y,
                            screenshot_before=before,
                        )
                        self._actions.append(action)
                        logger.info(f"捕获操作: {action_type} ({touch_x}, {touch_y})")

                        # 等待画面稳定后截图
                        time.sleep(1.0)
                        after = self._adb.screenshot(force_refresh=True)
                        if after is not None:
                            action.screenshot_after = after.copy()

                    is_touching = False

            proc.terminate()
        except Exception as e:
            logger.error(f"事件监听异常: {e}")

    def _save_results(self):
        """保存录制结果：截图 + Flow YAML"""
        # Create output directories
        screenshot_dir = os.path.join(self._output_dir, "screenshots", self._task_name)
        scenes_dir = os.path.join(screenshot_dir, "scenes")
        targets_dir = os.path.join(screenshot_dir, "targets")
        flows_dir = os.path.join(self._output_dir, "flows")
        os.makedirs(scenes_dir, exist_ok=True)
        os.makedirs(targets_dir, exist_ok=True)
        os.makedirs(flows_dir, exist_ok=True)

        steps = []
        scenes = {}
        targets = {}

        for i, action in enumerate(self._actions):
            step_id = f"step_{i+1:02d}"

            # Save scene screenshot (before action)
            if action.screenshot_before is not None:
                scene_name = f"scene_{i+1:02d}"
                scene_file = f"scenes/{scene_name}.png"
                cv2.imwrite(os.path.join(screenshot_dir, scene_file), action.screenshot_before)
                scenes[scene_name] = {
                    'templates': [scene_file],
                    'threshold': 0.7,
                }

            # Crop target template from click position
            if action.screenshot_before is not None:
                target_name = f"target_{i+1:02d}"
                target_file = f"targets/{target_name}.png"
                crop = self._crop_target(action.screenshot_before, action.x, action.y)
                if crop is not None:
                    cv2.imwrite(os.path.join(screenshot_dir, target_file), crop)
                    targets[target_name] = {
                        'template': target_file,
                        'fallback_pos': [action.x, action.y],
                        'threshold': 0.75,
                    }

            # Save verify screenshot (after action)
            verify_scene = None
            if action.screenshot_after is not None and i < len(self._actions) - 1:
                verify_name = f"scene_{i+2:02d}"
                # Will be saved as the next step's scene
            elif action.screenshot_after is not None:
                verify_name = f"scene_final"
                verify_file = f"scenes/{verify_name}.png"
                cv2.imwrite(os.path.join(screenshot_dir, verify_file), action.screenshot_after)
                scenes[verify_name] = {
                    'templates': [verify_file],
                    'threshold': 0.7,
                }
                verify_scene = verify_name

            # Build step definition
            step = {
                'id': step_id,
                'description': f"操作 {i+1}: {action.action_type} ({action.x}, {action.y})",
            }
            if f"scene_{i+1:02d}" in scenes:
                step['expect_scene'] = f"scene_{i+1:02d}"

            step['action'] = {
                'type': action.action_type,
            }
            if f"target_{i+1:02d}" in targets:
                step['action']['target'] = f"target_{i+1:02d}"
            else:
                step['action']['x'] = action.x
                step['action']['y'] = action.y

            step['verify'] = {
                'scene': verify_scene or f"scene_{i+2:02d}",
                'timeout': 3.0,
            }
            step['on_fail'] = 'retry'
            steps.append(step)

        # Build Flow YAML
        flow_data = {
            'name': self._task_name,
            'display_name': self._task_name,
            'timeout': 60,
            'max_retries': 2,
            'steps': steps,
            'scenes': scenes,
            'targets': targets,
        }

        flow_path = os.path.join(flows_dir, f"{self._task_name}.yaml")
        with open(flow_path, 'w', encoding='utf-8') as f:
            yaml.dump(flow_data, f, allow_unicode=True, default_flow_style=False, sort_keys=False)

        logger.info(f"Flow YAML 已保存: {flow_path}")
        logger.info(f"截图已保存: {screenshot_dir}")
        logger.info(f"共 {len(steps)} 个步骤, {len(scenes)} 个场景, {len(targets)} 个目标模板")

    def _crop_target(
        self, screenshot: np.ndarray, x: int, y: int, size: int = 100
    ) -> Optional[np.ndarray]:
        """从截图中裁剪点击位置周围的区域作为目标模板"""
        h, w = screenshot.shape[:2]
        half = size // 2

        x1 = max(0, x - half)
        y1 = max(0, y - half)
        x2 = min(w, x + half)
        y2 = min(h, y + half)

        if x2 - x1 < 20 or y2 - y1 < 20:
            return None

        return screenshot[y1:y2, x1:x2]
```

- [ ] **Step 2: Create tools/recorder.py CLI**

```python
# tools/recorder.py
#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
录制工具入口
连接设备，录制手动操作，生成 Flow YAML 和截图库
"""

import sys
import os
import argparse
import logging

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from core.adb import ADB
from core.config import Config
from engine.recorder import Recorder


def main():
    parser = argparse.ArgumentParser(description="录制日常任务操作")
    parser.add_argument("--task", "-t", required=True, help="任务名称")
    parser.add_argument("--config", "-c", default="config/daily.yaml", help="配置文件")
    parser.add_argument("--output", "-o", default=".", help="输出目录")
    parser.add_argument("--verbose", "-v", action="store_true")
    args = parser.parse_args()

    level = logging.DEBUG if args.verbose else logging.INFO
    logging.basicConfig(
        level=level,
        format="%(asctime)s - %(levelname)s - %(message)s"
    )

    # Load config
    config = Config(args.config)
    device_id = config.get('device.id', 'emulator-5560')
    adb_path = config.get('device.adb_path', 'adb')

    # Connect device
    adb = ADB(device_id, adb_path)
    if not adb.is_device_connected():
        print(f"ERROR: 设备未连接: {device_id}")
        sys.exit(1)

    print(f"设备已连接: {device_id}")
    print(f"任务名称: {args.task}")
    print(f"输出目录: {args.output}")
    print()
    print("请在设备上手动操作，完成后按 Ctrl+C 结束录制")
    print("=" * 50)

    # Start recording
    recorder = Recorder(adb, task_name=args.task, output_dir=args.output)
    recorder.start()


if __name__ == "__main__":
    main()
```

- [ ] **Step 3: Run all existing tests to verify nothing is broken**

Run: `cd /Users/xuzhengxin/Code/maple_auto && python -m pytest tests/ -v`
Expected: All tests PASS

- [ ] **Step 4: Commit**

```bash
git add engine/recorder.py tools/recorder.py
git commit -m "feat: add Recorder for capturing manual operations into Flow YAML"
```

---

## Task 8: Integration — Wire Player into games/daily.py

**Files:**
- Modify: `games/daily.py` (add flow-based execution path)

- [ ] **Step 1: Add flow-based task execution to DailyGame**

Add this method to `games/daily.py`, inserting it after the `_handle_execute_task` method. This provides a new code path that uses the engine's Player for tasks that have a Flow YAML file:

```python
# Add to games/daily.py - new import at top of file
import sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from engine.flow_schema import load_flow
from engine.player import Player

# Add this method to DailyGame class
def _execute_with_flow_engine(self, task: Task) -> bool:
    """使用新的 Flow 引擎执行任务"""
    flow_path = os.path.join("flows", f"{task.name}.yaml")
    if not os.path.exists(flow_path):
        return False

    self.logger.info(f"使用 Flow 引擎执行: {task.name}")
    flow = load_flow(flow_path)
    screenshot_dir = os.path.join("screenshots", task.name)
    player = Player(device=self.adb, base_dir=screenshot_dir)
    result = player.play(flow)

    if result.success:
        self.logger.info(f"Flow 引擎执行成功: {task.name} ({result.total_time:.1f}s)")
    else:
        self.logger.warning(f"Flow 引擎执行失败: {task.name} - {result.error}")

    return result.success
```

- [ ] **Step 2: Modify _handle_execute_task to try flow engine first**

In `games/daily.py`, modify `_handle_execute_task` to check for flow YAML before falling back to existing logic. Replace the existing task dispatch section with:

```python
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

    # 优先尝试 Flow 引擎（新系统）
    flow_path = os.path.join("flows", f"{task.name}.yaml")
    if os.path.exists(flow_path):
        success = self._execute_with_flow_engine(task)
        if success:
            self._change_state(DailyState.TASK_COMPLETE, f"{task.display_name} Flow完成")
        else:
            self.logger.warning(f"Flow 引擎失败，回退到旧方式: {task.name}")
            self._execute_with_legacy(screenshot, task)
        return

    # 旧系统
    self._execute_with_legacy(screenshot, task)
```

- [ ] **Step 3: Rename existing logic to _execute_with_legacy**

Rename the existing scene_player and template matching dispatch to `_execute_with_legacy`:

```python
def _execute_with_legacy(self, screenshot: np.ndarray, task: Task):
    """使用旧系统（场景回放/模板匹配）执行任务"""
    # 尝试场景回放
    if task.name in self.scene_player.get_flow_names():
        self.logger.info(f"使用场景回放执行: {task.name}")
        success = self.scene_player.play(task.name, self.adb)
        if success:
            self._change_state(DailyState.TASK_COMPLETE, f"{task.display_name}场景回放完成")
        else:
            self.logger.warning(f"场景回放失败，回退到模板匹配: {task.name}")
            self._execute_with_template(screenshot, task)
        return

    # 传统模板匹配方式
    self._execute_with_template(screenshot, task)
```

- [ ] **Step 4: Run all tests to ensure nothing is broken**

Run: `cd /Users/xuzhengxin/Code/maple_auto && python -m pytest tests/ -v`
Expected: All tests PASS

- [ ] **Step 5: Commit**

```bash
git add games/daily.py
git commit -m "feat: integrate flow engine into DailyGame with fallback to legacy"
```

---

## Task 9: End-to-End Validation with Sample Flow

**Files:**
- Create: `flows/example_tap_test.yaml`
- Create: `screenshots/example_tap_test/scenes/scene_01.png`
- Create: `screenshots/example_tap_test/scenes/scene_02.png`
- Create: `tests/test_e2e_flow.py`

- [ ] **Step 1: Create sample flow and screenshots for E2E test**

```python
# tests/test_e2e_flow.py
"""
端到端测试：验证完整链路
Flow YAML -> Player -> MockADB -> 验证结果
"""
import os
import cv2
import tempfile
import numpy as np
import pytest

from engine.flow_schema import load_flow
from engine.mock_adb import MockADB
from engine.player import Player


class TestE2EFlow:
    def setup_method(self):
        self.tmpdir = tempfile.mkdtemp()
        self.scenes_dir = os.path.join(self.tmpdir, "scenes")
        self.targets_dir = os.path.join(self.tmpdir, "targets")
        os.makedirs(self.scenes_dir)
        os.makedirs(self.targets_dir)

    def _create_scene(self, name, color_bgr):
        """Create a scene template and a matching full screenshot"""
        # Template: 200x200 with colored center
        template = np.zeros((200, 200, 3), dtype=np.uint8)
        template[50:150, 50:150] = color_bgr
        path = os.path.join(self.scenes_dir, f"{name}.png")
        cv2.imwrite(path, template)

        # Full screenshot with template embedded
        full = np.zeros((720, 1280, 3), dtype=np.uint8)
        full[100:300, 100:300] = template
        return full

    def _create_target(self, name, color_bgr):
        """Create a target template"""
        template = np.zeros((60, 60, 3), dtype=np.uint8)
        template[10:50, 10:50] = color_bgr
        path = os.path.join(self.targets_dir, f"{name}.png")
        cv2.imwrite(path, template)
        return template

    def test_full_flow_with_mock(self):
        """E2E: Load YAML, run with MockADB, verify success"""
        # Create 2 scenes
        screen_a = self._create_scene("scene_a", [255, 0, 0])  # blue
        screen_b = self._create_scene("scene_b", [0, 255, 0])  # green

        # Create target in screen_a
        target_template = self._create_target("btn_a", [255, 0, 0])
        # Embed target in screen_a at position (600, 350)
        screen_a[320:380, 570:630] = target_template

        # Save screenshots as MockADB sequence
        screenshots_seq_dir = os.path.join(self.tmpdir, "seq")
        os.makedirs(screenshots_seq_dir)
        cv2.imwrite(os.path.join(screenshots_seq_dir, "00_scene_a.png"), screen_a)
        cv2.imwrite(os.path.join(screenshots_seq_dir, "01_scene_b.png"), screen_b)

        # Write Flow YAML
        flow_yaml = f"""
name: e2e_test
display_name: E2E Test
timeout: 30
max_retries: 1

steps:
  - id: click_btn
    description: "Click button A to go to scene B"
    expect_scene: "scene_a"
    action:
      type: tap
      target: "btn_a"
    verify:
      scene: "scene_b"
      timeout: 2.0
    on_fail: abort

scenes:
  scene_a:
    templates: ["scenes/scene_a.png"]
    threshold: 0.8
  scene_b:
    templates: ["scenes/scene_b.png"]
    threshold: 0.8

targets:
  btn_a:
    template: "targets/btn_a.png"
    fallback_pos: [600, 350]
    threshold: 0.8
"""
        flow_path = os.path.join(self.tmpdir, "test_flow.yaml")
        with open(flow_path, 'w') as f:
            f.write(flow_yaml)

        # Run
        flow = load_flow(flow_path)
        mock = MockADB(screenshots_seq_dir)
        player = Player(device=mock, base_dir=self.tmpdir)
        result = player.play(flow)

        # Verify
        assert result.success is True
        assert len(result.step_results) == 1
        assert result.step_results[0].success is True
        assert result.step_results[0].scene_matched is True
        assert result.step_results[0].target_found_by == "template"
        assert mock.tap_log  # something was tapped
```

- [ ] **Step 2: Run the E2E test**

Run: `cd /Users/xuzhengxin/Code/maple_auto && python -m pytest tests/test_e2e_flow.py -v`
Expected: PASS

- [ ] **Step 3: Run full test suite**

Run: `cd /Users/xuzhengxin/Code/maple_auto && python -m pytest tests/ -v`
Expected: All tests PASS

- [ ] **Step 4: Commit**

```bash
git add tests/test_e2e_flow.py
git commit -m "test: add E2E flow test validating full record-replay pipeline"
```

---

## Summary

| Task | Component | Tests |
|------|-----------|-------|
| 1 | ScaledADB extraction | 4 tests |
| 2 | Flow YAML schema | 5 tests |
| 3 | SceneMatcher | 4 tests |
| 4 | TargetLocator | 4 tests |
| 5 | Player engine | 3 tests |
| 6 | MockADB + test tool | 4 tests |
| 7 | Recorder | manual validation |
| 8 | Integration into daily.py | regression tests |
| 9 | E2E validation | 1 integration test |

**Total:** 9 tasks, ~25 automated tests, covers Phase 1 + Phase 2 of the design spec.

Phase 3 (record a real task on device) and Phase 4 (replace legacy logic) are operational tasks that require the physical device — they should be done after this code is in place.
