#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
执行结果通知
读取最新日志，通过 webhook 发送结果摘要。
支持: 钉钉、飞书、企业微信
"""

import os
import sys
import json
import glob
import logging
import urllib.request
import urllib.error
from typing import Optional

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

logger = logging.getLogger('Notify')

DEFAULT_CONFIG_PATH = "config/notify.yaml"
DEFAULT_LOG_DIR = "logs"


def find_latest_log(log_dir: str = DEFAULT_LOG_DIR) -> Optional[str]:
    """找到最新的运行日志文件"""
    pattern = os.path.join(log_dir, "*.json")
    files = sorted(glob.glob(pattern))
    # 排除 cron_ 前缀的原始日志
    json_files = [f for f in files if not os.path.basename(f).startswith("cron_")]
    if not json_files:
        return None
    return json_files[-1]


def build_message(log_data: dict) -> str:
    """构建通知消息文本"""
    success = log_data.get("overall_success", False)
    flows_run = log_data.get("flows_run", 0)
    flows_pass = log_data.get("flows_pass", 0)
    flows_fail = log_data.get("flows_fail", 0)
    duration = log_data.get("total_duration", 0)
    run_at = log_data.get("run_at", "")

    if success:
        header = f"✅ 日常任务全部成功 ({flows_pass}/{flows_run})"
    else:
        header = f"❌ 日常任务有失败 ({flows_pass}/{flows_run} 通过, {flows_fail} 失败)"

    lines = [
        header,
        f"时间: {run_at}",
        f"耗时: {duration:.1f}s",
        "",
    ]

    # 列出失败的流程
    if not success:
        lines.append("失败流程:")
        for r in log_data.get("results", []):
            if not r.get("success"):
                lines.append(f"  • {r.get('display_name', r.get('flow'))} - {r.get('error', '未知错误')}")

    return "\n".join(lines)


def send_dingtalk(webhook_url: str, message: str) -> bool:
    """发送钉钉机器人消息"""
    payload = json.dumps({
        "msgtype": "text",
        "text": {"content": message}
    }).encode('utf-8')
    req = urllib.request.Request(
        webhook_url, data=payload,
        headers={"Content-Type": "application/json"}
    )
    try:
        with urllib.request.urlopen(req, timeout=10) as resp:
            return resp.status == 200
    except urllib.error.URLError as e:
        logger.error(f"钉钉通知发送失败: {e}")
        return False


def send_feishu(webhook_url: str, message: str) -> bool:
    """发送飞书机器人消息"""
    payload = json.dumps({
        "msg_type": "text",
        "content": {"text": message}
    }).encode('utf-8')
    req = urllib.request.Request(
        webhook_url, data=payload,
        headers={"Content-Type": "application/json"}
    )
    try:
        with urllib.request.urlopen(req, timeout=10) as resp:
            return resp.status == 200
    except urllib.error.URLError as e:
        logger.error(f"飞书通知发送失败: {e}")
        return False


def send_wecom(webhook_url: str, message: str) -> bool:
    """发送企业微信机器人消息"""
    payload = json.dumps({
        "msgtype": "text",
        "text": {"content": message}
    }).encode('utf-8')
    req = urllib.request.Request(
        webhook_url, data=payload,
        headers={"Content-Type": "application/json"}
    )
    try:
        with urllib.request.urlopen(req, timeout=10) as resp:
            return resp.status == 200
    except urllib.error.URLError as e:
        logger.error(f"企业微信通知发送失败: {e}")
        return False


def main():
    logging.basicConfig(level=logging.INFO, format="%(levelname)s - %(message)s")

    # 加载配置
    config_path = DEFAULT_CONFIG_PATH
    if not os.path.exists(config_path):
        logger.info("未找到通知配置文件，跳过通知")
        return

    import yaml
    with open(config_path, 'r') as f:
        config = yaml.safe_load(f)

    if not config.get("enabled", False):
        logger.info("通知已禁用")
        return

    # 找到最新日志
    log_path = find_latest_log()
    if log_path is None:
        logger.warning("未找到运行日志")
        return

    with open(log_path, 'r') as f:
        log_data = json.load(f)

    # 根据配置决定是否发送
    success = log_data.get("overall_success", False)
    on_success = config.get("on_success", "brief")

    if success and on_success == "silent":
        logger.info("成功时静默，不发送通知")
        return

    # 构建消息
    message = build_message(log_data)
    logger.info(f"通知内容:\n{message}")

    # 发送
    channel = config.get("channel", "none")
    webhook_url = config.get("webhook_url", "")

    if not webhook_url or channel == "none":
        logger.info("未配置 webhook，仅打印消息")
        return

    senders = {
        "dingtalk": send_dingtalk,
        "feishu": send_feishu,
        "wecom": send_wecom,
    }
    sender = senders.get(channel)
    if sender:
        ok = sender(webhook_url, message)
        if ok:
            logger.info(f"通知已发送 ({channel})")
        else:
            logger.error(f"通知发送失败 ({channel})")
    else:
        logger.warning(f"不支持的通知渠道: {channel}")


if __name__ == "__main__":
    main()
