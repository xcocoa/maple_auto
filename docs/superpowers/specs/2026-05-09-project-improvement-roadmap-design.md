# Maple Auto 项目改进路线图 — 设计规格

## 概述

对 Maple Auto（冒险岛手游日常自动化工具）进行系统性改进，解决当前项目的结构混乱、鲁棒性不足、无统一入口、无定时调度等问题。

## 当前状态

- **核心引擎**：Player + ScaledADB + Flow YAML，代码约 658 行，架构清晰
- **流程覆盖**：7 个流程中 5 个已验证，2 个待补全
- **已有但未使用的能力**：SceneMatcher（场景模板匹配）、TargetLocator（目标定位），所有 YAML 的 scenes/targets 为空
- **代码债务**：根目录散落 33 张 PNG + 11 个调试脚本

## 改进分为 4 个阶段

阶段间有依赖关系：Phase 1 → Phase 2 → Phase 3 → Phase 4。

---

## Phase 1: 地基整理

### 1.1 项目文件清理

**目标**：根目录只保留入口脚本和配置，消除噪音文件。

**操作清单**：

| 文件/模式 | 目标位置 | 行动 |
|-----------|---------|------|
| 根目录 `*.png`（33个） | `debug_screenshots/` | git rm，移入（不入库） |
| `debug_*.py`, `validate_*.py`, `detect_*.py`, `get_position.py`, `extract_templates_from_scenes.py` | `scripts/` | 移动并更新引用 |
| 根目录 `test_*.py`（非 pytest 格式的旧测试） | `scripts/legacy_tests/` | 移动 |
| `nohup.out`, `debug_output.log`, `e2e_test.log` | 删除 | 加入 .gitignore |
| `run_test.sh` | `scripts/` | 移动 |

**`.gitignore` 新增**：
```
*.png
!templates/**/*.png
nohup.out
*.log
debug_screenshots/
```

### 1.2 补全未完成流程

**gem_dungeon.yaml**：
- 录制 `click_goto_gem`（点击"立即前往"）坐标
- 录制 `click_enter`（点击"入场"按钮）坐标
- 工具：`python3 tools/locate_tap.py --count 2`
- 验证：`python3 tools/run_flow.py flows/gem_dungeon.yaml -v`

**sky_island_hunt.yaml**：
- 端到端验证，记录实际各步骤延迟是否充足
- 如有坐标偏移则用 locate_tap 重新录制

---

## Phase 2: 统一入口 + 执行日志

### 2.1 统一日常入口脚本

**文件**：`tools/run_daily_all.py`

**执行顺序**（按游戏逻辑依赖排列）：
1. `daily_tasks.yaml` — 公会+活动签到
2. `daily_sign_in.yaml` — 每日签到
3. `collect_mail.yaml` — 邮件收取
4. `send_popularity.yaml` — 赠送人气
5. `gem_dungeon.yaml` — 宝石副本
6. `sky_island_hunt.yaml` — 天空岛领主
7. `starforce_enhance.yaml` — 星之力强化

**功能**：
- `--skip name1,name2`：跳过指定流程
- `--only name1,name2`：只跑指定流程
- 流程之间自动执行"回到主界面"保障序列：恢复挂机(465,522) → sleep 3s → 停止挂机(819,542) → sleep 2s
- 任一流程失败不中断整体，记录错误继续下一个
- 终端输出彩色汇总表格（流程名 + PASS/FAIL + 耗时）
- 支持 `--verbose` 输出每步详情

**错误隔离**：每个流程在独立 try-except 中执行，即使一个流程崩溃也不影响后续。

### 2.2 执行日志持久化

**目录**：`logs/`

**日志文件**：`logs/YYYY-MM-DD_HHMMSS.json`

**格式**：
```json
{
  "run_at": "2026-05-09T08:30:00",
  "device": "ZY22LJC9ST",
  "total_duration": 310.5,
  "overall_success": true,
  "flows_run": 7,
  "flows_pass": 6,
  "flows_fail": 1,
  "results": [
    {
      "flow": "daily_tasks",
      "display_name": "每日日常",
      "success": true,
      "duration": 42.3,
      "steps_total": 9,
      "steps_pass": 8,
      "steps_skip": 1,
      "steps_fail": 0,
      "error": null
    }
  ]
}
```

**日志保留**：最近 30 天自动清理（脚本启动时删除超期日志）。

---

## Phase 3: 鲁棒性提升

### 3.1 场景模板库

**目录结构**：
```
templates/
  scenes/
    main_screen.png      # 主界面（有角色、挂机按钮）
    menu_panel.png       # 菜单展开面板
    growth_panel.png     # 成长面板
    guild_panel.png      # 公会面板
  popups/
    ad_popup.png         # 广告弹窗
    disconnect.png       # 网络断线提示
    stamina_empty.png    # 体力不足
  buttons/
    close_x.png          # 通用关闭按钮
    confirm.png          # 确认按钮
```

