# -*- coding: utf-8 -*-
"""
视频录制 + 关键帧提取 + 模板裁剪/自动生成工具
录制游戏操作视频，自动提取关键帧（界面切换瞬间），支持交互式裁剪或全自动生成场景素材

使用方法：
  ★ 全自动模式（推荐，零人工介入）：
     python tools/video_extract_templates.py --auto path/to/video.mp4
     python tools/video_extract_templates.py --auto path/to/video.mp4 --flow-name daily_sign_in
     → 从视频自动提取关键帧、推断点击位置、生成场景模板和配置文件

  ★ 全自动录屏模式（录屏+自动生成）：
     python tools/video_extract_templates.py --auto
     → ADB 录屏 + getevent 录触摸 → 全自动生成素材

  1. 录屏模式（手动裁剪）：
     python tools/video_extract_templates.py --record
     → 自动通过 ADB 录屏，手动操作游戏遍历各界面，按 Enter 停止

  2. 本地视频模式（手动裁剪）：
     python tools/video_extract_templates.py --video path/to/video.mp4
     → 从已有视频文件提取关键帧

  3. 仅浏览已提取的关键帧：
     python tools/video_extract_templates.py --browse
     → 直接进入关键帧浏览和裁剪模式

快捷键（裁剪模式）：
  ← →       - 切换关键帧（上一帧 / 下一帧）
  左键拖拽   - 框选 UI 元素区域
  右键点击   - 查看坐标 / 颜色 / HSV
  R          - 重置当前帧标记
  L          - 显示模板清单
  D          - 删除当前关键帧（误提取的帧）
  S          - 保存当前帧为完整截图
  Q          - 退出
"""

import os
import sys
import cv2
import time
import json
import yaml
import signal
import argparse
import threading
import subprocess
import numpy as np
from typing import Optional, List, Tuple, Dict, Any

# 添加项目根目录到路径
sys.path.insert(0, os.path.dirname(os.path.dirname(__file__)))

# ==================== 常量 ====================

BASE_W, BASE_H = 1280, 720

# 输出目录
PROJECT_ROOT = os.path.dirname(os.path.dirname(__file__))
OUTPUT_DIR = os.path.join(PROJECT_ROOT, "templates", "daily")
KEYFRAMES_DIR = os.path.join(PROJECT_ROOT, "tools", "keyframes")
VIDEO_DIR = os.path.join(PROJECT_ROOT, "tools", "videos")
SCENES_DIR = os.path.join(PROJECT_ROOT, "templates", "daily", "scenes")
SCENES_CONFIG = os.path.join(PROJECT_ROOT, "config", "daily_scenes.yaml")

# 模板清单（复用自 make_templates.py）
TEMPLATE_CHECKLIST = {
    "通用 UI": [
        ("close_btn.png", "关闭按钮（X）"),
        ("confirm_btn.png", "确认按钮"),
        ("cancel_btn.png", "取消按钮"),
        ("back_btn.png", "返回按钮（←）"),
        ("home_btn.png", "主界面按钮"),
    ],
    "每日签到": [
        ("sign_in_btn.png", "签到按钮"),
        ("sign_in_reward.png", "签到奖励弹窗"),
    ],
    "邮件": [
        ("mail_btn.png", "邮箱按钮/图标"),
        ("collect_all.png", "一键领取按钮"),
        ("mail_empty.png", "邮箱为空提示"),
    ],
    "每日任务": [
        ("quest_btn.png", "任务按钮/图标"),
        ("daily_tab.png", "每日标签页"),
        ("quest_go.png", "前往按钮"),
        ("quest_complete.png", "任务完成标记"),
        ("quest_reward.png", "领取奖励按钮"),
    ],
    "商店": [
        ("shop_btn.png", "商店按钮/图标"),
        ("buy_btn.png", "购买按钮"),
        ("buy_confirm.png", "确认购买弹窗按钮"),
        ("item_stamina.png", "体力药水图标"),
    ],
    "挂机打怪": [
        ("auto_battle.png", "自动战斗按钮"),
    ],
}

# ==================== 全局状态 ====================

# 当前关键帧列表
keyframes: List[np.ndarray] = []
current_frame_idx: int = 0

# 裁剪相关
drawing = False
start_x, start_y = 0, 0
end_x, end_y = 0, 0
crop_regions: List[Tuple[int, int, int, int, str]] = []  # 所有帧的裁剪记录

WINDOW_NAME = "视频模板提取工具"


# ==================== Step 1: ADB 录屏 ====================

def get_device_id() -> str:
    """从配置文件获取设备 ID"""
    try:
        from core.config import Config
        config_path = os.path.join(PROJECT_ROOT, "config", "daily.yaml")
        if os.path.exists(config_path):
            config = Config(config_path)
            return config.get('device.id', 'emulator-5560')
    except Exception:
        pass
    return 'emulator-5560'


def adb_record(duration: int = 120, device_id: Optional[str] = None) -> Optional[str]:
    """
    通过 ADB 录制屏幕视频

    Args:
        duration: 最大录制时长（秒），默认 120 秒
        device_id: 设备 ID

    Returns:
        本地视频文件路径，失败返回 None
    """
    if device_id is None:
        device_id = get_device_id()

    remote_path = "/sdcard/maple_record.mp4"
    os.makedirs(VIDEO_DIR, exist_ok=True)
    local_path = os.path.join(VIDEO_DIR, f"record_{int(time.time())}.mp4")

    print(f"📱 设备: {device_id}")
    print(f"⏱️  最大录制时长: {duration} 秒")
    print(f"📁 远程路径: {remote_path}")
    print()
    print("=" * 55)
    print("🔴 开始录屏！请在手机上操作游戏，遍历各个界面")
    print("   完成后按 Enter 键停止录制")
    print("=" * 55)
    print()

    # 先清理旧文件
    subprocess.run(
        ["adb", "-s", device_id, "shell", "rm", "-f", remote_path],
        capture_output=True
    )

    # 启动录屏进程
    record_cmd = [
        "adb", "-s", device_id, "shell",
        "screenrecord", "--time-limit", str(duration),
        "--size", "1280x720",  # 强制 720p
        remote_path
    ]

    print("正在录制...")
    record_proc = subprocess.Popen(
        record_cmd,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE
    )

    # 等待用户按 Enter 或录制自然结束
    stop_event = threading.Event()

    def wait_for_enter():
        input()
        stop_event.set()

    input_thread = threading.Thread(target=wait_for_enter, daemon=True)
    input_thread.start()

    # 等待停止信号或进程结束
    while record_proc.poll() is None and not stop_event.is_set():
        time.sleep(0.1)

    if record_proc.poll() is None:
        # 用户按了 Enter，终止录屏
        print("\n⏹️  停止录制...")
        # 发送 SIGINT 给 screenrecord 进程
        subprocess.run(
            ["adb", "-s", device_id, "shell", "kill", "-2",
             "$(adb -s " + device_id + " shell pidof screenrecord)"],
            capture_output=True, shell=True
        )
        # 如果上面的方式不行，直接 kill 进程
        time.sleep(1)
        if record_proc.poll() is None:
            record_proc.terminate()
            time.sleep(0.5)
            record_proc.kill()

    # 等待设备写入完成
    print("等待视频写入完成...")
    time.sleep(2)

    # 拉取视频到本地
    print(f"📥 拉取视频到本地: {local_path}")
    pull_result = subprocess.run(
        ["adb", "-s", device_id, "pull", remote_path, local_path],
        capture_output=True, text=True
    )

    if pull_result.returncode != 0:
        print(f"❌ 拉取视频失败: {pull_result.stderr}")
        # 尝试不指定 --size 重新录制
        return None

    # 清理远程文件
    subprocess.run(
        ["adb", "-s", device_id, "shell", "rm", "-f", remote_path],
        capture_output=True
    )

    # 检查文件
    if os.path.exists(local_path) and os.path.getsize(local_path) > 0:
        size_mb = os.path.getsize(local_path) / (1024 * 1024)
        print(f"✅ 录制完成: {local_path} ({size_mb:.1f} MB)")
        return local_path
    else:
        print("❌ 视频文件为空或不存在")
        return None


