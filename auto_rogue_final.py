# -*- coding: utf-8 -*-
"""
冒险岛枫之传说 - 金字塔石室肉鸽小游戏自动化
基于小地图红色三角标记定位怪物
设备：emulator-5560 (XZX-2)
"""

import cv2
import numpy as np
import subprocess
import time
import random

# ============== 配置区域 ==============
ADB_PATH = r"D:\mumu\MuMu Player 12\shell\adb.exe"
DEVICE_ID = "emulator-5560"  # XZX-2

# 屏幕分辨率
SCREEN_W, SCREEN_H = 1280, 720

# 小地图区域（右上角）
MINIMAP_X1, MINIMAP_Y1 = 810, 15
MINIMAP_X2, MINIMAP_Y2 = 1260, 145

# 红色三角检测阈值
RED_AREA_MIN = 30
RED_AREA_MAX = 500

# 技能按钮位置（右下角，根据实际截图调整）
SKILL_1 = (950, 580)   # 左上技能
SKILL_2 = (1080, 580)  # 右上技能
SKILL_3 = (1080, 680)  # 右下技能
JUMP = (1200, 630)     # 跳跃按钮

# 怪物检测配置
ATTACK_INTERVAL = 0.4  # 攻击间隔（秒）
MOVE_INTERVAL = 0.2    # 移动间隔（秒）


# ============== ADB 工具类 ==============
class ADBTool:
    def __init__(self, device_id, adb_path):
        self.device_id = device_id
        self.adb_path = adb_path

    def run(self, cmd, timeout=10):
        full_cmd = [self.adb_path, "-s", self.device_id] + cmd.split()
        result = subprocess.run(full_cmd, capture_output=True, timeout=timeout,
                               creationflags=subprocess.CREATE_NO_WINDOW)
        return result.stdout.decode('utf-8', errors='ignore').strip()

    def screenshot(self):
        """截图"""
        result = subprocess.run(
            [self.adb_path, "-s", self.device_id, "exec-out", "screencap", "-p"],
            capture_output=True
        )
        if not result.stdout:
            return None
        nparr = np.frombuffer(result.stdout, np.uint8)
        img = cv2.imdecode(nparr, cv2.IMREAD_COLOR)
        return img

    def tap(self, x, y):
        """点击"""
        self.run(f"shell input tap {x} {y}")

    def swipe(self, x1, y1, x2, y2, duration=150):
        """滑动"""
        self.run(f"shell input swipe {x1} {y1} {x2} {y2} {duration}")

    def keyevent(self, key):
        """按键"""
        self.run(f"shell input keyevent {key}")