**采集方法**：
- 通过 `adb exec-out screencap -p > raw.png` 截取全屏
- 使用 `tools/make_templates.py` 裁剪感兴趣区域

### 3.2 全局异常处理器

**文件**：`engine/guardian.py`

**职责**：
- 在每个 Step 执行前检查当前画面是否匹配已知异常场景
- 提供 `check_and_handle()` 方法供 Player 调用

**异常处理策略**：

| 场景 | 检测方法 | 处理 |
|------|---------|------|
| 广告弹窗 | 模板匹配 `popups/ad_popup.png` | 点击关闭区域 |
| 网络断线 | 模板匹配 `popups/disconnect.png` | 点击重连 → 等待 10s |
| 体力不足 | OCR 检测"体力不足" | 标记当前流程 skip |
| 画面卡死 | 连续 3 帧截图 MSE < 0.001 | back → 等待 → 重试 |
| 未知画面 | 所有已知场景匹配失败 | 尝试 back → 如果仍未知，abort 当前流程 |

**集成方式**：
```python
# Player._try_step() 开头
handled = self._guardian.check_and_handle()
if handled == "abort_flow":
    return StepResult(step_id=step.id, success=False, error="guardian_abort")
```

### 3.3 混合定位升级

**策略**：坐标定位作为 fallback，优先使用模板匹配。

**YAML 语法扩展**（向后兼容）：
```yaml
- id: click_guild
  action:
    type: tap
    target: guild_button     # 优先模板匹配
    x: 930                   # 模板匹配失败时使用固定坐标
    y: 250
```

**执行逻辑**：
1. 如有 `target`，尝试模板匹配定位
2. 匹配成功 → 使用匹配坐标
3. 匹配失败 → 使用 `x/y` 固定坐标（已有行为，不破坏现有流程）

---

## Phase 4: 定时调度

### 4.1 调度方案

使用 **系统 crontab + wrapper 脚本**。

**Wrapper 脚本**：`scripts/daily_cron.sh`

```bash
#!/bin/bash
# 前置检查
adb devices | grep -q "ZY22LJC9ST" || { echo "设备未连接"; exit 1; }

# 唤醒设备
adb -s ZY22LJC9ST shell input keyevent KEYCODE_WAKEUP
sleep 2

# 确认游戏在前台（如果不在则启动）
CURRENT=$(adb -s ZY22LJC9ST shell dumpsys activity activities | grep "topResumedActivity")
if [[ "$CURRENT" != *"com.nexon.maplem"* ]]; then
    adb -s ZY22LJC9ST shell am start -n com.nexon.maplem/.MainActivity
    sleep 20  # 等待游戏加载
fi

# 执行日常（路径取脚本所在目录的上两级）
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
cd "$PROJECT_DIR"
python3 tools/run_daily_all.py --verbose 2>&1 | tee logs/cron_$(date +%Y%m%d_%H%M%S).log

# 通知（可选）
python3 scripts/notify.py
```

**Crontab 配置**：
```
30 8 * * * /Users/xuzhengxin/Code/maple_auto/scripts/daily_cron.sh
```

### 4.2 通知机制

**文件**：`scripts/notify.py`

**功能**：
- 读取最新的 `logs/*.json` 日志
- 生成摘要文本
- 通过可配置渠道发送：支持 webhook（钉钉/飞书/企业微信）
- 失败时附带最后一帧截图路径

**配置文件**：`config/notify.yaml`
```yaml
enabled: true
channel: dingtalk  # dingtalk | feishu | wecom | none
webhook_url: "https://oapi.dingtalk.com/robot/send?access_token=xxx"
on_success: brief   # brief | full | silent
on_failure: full     # 失败时总是发完整报告
```

---

## 成功标准

| Phase | 验收条件 |
|-------|---------|
| 1 | 根目录仅剩 `main.py`, `requirements.txt`, `CLAUDE.md`, `README.md` 等入口文件；7/7 流程真机跑通 |
| 2 | `python3 tools/run_daily_all.py` 一键执行所有流程，`logs/` 产出 JSON 日志 |
| 3 | 遇到广告弹窗能自动关闭；某步骤失败后能重试或跳过而不是静默卡住 |
| 4 | 每天早上 8:30 自动执行，执行结果推送通知 |

## 约束与假设

- 设备固定为 ZY22LJC9ST，暂不考虑多设备
- 坐标基于 1280x575 基准，设备不换就不需要重录
- Phase 1.2 需要真机操作（录制坐标），无法纯离线完成
- Phase 3 的模板采集同样需要真机截图
- Phase 4 假设电脑全天开机、设备 USB 连接稳定

## 实施建议

- Phase 1 + 2 可在 1-2 个工作日内完成（代码改动量小，主要是文件整理和脚本编写）
- Phase 3 需要 2-3 天（模板采集 + guardian 引擎编写 + 集成测试）
- Phase 4 需要 1 天（脚本编写 + cron 配置 + 通知接入）
- 总工期约 1 周
