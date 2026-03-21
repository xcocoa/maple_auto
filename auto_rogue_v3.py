# -*- coding: utf-8 -*-
"""
冒险岛枫之传说 - 金字塔石室肉鸽小游戏自动化 v3
功能：自动寻路找怪 -> 打怪 -> 找 NPC
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

# 屏幕分辨率
SCREEN_W, SCREEN_H = 1280, 720

# 小地图区域（右上角）
MINIMAP_X1, MINIMAP_Y1 = 900, 20
MINIMAP_X2, MINIMAP_Y2 = 1260, 180

# 颜色检测阈值
RED_AREA_MIN = 15      # 怪物最小面积
RED_AREA_MAX = 1000    # 怪物最大面积
GREEN_AREA_MIN = 15    # NPC 最小面积
GREEN_AREA_MAX = 500   # NPC 最大面积
YELLOW_AREA_MIN = 20   # 玩家最小面积
YELLOW_AREA_MAX = 500  # 玩家最大面积

# 技能按钮
SKILL_1 = (950, 580)
SKILL_2 = (1080, 580)
SKILL_3 = (1080, 680)
JUMP = (1200, 630)

# 虚拟摇杆
JOYSTICK_X, JOYSTICK_Y = 200, 550

# 战斗配置
ATTACK_INTERVAL = 0.35
MOVE_INTERVAL = 0.12
JUMP_COOLDOWN = 0.8


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

    def jump(self):
        self.tap(JUMP[0], JUMP[1])


# ============== 小地图分析 ==============
class MinimapAnalyzer:
    def __init__(self):
        self.x1, self.y1 = MINIMAP_X1, MINIMAP_Y1
        self.x2, self.y2 = MINIMAP_X2, MINIMAP_Y2
        self.map_w = self.x2 - self.x1
        self.map_h = self.y2 - self.y1
        self.kernel = np.ones((3,3),np.uint8)

    def _process_color(self, hsv, lower, upper, min_area, max_area):
        """通用颜色检测处理"""
        mask = cv2.inRange(hsv, lower, upper)
        dilated = cv2.dilate(mask, self.kernel, iterations=2)
        eroded = cv2.erode(dilated, self.kernel, iterations=1)

        contours, _ = cv2.findContours(eroded, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
        results = []

        for contour in contours:
            area = cv2.contourArea(contour)
            if min_area < area < max_area:
                M = cv2.moments(contour)
                if M['m00'] > 0:
                    local_x = int(M['m10'] / M['m00'])
                    local_y = int(M['m01'] / M['m00'])
                    screen_x = self.x1 + local_x
                    screen_y = self.y1 + local_y
                    results.append((screen_x, screen_y, area))

        return results

    def find_player(self, screenshot):
        """查找玩家位置（黄色圆圈）"""
        if screenshot is None:
            return None

        minimap = screenshot[self.y1:self.y2, self.x1:self.x2]
        hsv = cv2.cvtColor(minimap, cv2.COLOR_BGR2HSV)

        lower_yellow = np.array([20, 150, 150])
        upper_yellow = np.array([35, 255, 255])

        results = self._process_color(hsv, lower_yellow, upper_yellow,
                                       YELLOW_AREA_MIN, YELLOW_AREA_MAX)
        return results[0] if results else None

    def find_monsters(self, screenshot):
        """查找怪物（红色三角）"""
        if screenshot is None:
            return []

        minimap = screenshot[self.y1:self.y2, self.x1:self.x2]
        hsv = cv2.cvtColor(minimap, cv2.COLOR_BGR2HSV)

        # 红色有两个 HSV 范围
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

        # 按距离玩家远近排序
        monsters.sort(key=lambda m: abs(m[0]-self.x1-self.map_w//2) + abs(m[1]-self.y1-self.map_h//2))
        return monsters

    def find_npc(self, screenshot):
        """查找 NPC（绿色菱形）"""
        if screenshot is None:
            return None

        minimap = screenshot[self.y1:self.y2, self.x1:self.x2]
        hsv = cv2.cvtColor(minimap, cv2.COLOR_BGR2HSV)

        lower_green = np.array([50, 150, 150])
        upper_green = np.array([70, 255, 255])

        results = self._process_color(hsv, lower_green, upper_green,
                                       GREEN_AREA_MIN, GREEN_AREA_MAX)
        return results[0] if results else None


# ============== 战斗控制器 ==============
class BattleController:
    def __init__(self, adb, minimap):
        self.adb = adb
        self.minimap = minimap
        self.last_attack = 0
        self.last_move = 0
        self.last_jump = 0
        self.target_direction = 0

    def attack(self):
        """攻击"""
        now = time.time()
        if now - self.last_attack >= ATTACK_INTERVAL:
            self.adb.tap(SKILL_1[0], SKILL_1[1])
            self.last_attack = now
            return True
        return False

    def move(self, direction):
        """移动：-1 左，1 右"""
        now = time.time()
        if now - self.last_move < MOVE_INTERVAL:
            return

        if direction == 1:  # 右
            self.adb.swipe(JOYSTICK_X, JOYSTICK_Y, JOYSTICK_X + 100, JOYSTICK_Y, 100)
        elif direction == -1:  # 左
            self.adb.swipe(JOYSTICK_X, JOYSTICK_Y, JOYSTICK_X - 100, JOYSTICK_Y, 100)

        self.last_move = now
        self.target_direction = direction

    def jump(self):
        """跳跃"""
        now = time.time()
        if now - self.last_jump >= JUMP_COOLDOWN:
            self.adb.jump()
            self.last_jump = now
            return True
        return False

    def navigate_to(self, player_pos, target_pos):
        """寻路到目标位置"""
        if player_pos is None or target_pos is None:
            return

        dx = target_pos[0] - player_pos[0]
        dy = target_pos[1] - player_pos[1]
        dist = abs(dx) + abs(dy)

        # 到达目标
        if dist < 20:
            return

        # 确定移动方向
        if abs(dx) > abs(dy):
            direction = 1 if dx > 0 else -1
        else:
            # 垂直方向差异大时，需要跳跃或下落
            if dy < -30:  # 目标在上方
                self.jump()
            direction = 1 if dx > 0 else -1

        self.move(direction)


# ============== 主自动化 ==============
class AutoRogue:
    def __init__(self):
        self.adb = ADBTool()
        self.minimap = MinimapAnalyzer()
        self.controller = BattleController(self.adb, self.minimap)
        self.state = "find_monster"  # find_monster, fight, find_npc
        self.no_monster_count = 0
        self.kill_count = 0

    def run(self):
        """运行自动化"""
        print("=" * 50)
        print("冒险岛 - 金字塔石室自动化 v3")
        print("功能：自动寻路 | 打怪 | 找 NPC")
        print(f"设备：{DEVICE_ID}")
        print("=" * 50)
        print("按 Ctrl+C 停止")
        time.sleep(2)

        try:
            while True:
                screenshot = self.adb.screenshot()
                if screenshot is None:
                    print("截图失败...")
                    time.sleep(0.5)
                    continue

                player = self.minimap.find_player(screenshot)
                monsters = self.minimap.find_monsters(screenshot)
                npc = self.minimap.find_npc(screenshot)

                # 状态机
                if monsters:
                    # 有怪物，战斗状态
                    self.state = "fight"
                    target = monsters[0]  # 最近的怪物

                    if player:
                        self.controller.navigate_to(player, target)

                    if self.controller.attack():
                        print(f"[战斗] 怪物数:{len(monsters)} | 击杀:{self.kill_count}")

                    self.no_monster_count = 0

                elif npc:
                    # 没怪物有 NPC，找 NPC
                    self.state = "find_npc"
                    if player:
                        self.controller.navigate_to(player, npc)
                        print(f"[找 NPC] 位置:({npc[0]},{npc[1]})")

                    self.no_monster_count = 0

                else:
                    # 没怪物也没 NPC，探索
                    self.state = "explore"
                    self.no_monster_count += 1

                    if self.no_monster_count > 20:
                        # 向右探索
                        if player:
                            self.controller.move(1)
                        self.no_monster_count = 0
                        print("[探索] 向右移动...")

                time.sleep(0.08)

        except KeyboardInterrupt:
            print(f"\n停止 (击杀数:{self.kill_count})")
        except Exception as e:
            print(f"错误：{e}")
            import traceback
            traceback.print_exc()


if __name__ == "__main__":
    rogue = AutoRogue()
    rogue.run()
