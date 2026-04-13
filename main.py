# -*- coding: utf-8 -*-
"""
冒险岛自动化 - 主入口
支持模式：daily（日常）、roguelike（肉鸽）、pyramid（金字塔）
"""

import sys
import signal
from typing import Optional

from core.logger import Logger


def main():
    """主函数"""
    logger = Logger(name="Main")

    # 解析模式和配置
    mode = "daily"
    config_path = None

    args = sys.argv[1:]
    for arg in args:
        if arg in ("daily", "roguelike", "pyramid"):
            mode = arg
        elif not arg.startswith("-"):
            config_path = arg

    # 默认配置路径
    if config_path is None:
        config_path = {
            "daily": "config/daily.yaml",
            "roguelike": "config/roguelike.yaml",
            "pyramid": "config/pyramid.yaml",
        }.get(mode, "config/daily.yaml")

    logger.info(f"启动冒险岛自动化 - 模式: {mode}, 配置: {config_path}")

    # 创建游戏实例
    if mode == "daily":
        from games.daily import DailyGame
        game = DailyGame(config_path)
    elif mode == "pyramid":
        from games.pyramid import PyramidGame
        game = PyramidGame(config_path)
    else:
        from games.roguelike import RoguelikeGame
        game = RoguelikeGame(config_path)

    # 处理退出信号
    def signal_handler(sig, frame):
        logger.info("收到退出信号")
        stats = game.get_stats()
        logger.info(f"统计信息：{stats}")
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
