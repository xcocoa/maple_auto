# -*- coding: utf-8 -*-
"""
冒险岛枫之传说 - 金字塔石室肉鸽小游戏自动化 v4
修复：
1. 检测已解锁技能（无加号）
2. 改进 NPC 寻路逻辑
设备：emulator-5560 (XZX-2)
"""

import cv2
import numpy as np
import subprocess
import time
import random

# ============== 配置区域 ==============
ADB_PATH = r"D:\mumu\MuMu Player 12\shell\adb.exe"
DEVICE_ID = "emulator-5560"
SCREEN_W, SCREEN_H = 1280, 720

# 小地图区域
MINIMAP_X1, MINIMAP_Y1 = 900, 20
MINIMAP_X2, MINIMAP_Y2 = 1260, 180

# 技能按钮区域（右下角，根据实际截图调整）
# 从截图看，技能按钮在右下角圆形区域
SKILL_REGIONS = [
    {"pos": (980, 620), "name": "技能 A"},  # 左
    {"pos": (1100, 580), "name": "技能 B"},  # 上
    {"pos": (1100, 680), "name": "技能 C"},  # 下
    {"pos": (1200, 630), "name": "跳跃"},    # 右 - 跳跃
]

# 技能按钮大小（用于检测是否解锁）
SKILL_BUTTON_RADIUS = 50

# 颜色检测阈值
RED_AREA_MIN = 15
RED_AREA_MAX = 1000
GREEN_AREA_MIN = 15
GREEN_AREA_MAX = 500
YELLOW_AREA_MIN = 20
YELLOW_AREA_MAX = 500

# 战斗配置
ATTACK_INTERVAL = 0.3
MOVE_INTERVAL = 0.1
JUMP_COOLDOWN = 0.6

# 虚拟摇杆
JOYSTICK_X, JOYSTICK_Y = 200, 550


# ============== ADB 工具 ==============
class ADBTool:
    def __init__(self):
        self.device_id = DEVICE_ID
        self.adb_path = ADB_PATH

    def run(self, cmd, timeout=10):
        full_cmd = [self.adb_path, "-s", self.device_id] + cmd.split()
        result = subprocess.run(full_cmd, capture_output=True, timeout=timeout,
                               creationflags=subprocess.CREATE_NO_WINDOW)
        return result.stdout.decode('utf-8', errors='ignore').strip()

    def screenshot(self):
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
        self.run(f"shell input tap {x} {y}")

    def swipe(self, x1, y1, x2, y2, duration=120):
        self.run(f"shell input swipe {x1} {y1} {x2} {y2} {duration}")


# ============== 技能检测 ==============
class SkillDetector:
    def __init__(self):
        self.skill_regions = SKILL_REGIONS
        self.available_skills = []
        self.last_check = 0

    def check_skills(self, screenshot):
        """检测哪些技能已解锁（按钮有颜色/图标，不是灰色加号）"""
        if screenshot is None:
            return self.available_skills

        self.available_skills = []

        for i, region in enumerate(self.skill_regions[:-1]):  # 排除跳跃按钮
            x, y = region["pos"]
            # 裁剪技能按钮区域
            x1, y1 = x - SKILL_BUTTON_RADIUS, y - SKILL_BUTTON_RADIUS
            x2, y2 = x + SKILL_BUTTON_RADIUS, y + SKILL_BUTTON_RADIUS

            # 确保不越界
            x1, y1 = max(0, x1), max(0, y1)
            x2, y2 = min(screenshot.shape[1], x2), min(screenshot.shape[0], y2)

            button = screenshot[y1:y2, x1:x2]

            if button is None or button.size == 0:
                continue

            # 检测按钮是否有彩色图标（已解锁）
            # 未解锁的按钮是灰色/黑色的加号
            # 已解锁的按钮有彩色技能图标

            hsv = cv2.cvtColor(button, cv2.COLOR_BGR2HSV)

            # 检测饱和度（已解锁技能有颜色）
            lower_color = np.array([0, 50, 50])
            upper_color = np.array([180, 255, 255])
            mask = cv2.inRange(hsv, lower_color, upper_color)

            color_pixels = np.count_nonzero(mask)
            total_pixels = mask.size

            # 如果彩色像素比例超过阈值，说明已解锁
            if color_pixels / total_pixels > 0.15:
                self.available_skills.append({
                    "index": i,
                    "pos": (x, y),
                    "name": region["name"]
                })

        # 默认至少有一个可用技能
        if not self.available_skills:
            self.available_skills.append({
                "index": 0,
                "pos": SKILL_REGIONS[0]["pos"],
                "name": "默认技能"
            })

        return self.available_skills

    def get_attack_skill(self):
        """返回一个可用的攻击技能"""
        if not self.available_skills:
            return SKILL_REGIONS[0]["pos"]
        return random.choice(self.available_skills)["pos"]


