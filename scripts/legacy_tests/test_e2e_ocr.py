#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""端到端验证 OCR click_text 在真机上的效果"""

import cv2, time, sys, logging, numpy as np
logging.basicConfig(level=logging.INFO, format='%(asctime)s [%(name)s] %(levelname)s: %(message)s', datefmt='%H:%M:%S')
logger = logging.getLogger('E2E_OCR')

sys.path.insert(0, '.')
from core.adb import ADB
from modules.scene_player import ScenePlayer, SceneAction

# 初始化ADB
adb_raw = ADB('ZY22LJC9ST')

class ScaledADB:
    """ADB 代理：用首次截图的实际尺寸校准缩放（避免竖屏/横屏分辨率不一致）"""
    def __init__(self, adb, bw=1280, bh=720):
        self._adb = adb
        self._bw, self._bh = bw, bh
        self._calibrated = False
        self._cx = self._cy = 0
        self._cw = self._ch = 0
        self._sx = self._sy = 1.0

    def _calibrate(self, raw_w, raw_h):
        """用截图的实际尺寸校准缩放参数"""
        br = self._bw / self._bh  # 16:9 = 1.778
        dr = raw_w / raw_h
        if abs(dr - br) < 0.05:
            self._cx, self._cy = 0, 0
            self._cw, self._ch = raw_w, raw_h
        elif dr > br:
            self._cw = int(raw_h * br)
            self._cx = (raw_w - self._cw) // 2
            self._ch = raw_h
            self._cy = 0
        else:
            self._cw = raw_w
            self._cx = 0
            self._ch = int(raw_w / br)
            self._cy = (raw_h - self._ch) // 2
        self._sx = self._cw / self._bw
        self._sy = self._ch / self._bh
        self._calibrated = True
        logger.info(f'校准完成: 截图={raw_w}x{raw_h}, crop=({self._cx},{self._cy}), size={self._cw}x{self._ch}, scale=({self._sx:.3f},{self._sy:.3f})')

    def screenshot(self, force_refresh=False):
        raw = self._adb.screenshot(force_refresh=force_refresh)
        if raw is None:
            return None
        h, w = raw.shape[:2]
        if not self._calibrated:
            self._calibrate(w, h)
        c = raw[self._cy:self._cy + self._ch, self._cx:self._cx + self._cw]
        return cv2.resize(c, (self._bw, self._bh))

    def tap(self, x, y):
        dx = int(x * self._sx) + self._cx
        dy = int(y * self._sy) + self._cy
        logger.info(f'  TAP: 基准({x},{y}) -> 设备({dx},{dy})')
        self._adb.tap(dx, dy)

    def get_screen_size(self):
        return self._adb.get_screen_size()

    def invalidate_cache(self):
        self._adb.invalidate_cache()

    def __getattr__(self, name):
        return getattr(self._adb, name)

adb = ScaledADB(adb_raw)

# 初始化ScenePlayer（会触发OCR模型加载）
logger.info('初始化 ScenePlayer + OCR 模型（首次加载较慢）...')
player = ScenePlayer()
player.load_config("config/daily_scenes.yaml")

# 预热OCR：先做一次截图+OCR，让模型加载完成
logger.info('预热 OCR 模型...')
warmup_img = adb.screenshot(force_refresh=True)
if warmup_img is not None:
    from modules.ui_detector import UIDetector
    detector = UIDetector({})
    _ = detector.find_text(warmup_img, '测试')
    logger.info('OCR 预热完成')

# ========== 测试1: 用_click_text点击"使用"按钮 ==========
logger.info('=' * 60)
logger.info('测试1: 用 _click_text 点击画面上的 "使用" 按钮')
logger.info('=' * 60)

action1 = SceneAction(
    scene_id='test_use',
    scene_template='',
    tap_x=855, tap_y=395,
    description='测试OCR点击"使用"',
    timeout=15.0,
    action='click_text',
    target_text='使用'
)

t1 = time.time()
result1 = player._click_text(adb, action1)
t1_elapsed = time.time() - t1
logger.info(f'测试1结果: {"✅ 成功" if result1 else "❌ 失败"} (耗时 {t1_elapsed:.1f}s)')

time.sleep(2)
img1 = adb.screenshot(force_refresh=True)
if img1 is not None:
    cv2.imwrite('verify_e2e_after_use.png', img1)
    logger.info('点击"使用"后截图已保存: verify_e2e_after_use.png')

# ========== 测试2: 用_click_text点击"领取奖励"按钮 ==========
logger.info('=' * 60)
logger.info('测试2: 用 _click_text 点击画面上的 "领取奖励" 按钮')
logger.info('=' * 60)

action2 = SceneAction(
    scene_id='test_reward',
    scene_template='',
    tap_x=1137, tap_y=270,
    description='测试OCR点击"领取奖励"',
    timeout=15.0,
    action='click_text',
    target_text='领取奖励'
)

t2 = time.time()
result2 = player._click_text(adb, action2)
t2_elapsed = time.time() - t2
logger.info(f'测试2结果: {"✅ 成功" if result2 else "❌ 失败"} (耗时 {t2_elapsed:.1f}s)')

time.sleep(2)
img2 = adb.screenshot(force_refresh=True)
if img2 is not None:
    cv2.imwrite('verify_e2e_after_reward.png', img2)
    logger.info('点击"领取奖励"后截图已保存: verify_e2e_after_reward.png')

# ========== 测试3: 查找不存在的文本（验证超时回退） ==========
logger.info('=' * 60)
logger.info('测试3: 查找不存在的文本 "强化" (验证超时回退到备用坐标)')
logger.info('=' * 60)

action3 = SceneAction(
    scene_id='test_notfound',
    scene_template='',
    tap_x=640, tap_y=360,
    description='测试OCR超时回退',
    timeout=5.0,
    action='click_text',
    target_text='强化'
)

t3 = time.time()
result3 = player._click_text(adb, action3)
t3_elapsed = time.time() - t3
logger.info(f'测试3结果: {"✅ 成功(不应该)" if result3 else "✅ 预期失败-回退备用坐标"} (耗时 {t3_elapsed:.1f}s)')

# ========== 总结 ==========
logger.info('=' * 60)
logger.info('OCR click_text 端到端验证总结:')
logger.info(f'  测试1 "使用":     {"✅ PASS" if result1 else "❌ FAIL"} ({t1_elapsed:.1f}s)')
logger.info(f'  测试2 "领取奖励": {"✅ PASS" if result2 else "❌ FAIL"} ({t2_elapsed:.1f}s)')
logger.info(f'  测试3 超时回退:   {"✅ PASS" if not result3 else "❌ FAIL"} ({t3_elapsed:.1f}s)')
all_pass = result1 and result2 and (not result3)
logger.info(f'  总体: {"✅ 全部通过" if all_pass else "❌ 存在失败"}')
logger.info('=' * 60)
