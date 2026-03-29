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

从录屏 `屏幕录制 2026-03-21 163120.mp4` (854x480, 260秒) 中提取：

| 时间点 | 检测状态 | 内容 |
|--------|----------|------|
| 0-11s | in_game_combat | 战斗中，有技能按钮 |
| 24-43s | skill_select/dialog | 技能选择界面（2-7个卡片） |
| 104-260s | dialog/main_menu | 主要是对话框和菜单界面 |

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

| 文件名 | 尺寸 | 用途 |
|--------|------|------|
| skill_select_full.png | 569x288 | 技能选择完整界面 ✅ |
| skill_card_1/2/3.png | 95x288 | 单个技能卡片 ✅ |
| minimap_game.png | 214x120 | 游戏中小地图 ✅ |
| hp_mp_bar.png | 230x80 | 血条/蓝条区域 ✅ |
| skill_buttons.png | 427x120 | 技能按钮区域 ✅ |
| dialog_bottom.png | 427x160 | 底部对话框 ✅ |
| game_full_*.png | 854x480 | 完整游戏画面 |
| bottom_controls_*.png | 854x120 | 底部控制区域 |
| top_status_*.png | 284x60 | 顶部状态栏 |
| minimap_corner_*.png | 214x120 | 小地图角落区域 |

## 缺少的模板

### ⚠️ 重要：录屏中未出现

| 模板名称 | 用途 | 状态 |
|----------|------|------|
| main_menu.png | 游戏主菜单 | ❌ 未在录屏中出现 |
| shop.png | 商店界面 | ❌ 未在录屏中出现 |
| game_over.png | 死亡/结束界面 | ❌ 未在录屏中出现 |
| route_select.png | 路线选择界面 | ❌ 未在录屏中出现 |

### 按钮模板（需从游戏中裁剪）

| 模板名称 | 用途 | 状态 |
|----------|------|------|
| button_start.png | 开始游戏按钮 | ❌ 需手动裁剪 |
| button_confirm.png | 确认按钮 | ❌ 需手动裁剪 |
| button_cancel.png | 取消按钮 | ❌ 需手动裁剪 |
| button_jump.png | 跳跃按钮 | ❌ 需手动裁剪 |

### 技能图标（需识别具体技能）

| 模板名称 | 用途 | 状态 |
|----------|------|------|
| skill_attack_boost.png | 攻击提升图标 | ❌ 需从技能卡片中提取 |
| skill_heal.png | 治疗图标 | ❌ 需从技能卡片中提取 |
| skill_defense.png | 防御图标 | ❌ 需从技能卡片中提取 |
| ... | 其他技能 | ❌ 待识别 |

### 路线选择模板

| 模板名称 | 用途 | 状态 |
|----------|------|------|
| route_boss.png | Boss 路线 | ❌ 缺少 |
| route_elite.png | 精英怪路线 | ❌ 缺少 |
| route_shop.png | 商店路线 | ❌ 缺少 |
| route_treasure.png | 宝箱路线 | ❌ 缺少 |
| route_rest.png | 休息路线 | ❌ 缺少 |

## 下一步建议

1. **补充关键界面截图**
   - 游戏主菜单
   - 路线选择界面（关卡结束后）
   - 商店界面
   - 死亡/失败界面

2. **识别技能图标**
   - 从已有的 `skill_card_*.png` 中识别具体技能
   - 为每个技能类型创建独立模板

3. **裁剪按钮模板**
   - 从 `bottom_controls_*.png` 中裁剪各个按钮

## 模板制作规范

1. 尽量使用最小有效区域（减少匹配计算量）
2. 保持模板特征明显（避免纯色背景）
3. 推荐尺寸：50x50 ~ 150x150 像素
4. 格式：PNG（支持透明度）
5. 命名：`类别_名称.png`，如 `skill_attack_boost.png`