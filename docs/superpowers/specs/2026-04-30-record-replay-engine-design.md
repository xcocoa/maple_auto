# 日常自动化录制回放引擎设计

日期: 2026-04-30
状态: 已批准

## 背景与目标

### 当前痛点

1. **功能不稳定** — 硬编码坐标、脆弱的模板匹配导致自动化经常失败
2. **开发效率低** — 每适配一个新任务需要写大量代码，调试困难
3. **真机依赖严重** — 开发调试几乎每步都需要连接真机反复验证

### 目标

- 新任务只需真机录制一次即可自动化，不写代码
- 录制后可完全离线测试、调试流程逻辑
- 运行时带状态验证和重试机制，大幅提升稳定性
- 临时活动也能几分钟内适配

### 范围

本次仅覆盖 daily（日常任务）模式中的 UI 点击流程类和临时活动类任务。挂机打怪模式保留现有实现。

---

## 整体架构

```
┌──────────────────────────────────────────────────────────────┐
│                     maple_auto (daily)                        │
├──────────────────────────────────────────────────────────────┤
│                                                              │
│  ┌──────────────┐     ┌──────────────┐     ┌─────────────┐  │
│  │   Recorder   │────>│  Flow YAML   │────>│   Player    │  │
│  │  (录制工具)   │     │  (流程文件)   │     │  (回放引擎)  │  │
│  └──────────────┘     └──────────────┘     └──────┬──────┘  │
│                                                    │         │
│  ┌──────────────┐     ┌──────────────┐            │         │
│  │ Offline Test │<────│ Screenshot   │            │         │
│  │ (离线测试)    │     │ Library      │            │         │
│  └──────────────┘     │ (截图库)      │            │         │
│                       └──────────────┘            │         │
│                                                    v         │
│  ┌───────────────────────────────────────────────────────┐  │
│  │              ScaledADB (分辨率适配层)                    │  │
│  └───────────────────────────────────────────────────────┘  │
│                            │                                 │
│                            v                                 │
│                     ┌─────────────┐                          │
│                     │    Device   │                          │
│                     └─────────────┘                          │
└──────────────────────────────────────────────────────────────┘
```

### 三大组件

| 组件 | 职责 | 使用时机 |
|------|------|----------|
| **Recorder** | 连接真机，录制手动操作（截图+坐标+时间戳） | 开发新任务时，只需一次 |
| **Flow YAML** | 描述任务流程的配置文件（步骤、预期场景、动作、验证） | 每个任务一个文件 |
| **Player** | 读取 Flow YAML，逐步执行，带状态验证和重试 | 运行时自动执行 |

附加组件：
- **Screenshot Library** — 录制时自动保存的截图集
- **Offline Test** — 用截图库模拟设备，离线验证 Player 逻辑

---

## Flow YAML 格式

每个日常任务对应一个 Flow 文件，描述完整的操作步骤：

```yaml
# flows/daily_sign_in.yaml
name: daily_sign_in
display_name: 每日签到
timeout: 60  # 整个流程超时（秒）
max_retries: 2  # 整个流程失败后最大重试次数

steps:
  - id: open_menu
    description: "点击右上角打开主菜单"
    expect_scene: "main_screen"
    action:
      type: tap
      target: "menu_button"
    verify:
      scene: "main_menu"
      timeout: 3.0
    on_fail: retry  # retry | skip | abort

  - id: click_sign_in
    description: "点击签到入口"
    expect_scene: "main_menu"
    action:
      type: tap
      target: "sign_in_entry"
    verify:
      scene: "sign_in_page"
      timeout: 3.0
    on_fail: retry

  - id: confirm_sign_in
    description: "点击签到按钮"
    expect_scene: "sign_in_page"
    action:
      type: tap
      target: "sign_in_button"
    verify:
      scene: "sign_in_reward"
      timeout: 3.0
    on_fail: skip  # 可能已经签到过了

  - id: close_reward
    description: "关闭奖励弹窗"
    expect_scene: "sign_in_reward"
    action:
      type: tap
      target: "close_button"
    verify:
      scene: "main_screen"
      timeout: 3.0
    on_fail: retry

# 场景定义（模板 + 特征）
scenes:
  main_screen:
    templates: ["scenes/main_screen_01.png", "scenes/main_screen_02.png"]
    threshold: 0.7
  main_menu:
    templates: ["scenes/main_menu_01.png"]
    threshold: 0.75
  sign_in_page:
    templates: ["scenes/sign_in_page_01.png"]
    threshold: 0.7
  sign_in_reward:
    templates: ["scenes/sign_in_reward_01.png"]
    threshold: 0.65

# 点击目标定义（模板 or 固定坐标）
targets:
  menu_button:
    template: "targets/menu_button.png"
    fallback_pos: [1150, 100]
    threshold: 0.75
  sign_in_entry:
    template: "targets/sign_in_entry.png"
    fallback_pos: [610, 450]
  sign_in_button:
    template: "targets/sign_in_button.png"
    fallback_pos: [640, 550]
  close_button:
    template: "targets/close_button.png"
    fallback_pos: [640, 600]
```

