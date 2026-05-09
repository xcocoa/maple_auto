"""Test the run_daily_all module can be imported and has correct flow list."""
import sys
import os
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))


def test_flow_list_complete():
    from tools.run_daily_all import DAILY_FLOWS
    assert len(DAILY_FLOWS) == 6
    assert all(f.endswith('.yaml') for f in DAILY_FLOWS)


def test_filter_skip():
    from tools.run_daily_all import filter_flows
    flows = filter_flows(skip=["gem_dungeon", "sky_island_hunt"], only=None)
    assert "flows/gem_dungeon.yaml" not in flows
    assert "flows/sky_island_hunt.yaml" not in flows
    assert len(flows) == 4


def test_filter_only():
    from tools.run_daily_all import filter_flows
    flows = filter_flows(skip=None, only=["daily_tasks", "collect_mail"])
    assert len(flows) == 2
    assert "flows/daily_tasks.yaml" in flows
    assert "flows/collect_mail.yaml" in flows