# ==================== Step 2: 关键帧提取 ====================

def compute_frame_diff(frame1: np.ndarray, frame2: np.ndarray) -> float:
    """
    计算两帧之间的差异度（0~1，越大差异越大）
    使用直方图比较，比 SSIM 更快

    Returns:
        差异度 0.0（完全相同）~ 1.0（完全不同）
    """
    # 转灰度
    gray1 = cv2.cvtColor(frame1, cv2.COLOR_BGR2GRAY)
    gray2 = cv2.cvtColor(frame2, cv2.COLOR_BGR2GRAY)

    # 计算直方图
    hist1 = cv2.calcHist([gray1], [0], None, [256], [0, 256])
    hist2 = cv2.calcHist([gray2], [0], None, [256], [0, 256])

    # 归一化
    cv2.normalize(hist1, hist1)
    cv2.normalize(hist2, hist2)

    # 直方图相关性（1.0 = 完全相同，-1.0 = 完全不同）
    correlation = cv2.compareHist(hist1, hist2, cv2.HISTCMP_CORREL)

    # 转换为差异度
    return 1.0 - max(0.0, correlation)


def compute_structural_diff(frame1: np.ndarray, frame2: np.ndarray) -> float:
    """
    计算结构差异（基于像素差异），作为直方图比较的补充
    用于检测布局变化（直方图可能相似但内容不同的情况）

    Returns:
        差异度 0.0 ~ 1.0
    """
    gray1 = cv2.cvtColor(frame1, cv2.COLOR_BGR2GRAY)
    gray2 = cv2.cvtColor(frame2, cv2.COLOR_BGR2GRAY)

    # 缩小尺寸加速计算
    small1 = cv2.resize(gray1, (320, 180))
    small2 = cv2.resize(gray2, (320, 180))

    # 计算绝对差异
    diff = cv2.absdiff(small1, small2)
    # 差异像素占比（阈值 30）
    changed_pixels = np.count_nonzero(diff > 30)
    total_pixels = diff.size

    return changed_pixels / total_pixels


def extract_keyframes(
    video_path: str,
    diff_threshold: float = 0.15,
    structural_threshold: float = 0.10,
    min_interval: float = 0.5,
    max_frames: int = 50
) -> List[np.ndarray]:
    """
    从视频中提取关键帧（界面切换瞬间）

    Args:
        video_path: 视频文件路径
        diff_threshold: 直方图差异阈值（超过此值认为是不同界面）
        structural_threshold: 结构差异阈值
        min_interval: 最小帧间隔（秒），避免过渡动画中提取过多帧
        max_frames: 最大关键帧数量

    Returns:
        关键帧图像列表
    """
    cap = cv2.VideoCapture(video_path)
    if not cap.isOpened():
        print(f"❌ 无法打开视频: {video_path}")
        return []

    fps = cap.get(cv2.CAP_PROP_FPS)
    total_frames = int(cap.get(cv2.CAP_PROP_FRAME_COUNT))
    duration = total_frames / fps if fps > 0 else 0
    min_frame_gap = int(fps * min_interval)

    print(f"📹 视频信息: {total_frames} 帧, {fps:.1f} FPS, {duration:.1f} 秒")
    print(f"🔍 差异阈值: 直方图={diff_threshold}, 结构={structural_threshold}")
    print(f"⏱️  最小帧间隔: {min_interval}s ({min_frame_gap} 帧)")
    print()

    frames = []
    prev_frame = None
    last_keyframe_idx = -min_frame_gap  # 确保第一帧可以被选中
    frame_idx = 0

    while True:
        ret, frame = cap.read()
        if not ret:
            break

        # 缩放到基准分辨率
        h, w = frame.shape[:2]
        if w != BASE_W or h != BASE_H:
            frame = cv2.resize(frame, (BASE_W, BASE_H))

        if prev_frame is None:
            # 第一帧始终作为关键帧
            frames.append(frame.copy())
            prev_frame = frame.copy()
            last_keyframe_idx = frame_idx
            print(f"  关键帧 #{len(frames):3d} @ {frame_idx / fps:.1f}s (首帧)")
        else:
            # 检查帧间隔
            if frame_idx - last_keyframe_idx >= min_frame_gap:
                # 计算差异
                hist_diff = compute_frame_diff(prev_frame, frame)
                struct_diff = compute_structural_diff(prev_frame, frame)

                # 任一差异超过阈值 → 关键帧
                if hist_diff > diff_threshold or struct_diff > structural_threshold:
                    frames.append(frame.copy())
                    last_keyframe_idx = frame_idx
                    timestamp = frame_idx / fps
                    print(f"  关键帧 #{len(frames):3d} @ {timestamp:.1f}s "
                          f"(直方图差异={hist_diff:.3f}, 结构差异={struct_diff:.3f})")

                    if len(frames) >= max_frames:
                        print(f"\n⚠️  已达最大关键帧数量 ({max_frames})，停止提取")
                        break

            prev_frame = frame.copy()

        frame_idx += 1

        # 进度显示
        if frame_idx % 100 == 0:
            progress = frame_idx / total_frames * 100
            sys.stdout.write(f"\r  处理进度: {progress:.0f}% ({frame_idx}/{total_frames})")
            sys.stdout.flush()

    cap.release()
    print(f"\n\n✅ 共提取 {len(frames)} 个关键帧")
    return frames


def save_keyframes(frames: List[np.ndarray]) -> str:
    """保存关键帧到磁盘"""
    os.makedirs(KEYFRAMES_DIR, exist_ok=True)

    # 清理旧的关键帧
    for f in os.listdir(KEYFRAMES_DIR):
        if f.startswith("keyframe_") and f.endswith(".png"):
            os.remove(os.path.join(KEYFRAMES_DIR, f))

    for i, frame in enumerate(frames):
        path = os.path.join(KEYFRAMES_DIR, f"keyframe_{i:03d}.png")
        cv2.imwrite(path, frame)

    print(f"💾 关键帧已保存到: {KEYFRAMES_DIR}")
    return KEYFRAMES_DIR


def load_keyframes() -> List[np.ndarray]:
    """从磁盘加载已保存的关键帧"""
    if not os.path.exists(KEYFRAMES_DIR):
        return []

    frames = []
    files = sorted([
        f for f in os.listdir(KEYFRAMES_DIR)
        if f.startswith("keyframe_") and f.endswith(".png")
    ])

    for f in files:
        img = cv2.imread(os.path.join(KEYFRAMES_DIR, f))
        if img is not None:
            h, w = img.shape[:2]
            if w != BASE_W or h != BASE_H:
                img = cv2.resize(img, (BASE_W, BASE_H))
            frames.append(img)

    return frames


# ==================== Step 3a: 全自动模式 ====================

