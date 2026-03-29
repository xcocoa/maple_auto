# 截图资源目录

## 目录结构

```
screenshots/
├── templates/     # 用于模板匹配的 UI 元素模板
├── game_ui/       # 游戏界面截图（用于参考和模板制作）
├── debug/         # 开发调试截图
└── reference/     # 参考截图（待收集）
```

## 已有模板 (templates/)

### 小地图相关
- minimap.png, minimap_*.png - 小地图区域模板
- red_mask*.png - 红色怪物标记 mask
- yellow_mask_v3.png - 黄色标记 mask

### 怪物相关
- monster*.png - 怪物位置检测模板

### UI 区域
- skill_area.png - 技能按钮区域
- time_area.png, wave_info.png - 时间/波次信息
- top_right*.png - 右上角 UI 区域

## 缺少的模板

### UI 状态检测 (ui_detector.py 需要)

| 模板名称 | 用途 | 状态 |
|----------|------|------|
| main_menu.png | 检测游戏主菜单 | ❌ 缺少 |
| skill_select.png | 检测技能选择界面 | ❌ 缺少 |
| shop.png | 检测商店界面 | ❌ 缺少 |
| game_over.png | 检测死亡/结束界面 | ❌ 缺少 |
| dialog.png | 检测对话框 | ❌ 缺少 |

### 按钮模板

| 模板名称 | 用途 | 状态 |
|----------|------|------|
| button_start.png | 开始游戏按钮 | ❌ 缺少 |
| button_confirm.png | 确认按钮 | ❌ 缺少 |
| button_cancel.png | 取消/关闭按钮 | ❌ 缺少 |
| button_jump.png | 跳跃按钮 | ❌ 缺少 |

### 技能图标模板 (skill_selector.py 需要)

| 模板名称 | 用途 | 状态 |
|----------|------|------|
| skill_attack_boost.png | 攻击提升 | ❌ 缺少 |
| skill_damage_increase.png | 伤害增加 | ❌ 缺少 |
| skill_critical_boost.png | 暴击提升 | ❌ 缺少 |
| skill_heal.png | 治疗 | ❌ 缺少 |
| skill_lifesteal.png | 吸血 | ❌ 缺少 |
| skill_defense_boost.png | 防御提升 | ❌ 缺少 |
| skill_shield.png | 护盾 | ❌ 缺少 |
| skill_speed_boost.png | 速度提升 | ❌ 缺少 |

### 路线选择模板 (skill_selector.py 需要)

| 模板名称 | 用途 | 状态 |
|----------|------|------|
| route_boss.png | Boss 路线图标 | ❌ 缺少 |
| route_elite.png | 精英怪路线图标 | ❌ 缺少 |
| route_shop.png | 商店路线图标 | ❌ 缺少 |
| route_treasure.png | 宝箱路线图标 | ❌ 缺少 |
| route_rest.png | 休息路线图标 | ❌ 缺少 |

### 血条/蓝条模板

| 模板名称 | 用途 | 状态 |
|----------|------|------|
| hp_bar.png | 血条区域 | ❌ 缺少 |
| mp_bar.png | 蓝条区域 | ❌ 缺少 |

## 收集建议

1. **技能选择界面** - 战斗结束后截图，截取 2-4 个技能卡片
2. **路线选择界面** - 关卡结束后的路线选择截图
3. **商店界面** - 进入商店时的完整截图
4. **主菜单** - 游戏启动后的主界面
5. **死亡界面** - 游戏失败时的界面

## 模板制作规范

1. 尽量使用最小有效区域（减少匹配计算量）
2. 保持模板特征明显（避免纯色背景）
3. 推荐尺寸：50x50 ~ 100x100 像素
4. 格式：PNG（支持透明度）