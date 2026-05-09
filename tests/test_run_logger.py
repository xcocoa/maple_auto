"""Test run_logger writes and cleans JSON logs."""
import sys
import os
import json
import tempfile
import time
from datetime import datetime, timedelta

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))


def test_write_run_log_creates_json(tmp_path):
    from engine.run_logger import write_run_log
    results = [
        {
            "flow": "daily_tasks",
            "display_name": "每日日常",
            "success": True,
            "duration": 42.3,
            "steps_total": 9,
            "steps_pass": 8,
            "steps_skip": 1,
            "steps_fail": 0,
            "error": None,
        }
    ]
    log_path = write_run_log(results, 42.3, "ZY22LJC9ST", log_dir=str(tmp_path))
    assert os.path.exists(log_path)
    with open(log_path, 'r') as f:
        data = json.load(f)
    assert data["device"] == "ZY22LJC9ST"
    assert data["overall_success"] is True
    assert data["flows_run"] == 1
    assert data["flows_pass"] == 1
    assert data["flows_fail"] == 0
    assert len(data["results"]) == 1


def test_clean_old_logs(tmp_path):
    from engine.run_logger import clean_old_logs
    # Create a fake old log (31 days ago)
    old_name = "2026-04-08_080000.json"
    (tmp_path / old_name).write_text("{}")
    # Create a recent log
    recent_name = "2026-05-09_080000.json"
    (tmp_path / recent_name).write_text("{}")

    clean_old_logs(log_dir=str(tmp_path), max_age_days=30)

    assert not (tmp_path / old_name).exists()
    assert (tmp_path / recent_name).exists()
