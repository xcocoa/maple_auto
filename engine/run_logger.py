# engine/run_logger.py
# -*- coding: utf-8 -*-
"""
执行日志持久化
将每次运行结果写入 logs/ 目录的 JSON 文件，并自动清理过期日志。
"""

import os
import json
import logging
from datetime import datetime, timedelta
from typing import List, Optional

logger = logging.getLogger('Engine.RunLogger')

DEFAULT_LOG_DIR = "logs"


def write_run_log(results: List[dict], total_duration: float, device: str,
                  log_dir: Optional[str] = None) -> str:
    """
    写入运行日志 JSON 文件。

    Returns:
        写入的日志文件绝对路径
    """
    if log_dir is None:
        log_dir = DEFAULT_LOG_DIR

    os.makedirs(log_dir, exist_ok=True)

    # 先清理旧日志
    clean_old_logs(log_dir=log_dir)

    now = datetime.now()
    filename = now.strftime("%Y-%m-%d_%H%M%S") + ".json"
    filepath = os.path.join(log_dir, filename)

    flows_pass = sum(1 for r in results if r["success"])
    flows_fail = len(results) - flows_pass

    log_data = {
        "run_at": now.isoformat(timespec="seconds"),
        "device": device,
        "total_duration": round(total_duration, 1),
        "overall_success": flows_fail == 0,
        "flows_run": len(results),
        "flows_pass": flows_pass,
        "flows_fail": flows_fail,
        "results": results,
    }

    with open(filepath, 'w', encoding='utf-8') as f:
        json.dump(log_data, f, ensure_ascii=False, indent=2)

    logger.info(f"运行日志已保存: {filepath}")
    return filepath


def clean_old_logs(log_dir: Optional[str] = None, max_age_days: int = 30) -> int:
    """
    删除超过 max_age_days 天的日志文件。

    Returns:
        删除的文件数量
    """
    if log_dir is None:
        log_dir = DEFAULT_LOG_DIR

    if not os.path.isdir(log_dir):
        return 0

    cutoff = datetime.now() - timedelta(days=max_age_days)
    deleted = 0

    for filename in os.listdir(log_dir):
        if not filename.endswith('.json'):
            continue
        # 从文件名解析日期: YYYY-MM-DD_HHMMSS.json
        try:
            date_str = filename.replace('.json', '')
            file_date = datetime.strptime(date_str, "%Y-%m-%d_%H%M%S")
        except ValueError:
            continue

        if file_date < cutoff:
            filepath = os.path.join(log_dir, filename)
            os.remove(filepath)
            logger.debug(f"删除过期日志: {filename}")
            deleted += 1

    return deleted
