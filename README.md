# 冒险岛肉鸽自动化框架

基于 ADB + OpenCV 的冒险岛枫之传说肉鸽小游戏自动化框架。

## 项目结构

```
maple_auto/
├── main.py                  # 入口点
├── core/                    # 核心框架
│   ├── adb.py               # ADB 通信
│   ├── config.py            # 配置管理
│   └── logger.py            # 日志系统
├── modules/                 # 功能模块
│   ├── minimap.py           # 小地图检测
│   ├── combat.py            # 战斗系统
│   ├── navigation.py        # 寻路导航
│   ├── movement.py          # 移动控制
│   └── skill.py             # 技能管理
├── games/                   # 游戏逻辑
│   └── roguelike.py         # 肉鸽自动化
├── config/                  # 配置文件
│   └── roguelike.yaml       # 肉鸽参数配置
├── tests/                   # 测试
├── tools/                   # 工具
├── maple_auto_roguelike/    # 火鸡脚本引擎版本
└── huoji_source/            # 火鸡参考源码
```

## 快速开始

### 1. 安装依赖

```bash
pip install -r requirements.txt
```

### 2. 制作模板图片

运行坐标工具测量关键位置:

```bash
python get_position.py
```

需要制作的模板:

| 文件名 | 说明 | 尺寸建议 |
|--------|------|----------|
| monster.png | 怪物图片 | 50x50 像素 |
| victory.png | 胜利通关文字 | 200x100 像素 |
| defeat.png | 失败出局文字 | 200x100 像素 |

### 3. 运行

```bash
python main.py
```

停止: 按 Ctrl + C

## 配置参数

编辑 config/roguelike.yaml 调整游戏参数。

详细架构说明参见 ARCHITECTURE.md。

## 常见问题

### 找不到怪物?
- 检查 templates/monster.png 是否存在
- 降低匹配阈值到 0.6
- 确保模板图片清晰

### 点击位置不对?
- 用 get_position.py 重新测量技能栏位置
- 确认模拟器分辨率是 720x1280