### 设计要点

1. **场景验证** — 每步执行前确认当前在正确场景，执行后确认到达预期场景
2. **双重定位** — 目标优先用模板匹配（准确），备用固定坐标（兜底）
3. **多模板** — 每个场景可有多张模板（不同状态/时间的截图），提高识别率
4. **容错机制** — 每步可配置 on_fail（重试/跳过/中止）
5. **Recorder 自动生成** — 录制工具会自动产出这个 YAML + 对应截图

---

## Recorder（录制工具）

### 使用方式

```bash
python tools/recorder.py --task daily_sign_in
```

输出：
```
flows/daily_sign_in.yaml
screenshots/daily_sign_in/
  ├── scenes/
  │   ├── scene_01_main_screen.png
  │   ├── scene_02_main_menu.png
  │   └── scene_03_sign_in_page.png
  └── targets/
      ├── target_01_menu_button.png
      └── ...
```

### 工作原理

1. 持续截图（每 0.5s）
2. 监听 ADB input 事件（`adb shell getevent -lt`）
   - 检测 tap / swipe / long_press
3. 当检测到用户操作时：
   - 保存操作前的截图作为"场景截图"
   - 记录操作类型和坐标作为"动作"
   - 等待画面稳定后截图作为"验证截图"
4. 录制结束后：
   - 用"场景截图"差异自动分割步骤（SSIM 比较）
   - 从点击位置裁剪小区域作为"目标模板"（80x80 ~ 120x120 像素）
   - 自动生成 Flow YAML

### 实现细节

| 项目 | 实现方式 |
|------|----------|
| 监听触摸事件 | `adb shell getevent -lt` 解析 input 事件流 |
| 场景分割 | 比较连续截图的 SSIM，低于阈值则认为是新场景 |
| 目标模板裁剪 | 以点击坐标为中心，裁剪 80x80 ~ 120x120 像素区域 |
| 手动标注 | 录制后可手动调整 YAML 中的场景名/目标名使其更语义化 |

---

## Player（回放引擎）

### 执行逻辑

每一步的执行流程：

```
1. 检查前置场景
   ├─ 截图 → 与 expect_scene 的模板匹配
   ├─ 匹配成功 → 继续
   └─ 匹配失败 → 等待最多 N 秒 → 超时则触发 on_fail

2. 定位目标
   ├─ 用 target 模板在截图中搜索
   ├─ 找到 → 使用模板坐标
   └─ 找不到 → 使用 fallback_pos 备用坐标

3. 执行动作
   ├─ tap / swipe / long_press / wait
   └─ 应用 ScaledADB 坐标转换

4. 验证结果
   ├─ 等待画面变化（轮询截图）
   ├─ 与 verify.scene 模板匹配
   ├─ 匹配成功 → 进入下一步
   └─ 超时未匹配 → 触发 on_fail 策略
       ├─ retry: 重试当前步骤（最多 3 次）
       ├─ skip: 跳过，进入下一步
       └─ abort: 中止整个流程
```

### 关键特性

| 特性 | 说明 |
|------|------|
| 场景等待 | 不盲等固定时间，而是轮询截图直到场景出现 |
| 智能重试 | 重试前先检查是否回到了前一个场景（可能按钮没按到） |
| 全局异常检测 | 每次截图都检查是否出现"断线弹窗"、"错误对话框"等 |
| 执行日志 | 每步记录截图+结果，方便事后调试 |
| 进度回调 | 支持外部监控执行进度 |

