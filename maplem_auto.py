# -*- coding: utf-8 -*-
"""
冒险岛枫之传说 - 肉鸽小游戏自动化工具
基于 Python + OpenCV + ADB
"""

import cv2
import numpy as np
import subprocess
import time
from PIL import Image
import os

# ============== 配置区域 ==============
ADB_PATH = r"D:\mumu\MuMu Player 12\shell\adb.exe"
DEVICE_ID = "emulator-5554"
SCREEN_SIZE = (1280, 720)  # 模拟器分辨率（横屏）

# 游戏配置
GAME_PACKAGE = "com.tencent.tmgp.maplem"

# 模板图片路径 (需要你自己截图并裁剪)
TEMPLATE_PATH = "templates"

# 阈值配置
MATCH_THRESHOLD = 0.8  # 图像匹配阈值
COLOR_THRESHOLD = 30   # 颜色识别误差

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
        # 截图到内存
        result = subprocess.run(
            [self.adb_path, "-s", self.device_id, "shell", "screencap", "-p"],
            capture_output=True
        )
        # 转为 OpenCV 图片
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

    def get_current_activity(self):
        """获取当前 Activity"""
        return self.run("shell dumpsys window windows | grep -E 'mCurrentFocus|mFocusedApp'")

    def is_game_running(self):
        """检查游戏是否运行中"""
        output = self.run(f"shell pidof {GAME_PACKAGE}")
        return len(output) > 0


