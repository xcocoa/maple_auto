# -*- coding: utf-8 -*-
"""
冒险岛枫之传说 - 金字塔石室肉鸽小游戏自动化 v2
增强版：智能移动 + 跳跃躲避 + 陷阱躲避
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
MINIMAP_X1, MINIMAP_Y1 = 900, 20
MINIMAP_X2, MINIMAP_Y2 = 1260, 180

# 玩家血条区域（左上角）
HP_BAR_X1, HP_BAR_Y1 = 130, 25
HP_BAR_X2, HP_BAR_Y2 = 280, 45

# 红色三角检测（怪物）
RED_AREA_MIN = 30
RED_AREA_MAX = 600

# 黄色圆圈检测（玩家位置）
YELLOW_AREA_MIN = 50
YELLOW_AREA_MAX = 500

# 技能按钮位置
SKILL_1 = (950, 580)   # 左上技能
SKILL_2 = (1080, 580)  # 右上技能
SKILL_3 = (1080, 680)  # 右下技能
JUMP = (1200, 630)     # 跳跃按钮
MOVE_LEFT = (850, 630) # 左移
MOVE_RIGHT = (980, 630)# 右移

# 战斗配置
ATTACK_INTERVAL = 0.35   # 攻击间隔
MOVE_INTERVAL = 0.15     # 移动间隔
JUMP_COOLDOWN = 1.0      # 跳跃冷却
DODGE_THRESHOLD = 0.3    # 血量低于 30% 开始躲避


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

    def swipe(self, x1, y1, x2, y2, duration=150):
        self.run(f"shell input swipe {x1} {y1} {x2} {y2} {duration}")

    def long_press(self, x, y, duration=500):
        self.run(f"shell input swipe {x} {y} {x} {y} {duration}")


# ============== 小地图分析 ==============
class MinimapAnalyzer:
    def __init__(self):
        self.x1, self.y1 = MINIMAP_X1, MINIMAP_Y1
        self.x2, self.y2 = MINIMAP_X2, MINIMAP_Y2
        self.map_w = self.x2 - self.x1
        self.map_h = self.y2 - self.y1

    def find_player(self, screenshot):
        """在小地图中查找黄色圆圈（玩家位置）"""
        if screenshot is None:
            return None

        minimap = screenshot[self.y1:self.y2, self.x1:self.x2]
        hsv = cv2.cvtColor(minimap, cv2.COLOR_BGR2HSV)

        # 检测黄色
        lower_yellow = np.array([20, 150, 150])
        upper_yellow = np.array([35, 255, 255])
        mask = cv2.inRange(hsv, lower_yellow, upper_yellow)

        # 形态学
        kernel = np.ones((3,3),np.uint8)
        dilated = cv2.dilate(mask, kernel, iterations=2)
        eroded = cv2.erode(dilated, kernel, iterations=1)

        contours, _ = cv2.findContours(eroded, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

        for contour in contours:
            area = cv2.contourArea(contour)
            if YELLOW_AREA_MIN < area < YELLOW_AREA_MAX:
                M = cv2.moments(contour)
                if M['m00'] > 0:
                    local_x = int(M['m10'] / M['m00'])
                    local_y = int(M['m01'] / M['m00'])
                    return (self.x1 + local_x, self.y1 + local_y)

        return None

    def find_monsters(self, screenshot):
        """在小地图中查找红色三角标记（怪物位置）"""
        if screenshot is None:
            return []

        minimap = screenshot[self.y1:self.y2, self.x1:self.x2]
        hsv = cv2.cvtColor(minimap, cv2.COLOR_BGR2HSV)

        # 检测红色
        lower_red1 = np.array([0, 180, 180])
        upper_red1 = np.array([15, 255, 255])
        lower_red2 = np.array([160, 180, 180])
        upper_red2 = np.array([180, 255, 255])

        mask1 = cv2.inRange(hsv, lower_red1, upper_red1)
        mask2 = cv2.inRange(hsv, lower_red2, upper_red2)
        mask = cv2.bitwise_or(mask1, mask2)

        # 去噪
        kernel = np.ones((3,3),np.uint8)
        dilated = cv2.dilate(mask, kernel, iterations=2)
        eroded = cv2.erode(dilated, kernel, iterations=1)

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

        monsters.sort(key=lambda m: m[2], reverse=True)
        return monsters

    def get_monster_direction(self, player_pos, monster_pos):
        """判断怪物相对于玩家的方向"""
        if player_pos is None:
            return "unknown"

        dx = monster_pos[0] - player_pos[0]
        dy = monster_pos[1] - player_pos[0]

        if abs(dx) > abs(dy):
            return "right" if dx > 0 else "left"
        else:
            return "down" if dy > 0 else "up"


# ============== 血量检测 ==============
class HPDetector:
    def __init__(self):
        self.x1, self.y1 = HP_BAR_X1, HP_BAR_Y1
        self.x2, self.y2 = HP_BAR_X2, HP_BAR_Y2

    def get_hp_percent(self, screenshot):
        """检测血量百分比"""
        if screenshot is None:
            return 1.0

        hp_bar = screenshot[self.y1:self.y2, self.x1:self.x2]
        if hp_bar is None or hp_bar.size == 0:
            return 1.0

        # 检测绿色（血量）
        hsv = cv2.cvtColor(hp_bar, cv2.COLOR_BGR2HSV)
        lower_green = np.array([40, 100, 100])
        upper_green = np.array([70, 255, 255])
        mask = cv2.inRange(hsv, lower_green, upper_green)

        # 计算绿色像素比例
        total_pixels = mask.size
        green_pixels = np.count_nonzero(mask)

        # 简化的血量计算
        percent = green_pixels / (self.x2 - self.x1) / 10  # 归一化
        return min(1.0, max(0.0, percent))


# ============== 战斗控制器 ==============
class BattleController:
    def __init__(self, adb, minimap, hp_detector):
        self.adb = adb
        self.minimap = minimap
        self.hp_detector = hp_detector
        self.last_attack_time = 0
        self.last_move_time = 0
        self.last_jump_time = 0
        self.last_dodge_time = 0
        self.move_direction = 0  # -1 左，0 停，1 右
        self.dodge_count = 0

    def attack(self):
        """释放技能攻击"""
        current = time.time()
        if current - self.last_attack_time >= ATTACK_INTERVAL:
            # 优先使用技能 1（主攻击）
            skill = SKILL_1
            self.adb.tap(skill[0], skill[1])
            self.last_attack_time = current
            return True
        return False

    def move(self, direction):
        """移动：direction = -1 左，1 右"""
        current = time.time()
        if current - self.last_move_time < MOVE_INTERVAL:
            return

        # 虚拟摇杆区域
        joystick_x, joystick_y = 200, 550

        if direction == 1:  # 右
            self.adb.swipe(joystick_x, joystick_y, joystick_x + 80, joystick_y, 100)
        elif direction == -1:  # 左
            self.adb.swipe(joystick_x, joystick_y, joystick_x - 80, joystick_y, 100)

        self.last_move_time = current
        self.move_direction = direction

    def jump(self):
        """跳跃"""
        current = time.time()
        if current - self.last_jump_time >= JUMP_COOLDOWN:
            self.adb.tap(JUMP[0], JUMP[1])
            self.last_jump_time = current
            return True
        return False

    def dodge(self, direction=None):
        """躲避：快速移动 + 跳跃"""
        current = time.time()
        if current - self.last_dodge_time < 1.5:
            return

        # 随机选择躲避方向
        if direction is None:
            direction = random.choice([-1, 1])

        # 向反方向快速移动 + 跳跃
        self.adb.swipe(200, 550, 200 + (direction * -100), 550, 80)
        time.sleep(0.1)
        self.adb.tap(JUMP[0], JUMP[1])

        self.last_dodge_time = current
        self.dodge_count += 1
        print(f"  -> 躲避！方向：{'左' if direction < 0 else '右'}")

    def get_target_direction(self, player_pos, monster_pos):
        """获取移动方向 - 根据小地图上怪物相对于玩家的位置"""
        if player_pos is None or monster_pos is None:
            return 0

        # 计算怪物相对于玩家的偏移
        dx = monster_pos[0] - player_pos[0]
        dy = monster_pos[1] - player_pos[1]

        # 小地图中，x 增加表示向右，y 增加表示向下
        # 阈值，避免微调
        threshold = 15

        if abs(dx) > abs(dy):
            # 水平移动为主
            if dx > threshold:
                return 1  # 向右
            elif dx < -threshold:
                return -1  # 向左
        else:
            # 垂直方向 - 通过跳跃或上下平台处理
            # 对于 y 方向，我们需要移动到怪物所在的平台
            if dy > 30:
                # 怪物在下方，尝试向下移动（先向右/左再下）
                return 1 if dx > 0 else -1
            elif dy < -30:
                # 怪物在上方，需要跳上平台
                self.jump()
                return 1 if dx > 0 else -1

        return 0


# ============== 主自动化 ==============
class AutoRogue:
    def __init__(self):
        self.adb = ADBTool(DEVICE_ID, ADB_PATH)
        self.minimap = MinimapAnalyzer()
        self.hp_detector = HPDetector()
        self.controller = BattleController(self.adb, self.minimap, self.hp_detector)
        self.consecutive_no_monster = 0

    def check_low_hp(self, screenshot):
        """检查是否血量低"""
        hp = self.hp_detector.get_hp_percent(screenshot)
        return hp < DODGE_THRESHOLD

    def should_dodge(self, screenshot, monsters, player_pos):
        """判断是否需要躲避"""
        # 血量低时躲避
        if self.check_low_hp(screenshot):
            return True

        # 怪物太多且靠近时躲避
        if len(monsters) >= 3 and player_pos:
            for monster in monsters:
                dist = abs(monster[0] - player_pos[0]) + abs(monster[1] - player_pos[1])
                if dist < 100:
                    return True

        return False

    def run(self):
        """运行自动化"""
        print("=" * 50)
        print("冒险岛 - 金字塔石室自动化 v2")
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

                # 查找玩家位置
                player_pos = self.minimap.find_player(screenshot)

                # 查找怪物
                monsters = self.minimap.find_monsters(screenshot)

                if monsters:
                    self.consecutive_no_monster = 0
                    target = monsters[0]

                    # 判断是否需要躲避
                    if self.should_dodge(screenshot, monsters, player_pos):
                        print(f"危险！躲避... (剩余怪物：{len(monsters)})")
                        self.controller.dodge()
                        continue

                    # 获取移动方向
                    direction = self.controller.get_target_direction(player_pos, target)

                    # 移动
                    if direction != 0:
                        self.controller.move(direction)

                    # 攻击
                    if self.controller.attack():
                        print(f"攻击！怪物：{len(monsters)} 方向：{'→' if direction > 0 else '←'}")

                else:
                    self.consecutive_no_monster += 1

                    # 没有怪物，向前探索
                    if self.consecutive_no_monster > 10:
                        print("向前探索...")
                        self.controller.move(1)
                        self.consecutive_no_monster = 0
                    else:
                        # 小幅度移动寻找怪物
                        if random.random() < 0.3:
                            self.controller.move(random.choice([-1, 1]))

                time.sleep(0.1)

        except KeyboardInterrupt:
            print(f"\n用户停止 (躲避次数：{self.controller.dodge_count})")
        except Exception as e:
            print(f"错误：{e}")
            import traceback
            traceback.print_exc()


if __name__ == "__main__":
    rogue = AutoRogue()
    rogue.run()
