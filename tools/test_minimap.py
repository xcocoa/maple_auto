# -*- coding: utf-8 -*-
"""
小地图检测测试工具
用于调试和校准小地图坐标、颜色阈值
"""

import cv2
import numpy as np
from typing import Optional, Tuple

from core.adb import ADB
from core.config import Config
from modules.minimap import MinimapDetector


class MinimapTester:
    """小地图测试器"""

    def __init__(self, config_path: str = "config/roguelike.yaml"):
        self.config = Config(config_path)

        device_id = self.config.get('device.id', 'emulator-5560')
        adb_path = self.config.get('device.adb_path', 'adb')
        self.adb = ADB(device_id, adb_path)

        self.minimap = MinimapDetector(self.config.get('minimap', {}))

        # 调试信息
        self.debug_info = {
            'player': [],
            'monsters': [],
            'npc': None
        }

    def screenshot(self) -> Optional[np.ndarray]:
        """获取截图"""
        return self.adb.screenshot()

    def extract_minimap(self, screenshot: np.ndarray) -> Optional[np.ndarray]:
        """提取小地图区域"""
        x1, y1 = 900, 20
        x2, y2 = 1260, 180
        return screenshot[y1:y2, x1:x2]

    def test_detection(self, save_debug: bool = False):
        """测试检测功能"""
        print("=" * 50)
        print("小地图检测测试")
        print("=" * 50)

        # 获取截图
        print("\n正在获取截图...")
        screenshot = self.screenshot()
        if screenshot is None:
            print("错误：截图失败，请检查 ADB 连接")
            return

        print(f"截图尺寸：{screenshot.shape[1]}x{screenshot.shape[0]}")

        # 提取小地图
        minimap = self.extract_minimap(screenshot)
        if minimap is None:
            print("错误：无法提取小地图")
            return

        print(f"小地图尺寸：{minimap.shape[1]}x{minimap.shape[0]}")

        if save_debug:
            cv2.imwrite("debug_minimap.png", minimap)
            print("已保存小地图截图：debug_minimap.png")

        # 检测玩家
        print("\n--- 检测玩家 ---")
        player = self.minimap.find_player(screenshot)
        if player:
            print(f"玩家位置：({player.x}, {player.y}), 面积：{player.area:.1f}")
        else:
            print("未检测到玩家")

        # 检测怪物
        print("\n--- 检测怪物 ---")
        monsters = self.minimap.find_monsters(screenshot)
        print(f"检测到 {len(monsters)} 个怪物")
        for i, m in enumerate(monsters[:5]):  # 只显示前 5 个
            print(f"  怪物{i+1}: ({m.x}, {m.y}), 面积：{m.area:.1f}")

        # 检测 NPC
        print("\n--- 检测 NPC ---")
        npc = self.minimap.find_npc(screenshot)
        if npc:
            print(f"NPC 位置：({npc.x}, {npc.y}), 面积：{npc.area:.1f}")
        else:
            print("未检测到 NPC")

        # 保存调试图片
        if save_debug:
            self._save_debug_image(screenshot, player, monsters, npc)
            print("\n已保存调试图片：debug_detection.png")

    def _save_debug_image(self, screenshot, player, monsters, npc):
        """保存带标记的调试图片"""
        img = screenshot.copy()

        # 绘制小地图区域
        x1, y1, x2, y2 = 900, 20, 1260, 180
        cv2.rectangle(img, (x1, y1), (x2, y2), (255, 255, 255), 2)

        # 标记玩家（蓝色）
        if player:
            cv2.circle(img, (player.x, player.y), 10, (255, 255, 0), -1)

        # 标记怪物（红色）
        for m in monsters:
            cv2.circle(img, (m.x, m.y), 8, (0, 0, 255), -1)

        # 标记 NPC（绿色）
        if npc:
            cv2.circle(img, (npc.x, npc.y), 10, (0, 255, 0), -1)

        cv2.imwrite("debug_detection.png", img)

    def test_color_range(self, lower: Tuple[int, int, int], upper: Tuple[int, int, int]):
        """测试颜色范围"""
        screenshot = self.screenshot()
        if screenshot is None:
            return

        minimap = self.extract_minimap(screenshot)
        hsv = cv2.cvtColor(minimap, cv2.COLOR_BGR2HSV)

        lower_np = np.array(lower, dtype=np.uint8)
        upper_np = np.array(upper, dtype=np.uint8)
        mask = cv2.inRange(hsv, lower_np, upper_np)

        # 显示彩色像素比例
        total = mask.size
        colored = np.count_nonzero(mask)
        ratio = colored / total * 100

        print(f"颜色范围 {lower} - {upper}")
        print(f"彩色像素：{colored}/{total} ({ratio:.2f}%)")

        cv2.imwrite("debug_mask.png", mask)
        print("已保存掩码图片：debug_mask.png")


def main():
    """主函数"""
    print("冒险岛肉鸽 - 小地图检测测试工具")
    print("=" * 50)

    tester = MinimapTester()

    while True:
        print("\n请选择操作：")
        print("1. 测试检测功能")
        print("2. 测试颜色范围")
        print("3. 保存小地图截图")
        print("4. 退出")

        choice = input("\n输入选项 (1-4): ").strip()

        if choice == '1':
            tester.test_detection(save_debug=True)
        elif choice == '2':
            print("\n输入 HSV 范围 (格式：H S V)，例如：20 150 150")
            try:
                lower = tuple(map(int, input("下限：").split()))
                upper = tuple(map(int, input("上限：").split()))
                tester.test_color_range(lower, upper)
            except Exception as e:
                print(f"错误：{e}")
        elif choice == '3':
            screenshot = tester.screenshot()
            if screenshot:
                minimap = tester.extract_minimap(screenshot)
                cv2.imwrite("debug_minimap_raw.png", minimap)
                print("已保存：debug_minimap_raw.png")
        elif choice == '4':
            print("退出测试工具")
            break
        else:
            print("无效选项，请重新输入")


if __name__ == "__main__":
    main()