# ============== 怪物检测 ==============
class MonsterDetector:
    def __init__(self):
        self.x1, self.y1 = MINIMAP_X1, MINIMAP_Y1
        self.x2, self.y2 = MINIMAP_X2, MINIMAP_Y2
        self.map_w = self.x2 - self.x1
        self.map_h = self.y2 - self.y1

    def find_monsters(self, screenshot):
        """在小地图中查找红色三角标记（怪物位置）"""
        if screenshot is None:
            return []

        # 裁剪小地图
        minimap = screenshot[self.y1:self.y2, self.x1:self.x2]

        # 转为 HSV
        hsv = cv2.cvtColor(minimap, cv2.COLOR_BGR2HSV)

        # 检测红色（两个范围）
        lower_red1 = np.array([0, 180, 180])
        upper_red1 = np.array([15, 255, 255])
        lower_red2 = np.array([160, 180, 180])
        upper_red2 = np.array([180, 255, 255])

        mask1 = cv2.inRange(hsv, lower_red1, upper_red1)
        mask2 = cv2.inRange(hsv, lower_red2, upper_red2)
        mask = cv2.bitwise_or(mask1, mask2)

        # 形态学去噪
        kernel = np.ones((3,3),np.uint8)
        dilated = cv2.dilate(mask, kernel, iterations=2)
        eroded = cv2.erode(dilated, kernel, iterations=1)

        # 查找轮廓
        contours, _ = cv2.findContours(eroded, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

        monsters = []
        for contour in contours:
            area = cv2.contourArea(contour)
            if RED_AREA_MIN < area < RED_AREA_MAX:
                M = cv2.moments(contour)
                if M['m00'] > 0:
                    local_x = int(M['m10'] / M['m00'])
                    local_y = int(M['m01'] / M['m00'])
                    # 转换为屏幕坐标（小地图标记的是怪物大致方向）
                    screen_x = self.x1 + local_x
                    screen_y = self.y1 + local_y
                    monsters.append((screen_x, screen_y, area))

        # 按面积排序，优先打大怪
        monsters.sort(key=lambda m: m[2], reverse=True)
        return monsters

    def get_wave_info(self, screenshot):
        """获取波次信息（可选）"""
        # 左上角波次显示区域
        wave_area = screenshot[100:180, 10:200]
        # 这里可以添加 OCR 识别波次
        return None


# ============== 战斗控制器 ==============
class BattleController:
    def __init__(self, adb, detector):
        self.adb = adb
        self.detector = detector
        self.last_attack_time = 0
        self.last_move_time = 0
        self.current_target = None

    def attack(self):
        """释放技能"""
        current = time.time()
        if current - self.last_attack_time >= ATTACK_INTERVAL:
            # 随机选择一个技能
            skill = random.choice([SKILL_1, SKILL_2, SKILL_3])
            self.adb.tap(skill[0], skill[1])
            self.last_attack_time = current
            return True
        return False

    def move_toward(self, target_x, target_y):
        """向目标方向移动"""
        current = time.time()
        if current - self.last_move_time < MOVE_INTERVAL:
            return

        # 屏幕中心
        center_x = SCREEN_W // 2  # 640
        center_y = SCREEN_H // 2  # 360

        # 根据小地图目标位置决定移动方向
        # 小地图在右上角，x 越大表示怪越靠右
        dx = target_x - (MINIMAP_X1 + self.detector.map_w // 2)
        dy = target_y - (MINIMAP_Y1 + self.detector.map_h // 2)

        # 移动阈值
        threshold = 30

        if abs(dx) > threshold or abs(dy) > threshold:
            # 从屏幕中心向目标方向滑动
            end_x = center_x + int(dx * 1.5)  # 放大移动幅度
            end_y = center_y + int(dy * 1.5)

            # 限制范围
            end_x = max(200, min(1000, end_x))
            end_y = max(200, min(500, end_y))

            self.adb.swipe(center_x, center_y, end_x, end_y, 100)
            self.last_move_time = current

    def idle(self):
        """待机时的小幅移动"""
        # 偶尔向右移动探索
        if random.random() < 0.3:
            self.adb.swipe(400, 400, 600, 400, 100)


# ============== 主自动化 ==============
class AutoRogue:
    def __init__(self):
        self.adb = ADBTool(DEVICE_ID, ADB_PATH)
        self.detector = MonsterDetector()
        self.controller = BattleController(self.adb, self.detector)

    def check_wave_clear(self, screenshot):
        """检查是否清空当前波次"""
        # 检测是否出现"下一波"或通关提示
        # 简化：如果没有怪物且有小提示，可能是清空了
        return False

    def run(self):
        """运行自动化"""
        print("=" * 50)
        print("冒险岛 - 金字塔石室自动化")
        print(f"设备：{DEVICE_ID}")
        print("=" * 50)
        print("按 Ctrl+C 停止")

        time.sleep(2)

        try:
            while True:
                # 截图
                screenshot = self.adb.screenshot()
                if screenshot is None:
                    print("截图失败，重试...")
                    time.sleep(0.5)
                    continue

                # 查找怪物
                monsters = self.detector.find_monsters(screenshot)

                if monsters:
                    # 有怪物，战斗
                    target = monsters[0]  # 最大的怪物
                    print(f"发现 {len(monsters)} 个怪物，目标：({target[0]}, {target[1]})")

                    # 攻击
                    self.controller.attack()

                    # 向怪物方向移动
                    self.controller.move_toward(target[0], target[1])
                else:
                    # 没有怪物，可能是清空了
                    print("未检测到怪物，探索中...")
                    self.controller.idle()

                time.sleep(0.15)

        except KeyboardInterrupt:
            print("\n用户停止")
        except Exception as e:
            print(f"错误：{e}")
            import traceback
            traceback.print_exc()


if __name__ == "__main__":
    rogue = AutoRogue()
    rogue.run()
