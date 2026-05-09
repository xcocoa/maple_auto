#!/bin/bash
cd /Users/xuzhengxin/Code/maple_auto
python3 test_e2e.py daily_all > /tmp/maple_test.log 2>&1
echo "Exit code: $?" >> /tmp/maple_test.log