# ============== 小地图分析 ==============
class MinimapAnalyzer:
    def __init__(self):
        self.x1, self.y1 = MINIMAP_X1, MINIMAP_Y1
        self.x2, self.y2 = MINIMAP_X2, MINIMAP_Y2
        self.map_w = self.x2 - self.x1
        self.map_h = self.y2 - self.y1
        self.kernel = np.ones((3,3),np.uint8)

    def find_player(self, screenshot):
        """查找玩家位置（黄色圆圈）"""
        if screenshot is None:
            return None

        minimap = screenshot[self.y1:self.y2, self.x1:self.x2]
        if minimap.size == 0:
            return None

        hsv = cv2.cvtColor(minimap, cv2.COLOR_BGR2HSV)
        lower_yellow = np.array([20, 150, 150])
        upper_yellow = np.array([35, 255, 255])

        mask = cv2.inRange(hsv, lower_yellow, upper_yellow)
        dilated = cv2.dilate(mask, self.kernel, iterations=2)
        eroded = cv2.erode(dilated, self.kernel, iterations=1)

        contours, _ = cv2.findContours(eroded, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

        for contour in contours:
            area = cv2.contourArea(contour)
            if YELLOW_AREA_MIN < area < YELLOW_AREA_MAX:
                M = cv2.moments(contour)
                if M['m00'] > 0:
                    local_x = int(M['m10'] / M['m00'])
                    local_y = int(M['m01'] / M['m00'])
                    return (self.x1 + local_x, self.y1 + local_y, area)

        return None

    def find_monsters(self, screenshot):
        """查找怪物（红色三角）"""
        if screenshot is None:
            return []

        minimap = screenshot[self.y1:self.y2, self.x1:self.x2]
        if minimap.size == 0:
            return []

        hsv = cv2.cvtColor(minimap, cv2.COLOR_BGR2HSV)

        lower_red1 = np.array([0, 150, 150])
        upper_red1 = np.array([15, 255, 255])
        lower_red2 = np.array([160, 150, 150])
        upper_red2 = np.array([180, 255, 255])

        mask1 = cv2.inRange(hsv, lower_red1, upper_red1)
        mask2 = cv2.inRange(hsv, lower_red2, upper_red2)
        mask = cv2.bitwise_or(mask1, mask2)

        dilated = cv2.dilate(mask, self.kernel, iterations=2)
        eroded = cv2.erode(dilated, self.kernel, iterations=1)

        contours, _ = cv2.findContours(eroded, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
        monsters = []

        for contour in contours:
            area = cv2.contourArea(contour)
            if RED_AREA_MIN < area < RED_AREA_MAX:
                M = cv2.moments(contour)
                if M['m00'] > 0:
                    local_x = int(M['m10'] / M['m00'])
                    local_y = int(M['m01'] / M['m00'])
                    screen_x = self.x1 + local_x
                    screen_y = self.y1 + local_y
                    monsters.append((screen_x, screen_y, area))

        # 按距离排序
        monsters.sort(key=lambda m: m[2], reverse=True)
        return monsters

    def find_npc(self, screenshot):
        """查找 NPC（绿色菱形）"""
        if screenshot is None:
            return None

        minimap = screenshot[self.y1:self.y2, self.x1:self.x2]
        if minimap.size == 0:
            return None

        hsv = cv2.cvtColor(minimap, cv2.COLOR_BGR2HSV)
        lower_green = np.array([50, 150, 150])
        upper_green = np.array([70, 255, 255])

        mask = cv2.inRange(hsv, lower_green, upper_green)
        dilated = cv2.dilate(mask, self.kernel, iterations=2)
        eroded = cv2.erode(dilated, self.kernel, iterations=1)

        contours, _ = cv2.findContours(eroded, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

        for contour in contours:
            area = cv2.contourArea(contour)
            if GREEN_AREA_MIN < area < GREEN_AREA_MAX:
                M = cv2.moments(contour)
                if M['m00'] > 0:
                    local_x = int(M['m10'] / M['m00'])
                    local_y = int(M['m01'] / M['m00'])
                    screen_x = self.x1 + local_x
                    screen_y = self.y1 + local_y
                    return (screen_x, screen_y, area)

        return None


# ============== 战斗控制器 ==============
class BattleController:
    def __init__(self, adb, minimap, skill_detector):
        self.adb = adb
        self.minimap = minimap
        self.skill_detector = skill_detector
        self.last_attack = 0
        self.last_move = 0
        self.last_jump = 0
        self.stuck_count = 0
        self.last_player_pos = None

    def attack(self):
        """使用已解锁的技能攻击"""
        now = time.time()
        if now - self.last_attack >= ATTACK_INTERVAL:
            skill_pos = self.skill_detector.get_attack_skill()
            self.adb.tap(skill_pos[0], skill_pos[1])
            self.last_attack = now
            return True
        return False

    def move(self, direction, duration=100):
        """移动：-1 左，1 右"""
        now = time.time()
        if now - self.last_move < MOVE_INTERVAL:
            return

        if direction == 1:  # 右
            self.adb.swipe(JOYSTICK_X, JOYSTICK_Y, JOYSTICK_X + 100, JOYSTICK_Y, duration)
        elif direction == -1:  # 左
            self.adb.swipe(JOYSTICK_X, JOYSTICK_Y, JOYSTICK_X - 100, JOYSTICK_Y, duration)

        self.last_move = now

    def jump(self):
        """跳跃"""
        now = time.time()
        if now - self.last_jump >= JUMP_COOLDOWN:
            self.adb.tap(SKILL_REGIONS[-1]["pos"][0], SKILL_REGIONS[-1]["pos"][1])
            self.last_jump = now
            return True
        return False

    def navigate_to(self, player_pos, target_pos, is_npc=False):
        """
        寻路到目标位置
        is_npc: 是否是找 NPC（需要更精确的靠近）
        """
        if player_pos is None or target_pos is None:
            return False

        # 小地图上的距离
        dx = target_pos[0] - player_pos[0]
        dy = target_pos[1] - player_pos[1]

        # 距离阈值
        arrive_threshold = 25 if is_npc else 15

        # 检查是否到达
        if abs(dx) < arrive_threshold and abs(dy) < arrive_threshold:
            return True

        # 确定移动方向
        if abs(dx) > abs(dy) * 1.5:
            # 水平移动为主
            direction = 1 if dx > 0 else -1
            self.move(direction)
            return False
        else:
            # 垂直方向差异大 - 需要跳跃或等待平台移动
            if dy < -20:  # 目标在上方
                if self.jump():
                    self.move(1 if dx > 0 else -1)
            elif dy > 20:  # 目标在下方
                # 继续水平移动，寻找下落机会
                direction = 1 if dx > 0 else -1
                self.move(direction)
            else:
                direction = 1 if dx > 0 else -1
                self.move(direction)
            return False


# ============== 主自动化 ==============
class AutoRogue:
    def __init__(self):
        self.adb = ADBTool()
        self.minimap = MinimapAnalyzer()
        self.skill_detector = SkillDetector()
        self.controller = BattleController(self.adb, self.minimap, self.skill_detector)
        self.state = "find_monster"
        self.no_monster_count = 0
        self.skill_check_count = 0

    def run(self):
        """运行自动化"""
        print("=" * 50)
        print("冒险岛 - 金字塔石室自动化 v4")
        print("功能：技能检测 | 自动寻路 | 打怪 | 找 NPC")
        print(f"设备：{DEVICE_ID}")
        print("=" * 50)
        print("按 Ctrl+C 停止")
        time.sleep(2)

        try:
            while True:
                screenshot = self.adb.screenshot()
                if screenshot is None:
                    print("截图失败...")
                    time.sleep(0.3)
                    continue

                # 定期检查技能状态（每 20 帧）
                self.skill_check_count += 1
                if self.skill_check_count >= 20:
                    skills = self.skill_detector.check_skills(screenshot)
                    skill_names = [s["name"] for s in skills]
                    print(f"[技能] 已解锁：{skill_names}")
                    self.skill_check_count = 0

                player = self.minimap.find_player(screenshot)
                monsters = self.minimap.find_monsters(screenshot)
                npc = self.minimap.find_npc(screenshot)

                # 状态机
                if monsters:
                    # 有怪物，战斗
                    self.state = "fight"
                    target = monsters[0]

                    if player:
                        arrived = self.controller.navigate_to(player, target)
                        if arrived:
                            # 到达怪物位置，攻击
                            if self.controller.attack():
                                print(f"[攻击] 目标：({target[0]}, {target[1]})")
                        else:
                            # 移动中
                            self.controller.attack()
                    else:
                        self.controller.attack()

                    self.no_monster_count = 0

                elif npc:
                    # 没怪物，找 NPC
                    self.state = "find_npc"
                    print(f"[NPC] 发现 NPC: ({npc[0]}, {npc[1]})")

                    if player:
                        arrived = self.controller.navigate_to(player, npc, is_npc=True)
                        if arrived:
                            print("[NPC] 已到达 NPC 位置")
                            # 到达后攻击（与 NPC 互动或清理周围）
                            self.controller.attack()
                        else:
                            # 移动中偶尔攻击
                            if random.random() < 0.3:
                                self.controller.attack()
                    else:
                        self.controller.attack()

                    self.no_monster_count = 0

                else:
                    # 探索状态
                    self.state = "explore"
                    self.no_monster_count += 1

                    if self.no_monster_count > 15:
                        # 向右探索
                        self.controller.move(1)
                        self.no_monster_count = 0
                        print("[探索] 向右移动...")

                time.sleep(0.05)

        except KeyboardInterrupt:
            print("\n[停止] 用户中断")
        except Exception as e:
            print(f"[错误] {e}")
            import traceback
            traceback.print_exc()


if __name__ == "__main__":
    rogue = AutoRogue()
    rogue.run()
