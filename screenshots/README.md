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

### 从录屏提取的精选模板 (templates/selected/)

| 文件名 | 尺寸 | 用途 | 状态 |
|--------|------|------|------|
| main_menu.png | 854x480 | 游戏主菜单 | ✅ 新增 |
| main_menu_buttons.png | 854x240 | 主菜单按钮区域 | ✅ 新增 |
| route_select.png | 854x480 | 关卡/路线选择 | ✅ 新增 |
| route_select_top.png | 854x240 | 路线上半部分 | ✅ 新增 |
| skill_select_full.png | 569x288 | 技能选择完整界面 | ✅ |
| skill_card_1/2/3.png | 95x288 | 单个技能卡片 | ✅ |
| minimap_game.png | 214x120 | 游戏中小地图 | ✅ |
| hp_mp_bar.png | 230x80 | 血条/蓝条区域 | ✅ |
| skill_buttons.png | 427x120 | 技能按钮区域 | ✅ |
| dialog_bottom.png | 427x160 | 底部对话框 | ✅ |

## 仍缺少的模板

### ⚠️ 需要补充

| 模板名称 | 用途 | 状态 |
|----------|------|------|
| shop.png | 商店界面 | ❌ 缺少 |
| game_over.png | 死亡/结束界面 | ❌ 缺少 |
| route_boss.png | Boss 路线图标 | ❌ 缺少 |
| route_elite.png | 精英怪路线图标 | ❌ 缺少 |
| route_shop.png | 商店路线图标 | ❌ 缺少 |

### 按钮模板（可从现有截图裁剪）

| 模板名称 | 用途 | 状态 |
|----------|------|------|
| button_start.png | 开始游戏按钮 | ⚠️ 可从 main_menu 裁剪 |
| button_confirm.png | 确认按钮 | ⚠️ 可从 dialog 裁剪 |
| button_attack.png | 攻击按钮 | ⚠️ 可从 skill_buttons 裁剪 |
| button_skill_*.png | 技能按钮 | ⚠️ 可从 skill_buttons 裁剪 |

### 技能图标（需识别具体技能）

| 模板名称 | 用途 | 状态 |
|----------|------|------|
| skill_attack_boost.png | 攻击提升图标 | ⚠️ 需从技能卡片中识别 |
| skill_heal.png | 治疗图标 | ⚠️ 需从技能卡片中识别 |
| skill_defense.png | 防御图标 | ⚠️ 需从技能卡片中识别 |

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

1. **裁剪按钮模板** - 从 main_menu_buttons 和 skill_buttons 中裁剪
2. **识别技能图标** - 从 skill_card 中识别具体技能类型
3. **补充商店/死亡界面** - 需要新的录屏或截图

## 模板制作规范

1. 尽量使用最小有效区域（减少匹配计算量）
2. 保持模板特征明显（避免纯色背景）
3. 推荐尺寸：50x50 ~ 150x150 像素
4. 格式：PNG（支持透明度）
5. 命名：`类别_名称.png`，如 `skill_attack_boost.png`