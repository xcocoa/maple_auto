# -*- coding: utf-8 -*-
"""
冒险岛枫之传说 - 肉鸽小游戏自动化工具
基于小地图红点定位怪物
"""

import cv2
import numpy as np
import subprocess
import time
from PIL import Image

# ============== 配置区域 ==============
ADB_PATH = r"D:\mumu\MuMu Player 12\shell\adb.exe"
DEVICE_ID = "emulator-5560"  # XZX-2 - 金字塔石室
SCREEN_SIZE = (720, 1280)  # Android 屏幕分辨率（竖屏）

# 小地图配置（右上角 - 横屏游戏在竖屏屏幕中）
# 游戏画面是横屏，但 Android 是竖屏，所以小地图在屏幕的右上方
MINIMAP_X1, MINIMAP_Y1 = 550, 20
MINIMAP_X2, MINIMAP_Y2 = 690, 150

# 红点颜色范围（HSV）
RED_LOWER1 = np.array([0, 150, 150])
RED_UPPER1 = np.array([15, 255, 255])
RED_LOWER2 = np.array([160, 150, 150])
RED_UPPER2 = np.array([180, 255, 255])

# 技能按钮位置（右下角）
SKILL_BUTTONS = [
    (550, 1000),  # 技能 1
    (650, 1000),  # 技能 2
    (550, 1100),  # 技能 3
    (650, 1100),  # 技能 4
]

# ============== ADB 工具类 ==============
class ADBTool:
    def __init__(self, device_id, adb_path):
        self.device_id = device_id
        self.adb_path = adb_path

    def run(self, cmd, timeout=10):
        """执行 ADB 命令"""
        full_cmd = [self.adb_path, "-s", self.device_id] + cmd.split()
        result = subprocess.run(full_cmd, capture_output=True, timeout=timeout,
                               creationflags=subprocess.CREATE_NO_WINDOW)
        return result.stdout.decode('utf-8', errors='ignore').strip()

    def screenshot(self):
        """截图并返回 OpenCV 格式"""
        # 使用 exec-out 方式
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
        print(f"点击：({x}, {y})")

    def swipe(self, x1, y1, x2, y2, duration=200):
        """滑动"""
        self.run(f"shell input swipe {x1} {y1} {x2} {y2} {duration}")
        print(f"滑动：({x1},{y1}) -> ({x2},{y2})")

    def keyevent(self, key):
        """按键"""
        self.run(f"shell input keyevent {key}")


# ============== 小地图分析 ==============
class MinimapAnalyzer:
    def __init__(self):
        self.x1, self.y1 = MINIMAP_X1, MINIMAP_Y1
        self.x2, self.y2 = MINIMAP_X2, MINIMAP_Y2

    def find_red_dots(self, screenshot):
        """在小地图中查找红点（怪物位置）"""
        # 裁剪小地图区域
        minimap = screenshot[self.y1:self.y2, self.x1:self.x2]

        # 转为 HSV 颜色空间
        hsv = cv2.cvtColor(minimap, cv2.COLOR_BGR2HSV)

        # 检测红色（两个范围，因为红色在 HSV 中跨越 0 度）
        mask1 = cv2.inRange(hsv, RED_LOWER1, RED_UPPER1)
        mask2 = cv2.inRange(hsv, RED_LOWER2, RED_UPPER2)
        mask = cv2.bitwise_or(mask1, mask2)

        # 查找轮廓
        contours, _ = cv2.findContours(mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

        red_dots = []
        for contour in contours:
            area = cv2.contourArea(contour)
            if 10 < area < 500:  # 过滤噪点
                M = cv2.moments(contour)
                if M["m00"] > 0:
                    cX = int(M["m10"] / M["m00"]) + self.x1
                    cY = int(M["m01"] / M["m00"]) + self.y1
                    red_dots.append((cX, cY))

        return red_dots

    def find_blue_portal(self, screenshot):
        """查找蓝色光圈（下一关入口）"""
        minimap = screenshot[self.y1:self.y2, self.x1:self.x2]
        hsv = cv2.cvtColor(minimap, cv2.COLOR_BGR2HSV)

        # 检测蓝色
        lower_blue = np.array([100, 150, 150])
        upper_blue = np.array([140, 255, 255])
        mask = cv2.inRange(hsv, lower_blue, upper_blue)

        contours, _ = cv2.findContours(mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

        portals = []
        for contour in contours:
            area = cv2.contourArea(contour)
            if 20 < area < 1000:
                M = cv2.moments(contour)
                if M["m00"] > 0:
                    cX = int(M["m10"] / M["m00"]) + self.x1
                    cY = int(M["m01"] / M["m00"]) + self.y1
                    portals.append((cX, cY))

        return portals


# ============== 自动化主类 ==============
class AutoRogue:
    def __init__(self):
        self.adb = ADBTool(DEVICE_ID, ADB_PATH)
        self.minimap = MinimapAnalyzer()
        self.last_attack_time = 0
        self.attack_interval = 0.5  # 攻击间隔（秒）

    def attack(self):
        """释放技能攻击"""
        current_time = time.time()
        if current_time - self.last_attack_time >= self.attack_interval:
            # 随机选择一个技能按钮点击
            skill_pos = SKILL_BUTTONS[np.random.randint(0, len(SKILL_BUTTONS))]
            self.adb.tap(skill_pos[0], skill_pos[1])
            self.last_attack_time = current_time
            return True
        return False

    def move_to(self, x, y):
        """移动到目标位置"""
        # 根据目标位置决定移动方向
        center_x = SCREEN_SIZE[0] // 2  # 360
        center_y = SCREEN_SIZE[1] // 2  # 640

        if x < center_x - 50:
            # 目标在左边，向左滑动
            self.adb.swipe(300, 600, 150, 600, 100)
        elif x > center_x + 50:
            # 目标在右边，向右滑动
            self.adb.swipe(300, 600, 450, 600, 100)

        if y < center_y - 50:
            # 目标在上边，向上滑动
            self.adb.swipe(300, 600, 300, 400, 100)
        elif y > center_y + 50:
            # 目标在下边，向下滑动
            self.adb.swipe(300, 600, 300, 800, 100)

    def run(self):
        """运行自动化"""
        print("=" * 50)
        print("冒险岛枫之传说 - 肉鸽小游戏自动化")
        print(f"设备：{DEVICE_ID}")
        print("=" * 50)

        # 等待游戏启动
        print("等待 3 秒...")
        time.sleep(3)

        print("开始自动战斗...")
        print("按 Ctrl+C 停止")

        try:
            while True:
                # 截图
                screenshot = self.adb.screenshot()

                # 查找小地图中的红点（怪物）
                red_dots = self.minimap.find_red_dots(screenshot)

                if red_dots:
                    print(f"发现 {len(red_dots)} 个怪物")
                    # 选择最近的红点
                    target = red_dots[0]
                    print(f"目标：{target}")

                    # 攻击
                    self.attack()

                    # 根据红点位置移动
                    self.move_to(target[0], target[1])
                else:
                    # 没有红点，查找蓝色传送门
                    portals = self.minimap.find_blue_portal(screenshot)
                    if portals:
                        print("发现传送门，前往下一关")
                        target = portals[0]
                        self.move_to(target[0], target[1])
                    else:
                        print("未检测到目标，随机移动")
                        self.adb.swipe(400, 400, 600, 400, 100)

                time.sleep(0.3)

        except KeyboardInterrupt:
            print("\n用户停止自动化")
        except Exception as e:
            print(f"错误：{e}")


if __name__ == "__main__":
    rogue = AutoRogue()
    rogue.run()