# ============== 图像识别类 ==============
class ImageRecognizer:
    def __init__(self, threshold=0.8):
        self.threshold = threshold

    def find_template(self, screenshot, template_path):
        """查找模板图片位置"""
        template = cv2.imread(template_path)
        if template is None:
            print(f"无法加载模板：{template_path}")
            return None

        # 模板匹配
        result = cv2.matchTemplate(screenshot, template, cv2.TM_CCOEFF_NORMED)
        min_val, max_val, min_loc, max_loc = cv2.minMaxLoc(result)

        if max_val >= self.threshold:
            h, w = template.shape[:2]
            center_x = max_loc[0] + w // 2
            center_y = max_loc[1] + h // 2
            return (center_x, center_y, max_val)
        return None

    def find_all_templates(self, screenshot, template_path, threshold=0.7):
        """查找所有匹配的模板（用于多个怪物）"""
        template = cv2.imread(template_path)
        if template is None:
            return []

        result = cv2.matchTemplate(screenshot, template, cv2.TM_CCOEFF_NORMED)
        locations = np.where(result >= threshold)

        points = []
        h, w = template.shape[:2]
        for pt in zip(*locations[::-1]):
            points.append((pt[0] + w//2, pt[1] + h//2, result[pt[1], pt[0]]))

        # 去重（移除相邻太近的点）
        unique_points = []
        for pt in points:
            is_duplicate = False
            for existing in unique_points:
                if abs(pt[0] - existing[0]) < w//2 and abs(pt[1] - existing[1]) < h//2:
                    is_duplicate = True
                    break
            if not is_duplicate:
                unique_points.append(pt)

        return unique_points

    def find_color_region(self, screenshot, color, x1, y1, x2, y2, tolerance=30):
        """在指定区域查找特定颜色（用于血量条等）"""
        roi = screenshot[y1:y2, x1:x2]
        lower = np.array([c - tolerance for c in color])
        upper = np.array([c + tolerance for c in color])
        mask = cv2.inRange(roi, lower, upper)
        points = np.where(mask > 0)

        if len(points[0]) > 0:
            # 返回中心点
            avg_y = int(np.mean(points[0])) + y1
            avg_x = int(np.mean(points[1])) + x1
            return (avg_x, avg_y)
        return None

    def get_pixel_color(self, screenshot, x, y):
        """获取指定位置的颜色"""
        return screenshot[y, x]

    def compare_color(self, color1, color2, tolerance=30):
        """比较两个颜色是否相似"""
        return all(abs(c1 - c2) < tolerance for c1, c2 in zip(color1, color2))


# ============== 游戏状态识别 ==============
class GameStateRecognizer:
    def __init__(self, recognizer, adb):
        self.recognizer = recognizer
        self.adb = adb

        # 血量条位置（需要根据实际游戏调整）
        self.HP_BAR_X1, self.HP_BAR_Y1 = 50, 50
        self.HP_BAR_X2, self.HP_BAR_Y2 = 200, 80

        # 红色 - 血量条颜色 (BGR 格式)
        self.HP_RED_COLOR = [0, 0, 200]
        # 绿色 - 正常血量颜色
        self.HP_GREEN_COLOR = [0, 200, 0]

    def get_hp_percent(self, screenshot):
        """获取血量百分比（通过识别血量条）"""
        # 方法 1: 识别血量条长度
        hp_region = screenshot[self.HP_BAR_Y1:self.HP_BAR_Y2,
                               self.HP_BAR_X1:self.HP_BAR_X2]

        # 计算红色像素比例
        lower_red = np.array([0, 0, 150])
        upper_red = np.array([50, 50, 255])
        mask = cv2.inRange(hp_region, lower_red, upper_red)

        total_pixels = mask.size
        red_pixels = np.count_nonzero(mask)

        # 简化计算：红色像素比例近似血量
        percent = red_pixels / total_pixels * 2
        return max(0, min(1, percent))

    def is_low_hp(self, screenshot, threshold=0.3):
        """判断是否血量过低"""
        return self.get_hp_percent(screenshot) < threshold

    def is_stage_clear(self, screenshot):
        """判断是否通关（识别通关提示）"""
        # 查找"通关"、"胜利"等文字区域
        # 需要你先截图并制作模板
        result = self.recognizer.find_template(
            screenshot, f"{TEMPLATE_PATH}/victory.png")
        return result is not None

    def is_failed(self, screenshot):
        """判断是否失败"""
        result = self.recognizer.find_template(
            screenshot, f"{TEMPLATE_PATH}/defeat.png")
        return result is not None

    def find_monsters(self, screenshot):
        """查找怪物位置"""
        # 查找所有怪物模板
        monsters = self.recognizer.find_all_templates(
            screenshot, f"{TEMPLATE_PATH}/monster.png", threshold=0.6)
        return monsters

    def is_skill_ready(self, screenshot, skill_index=1):
        """判断技能是否可用（识别技能图标 CD）"""
        # 技能栏位置（需要根据游戏实际调整）
        skill_positions = [
            (500, 1100),  # 技能 1
            (600, 1100),  # 技能 2
            (700, 1100),  # 技能 3
        ]

        if skill_index < 1 or skill_index > 3:
            return True

        pos = skill_positions[skill_index - 1]

        # 检查技能图标是否变灰（CD 中）
        # 或者识别 CD 数字
        color = self.recognizer.get_pixel_color(screenshot, pos[0], pos[1])

        # 简化判断：如果图标不是灰色，说明可用
        # 实际需要根据游戏调整
        return True  # 暂时返回可用


# ============== 肉鸽小游戏自动化 ==============
class RoguelikeAuto:
    def __init__(self):
        self.adb = ADBTool(DEVICE_ID, ADB_PATH)
        self.recognizer = ImageRecognizer(MATCH_THRESHOLD)
        self.game_state = GameStateRecognizer(self.recognizer, self.adb)

        # 战斗配置
        self.combat_skill = 1  # 主力技能
        self.dodge_skill = 2   # 躲避技能
        self.ult_skill = 3     # 大招

    def wait_for_game(self, timeout=60):
        """等待游戏启动"""
        print("等待游戏启动...")
        start = time.time()
        while time.time() - start < timeout:
            if self.adb.is_game_running():
                print("游戏已启动")
                return True
            time.sleep(1)
        print("游戏启动超时")
        return False

    def enter_roguelike(self):
        """进入肉鸽小游戏界面"""
        print("请手动进入肉鸽小游戏界面...")
        print("进入后按 Ctrl+C 开始自动化")
        try:
            time.sleep(3)
        except KeyboardInterrupt:
            pass

    def combat_loop(self):
        """战斗循环"""
        print("开始自动战斗...")

        while True:
            screenshot = self.adb.screenshot()

            # 1. 检查是否通关/失败
            if self.game_state.is_stage_clear(screenshot):
                print("关卡完成!")
                return "success"

            if self.game_state.is_failed(screenshot):
                print("失败了...")
                return "failed"

            # 2. 检查血量
            if self.game_state.is_low_hp(screenshot):
                print("血量过低，尝试躲避!")
                self.dodge()
                continue

            # 3. 查找怪物
            monsters = self.game_state.find_monsters(screenshot)

            if monsters:
                # 找到最近的怪物
                target = min(monsters, key=lambda m: m[0])  # 按 X 坐标排序
                print(f"发现怪物：{target}")

                # 移动到怪物位置
                self.move_to(target[0])

                # 攻击
                if self.game_state.is_skill_ready(screenshot, self.combat_skill):
                    self.use_skill(self.combat_skill)
            else:
                # 没找到怪物，向前移动
                print("未找到怪物，向前移动")
                self.move_right()

            time.sleep(0.5)  # 避免过快

    def move_to(self, target_x):
        """移动到目标 X 坐标"""
        center_x = SCREEN_SIZE[0] // 2

        if target_x < center_x - 50:
            # 目标在左边
            self.adb.swipe(300, 800, 100, 800, 100)
        elif target_x > center_x + 50:
            # 目标在右边
            self.adb.swipe(300, 800, 500, 800, 100)

    def move_right(self):
        """向右移动"""
        self.adb.swipe(300, 800, 500, 800, 100)
        time.sleep(0.3)

    def dodge(self):
        """躲避动作"""
        # 随机左右移动
        import random
        if random.random() > 0.5:
            self.adb.swipe(300, 800, 100, 800, 50)
        else:
            self.adb.swipe(300, 800, 500, 800, 50)
        time.sleep(0.5)

    def use_skill(self, skill_index):
        """使用技能"""
        # 技能栏位置
        skill_positions = [
            (500, 1100),  # 技能 1
            (600, 1100),  # 技能 2
            (700, 1100),  # 技能 3
        ]

        if 1 <= skill_index <= 3:
            pos = skill_positions[skill_index - 1]
            self.adb.tap(pos[0], pos[1])
            time.sleep(0.3)

    def run(self):
        """运行自动化"""
        print("=" * 50)
        print("冒险岛枫之传说 - 肉鸽小游戏自动化")
        print("=" * 50)

        if not self.wait_for_game():
            return

        self.enter_roguelike()

        try:
            result = self.combat_loop()
            print(f"自动化结束，结果：{result}")
        except KeyboardInterrupt:
            print("\n用户中断")
        except Exception as e:
            print(f"错误：{e}")


# ============== 主程序 ==============
if __name__ == "__main__":
    auto = RoguelikeAuto()
    auto.run()
