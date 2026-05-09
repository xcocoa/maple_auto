"""Test notification module."""
import sys
import os
import json

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))


def test_build_message_success():
    from scripts.notify import build_message
    log_data = {
        "run_at": "2026-05-09T08:30:00",
        "device": "ZY22LJC9ST",
        "total_duration": 310.5,
        "overall_success": True,
        "flows_run": 7,
        "flows_pass": 7,
        "flows_fail": 0,
        "results": [],
    }
    msg = build_message(log_data)
    assert "全部成功" in msg or "7/7" in msg


def test_build_message_failure():
    from scripts.notify import build_message
    log_data = {
        "run_at": "2026-05-09T08:30:00",
        "device": "ZY22LJC9ST",
        "total_duration": 310.5,
        "overall_success": False,
        "flows_run": 7,
        "flows_pass": 5,
        "flows_fail": 2,
        "results": [
            {"flow": "gem_dungeon", "display_name": "宝石副本", "success": False, "error": "timeout"}
        ],
    }
    msg = build_message(log_data)
    assert "失败" in msg or "5/7" in msg


def test_find_latest_log(tmp_path):
    from scripts.notify import find_latest_log
    # Create two logs
    (tmp_path / "2026-05-08_080000.json").write_text("{}")
    (tmp_path / "2026-05-09_083000.json").write_text("{}")
    latest = find_latest_log(str(tmp_path))
    assert "2026-05-09" in latest
