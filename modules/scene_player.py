# -*- coding: utf-8 -*-
"""
场景回放引擎
基于"场景截图模板 + 预设点击坐标"的自动化操作系统

工作原理：
  1. 从视频录制中自动提取关键帧（场景截图）和对应的触摸坐标
  2. 运行时：截图 → 匹配当前场景 → 执行对应的点击操作 → 等待界面变化 → 继续
  3. 支持顺序执行和条件分支

与 UIDetector 的关系：
  - UIDetector: 精确匹配单个 UI 元素（按钮、图标），适合动态内容
  - ScenePlayer: 匹配整个场景截图，适合固定流程的 UI 导航
  - 两者可以混合使用
"""

import os
import cv2
import time
import yaml
import logging
import numpy as np
from typing import Optional, List, Dict, Any, Tuple
from dataclasses import dataclass, field

logger = logging.getLogger('AutoDaily')


@dataclass
class SceneAction:
    """场景动作：在某个场景下执行的操作"""
    scene_id: str               # 场景ID（唯一标识）
    scene_template: str         # 场景模板图片路径
    tap_x: int                  # 点击 x 坐标（基准分辨率 1280x720）
    tap_y: int                  # 点击 y 坐标
    description: str = ""       # 动作描述
    wait_after: float = 1.0     # 点击后等待时间（秒）
    next_scene: str = ""        # 期望的下一个场景ID（空=自动匹配）
    timeout: float = 10.0       # 等待此场景出现的超时时间
    match_threshold: float = 0.7  # 场景匹配阈值
    optional: bool = False      # 是否可选（匹配不到则跳过）
    tap_count: int = 1          # 点击次数
    tap_interval: float = 0.3   # 多次点击间隔
    action: str = "tap"          # 动作类型: tap(默认点击), scroll_and_find(滑动查找), repeat_tap_until_gone(重复点击直到场景变化), input_text(输入文本), select_equip_by_color(按颜色选装备)
    max_repeats: int = 5         # repeat_tap_until_gone 最大重复次数
    input_text: str = ""         # input_text action: 要输入的文本内容
    equip_area: Dict[str, int] = field(default_factory=dict)  # select_equip_by_color: 装备区域 {x1, y1, x2, y2}
    color_priority: List[str] = field(default_factory=list)    # select_equip_by_color: 颜色优先级列表
    match_mode: str = "template"  # 匹配模式: template(模板匹配,默认), region_feature(UI区域特征匹配)
    ui_regions: List[Dict] = field(default_factory=list)  # region_feature模式: UI区域定义列表 [{x1,y1,x2,y2,min_edge_density}]


@dataclass
class SceneFlow:
    """场景流程：一组有序的场景动作"""
    name: str                   # 流程名称
    description: str = ""       # 流程描述
    actions: List[SceneAction] = field(default_factory=list)
    loop: bool = False          # 是否循环执行
    max_loops: int = 1          # 最大循环次数


