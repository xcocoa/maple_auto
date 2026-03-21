# 冒险岛肉鸽自动化 - 架构设计文档

## 1. 整体架构图

```
┌─────────────────────────────────────────────────────────────┐
│                      main.py (入口)                          │
└─────────────────────────┬───────────────────────────────────┘
                          │
        ┌─────────────────┼─────────────────┐
        │                 │                 │
        ▼                 ▼                 ▼
┌───────────────┐  ┌───────────────┐  ┌───────────────┐
│   GameState   │  │  GameConfig   │  │    Logger     │
│   (状态机)    │  │   (配置管理)   │  │   (日志系统)  │
└───────┬───────┘  └───────────────┘  └───────────────┘
        │
        ├──────────────────────────────────────────┐
        │                  │                       │
        ▼                  ▼                       ▼
┌───────────────┐  ┌───────────────┐  ┌───────────────┐
│   Minimap     │  │   Combat      │  │   Navigation  │
│   (小地图)    │  │   (战斗)      │  │   (寻路)      │
└───────┬───────┘  └───────┬───────┘  └───────┬───────┘
        │                  │                  │
        ▼                  ▼                  ▼
  ┌───────────┐      ┌───────────┐      ┌───────────┐
  │ - 玩家     │      │ - 技能    │      │ - 移动    │
  │ - 怪物     │      │ - 攻击    │      │ - 跳跃    │
  │ - NPC      │      │ - 躲避    │      │ - 寻路    │
  └───────────┘      └───────────┘      └───────────┘
```

## 2. 模块职责

### 2.1 core/ 核心模块

| 文件 | 职责 | 可扩展点 |
|------|------|----------|
| `adb.py` | ADB 通信封装 | 支持其他连接方式 (如 iOS) |
| `config.py` | 配置管理 | 支持热加载、多配置切换 |
| `logger.py` | 日志系统 | 支持文件/网络日志 |
| `state.py` | 游戏状态机 | 添加新状态 |

### 2.2 modules/ 功能模块

| 文件 | 职责 | 接口 |
|------|------|------|
| `minimap.py` | 小地图分析 | `find_player()`, `find_monsters()`, `find_npc()` |
| `combat.py` | 战斗控制 | `attack()`, `dodge()`, `use_skill()` |
| `navigation.py` | 寻路移动 | `move_to()`, `jump()`, `explore()` |
| `skill.py` | 技能管理 | `detect_skills()`, `get_available_skills()` |

### 2.3 games/ 游戏特定实现

| 文件 | 职责 |
|------|------|
| `roguelike.py` | 肉鸽游戏逻辑 |
| `daily.py` | 日常任务逻辑 |

## 3. 状态机设计

```
                    ┌─────────┐
                    │  IDLE   │
                    └────┬────┘
                         │ 开始
                         ▼
                    ┌─────────────┐
                    │   SEARCH    │
                    └──────┬──────┘
                           │ 发现怪物
                           ▼
┌─────────┐      ┌─────────────┐      ┌─────────┐
│  FAIL   │◄─────│   FIGHT     │─────►│  EXPLORE │
└─────────┘  失败  └─────┬───────┘      └────┬────┘
                         │ 清空              │ 发现
                         ▼                   │
                   ┌─────────────┐           │
                   │  FIND_NPC   │◄──────────┘
                   └─────┬───────┘
                         │ 发现 NPC
                         ▼
                   ┌─────────────┐
                   │ INTERACT_NPC│
                   └─────┬───────┘
                         │ 交互完成
                         ▼
                   ┌─────────────┐
                   │ FIND_PORTAL │
                   └─────┬───────┘
                         │ 发现传送门
                         ▼
                   ┌─────────────┐
                   │ ENTER_PORTAL│
                   └─────┬───────┘
                         │ 进入成功
                         ▼
                   ┌─────────────┐
                   │   SEARCH    │ (下一关)
                   └─────────────┘
```

### 状态说明

| 状态 | 说明 | 转移条件 |
|------|------|----------|
| SEARCH | 搜索怪物 | 发现怪物 → FIGHT |
| FIGHT | 战斗 | 怪物清空 → FIND_NPC |
| EXPLORE | 探索 | 发现 NPC → FIND_NPC |
| FIND_NPC | 寻找 NPC | 发现 NPC → INTERACT_NPC |
| INTERACT_NPC | 与 NPC 交互 | 交互完成 → FIND_PORTAL |
| FIND_PORTAL | 寻找传送门 | 发现传送门 → ENTER_PORTAL |
| ENTER_PORTAL | 进入传送门 | 到达并按下方向键 → SEARCH (下一关) |