def parse_touch_events_from_video(
    video_path: str,
    device_id: str = None,
    keyframe_timestamps: List[float] = None
) -> List[Dict[str, Any]]:
    """
    从视频录制期间的 getevent 日志解析触摸事件

    由于我们无法回溯录制时的触摸事件，这里采用另一种策略：
    分析关键帧之间的"变化区域"来推断点击位置

    Args:
        video_path: 视频文件路径
        device_id: 设备ID（用于获取屏幕分辨率）
        keyframe_timestamps: 关键帧时间戳列表

    Returns:
        触摸事件列表 [{timestamp, x, y}]
    """
    # 对于已有的视频，我们无法获取触摸事件
    # 使用"变化中心"推断法：两个关键帧之间的差异区域中心 ≈ 点击位置
    return []


def infer_tap_positions_from_frames(
    frames: List[np.ndarray],
    timestamps: List[float]
) -> List[Dict[str, Any]]:
    """
    通过分析相邻关键帧的差异区域，推断用户的点击位置

    原理：
    - 用户点击某个按钮后，界面会发生变化
    - 变化通常从点击位置开始扩散（弹窗从按钮位置弹出等）
    - 通过分析"变化最先发生的区域"来推断点击位置

    对于无法推断的情况，使用界面中心作为默认值

    Args:
        frames: 关键帧图像列表
        timestamps: 对应的时间戳列表

    Returns:
        推断的点击位置列表 [{frame_idx, tap_x, tap_y, confidence, method}]
    """
    tap_positions = []

    for i in range(len(frames) - 1):
        frame_curr = frames[i]
        frame_next = frames[i + 1]

        # 计算差异区域
        tap_info = _analyze_frame_transition(frame_curr, frame_next, i)
        tap_positions.append(tap_info)

    return tap_positions