---

## 离线测试框架

### 使用方式

```bash
python tools/test_flow.py flows/daily_sign_in.yaml
```

### 工作原理

1. 读取 Flow YAML
2. 用 MockADB 替换真实 ADB
   - `MockADB.screenshot()` 按顺序返回录制的截图
   - `MockADB.tap()` 记录但不执行（验证坐标正确性）
3. Player 正常运行流程
4. 报告每一步的匹配结果、定位结果、通过/失败

### MockADB

```python
class MockADB:
    """模拟设备，用截图序列驱动"""

    def __init__(self, screenshot_dir: str):
        self.screenshots = load_screenshots_in_order(screenshot_dir)
        self.current_index = 0
        self.tap_log = []

    def screenshot(self, force_refresh=False):
        if force_refresh:
            self.current_index += 1
        return self.screenshots[self.current_index]

    def tap(self, x, y):
        self.tap_log.append((x, y, self.current_index))
        self.current_index += 1
```

### 测试报告

```
=== Flow Test: daily_sign_in ===
Step 1: open_menu
  OK Scene match: main_screen (0.82)
  OK Target found: menu_button at (1148, 98)
  OK Verify: main_menu (0.79)

Step 2: click_sign_in
  OK Scene match: main_menu (0.85)
  WARN Target not found: sign_in_entry (using fallback 610, 450)
  OK Verify: sign_in_page (0.71)

Result: 4/4 steps PASSED
```

---

## 项目结构

```
maple_auto/
├── main.py                      # 入口（保持不变）
├── core/                        # 核心层
│   ├── adb.py                   # ADB 通信
│   ├── scaled_adb.py            # 分辨率适配（从 daily.py 提取）
│   ├── config.py                # 配置管理
│   └── logger.py                # 日志
│
├── engine/                      # 录制回放引擎（核心新增）
│   ├── recorder.py              # 录制工具
│   ├── player.py                # 回放引擎
│   ├── scene_matcher.py         # 场景匹配器
│   ├── target_locator.py        # 目标定位器
│   └── exceptions.py            # 全局异常处理（断线/错误弹窗）
│
├── flows/                       # Flow YAML 文件
│   ├── daily_sign_in.yaml
│   ├── collect_mail.yaml
│   ├── daily_quest.yaml
│   └── ...
│
├── screenshots/                 # 截图库（按任务组织）
│   ├── daily_sign_in/
│   │   ├── scenes/
│   │   └── targets/
│   └── collect_mail/
│       └── ...
│
├── games/                       # 游戏逻辑（简化）
│   ├── daily.py                 # 精简：只负责调度 Player 执行 flows
│   ├── roguelike.py             # 保持不变
│   └── pyramid.py               # 保持不变
│
├── modules/                     # 现有模块（保留有用的）
│   ├── minimap.py               # 小地图（挂机用）
│   ├── combat.py                # 战斗（挂机用）
│   └── ...
│
├── tools/                       # 工具
│   ├── recorder.py              # 录制入口脚本
│   └── test_flow.py             # 离线测试入口
│
├── tests/                       # 单元测试
│   ├── test_scene_matcher.py
│   ├── test_player.py
│   └── test_target_locator.py
│
└── config/
    └── daily.yaml               # 简化：只保留设备信息 + 任务列表
```

---

## 迁移策略

| 阶段 | 内容 | 目标 |
|------|------|------|
| Phase 1 | 搭建 engine/ 核心框架（Player + SceneMatcher + TargetLocator） | 可以手写 YAML 跑通一个简单流程 |
| Phase 2 | 实现 Recorder + MockADB 离线测试 | 可以录制并离线验证 |
| Phase 3 | 录制第一个真实任务（签到），调通整个链路 | 端到端验证 |
| Phase 4 | 逐步录制其他日常任务，替换旧 daily.py 逻辑 | 渐进替换 |

### 原则

- 不删除旧代码，新旧并存，逐步切换
- `games/daily.py` 最终变成薄薄一层：遍历 flows/ 目录，依次调 Player 执行
- 旧的 `modules/` 中的战斗/导航模块保留（挂机打怪仍需要）
- ScaledADB 从 daily.py 提取到 core/scaled_adb.py，作为公共组件
