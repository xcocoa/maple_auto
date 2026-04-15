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
                )
                flow.actions.append(action)

            return flow

        except Exception as e:
            logger.error(f"解析流程 {name} 失败: {e}")
            return None

    # ==================== 场景匹配 ====================

    def _load_scene_template(self, template_path: str) -> Optional[np.ndarray]:
        """加载场景模板图片（带缓存）"""
        # 如果模板标记为SKIP_MATCH，则返回一个虚拟图像
        if template_path == "SKIP_MATCH":
            # 创建一个1x1的虚拟图像
            dummy_img = np.ones((1, 1, 3), dtype=np.uint8) * 255
            return dummy_img
            
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
        # 如果模板标记为SKIP_MATCH，则立即返回匹配成功
        if template_path == "SKIP_MATCH":
            return True, 1.0
            
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
            matched, score = self.match_scene(
                screenshot,
                action.scene_template,
                threshold=action.match_threshold
            )
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

            # 执行点击
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

    def _wait_for_scene(self, adb, action: SceneAction) -> bool:
        """等待指定场景出现"""
        # 如果模板标记为SKIP_MATCH，则立即返回成功
        if action.scene_template == "SKIP_MATCH":
            logger.debug(f"  跳过模板匹配: {action.scene_id}")
            return True
            
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

            # 匹配场景
            matched, score = self.match_scene(
                screenshot,
                action.scene_template,
                threshold=action.match_threshold
            )

            if matched:
                logger.debug(
                    f"  场景匹配: {action.scene_id} (得分={score:.3f})"
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