def _analyze_frame_transition(
    frame_before: np.ndarray,
    frame_after: np.ndarray,
    frame_idx: int
) -> Dict[str, Any]:
    """
    分析两帧之间的过渡，推断点击位置

    策略：
    1. 计算像素差异热力图
    2. 找到差异最集中的区域
    3. 分析该区域是否像"按钮被点击"的模式
    4. 如果差异太分散（整个界面切换），使用启发式规则

    Returns:
        {frame_idx, tap_x, tap_y, confidence, method, description}
    """
    # 转灰度
    gray1 = cv2.cvtColor(frame_before, cv2.COLOR_BGR2GRAY)
    gray2 = cv2.cvtColor(frame_after, cv2.COLOR_BGR2GRAY)

    # 计算绝对差异
    diff = cv2.absdiff(gray1, gray2)

    # 二值化（阈值30）
    _, thresh = cv2.threshold(diff, 30, 255, cv2.THRESH_BINARY)

    # 形态学操作去噪
    kernel = cv2.getStructuringElement(cv2.MORPH_ELLIPSE, (5, 5))
    thresh = cv2.morphologyEx(thresh, cv2.MORPH_OPEN, kernel)
    thresh = cv2.morphologyEx(thresh, cv2.MORPH_CLOSE, kernel)

    # 查找轮廓
    contours, _ = cv2.findContours(thresh, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

    if not contours:
        # 没有明显差异，使用屏幕中心
        return {
            'frame_idx': frame_idx,
            'tap_x': BASE_W // 2,
            'tap_y': BASE_H // 2,
            'confidence': 0.3,
            'method': 'center_fallback',
            'description': '无明显差异，使用屏幕中心'
        }

    # 计算差异区域的总面积
    total_diff_area = sum(cv2.contourArea(c) for c in contours)
    total_area = BASE_W * BASE_H
    diff_ratio = total_diff_area / total_area

    if diff_ratio > 0.5:
        # 差异面积超过50%：整个界面切换
        # 策略：在前一帧中寻找可能的"按钮区域"
        tap_pos = _find_likely_button_region(frame_before)
        return {
            'frame_idx': frame_idx,
            'tap_x': tap_pos[0],
            'tap_y': tap_pos[1],
            'confidence': 0.4,
            'method': 'full_transition_heuristic',
            'description': f'整个界面切换(差异{diff_ratio:.0%})，启发式推断'
        }

    if diff_ratio < 0.02:
        # 差异面积很小：可能是小按钮点击
        # 找最大的差异轮廓的中心
        largest = max(contours, key=cv2.contourArea)
        M = cv2.moments(largest)
        if M["m00"] > 0:
            cx = int(M["m10"] / M["m00"])
            cy = int(M["m01"] / M["m00"])
            return {
                'frame_idx': frame_idx,
                'tap_x': cx,
                'tap_y': cy,
                'confidence': 0.7,
                'method': 'small_diff_center',
                'description': f'小区域变化(差异{diff_ratio:.1%})，差异中心'
            }

    # 中等差异：找差异区域的加权中心
    # 使用差异热力图的加权质心
    diff_float = diff.astype(np.float32)
    total_weight = np.sum(diff_float)

    if total_weight > 0:
        y_coords, x_coords = np.mgrid[0:BASE_H, 0:BASE_W]
        cx = int(np.sum(x_coords * diff_float) / total_weight)
        cy = int(np.sum(y_coords * diff_float) / total_weight)

        # 限制在合理范围内
        cx = max(50, min(cx, BASE_W - 50))
        cy = max(50, min(cy, BASE_H - 50))

        return {
            'frame_idx': frame_idx,
            'tap_x': cx,
            'tap_y': cy,
            'confidence': 0.5,
            'method': 'diff_centroid',
            'description': f'差异质心(差异{diff_ratio:.1%})'
        }

    return {
        'frame_idx': frame_idx,
        'tap_x': BASE_W // 2,
        'tap_y': BASE_H // 2,
        'confidence': 0.3,
        'method': 'center_fallback',
        'description': '无法分析，使用屏幕中心'
    }


def _find_likely_button_region(frame: np.ndarray) -> Tuple[int, int]:
    """
    在帧中寻找最可能是"按钮"的区域

    启发式规则：
    1. 按钮通常在屏幕中下部
    2. 按钮通常有明显的颜色对比
    3. 按钮通常是矩形区域

    Returns:
        (x, y) 推断的点击位置
    """
    # 转HSV
    hsv = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)
    s_channel = hsv[:, :, 1]  # 饱和度通道

    # 高饱和度区域通常是按钮（彩色按钮在灰色背景上）
    _, high_sat = cv2.threshold(s_channel, 100, 255, cv2.THRESH_BINARY)

    # 只看屏幕中下部（按钮通常不在顶部）
    roi_y_start = BASE_H // 3
    roi = high_sat[roi_y_start:, :]

    # 找轮廓
    contours, _ = cv2.findContours(roi, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

    if contours:
        # 找面积适中的矩形轮廓（太大太小都不像按钮）
        button_candidates = []
        for c in contours:
            area = cv2.contourArea(c)
            if 500 < area < 50000:  # 按钮面积范围
                x, y, w, h = cv2.boundingRect(c)
                aspect = w / max(h, 1)
                if 0.5 < aspect < 5.0:  # 按钮宽高比范围
                    cx = x + w // 2
                    cy = y + h // 2 + roi_y_start
                    button_candidates.append((cx, cy, area))

        if button_candidates:
            # 选择最大的候选按钮
            best = max(button_candidates, key=lambda b: b[2])
            return (best[0], best[1])

    # 默认：屏幕中央偏下
    return (BASE_W // 2, int(BASE_H * 0.6))


def extract_keyframes_with_timestamps(
    video_path: str,
    diff_threshold: float = 0.15,
    structural_threshold: float = 0.10,
    min_interval: float = 1.0,
    max_frames: int = 50
) -> Tuple[List[np.ndarray], List[float]]:
    """
    提取关键帧并记录时间戳（全自动模式专用）

    Returns:
        (关键帧列表, 时间戳列表)
    """
    cap = cv2.VideoCapture(video_path)
    if not cap.isOpened():
        print(f"❌ 无法打开视频: {video_path}")
        return [], []

    fps = cap.get(cv2.CAP_PROP_FPS)
    total_frames = int(cap.get(cv2.CAP_PROP_FRAME_COUNT))
    duration = total_frames / fps if fps > 0 else 0
    min_frame_gap = int(fps * min_interval)

    print(f"📹 视频信息: {total_frames} 帧, {fps:.1f} FPS, {duration:.1f} 秒")
    print(f"🔍 差异阈值: 直方图={diff_threshold}, 结构={structural_threshold}")
    print(f"⏱️  最小帧间隔: {min_interval}s ({min_frame_gap} 帧)")
    print()

    # 黑屏/暗帧检测阈值（亮度低于此值的帧被跳过）
    DARK_FRAME_BRIGHTNESS = 20

    frames = []
    timestamps = []
    prev_frame = None
    last_keyframe_idx = -min_frame_gap
    frame_idx = 0
    dark_skipped = 0

    while True:
        ret, frame = cap.read()
        if not ret:
            break

        h, w = frame.shape[:2]
        if w != BASE_W or h != BASE_H:
            frame = cv2.resize(frame, (BASE_W, BASE_H))

        # 检测黑屏/暗帧：计算平均亮度
        avg_brightness = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY).mean()

        if prev_frame is None:
            # 首帧如果是黑屏，跳过等待第一个有效帧
            if avg_brightness < DARK_FRAME_BRIGHTNESS:
                prev_frame = frame.copy()
                frame_idx += 1
                dark_skipped += 1
                continue
            frames.append(frame.copy())
            timestamps.append(frame_idx / fps if fps > 0 else 0.0)
            prev_frame = frame.copy()
            last_keyframe_idx = frame_idx
            print(f"  关键帧 #{len(frames):3d} @ {timestamps[-1]:.1f}s (首帧)")
        else:
            if frame_idx - last_keyframe_idx >= min_frame_gap:
                # 跳过黑屏/暗帧
                if avg_brightness < DARK_FRAME_BRIGHTNESS:
                    frame_idx += 1
                    dark_skipped += 1
                    prev_frame = frame.copy()
                    continue

                hist_diff = compute_frame_diff(prev_frame, frame)
                struct_diff = compute_structural_diff(prev_frame, frame)

                if hist_diff > diff_threshold or struct_diff > structural_threshold:
                    frames.append(frame.copy())
                    timestamp = frame_idx / fps
                    timestamps.append(timestamp)
                    last_keyframe_idx = frame_idx
                    print(f"  关键帧 #{len(frames):3d} @ {timestamp:.1f}s "
                          f"(直方图={hist_diff:.3f}, 结构={struct_diff:.3f})"
                          f" 亮度={avg_brightness:.0f}")

                    if len(frames) >= max_frames:
                        print(f"\n⚠️  已达最大关键帧数量 ({max_frames})")
                        break

            prev_frame = frame.copy()

        frame_idx += 1
        if frame_idx % 100 == 0:
            progress = frame_idx / total_frames * 100
            sys.stdout.write(f"\r  处理进度: {progress:.0f}% ({frame_idx}/{total_frames})")
            sys.stdout.flush()

    cap.release()
    if dark_skipped > 0:
        print(f"\n\n✅ 共提取 {len(frames)} 个关键帧（跳过 {dark_skipped} 个黑屏/暗帧）")
    else:
        print(f"\n\n✅ 共提取 {len(frames)} 个关键帧")
    return frames, timestamps


def auto_generate_scenes(
    video_path: str,
    flow_name: str = "auto_flow",
    diff_threshold: float = 0.15,
    struct_threshold: float = 0.10,
    min_interval: float = 1.0,
    touch_events: Optional[List[Dict[str, Any]]] = None,
    device_screen_size: Optional[Tuple[int, int]] = None
) -> Optional[str]:
    """
    全自动模式：从视频自动生成场景模板和配置

    流程：
    1. 提取关键帧 + 时间戳
    2. 如果有触摸事件日志 → 用真实触摸坐标（精确）
       否则 → 分析帧间过渡推断点击位置（近似）
    3. 保存场景截图到 templates/daily/scenes/
    4. 生成 config/daily_scenes.yaml 配置

    Args:
        video_path: 视频文件路径
        flow_name: 流程名称
        diff_threshold: 直方图差异阈值
        struct_threshold: 结构差异阈值
        min_interval: 最小帧间隔
        touch_events: 触摸事件列表（来自 getevent），格式 [{timestamp, raw_x, raw_y}]
        device_screen_size: 设备屏幕分辨率 (width, height)，用于坐标转换

    Returns:
        生成的配置文件路径，失败返回 None
    """
    print("=" * 55)
    print("🤖 全自动模式：从视频生成场景素材")
    print("=" * 55)
    print()

    # Step 1: 提取关键帧
    print("【Step 1/4】提取关键帧")
    print("-" * 40)
    frames, timestamps = extract_keyframes_with_timestamps(
        video_path,
        diff_threshold=diff_threshold,
        structural_threshold=struct_threshold,
        min_interval=min_interval
    )

    if len(frames) < 2:
        print("❌ 关键帧不足（至少需要2帧），退出")
        return None

    # Step 2: 确定点击位置
    print()
    print("【Step 2/4】确定点击位置")
    print("-" * 40)

    # 优先使用真实触摸事件（来自 getevent 录制）
    if touch_events and len(touch_events) > 0:
        print(f"  📝 使用真实触摸事件 ({len(touch_events)} 个)")
        tap_positions = _align_touch_events_to_keyframes(
            touch_events, timestamps, device_screen_size
        )
        # 如果对齐后的触摸事件不够，用推断补充
        if len(tap_positions) < len(frames) - 1:
            print(f"  ⚠️  触摸事件不足，补充推断 "
                  f"({len(tap_positions)}/{len(frames)-1})")
            inferred = infer_tap_positions_from_frames(frames, timestamps)
            for i in range(len(tap_positions), len(frames) - 1):
                if i < len(inferred):
                    tap_positions.append(inferred[i])
    else:
        print("  ⚠️  无触摸事件日志，使用帧间差异推断")
        tap_positions = infer_tap_positions_from_frames(frames, timestamps)

    for tp in tap_positions:
        method_icon = "🎯" if tp.get('method') == 'getevent_aligned' else "🔍"
        print(f"  {method_icon} 帧 #{tp['frame_idx']:3d} → 点击 ({tp['tap_x']:4d}, {tp['tap_y']:3d}) "
              f"[{tp['method']}] 置信度={tp['confidence']:.1f} - {tp['description']}")

    # Step 3: 保存场景截图
    print()
    print("【Step 3/4】保存场景截图")
    print("-" * 40)
    os.makedirs(SCENES_DIR, exist_ok=True)

    scene_files = []
    for i, frame in enumerate(frames):
        filename = f"scene_{flow_name}_{i:03d}.png"
        filepath = os.path.join(SCENES_DIR, filename)
        cv2.imwrite(filepath, frame)
        scene_files.append(filename)
        print(f"  💾 {filename} ({frame.shape[1]}x{frame.shape[0]})")

    # 同时保存关键帧到 keyframes 目录（兼容浏览模式）
    save_keyframes(frames)

    # Step 4: 生成配置文件
    print()
    print("【Step 4/4】生成场景配置")
    print("-" * 40)

    # 构建动作列表（过滤暗帧/过渡帧）
    DARK_THRESHOLD = 30  # 亮度低于此值的帧视为暗帧/过渡帧
    actions = []
    skipped_dark = 0
    for i in range(len(frames) - 1):
        tp = tap_positions[i]

        # 检测当前帧是否为暗帧（加载过渡画面）
        frame_brightness = cv2.cvtColor(frames[i], cv2.COLOR_BGR2GRAY).mean()
        if frame_brightness < DARK_THRESHOLD:
            skipped_dark += 1
            continue  # 跳过暗帧，不生成对应步骤

        action = {
            'scene_id': f"{flow_name}_step_{len(actions)}",
            'scene_template': scene_files[i],
            'tap_x': tp['tap_x'],
            'tap_y': tp['tap_y'],
            'description': f"步骤{len(actions)+1}: {tp['description']}",
            'wait_after': 1.5,
            'timeout': 10.0,
            'match_threshold': 0.65,
            'optional': tp['confidence'] < 0.4,
        }
        actions.append(action)

    if skipped_dark > 0:
        print(f"  ⚠️  跳过 {skipped_dark} 个暗帧/过渡帧")

    # 最后一帧作为"完成确认"场景（不需要点击）
    # 但记录它作为流程结束的标志

    # 构建完整配置
    config = {
        'global': {
            'scenes_dir': 'templates/daily/scenes',
            'match_threshold': 0.7,
            'default_wait': 1.0,
        },
        'flows': {
            flow_name: {
                'description': f'从视频自动生成的流程 ({len(actions)} 步)',
                'loop': False,
                'max_loops': 1,
                'actions': actions,
            }
        }
    }

    # 如果已有配置文件，合并流程
    if os.path.exists(SCENES_CONFIG):
        try:
            with open(SCENES_CONFIG, 'r', encoding='utf-8') as f:
                existing = yaml.safe_load(f)
            if existing and 'flows' in existing:
                # 保留已有的全局配置
                config['global'] = existing.get('global', config['global'])
                # 合并流程（新流程覆盖同名旧流程）
                existing['flows'][flow_name] = config['flows'][flow_name]
                config = existing
        except Exception as e:
            print(f"  ⚠️  读取已有配置失败，将覆盖: {e}")

    # 写入配置
    with open(SCENES_CONFIG, 'w', encoding='utf-8') as f:
        yaml.dump(config, f, default_flow_style=False, allow_unicode=True, sort_keys=False)

    print(f"  📄 配置已保存: {SCENES_CONFIG}")
    print(f"  📁 场景截图: {SCENES_DIR} ({len(scene_files)} 张)")
    print(f"  🎬 流程名称: {flow_name} ({len(actions)} 步)")

    # 打印摘要
    print()
    print("=" * 55)
    print("✅ 全自动生成完成！")
    print("=" * 55)
    print()
    print(f"  场景截图目录: {SCENES_DIR}")
    print(f"  配置文件:     {SCENES_CONFIG}")
    print(f"  流程名称:     {flow_name}")
    print(f"  总步骤数:     {len(actions)}")
    print()
    print("使用方法：")
    print("  在 DailyGame 中调用：")
    print(f"    scene_player.load_config('{SCENES_CONFIG}')")
    print(f"    scene_player.play('{flow_name}', adb)")
    print()
    print("或直接测试：")
    print(f"  python tools/video_extract_templates.py --test-flow {flow_name}")
    print()

    # 打印详细步骤
    print("📋 生成的操作步骤：")
    print("-" * 55)
    for i, action in enumerate(actions):
        optional_mark = " [可选]" if action.get('optional') else ""
        print(f"  {i+1}. 匹配 {action['scene_template']}")
        print(f"     → 点击 ({action['tap_x']}, {action['tap_y']}){optional_mark}")
        print(f"     {action['description']}")
        print()

    return SCENES_CONFIG


def auto_record_and_generate(
    device_id: str = None,
    duration: int = 120,
    flow_name: str = "auto_flow"
) -> Optional[str]:
    """
    全自动模式（带录屏）：录屏 + 录触摸 → 自动生成场景素材

    同时启动：
    1. ADB screenrecord 录屏
    2. ADB getevent 录制触摸事件
    操作完成后自动分析生成素材

    Args:
        device_id: 设备ID
        duration: 最大录制时长
        flow_name: 流程名称

    Returns:
        生成的配置文件路径
    """
    if device_id is None:
        device_id = get_device_id()

    remote_video = "/sdcard/maple_record.mp4"
    os.makedirs(VIDEO_DIR, exist_ok=True)
    local_video = os.path.join(VIDEO_DIR, f"auto_{flow_name}_{int(time.time())}.mp4")
    touch_log_path = os.path.join(VIDEO_DIR, f"touch_{flow_name}_{int(time.time())}.log")

    print("=" * 55)
    print("🤖 全自动录制模式")
    print("=" * 55)
    print()
    print(f"📱 设备: {device_id}")
    print(f"🎬 流程名称: {flow_name}")
    print(f"⏱️  最大录制时长: {duration} 秒")
    print()
    print("=" * 55)
    print("🔴 开始录制！请在手机上操作游戏")
    print("   完成后按 Enter 键停止")
    print("=" * 55)
    print()

    # 清理旧文件
    subprocess.run(
        ["adb", "-s", device_id, "shell", "rm", "-f", remote_video],
        capture_output=True
    )

    # 启动录屏
    record_cmd = [
        "adb", "-s", device_id, "shell",
        "screenrecord", "--time-limit", str(duration),
        "--size", "1280x720",
        remote_video
    ]
    record_proc = subprocess.Popen(record_cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

    # 启动触摸事件录制
    touch_cmd = ["adb", "-s", device_id, "shell", "getevent", "-lt"]
    touch_proc = subprocess.Popen(
        touch_cmd,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE
    )

    # 记录开始时间
    record_start_time = time.time()
    print("正在录制...")

    # 等待用户按 Enter
    stop_event = threading.Event()

    def wait_for_enter():
        input()
        stop_event.set()

    input_thread = threading.Thread(target=wait_for_enter, daemon=True)
    input_thread.start()

    while record_proc.poll() is None and not stop_event.is_set():
        elapsed = time.time() - record_start_time
        sys.stdout.write(f"\r  录制中... {elapsed:.0f}s")
        sys.stdout.flush()
        time.sleep(0.1)

    record_duration = time.time() - record_start_time
    print(f"\n\n⏹️  停止录制 (时长: {record_duration:.1f}s)")

    # 停止录屏
    if record_proc.poll() is None:
        subprocess.run(
            ["adb", "-s", device_id, "shell",
             "kill", "-2", "$(pidof screenrecord)"],
            capture_output=True, shell=True
        )
        time.sleep(1)
        if record_proc.poll() is None:
            record_proc.terminate()
            time.sleep(0.5)
            record_proc.kill()

    # 停止触摸录制
    touch_proc.terminate()
    try:
        touch_stdout, _ = touch_proc.communicate(timeout=2)
    except subprocess.TimeoutExpired:
        touch_proc.kill()
        touch_stdout, _ = touch_proc.communicate()

    # 保存触摸日志
    if touch_stdout:
        with open(touch_log_path, 'wb') as f:
            f.write(touch_stdout)
        print(f"📝 触摸日志: {touch_log_path} ({len(touch_stdout)} bytes)")

    # 等待视频写入
    print("等待视频写入完成...")
    time.sleep(2)

    # 拉取视频
    print(f"📥 拉取视频: {local_video}")
    pull_result = subprocess.run(
        ["adb", "-s", device_id, "pull", remote_video, local_video],
        capture_output=True, text=True
    )

    if pull_result.returncode != 0:
        print(f"❌ 拉取视频失败: {pull_result.stderr}")
        return None

    # 清理远程文件
    subprocess.run(
        ["adb", "-s", device_id, "shell", "rm", "-f", remote_video],
        capture_output=True
    )

    if not os.path.exists(local_video) or os.path.getsize(local_video) == 0:
        print("❌ 视频文件为空")
        return None

    size_mb = os.path.getsize(local_video) / (1024 * 1024)
    print(f"✅ 视频已保存: {local_video} ({size_mb:.1f} MB)")
    print()

    # 解析触摸事件并与视频时间对齐
    touch_events = _parse_getevent_log(touch_log_path) if os.path.exists(touch_log_path) else []
    if touch_events:
        print(f"📝 解析到 {len(touch_events)} 个触摸事件")

    # 获取设备屏幕分辨率（用于触摸坐标转换）
    device_screen_size = None
    try:
        size_output = subprocess.run(
            ["adb", "-s", device_id, "shell", "wm", "size"],
            capture_output=True, text=True
        )
        if size_output.returncode == 0:
            size_str = size_output.stdout.strip().split(":")[-1].strip()
            w, h = map(int, size_str.split("x"))
            device_screen_size = (w, h)
            print(f"📐 设备分辨率: {w}x{h}")
    except Exception:
        pass

    # 自动生成场景素材（传入触摸事件）
    return auto_generate_scenes(
        local_video,
        flow_name=flow_name,
        diff_threshold=0.15,
        struct_threshold=0.10,
        min_interval=1.0,
        touch_events=touch_events if touch_events else None,
        device_screen_size=device_screen_size
    )


def _parse_getevent_log(log_path: str) -> List[Dict[str, Any]]:
    """
    解析 getevent -lt 输出的触摸事件日志

    getevent 输出格式：
    [  timestamp] /dev/input/eventX: EV_ABS ABS_MT_POSITION_X value
    [  timestamp] /dev/input/eventX: EV_ABS ABS_MT_POSITION_Y value

    Returns:
        触摸事件列表 [{timestamp, x, y}]
    """
    events = []
    current_x = None
    current_y = None
    current_ts = None

    try:
        with open(log_path, 'r', errors='ignore') as f:
            for line in f:
                line = line.strip()
                if not line:
                    continue

                # 解析时间戳
                if line.startswith('['):
                    try:
                        ts_str = line[1:line.index(']')].strip()
                        ts = float(ts_str)
                    except (ValueError, IndexError):
                        continue

                    # 解析触摸坐标
                    if 'ABS_MT_POSITION_X' in line:
                        try:
                            value = int(line.split()[-1], 16)
                            current_x = value
                            current_ts = ts
                        except ValueError:
                            pass
                    elif 'ABS_MT_POSITION_Y' in line:
                        try:
                            value = int(line.split()[-1], 16)
                            current_y = value
                        except ValueError:
                            pass

                    # 当 X 和 Y 都有值时，记录一个触摸事件
                    if current_x is not None and current_y is not None and current_ts is not None:
                        events.append({
                            'timestamp': current_ts,
                            'raw_x': current_x,
                            'raw_y': current_y,
                        })
                        current_x = None
                        current_y = None
                        current_ts = None

    except Exception as e:
        print(f"  ⚠️  解析触摸日志失败: {e}")

    # 去重（同一次触摸可能产生多个事件）
    if events:
        deduped = [events[0]]
        for ev in events[1:]:
            if ev['timestamp'] - deduped[-1]['timestamp'] > 0.3:  # 300ms 去重
                deduped.append(ev)
        events = deduped

    return events


def _align_touch_events_to_keyframes(
    touch_events: List[Dict[str, Any]],
    keyframe_timestamps: List[float],
    device_screen_size: Optional[Tuple[int, int]] = None
) -> List[Dict[str, Any]]:
    """
    将触摸事件与关键帧时间戳对齐

    原理：
    - 关键帧 i 的时间戳 = T[i]
    - 在 T[i] 和 T[i+1] 之间发生的第一个触摸事件 = 用户在帧 i 上的点击
    - getevent 的原始坐标需要转换为 1280x720 基准分辨率

    Args:
        touch_events: getevent 解析的触摸事件 [{timestamp, raw_x, raw_y}]
        keyframe_timestamps: 关键帧时间戳列表
        device_screen_size: 设备屏幕分辨率 (width, height)

    Returns:
        对齐后的点击位置列表
    """
    if not touch_events or len(keyframe_timestamps) < 2:
        return []

    # getevent 的坐标范围通常是设备触摸屏的原始范围
    # 需要根据设备分辨率进行归一化
    # 常见的触摸屏范围：X 0~32767, Y 0~32767（或设备分辨率）
    # 这里我们尝试自动检测范围
    max_raw_x = max(ev['raw_x'] for ev in touch_events) if touch_events else 1
    max_raw_y = max(ev['raw_y'] for ev in touch_events) if touch_events else 1

    # 如果原始值很大（>2000），说明是触摸屏原始坐标，需要归一化
    # 如果原始值在合理的屏幕分辨率范围内，直接按比例缩放
    if device_screen_size:
        dev_w, dev_h = device_screen_size
    else:
        # 猜测设备分辨率
        if max_raw_x > 2000:
            # 触摸屏原始坐标，范围通常是 0~32767
            dev_w = max_raw_x
            dev_h = max_raw_y
        else:
            dev_w = max(max_raw_x, 1280)
            dev_h = max(max_raw_y, 720)

    # 计算缩放比
    scale_x = BASE_W / dev_w
    scale_y = BASE_H / dev_h

    # getevent 时间戳是 Unix 时间戳（秒），关键帧时间戳是视频内时间（秒）
    # 需要找到两者的时间偏移
    # 假设：第一个触摸事件大约在第一个关键帧之后发生
    if touch_events:
        touch_start = touch_events[0]['timestamp']
        video_start = keyframe_timestamps[0]
        # 时间偏移 = getevent时间 - 视频时间
        time_offset = touch_start - video_start
    else:
        time_offset = 0

    # 对齐：为每个关键帧间隔找到对应的触摸事件
    aligned = []
    touch_idx = 0

    for frame_i in range(len(keyframe_timestamps) - 1):
        t_start = keyframe_timestamps[frame_i]
        t_end = keyframe_timestamps[frame_i + 1]

        # 在 getevent 时间轴上的对应区间
        ge_start = t_start + time_offset
        ge_end = t_end + time_offset

        # 找这个区间内的第一个触摸事件
        found = False
        while touch_idx < len(touch_events):
            ev = touch_events[touch_idx]
            ev_time = ev['timestamp']

            if ev_time < ge_start:
                touch_idx += 1
                continue

            if ev_time > ge_end:
                break

            # 找到了！转换坐标
            tap_x = int(ev['raw_x'] * scale_x)
            tap_y = int(ev['raw_y'] * scale_y)

            # 限制在屏幕范围内
            tap_x = max(0, min(tap_x, BASE_W - 1))
            tap_y = max(0, min(tap_y, BASE_H - 1))

            aligned.append({
                'frame_idx': frame_i,
                'tap_x': tap_x,
                'tap_y': tap_y,
                'confidence': 0.9,
                'method': 'getevent_aligned',
                'description': f'真实触摸坐标 (原始:{ev["raw_x"]},{ev["raw_y"]})'
            })
            touch_idx += 1
            found = True
            break

        if not found:
            # 这个帧间隔没有触摸事件，用推断
            aligned.append({
                'frame_idx': frame_i,
                'tap_x': BASE_W // 2,
                'tap_y': BASE_H // 2,
                'confidence': 0.3,
                'method': 'no_touch_fallback',
                'description': '该区间无触摸事件，使用屏幕中心'
            })

    return aligned


# ==================== Step 3: 交互式裁剪 ====================

def get_display_image() -> np.ndarray:
    """获取当前帧的显示图像（带标注）"""
    if not keyframes:
        return np.zeros((BASE_H, BASE_W, 3), dtype=np.uint8)

    display = keyframes[current_frame_idx].copy()

    # 绘制已保存的裁剪区域
    for region in crop_regions:
        x1, y1, x2, y2, name = region
        cv2.rectangle(display, (x1, y1), (x2, y2), (255, 0, 0), 1)
        cv2.putText(display, name, (x1, y1 - 3),
                    cv2.FONT_HERSHEY_SIMPLEX, 0.4, (255, 0, 0), 1)

    # 顶部信息栏
    info_bar = np.zeros((30, BASE_W, 3), dtype=np.uint8)
    info_text = (f"帧 {current_frame_idx + 1}/{len(keyframes)}  |  "
                 f"← → 切换帧  |  拖拽框选  |  R 重置  |  L 清单  |  "
                 f"D 删帧  |  S 存截图  |  Q 退出")
    cv2.putText(info_bar, info_text, (10, 20),
                cv2.FONT_HERSHEY_SIMPLEX, 0.45, (200, 200, 200), 1)

    # 拼接信息栏
    display = np.vstack([info_bar, display])

    return display


def on_mouse_crop(event, x, y, flags, param):
    """鼠标回调：在关键帧上拖拽框选"""
    global drawing, start_x, start_y, end_x, end_y

    # 减去信息栏高度
    y_offset = 30
    actual_y = y - y_offset

    if actual_y < 0:
        return

    if event == cv2.EVENT_LBUTTONDOWN:
        drawing = True
        start_x, start_y = x, actual_y
        end_x, end_y = x, actual_y

    elif event == cv2.EVENT_MOUSEMOVE:
        if drawing:
            end_x, end_y = x, actual_y
            # 实时绘制选框
            display = get_display_image()
            cv2.rectangle(display, (start_x, start_y + y_offset),
                          (end_x, end_y + y_offset), (0, 255, 0), 2)
            w = abs(end_x - start_x)
            h = abs(end_y - start_y)
            cv2.putText(display, f"{w}x{h}",
                        (min(start_x, end_x), min(start_y, end_y) + y_offset - 5),
                        cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 1)
            cv2.imshow(WINDOW_NAME, display)

    elif event == cv2.EVENT_LBUTTONUP:
        drawing = False
        end_x, end_y = x, actual_y

        x1 = min(start_x, end_x)
        y1 = min(start_y, end_y)
        x2 = max(start_x, end_x)
        y2 = max(start_y, end_y)

        # 限制在图像范围内
        x1 = max(0, min(x1, BASE_W - 1))
        y1 = max(0, min(y1, BASE_H - 1))
        x2 = max(0, min(x2, BASE_W - 1))
        y2 = max(0, min(y2, BASE_H - 1))

        if x2 - x1 > 5 and y2 - y1 > 5:
            print(f"\n已选择区域: ({x1}, {y1}) → ({x2}, {y2}), 尺寸: {x2-x1}x{y2-y1}")
            save_crop_from_frame(x1, y1, x2, y2)
        else:
            # 单击 - 显示坐标和颜色
            if 0 <= actual_y < BASE_H and 0 <= x < BASE_W:
                frame = keyframes[current_frame_idx]
                print(f"坐标: ({x}, {actual_y}), BGR: {frame[actual_y, x]}")

    elif event == cv2.EVENT_RBUTTONDOWN:
        if 0 <= actual_y < BASE_H and 0 <= x < BASE_W:
            frame = keyframes[current_frame_idx]
            print(f"坐标: ({x}, {actual_y}), BGR: {frame[actual_y, x]}")
            hsv = cv2.cvtColor(frame[actual_y:actual_y+1, x:x+1], cv2.COLOR_BGR2HSV)
            print(f"HSV: {hsv[0, 0]}")


def save_crop_from_frame(x1: int, y1: int, x2: int, y2: int):
    """从当前关键帧裁剪并保存模板"""
    frame = keyframes[current_frame_idx]
    crop = frame[y1:y2, x1:x2]

    # 显示裁剪预览
    scale = max(1, min(5, 200 // max(crop.shape[0], crop.shape[1], 1)))
    preview = cv2.resize(crop, (crop.shape[1] * scale, crop.shape[0] * scale),
                         interpolation=cv2.INTER_NEAREST)
    cv2.imshow("裁剪预览", preview)

    # 提示输入文件名
    print("\n请输入模板文件名（不含路径，如 close_btn.png）")
    print("直接回车跳过，输入 q 取消：")
    name = input("> ").strip()

    if not name or name == 'q':
        print("已取消")
        cv2.destroyWindow("裁剪预览")
        return

    if not name.endswith('.png'):
        name += '.png'

    # 保存
    os.makedirs(OUTPUT_DIR, exist_ok=True)
    filepath = os.path.join(OUTPUT_DIR, name)

    if os.path.exists(filepath):
        print(f"文件已存在: {filepath}")
        overwrite = input("是否覆盖？(y/n) > ").strip().lower()
        if overwrite != 'y':
            print("已取消")
            cv2.destroyWindow("裁剪预览")
            return

    cv2.imwrite(filepath, crop)
    print(f"✅ 已保存: {filepath} ({crop.shape[1]}x{crop.shape[0]})")

    # 记录裁剪区域
    crop_regions.append((x1, y1, x2, y2, name))

    # 刷新显示
    display = get_display_image()
    cv2.imshow(WINDOW_NAME, display)
    cv2.destroyWindow("裁剪预览")


def print_checklist():
    """打印模板制作清单"""
    print("\n" + "=" * 55)
    print("📋 模板制作清单")
    print("=" * 55)

    for category, templates in TEMPLATE_CHECKLIST.items():
        print(f"\n【{category}】")
        for filename, desc in templates:
            filepath = os.path.join(OUTPUT_DIR, filename)
            status = "✅" if os.path.exists(filepath) else "⬜"
            print(f"  {status} {filename:25s} - {desc}")

    total = sum(len(t) for t in TEMPLATE_CHECKLIST.values())
    done = sum(
        1 for templates in TEMPLATE_CHECKLIST.values()
        for filename, _ in templates
        if os.path.exists(os.path.join(OUTPUT_DIR, filename))
    )
    print(f"\n进度: {done}/{total}")
    print("=" * 55)


def browse_keyframes():
    """交互式浏览关键帧并裁剪模板"""
    global current_frame_idx

    if not keyframes:
        print("❌ 没有关键帧可浏览")
        return

    print()
    print("=" * 55)
    print(f"🖼️  进入关键帧浏览模式 (共 {len(keyframes)} 帧)")
    print("=" * 55)
    print()
    print("快捷键:")
    print("  ← →       - 切换帧")
    print("  左键拖拽   - 框选 UI 元素")
    print("  右键点击   - 查看坐标/颜色/HSV")
    print("  R          - 重置当前帧标记")
    print("  L          - 显示模板清单")
    print("  D          - 删除当前关键帧")
    print("  S          - 保存当前帧为截图")
    print("  Q          - 退出")
    print()

    # 打印清单
    print_checklist()

    # 创建窗口
    cv2.namedWindow(WINDOW_NAME, cv2.WINDOW_NORMAL)
    cv2.resizeWindow(WINDOW_NAME, BASE_W, BASE_H + 30)
    cv2.setMouseCallback(WINDOW_NAME, on_mouse_crop)

    current_frame_idx = 0
    display = get_display_image()
    cv2.imshow(WINDOW_NAME, display)

    print(f"\n当前: 帧 {current_frame_idx + 1}/{len(keyframes)}")

    while True:
        key = cv2.waitKey(1) & 0xFF

        if key == ord('q'):
            break

        elif key == 81 or key == 2:  # ← 左箭头
            if current_frame_idx > 0:
                current_frame_idx -= 1
                display = get_display_image()
                cv2.imshow(WINDOW_NAME, display)
                print(f"当前: 帧 {current_frame_idx + 1}/{len(keyframes)}")

        elif key == 83 or key == 3:  # → 右箭头
            if current_frame_idx < len(keyframes) - 1:
                current_frame_idx += 1
                display = get_display_image()
                cv2.imshow(WINDOW_NAME, display)
                print(f"当前: 帧 {current_frame_idx + 1}/{len(keyframes)}")

        elif key == ord('r'):
            # 重置标记
            crop_regions.clear()
            display = get_display_image()
            cv2.imshow(WINDOW_NAME, display)
            print("已重置所有标记")

        elif key == ord('l'):
            print_checklist()

        elif key == ord('d'):
            # 删除当前帧
            if len(keyframes) > 1:
                removed = keyframes.pop(current_frame_idx)
                if current_frame_idx >= len(keyframes):
                    current_frame_idx = len(keyframes) - 1
                display = get_display_image()
                cv2.imshow(WINDOW_NAME, display)
                print(f"已删除帧，剩余 {len(keyframes)} 帧")
            else:
                print("⚠️  至少保留一帧")

        elif key == ord('s'):
            # 保存当前帧为截图
            os.makedirs(KEYFRAMES_DIR, exist_ok=True)
            save_path = os.path.join(KEYFRAMES_DIR, f"screenshot_{int(time.time())}.png")
            cv2.imwrite(save_path, keyframes[current_frame_idx])
            print(f"✅ 截图已保存: {save_path}")

    cv2.destroyAllWindows()

    # 最终清单
    print()
    print_checklist()
    print("\n程序已退出")


# ==================== 主入口 ====================

def main():
    global keyframes

    parser = argparse.ArgumentParser(
        description="视频录制 + 关键帧提取 + 模板裁剪/自动生成工具"
    )
    group = parser.add_mutually_exclusive_group()
    group.add_argument("--record", action="store_true",
                       help="通过 ADB 录屏（推荐）")
    group.add_argument("--video", type=str, default=None,
                       help="从本地视频文件提取关键帧")
    group.add_argument("--browse", action="store_true",
                       help="浏览已提取的关键帧")
    group.add_argument("--auto", type=str, default=None, nargs='?', const='__record__',
                       help="全自动模式：从视频自动生成场景素材（不指定路径则自动录屏）")

    parser.add_argument("--flow-name", type=str, default="auto_flow",
                        help="场景流程名称（--auto 模式），默认 auto_flow")
    parser.add_argument("--device", type=str, default=None,
                        help="ADB 设备 ID")
    parser.add_argument("--duration", type=int, default=120,
                        help="最大录制时长（秒），默认 120")
    parser.add_argument("--diff-threshold", type=float, default=0.15,
                        help="直方图差异阈值，默认 0.15")
    parser.add_argument("--struct-threshold", type=float, default=0.10,
                        help="结构差异阈值，默认 0.10")
    parser.add_argument("--min-interval", type=float, default=0.5,
                        help="最小关键帧间隔（秒），默认 0.5")

    args = parser.parse_args()

    print("=" * 55)
    print("📹 冒险岛日常自动化 - 视频模板提取工具")
    print("=" * 55)
    print()

    if args.record:
        # Step 1: ADB 录屏
        print("【Step 1/3】ADB 录屏")
        print("-" * 40)
        video_path = adb_record(
            duration=args.duration,
            device_id=args.device
        )
        if video_path is None:
            print("❌ 录屏失败，退出")
            return

        # Step 2: 提取关键帧
        print()
        print("【Step 2/3】提取关键帧")
        print("-" * 40)
        keyframes = extract_keyframes(
            video_path,
            diff_threshold=args.diff_threshold,
            structural_threshold=args.struct_threshold,
            min_interval=args.min_interval
        )

        if not keyframes:
            print("❌ 未提取到关键帧，退出")
            return

        save_keyframes(keyframes)

        # Step 3: 交互式裁剪
        print()
        print("【Step 3/3】交互式裁剪模板")
        print("-" * 40)
        browse_keyframes()

    elif args.video:
        # 从本地视频提取
        if not os.path.exists(args.video):
            print(f"❌ 视频文件不存在: {args.video}")
            return

        print("【Step 1/2】提取关键帧")
        print("-" * 40)
        keyframes = extract_keyframes(
            args.video,
            diff_threshold=args.diff_threshold,
            structural_threshold=args.struct_threshold,
            min_interval=args.min_interval
        )

        if not keyframes:
            print("❌ 未提取到关键帧，退出")
            return

        save_keyframes(keyframes)

        print()
        print("【Step 2/2】交互式裁剪模板")
        print("-" * 40)
        browse_keyframes()

    elif args.auto is not None:
        # 全自动模式
        if args.auto == '__record__':
            # 没有指定视频路径，自动录屏
            result = auto_record_and_generate(
                device_id=args.device,
                duration=args.duration,
                flow_name=args.flow_name
            )
        else:
            # 指定了视频路径
            if not os.path.exists(args.auto):
                print(f"❌ 视频文件不存在: {args.auto}")
                return
            result = auto_generate_scenes(
                args.auto,
                flow_name=args.flow_name,
                diff_threshold=args.diff_threshold,
                struct_threshold=args.struct_threshold,
                min_interval=args.min_interval
            )

        if result:
            print(f"\n🎉 素材生成成功！配置文件: {result}")
        else:
            print("\n❌ 素材生成失败")

    elif args.browse:
        # 浏览已有关键帧
        print("加载已保存的关键帧...")
        keyframes = load_keyframes()

        if not keyframes:
            print(f"❌ 未找到关键帧，请先录屏或提取")
            print(f"   关键帧目录: {KEYFRAMES_DIR}")
            return

        print(f"✅ 加载了 {len(keyframes)} 个关键帧")
        browse_keyframes()

    else:
        # 默认：显示帮助
        print("请选择一种模式运行：")
        print()
        print("  📹 录屏模式（推荐）:")
        print("     python tools/video_extract_templates.py --record")
        print()
        print("  📁 本地视频模式:")
        print("     python tools/video_extract_templates.py --video path/to/video.mp4")
        print()
        print("  🖼️  浏览已有关键帧:")
        print("     python tools/video_extract_templates.py --browse")
        print()
        print("  🤖 全自动模式（从视频自动生成素材，零人工）:")
        print("     python tools/video_extract_templates.py --auto path/to/video.mp4")
        print("     python tools/video_extract_templates.py --auto path/to/video.mp4 --flow-name daily_sign_in")
        print()
        print("  🤖 全自动录屏模式（录屏+自动生成，零人工）:")
        print("     python tools/video_extract_templates.py --auto")
        print()
        print("  可选参数:")
        print("     --flow-name NAME     场景流程名称（默认 auto_flow）")
        print("     --device ID          指定 ADB 设备")
        print("     --duration N         最大录制时长（秒）")
        print("     --diff-threshold F   直方图差异阈值（默认 0.15）")
        print("     --struct-threshold F 结构差异阈值（默认 0.10）")
        print("     --min-interval F     最小帧间隔秒数（默认 0.5）")


if __name__ == "__main__":
    main()