class ScenePlayer:
    """
    场景回放引擎

    使用方法：
      1. 加载场景配置：player.load_config("config/daily_scenes.yaml")
      2. 执行流程：player.play("daily_sign_in", adb)
    """

    BASE_W = 1280
    BASE_H = 720

    def __init__(self, config: Optional[Dict[str, Any]] = None):
        self.config = config or {}
        self.scenes_dir = self.config.get('scenes_dir', 'templates/daily/scenes')
        self.default_threshold = self.config.get('match_threshold', 0.7)
        self.default_wait = self.config.get('default_wait', 1.0)

        # 场景模板缓存 {模板路径: cv2图像}
        self._template_cache: Dict[str, np.ndarray] = {}

        # 已加载的流程
        self._flows: Dict[str, SceneFlow] = {}

        # 执行统计
        self.stats = {
            'flows_executed': 0,
            'actions_executed': 0,
            'actions_skipped': 0,
            'actions_timeout': 0,
        }

    # ==================== 配置加载 ====================

    def load_config(self, config_path: str) -> bool:
        """
        从 YAML 配置文件加载场景流程

        Args:
            config_path: 配置文件路径

        Returns:
            是否加载成功
        """
        if not os.path.exists(config_path):
            logger.warning(f"场景配置文件不存在: {config_path}")
            return False

        try:
            with open(config_path, 'r', encoding='utf-8') as f:
                data = yaml.safe_load(f)

            if not data or 'flows' not in data:
                logger.warning(f"场景配置文件格式错误: {config_path}")
                return False

            # 全局配置
            global_cfg = data.get('global', {})
            self.scenes_dir = global_cfg.get('scenes_dir', self.scenes_dir)
            self.default_threshold = global_cfg.get('match_threshold', self.default_threshold)
            self.default_wait = global_cfg.get('default_wait', self.default_wait)

            # 解析流程（跳过空流程）
            self._flows.clear()
            for flow_name, flow_data in data['flows'].items():
                flow = self._parse_flow(flow_name, flow_data)
                if flow and len(flow.actions) > 0:
                    self._flows[flow_name] = flow
                    logger.info(f"已加载场景流程: {flow_name} ({len(flow.actions)} 个动作)")
                elif flow:
                    logger.debug(f"跳过空流程: {flow_name}")

            logger.info(f"共加载 {len(self._flows)} 个场景流程")
            return True

        except Exception as e:
            logger.error(f"加载场景配置失败: {e}")
            return False

    def _parse_flow(self, name: str, data: Dict) -> Optional[SceneFlow]:
        """解析单个流程配置"""
        try:
            flow = SceneFlow(
                name=name,
                description=data.get('description', ''),
                loop=data.get('loop', False),
                max_loops=data.get('max_loops', 1),
            )

            for i, action_data in enumerate(data.get('actions', [])):
                action = SceneAction(
                    scene_id=action_data.get('scene_id', f"{name}_step_{i}"),
                    scene_template=action_data.get('scene_template', ''),
                    tap_x=action_data.get('tap_x', 0),
                    tap_y=action_data.get('tap_y', 0),
                    description=action_data.get('description', ''),
                    wait_after=action_data.get('wait_after', self.default_wait),
                    next_scene=action_data.get('next_scene', ''),
                    timeout=action_data.get('timeout', 10.0),
                    match_threshold=action_data.get('match_threshold', self.default_threshold),
                    optional=action_data.get('optional', False),
                    tap_count=action_data.get('tap_count', 1),
                    tap_interval=action_data.get('tap_interval', 0.3),
                    action=action_data.get('action', 'tap'),
                    max_repeats=action_data.get('max_repeats', 5),
                    input_text=action_data.get('input_text', ''),
                    equip_area=action_data.get('equip_area', {}),
                    color_priority=action_data.get('color_priority', []),
                    match_mode=action_data.get('match_mode', 'template'),
                    ui_regions=action_data.get('ui_regions', []),
                )
                flow.actions.append(action)

            return flow

        except Exception as e:
            logger.error(f"解析流程 {name} 失败: {e}")
            return None

    # ==================== 场景匹配 ====================

    def _load_scene_template(self, template_path: str) -> Optional[np.ndarray]:
        """加载场景模板图片（带缓存）"""
        if template_path in self._template_cache:
            return self._template_cache[template_path]

        # 尝试多个路径
        paths_to_try = [
            template_path,
            os.path.join(self.scenes_dir, template_path),
        ]

        for path in paths_to_try:
            if os.path.exists(path):
                img = cv2.imread(path)
                if img is not None:
                    # 确保是基准分辨率
                    h, w = img.shape[:2]
                    if w != self.BASE_W or h != self.BASE_H:
                        img = cv2.resize(img, (self.BASE_W, self.BASE_H))
                    self._template_cache[template_path] = img
                    return img

        logger.warning(f"场景模板不存在: {template_path}")
        return None

    def match_scene(
        self,
        screenshot: np.ndarray,
        template_path: str,
        threshold: float = 0.7
    ) -> Tuple[bool, float]:
        """
        匹配当前截图是否与场景模板相似

        使用多种方法综合判断：
        1. 直方图相关性（全局色彩分布）
        2. 结构相似性（局部特征）
        3. 模板匹配得分（整体匹配）

        Args:
            screenshot: 当前截图（1280x720）
            template_path: 场景模板路径
            threshold: 匹配阈值

        Returns:
            (是否匹配, 相似度得分)
        """
        template = self._load_scene_template(template_path)
        if template is None:
            return False, 0.0

        # 确保截图是基准分辨率
        h, w = screenshot.shape[:2]
        if w != self.BASE_W or h != self.BASE_H:
            screenshot = cv2.resize(screenshot, (self.BASE_W, self.BASE_H))

        # 方法1: 直方图相关性
        hist_score = self._histogram_similarity(screenshot, template)

        # 方法2: 结构相似性（缩小后像素比较）
        struct_score = self._structural_similarity(screenshot, template)

        # 方法3: 特征点匹配（ORB）
        feature_score = self._feature_similarity(screenshot, template)

        # 综合得分（加权平均）
        # 直方图权重低（容易被颜色相近的不同界面欺骗）
        # 结构和特征权重高
        combined_score = (
            hist_score * 0.2 +
            struct_score * 0.4 +
            feature_score * 0.4
        )

        matched = combined_score >= threshold
        if matched:
            logger.debug(
                f"场景匹配成功: {template_path} "
                f"(综合={combined_score:.3f}, 直方图={hist_score:.3f}, "
                f"结构={struct_score:.3f}, 特征={feature_score:.3f})"
            )

        return matched, combined_score

    def _histogram_similarity(self, img1: np.ndarray, img2: np.ndarray) -> float:
        """直方图相似度（0~1）"""
        # 使用 HSV 色彩空间的 H 和 S 通道
        hsv1 = cv2.cvtColor(img1, cv2.COLOR_BGR2HSV)
        hsv2 = cv2.cvtColor(img2, cv2.COLOR_BGR2HSV)

        # H 通道直方图
        h_hist1 = cv2.calcHist([hsv1], [0], None, [180], [0, 180])
        h_hist2 = cv2.calcHist([hsv2], [0], None, [180], [0, 180])
        cv2.normalize(h_hist1, h_hist1)
        cv2.normalize(h_hist2, h_hist2)
        h_corr = cv2.compareHist(h_hist1, h_hist2, cv2.HISTCMP_CORREL)

        # S 通道直方图
        s_hist1 = cv2.calcHist([hsv1], [1], None, [256], [0, 256])
        s_hist2 = cv2.calcHist([hsv2], [1], None, [256], [0, 256])
        cv2.normalize(s_hist1, s_hist1)
        cv2.normalize(s_hist2, s_hist2)
        s_corr = cv2.compareHist(s_hist1, s_hist2, cv2.HISTCMP_CORREL)

        # 综合（H 通道更重要）
        score = max(0.0, h_corr * 0.6 + s_corr * 0.4)
        return score

    def _structural_similarity(self, img1: np.ndarray, img2: np.ndarray) -> float:
        """结构相似度（基于缩小后的像素比较）"""
        # 缩小到 160x90 加速
        small1 = cv2.resize(img1, (160, 90))
        small2 = cv2.resize(img2, (160, 90))

        # 转灰度
        gray1 = cv2.cvtColor(small1, cv2.COLOR_BGR2GRAY)
        gray2 = cv2.cvtColor(small2, cv2.COLOR_BGR2GRAY)

        # 计算绝对差异
        diff = cv2.absdiff(gray1, gray2)

        # 相似像素占比（差异小于阈值的像素）
        similar_pixels = np.count_nonzero(diff < 25)
        total_pixels = diff.size

        return similar_pixels / total_pixels

    def _feature_similarity(self, img1: np.ndarray, img2: np.ndarray) -> float:
        """特征点匹配相似度（ORB）- 使用缩小图加速"""
        try:
            # 缩小到 640x360 加速 ORB 计算
            small1 = cv2.resize(img1, (640, 360))
            small2 = cv2.resize(img2, (640, 360))

            # 转灰度
            gray1 = cv2.cvtColor(small1, cv2.COLOR_BGR2GRAY)
            gray2 = cv2.cvtColor(small2, cv2.COLOR_BGR2GRAY)

            # ORB 特征检测（减少特征点数量加速）
            orb = cv2.ORB_create(nfeatures=300)
            kp1, des1 = orb.detectAndCompute(gray1, None)
            kp2, des2 = orb.detectAndCompute(gray2, None)

            if des1 is None or des2 is None or len(kp1) < 10 or len(kp2) < 10:
                return 0.0

            # BFMatcher 匹配
            bf = cv2.BFMatcher(cv2.NORM_HAMMING, crossCheck=False)
            matches = bf.knnMatch(des1, des2, k=2)

            # Lowe's ratio test
            good_matches = []
            for m_pair in matches:
                if len(m_pair) == 2:
                    m, n = m_pair
                    if m.distance < 0.75 * n.distance:
                        good_matches.append(m)

            # 匹配率
            max_possible = min(len(kp1), len(kp2))
            if max_possible == 0:
                return 0.0

            score = len(good_matches) / max_possible
            return min(1.0, score * 2.0)  # 放大得分（好的匹配通常比率不高）

        except Exception:
            return 0.0

    def find_best_scene(
        self,
        screenshot: np.ndarray,
        candidates: List[SceneAction],
        threshold: float = 0.7
    ) -> Optional[Tuple[SceneAction, float]]:
        """
        在候选场景中找到最匹配的场景

        Args:
            screenshot: 当前截图
            candidates: 候选场景动作列表
            threshold: 最低匹配阈值

        Returns:
            (最佳匹配的场景动作, 匹配得分) 或 None
        """
        best_action = None
        best_score = threshold

        for action in candidates:
            matched, score = self._match_action_scene(screenshot, action)
            if matched and score > best_score:
                best_score = score
                best_action = action

        if best_action:
            return best_action, best_score
        return None

    # ==================== 流程执行 ====================

    def play(
        self,
        flow_name: str,
        adb,
        on_progress=None
    ) -> bool:
        """
        执行场景流程

        Args:
            flow_name: 流程名称
            adb: ADB 实例（需要支持 screenshot() 和 tap()）
            on_progress: 进度回调 (step_index, total_steps, action_desc)

        Returns:
            是否成功完成
        """
        flow = self._flows.get(flow_name)
        if flow is None:
            logger.error(f"未找到场景流程: {flow_name}")
            return False

        logger.info(f"开始执行场景流程: {flow.name} ({len(flow.actions)} 步)")
        self.stats['flows_executed'] += 1

        loop_count = 0
        while True:
            success = self._execute_flow(flow, adb, on_progress)

            if not flow.loop or not success:
                return success

            loop_count += 1
            if loop_count >= flow.max_loops:
                logger.info(f"流程 {flow.name} 已达最大循环次数 {flow.max_loops}")
                return True

            logger.info(f"流程 {flow.name} 第 {loop_count + 1} 次循环")

    def _execute_flow(
        self,
        flow: SceneFlow,
        adb,
        on_progress=None
    ) -> bool:
        """执行单次流程"""
        total_steps = len(flow.actions)
        consecutive_timeouts = 0
        max_consecutive_timeouts = 3  # 连续超时3次则放弃

        for step_idx, action in enumerate(flow.actions):
            # 进度回调
            if on_progress:
                on_progress(step_idx, total_steps, action.description)

            logger.info(
                f"  [{step_idx + 1}/{total_steps}] "
                f"等待场景: {action.scene_id} - {action.description}"
            )

            # 等待场景出现
            matched = self._wait_for_scene(adb, action)

            if not matched:
                if action.optional:
                    logger.info(f"  可选场景未出现，跳过: {action.scene_id}")
                    self.stats['actions_skipped'] += 1
                    continue
                else:
                    consecutive_timeouts += 1
                    logger.warning(
                        f"  场景等待超时: {action.scene_id} "
                        f"(超时 {action.timeout}s, 连续超时 {consecutive_timeouts}次)"
                    )
                    self.stats['actions_timeout'] += 1

                    if consecutive_timeouts >= max_consecutive_timeouts:
                        logger.error(
                            f"  连续 {max_consecutive_timeouts} 次超时，放弃流程: {flow.name}"
                        )
                        return False

                    # 单次超时不立即放弃，尝试继续下一步
                    # （可能是中间某个过渡界面被跳过了）
                    logger.info(f"  尝试跳过当前步骤，继续下一步...")
                    continue

            # 匹配成功，重置连续超时计数
            consecutive_timeouts = 0

            # 根据 action 类型执行不同操作
            if action.action == 'repeat_tap_until_gone':
                # 重复点击直到场景不再匹配（如按钮变灰）
                self._repeat_tap_until_gone(adb, action)
            elif action.action == 'input_text':
                # 输入文本（先点击输入框，再通过adb输入文字）
                self._input_text(adb, action)
            elif action.action == 'scroll_and_find':
                # 滑动查找目标元素并点击
                self._scroll_and_find(adb, action)
            elif action.action == 'select_equip_by_color':
                # 按颜色优先级选择装备
                self._select_equip_by_color(adb, action)
            else:
                # 默认：执行点击
                for tap_i in range(action.tap_count):
                    adb.tap(action.tap_x, action.tap_y)
                    logger.info(
                        f"  点击 ({action.tap_x}, {action.tap_y}) "
                        f"- {action.description}"
                    )
                    if tap_i < action.tap_count - 1:
                        time.sleep(action.tap_interval)

            self.stats['actions_executed'] += 1

            # 等待界面变化
            time.sleep(action.wait_after)

        logger.info(f"场景流程完成: {flow.name}")
        return True

    def _input_text(self, adb, action: SceneAction):
        """
        输入文本操作

        流程：
        1. 点击输入框位置（tap_x, tap_y）激活输入框
        2. 等待键盘弹出
        3. 清空输入框内容
        4. 通过 adb shell input text 输入文本
        5. 点击搜索/确认（如果有的话，由后续步骤处理）
        """
        text = action.input_text
        if not text:
            logger.warning(f"  input_text action 但未配置 input_text 字段，跳过")
            return

        # 步骤1：点击输入框激活
        adb.tap(action.tap_x, action.tap_y)
        logger.info(f"  点击输入框 ({action.tap_x}, {action.tap_y})")
        time.sleep(0.8)  # 等待键盘弹出

        # 步骤2：全选并清空已有内容（Ctrl+A 然后 Delete）
        adb.keyevent("KEYCODE_MOVE_HOME")  # 移到开头
        time.sleep(0.1)
        # 通过 Shift+End 全选
        adb.run("shell input keyevent --longpress 123")  # KEYCODE_MOVE_END with shift
        time.sleep(0.1)
        adb.keyevent("KEYCODE_DEL")  # 删除选中内容
        time.sleep(0.3)

        # 步骤3：输入文本
        # adb shell input text 不支持中文，需要使用 am broadcast 或剪贴板方式
        # 先尝试判断是否包含非ASCII字符
        try:
            text.encode('ascii')
            is_ascii = True
        except UnicodeEncodeError:
            is_ascii = False

        if is_ascii:
            # 纯英文/数字，直接使用 input text
            # 需要转义特殊字符
            escaped_text = text.replace(' ', '%s').replace('&', '\\&').replace('<', '\\<').replace('>', '\\>').replace('"', '\\"').replace("'", "\\'")
            adb.run(f"shell input text '{escaped_text}'")
            logger.info(f"  通过 input text 输入: {text}")
        else:
            # 包含中文等非ASCII字符，使用剪贴板方式
            # 方法：通过 am broadcast 设置剪贴板，然后粘贴
            # 先将文本写入剪贴板
            adb.run(f"shell am broadcast -a clipper.set -e text '{text}'")
            time.sleep(0.3)
            # 尝试粘贴（Ctrl+V）
            adb.run("shell input keyevent 279")  # KEYCODE_PASTE
            time.sleep(0.3)

            # 如果剪贴板方式不可用，尝试逐字符输入Unicode
            # 通过 input text 输入URL编码的文本
            logger.info(f"  通过剪贴板方式输入: {text}")

        time.sleep(0.5)

    def _scroll_and_find(self, adb, action: SceneAction):
        """
        滑动查找操作

        在当前页面向下滑动，每次滑动后重新截图匹配场景模板。
        找到目标场景后点击预设坐标。
        适用于需要滚动列表才能找到目标元素的场景（如成长弹窗中查找领主狩猎卡片）。

        流程：
        1. 先检查当前页面是否已经能看到目标（不滑动直接匹配）
        2. 如果看不到，向下滑动一段距离
        3. 重新截图匹配
        4. 重复直到找到或达到最大滑动次数
        5. 找到后点击 tap_x, tap_y
        """
        max_scrolls = 5       # 最大滑动次数
        scroll_distance = 300  # 每次滑动距离（像素，基于1280x720）
        scroll_duration = 500  # 滑动持续时间（毫秒）

        # 滑动起点和终点（屏幕中间区域向上滑动）
        scroll_x = self.BASE_W // 2  # 640
        scroll_start_y = self.BASE_H * 2 // 3  # 480
        scroll_end_y = scroll_start_y - scroll_distance  # 180

        # 需要将基准分辨率坐标转换为设备实际坐标
        # 获取设备屏幕尺寸
        try:
            screen_w, screen_h = adb.get_screen_size()
        except Exception:
            screen_w, screen_h = 720, 1280  # 默认竖屏

        scale_x = screen_w / self.BASE_W
        scale_y = screen_h / self.BASE_H

        for scroll_i in range(max_scrolls):
            # 截图检查当前页面
            screenshot = adb.screenshot(force_refresh=True)
            if screenshot is None:
                time.sleep(0.5)
                continue

            h, w = screenshot.shape[:2]
            if w != self.BASE_W or h != self.BASE_H:
                screenshot = cv2.resize(screenshot, (self.BASE_W, self.BASE_H))

            matched, score = self._match_action_scene(screenshot, action)

            if matched:
                # 找到目标，点击
                adb.tap(action.tap_x, action.tap_y)
                logger.info(
                    f"  滑动查找成功（第{scroll_i}次滑动后），"
                    f"点击 ({action.tap_x}, {action.tap_y}) - {action.description}"
                )
                return

            # 未找到，向下滑动（在设备上执行滑动，坐标需要转换为设备实际坐标）
            device_sx = int(scroll_x * scale_x)
            device_sy = int(scroll_start_y * scale_y)
            device_ey = int(scroll_end_y * scale_y)
            adb.swipe(device_sx, device_sy, device_sx, device_ey, scroll_duration)
            logger.info(
                f"  滑动查找 [{scroll_i + 1}/{max_scrolls}] "
                f"向上滑动 {scroll_distance}px"
            )
            time.sleep(1.0)  # 等待滑动动画完成

        # 最后再检查一次
        screenshot = adb.screenshot(force_refresh=True)
        if screenshot is not None:
            h, w = screenshot.shape[:2]
            if w != self.BASE_W or h != self.BASE_H:
                screenshot = cv2.resize(screenshot, (self.BASE_W, self.BASE_H))
            matched, score = self._match_action_scene(screenshot, action)
            if matched:
                adb.tap(action.tap_x, action.tap_y)
                logger.info(
                    f"  滑动查找成功（最终检查），"
                    f"点击 ({action.tap_x}, {action.tap_y})"
                )
                return

        # 未找到，回退：直接点击预设坐标（可能碰巧在正确位置）
        logger.warning(
            f"  滑动查找未找到目标场景，回退点击预设坐标 "
            f"({action.tap_x}, {action.tap_y})"
        )
        adb.tap(action.tap_x, action.tap_y)

    def _select_equip_by_color(self, adb, action: SceneAction):
        """
        按颜色优先级选择装备

        在装备列表区域中，按颜色优先级（蓝色>紫色>橙色）查找装备边框，
        点击第一个找到的最高优先级装备。

        颜色检测基于 HSV 色彩空间：
        - 蓝色(blue): H=100~130, S>80, V>80
        - 紫色(purple): H=130~160, S>60, V>60
        - 橙色(orange): H=10~25, S>150, V>150

        流程：
        1. 截图并裁剪装备区域
        2. 按优先级依次检测各颜色的装备边框
        3. 找到后点击该装备的中心位置
        4. 如果都没找到，回退点击预设坐标
        """
        equip_area = action.equip_area
        color_priority = action.color_priority

        if not equip_area or not color_priority:
            # 没有配置装备区域或颜色优先级，回退为普通点击
            logger.warning(f"  select_equip_by_color 缺少配置，回退为普通点击")
            adb.tap(action.tap_x, action.tap_y)
            return

        # 截图
        screenshot = adb.screenshot(force_refresh=True)
        if screenshot is None:
            adb.tap(action.tap_x, action.tap_y)
            return

        h, w = screenshot.shape[:2]
        if w != self.BASE_W or h != self.BASE_H:
            screenshot = cv2.resize(screenshot, (self.BASE_W, self.BASE_H))

        # 裁剪装备区域
        x1 = equip_area.get('x1', 0)
        y1 = equip_area.get('y1', 0)
        x2 = equip_area.get('x2', self.BASE_W)
        y2 = equip_area.get('y2', self.BASE_H)
        equip_region = screenshot[y1:y2, x1:x2]

        # 颜色范围定义（HSV空间）
        color_ranges = {
            'blue': {
                'lower': np.array([100, 80, 80]),
                'upper': np.array([130, 255, 255]),
            },
            'purple': {
                'lower': np.array([130, 60, 60]),
                'upper': np.array([160, 255, 255]),
            },
            'orange': {
                'lower': np.array([10, 150, 150]),
                'upper': np.array([25, 255, 255]),
            },
        }

        hsv = cv2.cvtColor(equip_region, cv2.COLOR_BGR2HSV)

        # 按优先级依次检测
        for color_name in color_priority:
            if color_name not in color_ranges:
                logger.warning(f"  未知颜色: {color_name}，跳过")
                continue

            color_range = color_ranges[color_name]
            mask = cv2.inRange(hsv, color_range['lower'], color_range['upper'])

            # 形态学操作去噪
            kernel = np.ones((3, 3), np.uint8)
            mask = cv2.morphologyEx(mask, cv2.MORPH_CLOSE, kernel)
            mask = cv2.morphologyEx(mask, cv2.MORPH_OPEN, kernel)

            # 查找轮廓
            contours, _ = cv2.findContours(mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

            # 过滤：装备边框通常是较大的矩形轮廓
            valid_contours = []
            for cnt in contours:
                area = cv2.contourArea(cnt)
                if area < 200:  # 过滤太小的噪点
                    continue
                bx, by, bw, bh = cv2.boundingRect(cnt)
                aspect_ratio = bw / max(bh, 1)
                # 装备图标通常接近正方形（宽高比 0.5~2.0）
                if 0.3 < aspect_ratio < 3.0:
                    valid_contours.append((area, bx, by, bw, bh))

            if valid_contours:
                # 选择面积最大的轮廓（最可能是装备边框）
                valid_contours.sort(key=lambda c: c[0], reverse=True)
                _, bx, by, bw, bh = valid_contours[0]

                # 计算装备中心点（相对于整个截图的坐标）
                equip_cx = x1 + bx + bw // 2
                equip_cy = y1 + by + bh // 2

                adb.tap(equip_cx, equip_cy)
                logger.info(
                    f"  按颜色选择装备: 找到{color_name}色装备，"
                    f"点击 ({equip_cx}, {equip_cy})"
                )
                return

            logger.debug(f"  未找到{color_name}色装备，尝试下一个颜色")

        # 所有颜色都没找到，回退点击预设坐标
        logger.warning(
            f"  未找到任何优先级颜色的装备，回退点击预设坐标 "
            f"({action.tap_x}, {action.tap_y})"
        )
        adb.tap(action.tap_x, action.tap_y)

    def _match_action_scene(self, screenshot: np.ndarray, action: SceneAction) -> Tuple[bool, float]:
        """
        根据action的match_mode统一匹配场景
        
        自动选择模板匹配或区域特征匹配，避免各处重复判断逻辑。
        
        Args:
            screenshot: 当前截图（1280x720）
            action: 场景动作配置
            
        Returns:
            (是否匹配, 匹配得分)
        """
        if action.match_mode == 'region_feature':
            return self._match_by_region_feature(
                screenshot,
                action.ui_regions,
                threshold=action.match_threshold
            )
        else:
            return self.match_scene(
                screenshot,
                action.scene_template,
                threshold=action.match_threshold
            )

    def _repeat_tap_until_gone(self, adb, action: SceneAction):
        """
        重复点击直到场景不再匹配（如按钮从橙色变为灰色）

        每次点击后等待 wait_after 秒，然后重新截图匹配。
        如果场景仍然匹配（按钮仍可点击），则继续点击。
        最多重复 max_repeats 次。
        """
        for repeat_i in range(action.max_repeats):
            # 执行点击
            adb.tap(action.tap_x, action.tap_y)
            logger.info(
                f"  重复点击 [{repeat_i + 1}/{action.max_repeats}] "
                f"({action.tap_x}, {action.tap_y}) - {action.description}"
            )

            # 等待界面响应
            time.sleep(action.wait_after)

            # 重新截图检查场景是否仍然匹配
            screenshot = adb.screenshot(force_refresh=True)
            if screenshot is None:
                logger.warning(f"  截图失败，停止重复点击")
                break

            h, w = screenshot.shape[:2]
            if w != self.BASE_W or h != self.BASE_H:
                screenshot = cv2.resize(screenshot, (self.BASE_W, self.BASE_H))

            matched, score = self._match_action_scene(screenshot, action)

            if not matched:
                logger.info(
                    f"  场景已变化（得分={score:.3f} < 阈值={action.match_threshold}），"
                    f"停止重复点击（共点击 {repeat_i + 1} 次）"
                )
                return
            else:
                logger.debug(
                    f"  场景仍匹配（得分={score:.3f}），继续点击..."
                )

        logger.info(
            f"  已达最大重复次数 {action.max_repeats}，停止重复点击"
        )

    def _match_by_region_feature(self, screenshot: np.ndarray, ui_regions: List[Dict], threshold: float = 0.65) -> Tuple[bool, float]:
        """
        基于UI区域特征匹配场景
        
        通过检测指定区域的边缘密度来判断该区域是否存在UI元素。
        主界面的4个角落（人物信息栏、工具栏、摇杆、技能栏）都有丰富的UI元素，
        边缘密度通常 > 0.08；而弹窗/菜单界面的角落通常是半透明遮罩，边缘密度 < 0.06。
        
        Args:
            screenshot: 当前截图（1280x720）
            ui_regions: UI区域定义列表，每个元素包含 {x1, y1, x2, y2, min_edge_density}
            threshold: 需要满足条件的区域比例（默认0.65，即大部分区域满足即可）
            
        Returns:
            (是否匹配, 满足条件的区域比例)
        """
        if not ui_regions:
            return False, 0.0
        
        passed = 0
        total = len(ui_regions)
        
        for region in ui_regions:
            x1 = region.get('x1', 0)
            y1 = region.get('y1', 0)
            x2 = region.get('x2', self.BASE_W)
            y2 = region.get('y2', self.BASE_H)
            min_edge = region.get('min_edge_density', 0.08)
            
            # 裁剪区域
            roi = screenshot[y1:y2, x1:x2]
            if roi.size == 0:
                continue
            
            # 计算边缘密度
            edges = cv2.Canny(roi, 50, 150)
            edge_density = np.count_nonzero(edges) / edges.size
            
            region_name = region.get('name', f'({x1},{y1})-({x2},{y2})')
            
            if edge_density >= min_edge:
                passed += 1
                logger.debug(f"    区域 {region_name}: 边缘密度={edge_density:.3f} >= {min_edge} ✓")
            else:
                logger.debug(f"    区域 {region_name}: 边缘密度={edge_density:.3f} < {min_edge} ✗")
        
        score = passed / total if total > 0 else 0.0
        matched = score >= threshold
        
        if matched:
            logger.info(f"  区域特征匹配成功: {passed}/{total} 个区域满足条件 (得分={score:.3f})")
        else:
            logger.debug(f"  区域特征匹配失败: {passed}/{total} 个区域满足条件 (得分={score:.3f})")
        
        return matched, score

    def _wait_for_scene(self, adb, action: SceneAction) -> bool:
        """等待指定场景出现"""
        start_time = time.time()
        check_interval = 0.5  # 每 0.5 秒检查一次

        while time.time() - start_time < action.timeout:
            # 截图
            screenshot = adb.screenshot(force_refresh=True)
            if screenshot is None:
                time.sleep(check_interval)
                continue

            # 缩放到基准分辨率
            h, w = screenshot.shape[:2]
            if w != self.BASE_W or h != self.BASE_H:
                screenshot = cv2.resize(screenshot, (self.BASE_W, self.BASE_H))

            # 统一匹配（自动根据match_mode选择模板匹配或区域特征匹配）
            matched, score = self._match_action_scene(screenshot, action)

            if matched:
                logger.debug(
                    f"  场景匹配: {action.scene_id} (模式={action.match_mode}, 得分={score:.3f})"
                )
                return True

            time.sleep(check_interval)

        return False

    # ==================== 工具方法 ====================

    def get_flow_names(self) -> List[str]:
        """获取所有已加载的流程名称"""
        return list(self._flows.keys())

    def get_flow_info(self, flow_name: str) -> Optional[Dict]:
        """获取流程信息"""
        flow = self._flows.get(flow_name)
        if flow is None:
            return None
        return {
            'name': flow.name,
            'description': flow.description,
            'steps': len(flow.actions),
            'loop': flow.loop,
            'max_loops': flow.max_loops,
            'actions': [
                {
                    'scene_id': a.scene_id,
                    'description': a.description,
                    'tap': (a.tap_x, a.tap_y),
                    'optional': a.optional,
                }
                for a in flow.actions
            ]
        }

    def clear_cache(self):
        """清除模板缓存"""
        self._template_cache.clear()

    def get_stats(self) -> Dict[str, int]:
        """获取执行统计"""
        return dict(self.stats)
