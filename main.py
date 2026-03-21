# -*- coding: utf-8 -*-
"""
冒险岛肉鸽自动化 - 主入口
"""

import sys
import signal
from typing import Optional

from core.logger import Logger
from games.roguelike import RoguelikeGame


def main():
    """主函数"""
    # 初始化日志
    logger = Logger(name="Main")
    logger.info("启动冒险岛肉鸽自动化")

    # 创建游戏实例
    config_path = "config/roguelike.yaml"
    if len(sys.argv) > 1:
        config_path = sys.argv[1]
        logger.info(f"使用配置文件：{config_path}")

    game = RoguelikeGame(config_path)

    # 处理退出信号
    def signal_handler(sig, frame):
        logger.info("收到退出信号")
        stats = game.get_stats()
        logger.info(f"统计信息：消灭怪物={stats['monsters_defeated']}, "
                    f"交互 NPC={stats['npcs_interacted']}, "
                    f"通关层数={stats['stages_cleared']}")
        sys.exit(0)

    signal.signal(signal.SIGINT, signal_handler)

    # 启动游戏循环
    try:
        game.start()
    except Exception as e:
        logger.error(f"程序异常退出：{e}")
        raise


if __name__ == "__main__":
    main()