## 4. 配置文件结构

```yaml
# config/roguelike.yaml
device:
  id: "emulator-5560"
  name: "XZX-2"

minimap:
  x1: 900
  y1: 20
  x2: 1260
  y2: 180

colors:
  player:    # 黄色
    lower: [20, 150, 150]
    upper: [35, 255, 255]
  monster:   # 红色
    lower1: [0, 150, 150]
    upper1: [15, 255, 255]
    lower2: [160, 150, 150]
    upper2: [180, 255, 255]
  npc:       # 绿色
    lower: [50, 150, 150]
    upper: [70, 255, 255]

skills:
  positions:
    - [980, 620]
    - [1100, 580]
    - [1100, 680]
  jump: [1200, 630]

combat:
  attack_interval: 0.3
  move_interval: 0.1
  jump_cooldown: 0.6
```

## 5. 核心接口定义

### 5.1 检测器接口

```python
class Detector(ABC):
    """检测器基类"""

    @abstractmethod
    def detect(self, screenshot) -> Any:
        """检测并返回结果"""
        pass

    @abstractmethod
    def validate(self, result) -> bool:
        """验证检测结果是否有效"""
        pass
```

### 5.2 执行器接口

```python
class Executor(ABC):
    """执行器基类"""

    @abstractmethod
    def execute(self, *args, **kwargs) -> bool:
        """执行动作并返回成功状态"""
        pass
```

### 5.3 状态接口

```python
class State(ABC):
    """状态基类"""

    @abstractmethod
    def enter(self):
        """进入状态时调用"""
        pass

    @abstractmethod
    def update(self, context) -> Optional[State]:
        """每帧更新，返回下一个状态"""
        pass

    @abstractmethod
    def exit(self):
        """离开状态时调用"""
        pass
```

## 6. 目录结构

```
maplem_auto/
├── main.py                 # 入口
├── requirements.txt        # 依赖
├── README.md              # 使用说明
│
├── config/                # 配置文件
│   ├── default.yaml
│   └── roguelike.yaml
│
├── core/                  # 核心模块
│   ├── __init__.py
│   ├── adb.py
│   ├── config.py
│   ├── logger.py
│   └── state.py
│
├── modules/               # 功能模块
│   ├── __init__.py
│   ├── minimap.py
│   ├── combat.py
│   ├── navigation.py
│   └── skill.py
│
├── games/                 # 游戏逻辑
│   ├── __init__.py
│   └── roguelike.py
│
├── tests/                 # 测试
│   ├── test_minimap.py
│   ├── test_combat.py
│   └── test_skill.py
│
└── templates/             # 模板图片
└── logs/                  # 日志文件
```

## 7. 使用示例

```python
# main.py
from core.state import StateMachine
from games.roguelike import RoguelikeGame

def main():
    game = RoguelikeGame(
        device_id="emulator-5560",
        config_file="config/roguelike.yaml"
    )

    # 注册状态
    game.register_state("fight", FightState(game))
    game.register_state("explore", ExploreState(game))
    game.register_state("find_npc", FindNPCState(game))

    # 运行
    game.run()

if __name__ == "__main__":
    main()
```

## 8. 扩展指南

### 添加新检测目标

1. 在 `config/roguelike.yaml` 添加颜色配置
2. 在 `modules/minimap.py` 添加检测方法
3. 在 `tests/test_minimap.py` 添加测试

### 添加新状态

1. 创建 `games/states/new_state.py`
2. 继承 `State` 基类
3. 实现 `enter()`, `update()`, `exit()`
4. 在 `main.py` 注册

### 适配新游戏

1. 创建 `config/new_game.yaml`
2. 创建 `games/new_game.py`
3. 调整配置参数

## 9. 调试工具

```python
# debug/detector_test.py - 检测器测试工具
python -m debug.detector_test --target monster

# debug/skill_check.py - 技能检测工具
python -m debug.skill_check

# debug/minimap_viewer.py - 小地图查看器
python -m debug.minimap_viewer
```
