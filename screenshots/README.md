# 截图资源目录

## 目录结构

```
screenshots/
├── templates/         # 用于模板匹配的 UI 元素模板
│   └── selected/      # 从录屏提取的精选模板
├── game_ui/           # 游戏界面截图（用于参考）
├── debug/             # 开发调试截图
└── reference/         # 关键帧提取结果
```

## 视频分析结果

### 视频1: `屏幕录制 2026-03-21 163120.mp4` (854x480, 260秒)

| 时间点 | 检测状态 | 内容 |
|--------|----------|------|
| 0-11s | in_game_combat | 战斗中，有技能按钮 |
| 24-43s | skill_select/dialog | 技能选择界面（2-7个卡片） |
| 104-260s | dialog/main_menu | 主要是对话框和菜单界面 |

### 视频2: `屏幕录制 2026-03-29 175520.mp4` (854x480, 213秒)

| 时间点 | 检测状态 | 内容 |
|--------|----------|------|
| 0-2s | in_game_combat | 战斗中 |
| 6-7s | unknown | **关卡选择界面** ✅ |
| 10-21s | skill_select | 技能选择界面 |
| 39-40s, 85-86s, 211s | main_menu | **游戏主菜单** ✅ |

## 已有模板 (templates/)

### 原有模板
| 文件名 | 用途 |
|--------|------|
| minimap.png | 小地图区域 |
| minimap_correct.png, minimap_final.png | 小地图精确版 |
| monster.png, monster1.png, monster2.png | 怪物检测模板 |
| skill_area.png | 技能区域 |
| time_area.png, wave_info.png | 时间/波次信息 |
| top_right.png, top_right_full.png | 右上角 UI |

### 精选模板 (templates/selected/) - 2026-03-29 更新

| 文件名 | 用途 | 状态 |
|--------|------|------|
| main_menu.png | 游戏主菜单 | ✅ |
| main_menu_buttons.png | 主菜单按钮区域 | ✅ |
| route_select.png | 关卡/路线选择 | ✅ |
| route_select_top.png | 路线上半部分 | ✅ |
| skill_select_full.png | 技能选择完整界面 | ✅ |
| skill_select_new.png | 技能选择新版 | ✅ |
| skill_card_1/2/3.png | 单个技能卡片 | ✅ |
| minimap_game.png | 游戏中小地图 | ✅ |
| hp_mp_bar.png | 血条/蓝条区域 | ✅ |
| skill_buttons.png | 技能按钮区域 | ✅ |
| dialog_bottom.png | 底部对话框 | ✅ |
| **game_complete.png** | **游戏完成界面** | ✅ 新增 |
| **button_start_v2.png** | **开始按钮** | ✅ 已裁剪 (285x70) |
| **button_attack.png** | **攻击按钮** | ✅ 已裁剪 (80x40) |
| **button_confirm.png** | **确认按钮** | ✅ 已裁剪 (200x45) |
| skill_buttons_area.png | 技能按钮区域 | ✅ |
| game_full_full_sample_000.png | 完整游戏界面样本 | ✅ |
| minimap_corner_full_sample_000.png | 小地图角落样本 | ✅ |
| bottom_controls_full_sample_000.png | 底部控制区样本 | ✅ |
| top_status_full_sample_000.png | 顶部状态区样本 | ✅ |

## 模板状态总结 (2026-03-29)

### ✅ 已完成的核心模板

| 界面类型 | 模板文件 | 覆盖场景 |
|----------|----------|----------|
| 主菜单 | main_menu.png, button_start_v2.png | 游戏启动/返回 |
| 路线选择 | route_select.png | 关卡选择 |
| 技能选择 | skill_select_full.png, skill_card_*.png | 技能升级选择 |
| 游戏战斗 | minimap_game.png, skill_buttons.png, button_attack.png | 战斗中检测 |
| 游戏完成 | game_complete.png, button_confirm.png | 结算界面 |
| 对话框 | dialog_bottom.png | NPC对话 |

**模板匹配测试：** 所有按钮模板匹配度均为 1.0（完美匹配）

### ⏳ 暂不处理

| 模板名称 | 说明 |
|----------|------|
| skill_shop.png | 技能商店界面（用户说先不考虑）|
| game_over.png | 无死亡界面（用户确认不存在）|
| route_boss/elite/shop.png | 路线图标（可从 route_select 裁剪）|

## 模板使用示例

```python
from modules.template_matcher import TemplateMatcher

matcher = TemplateMatcher()

# 检测主菜单
result = matcher.match_template_file(
    screenshot,
    "screenshots/templates/selected/main_menu.png",
    threshold=0.8
)
if result:
    print("检测到主菜单")

# 检测技能选择界面
result = matcher.match_template_file(
    screenshot,
    "screenshots/templates/selected/skill_select_full.png",
    threshold=0.8
)
if result:
    print("检测到技能选择界面")
```

## 下一步建议

1. ✅ **裁剪按钮模板** - 已完成
2. **识别技能图标** - 从 skill_card 中识别具体技能类型
3. **集成到 Android App** - 将模板打包到 app_android 资源中

## 模板制作规范

1. 尽量使用最小有效区域（减少匹配计算量）
2. 保持模板特征明显（避免纯色背景）
3. 推荐尺寸：50x50 ~ 150x150 像素
4. 格式：PNG（支持透明度）
5. 命名：`类别_名称.png`，如 `skill_attack_boost.png`