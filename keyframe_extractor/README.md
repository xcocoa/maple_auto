# 关键帧提取与场景回放引擎

从游戏录屏视频中自动提取关键帧（界面切换瞬间），推断点击位置，生成场景模板和自动化配置文件。

---

## 📁 文件说明

| 文件 | 大小 | 说明 |
|------|------|------|
| `video_extract_templates.py` | ~58KB | **核心文件**：视频关键帧提取 + 点击位置推断 + 配置生成 |
| `scene_player.py` | ~19KB | **场景回放引擎**：加载配置 → 截图匹配 → 自动点击 |
| `config.py` | ~2.4KB | **配置管理**：YAML 配置文件读写（仅 `get_device_id()` 用到） |
| `example_scenes.yaml` | ~12KB | **示例配置**：自动生成的场景流程配置文件 |

### 依赖关系

```
video_extract_templates.py  ← 主入口（提取 + 生成）
    ├── config.py            ← 仅用于读取设备ID（可选依赖，移除后用默认值）
    └── 输出 → example_scenes.yaml（场景配置）
                  └── scene_player.py ← 运行时加载配置，执行自动化
```

---

## 🔧 技术原理

### 1. 关键帧提取（video_extract_templates.py）

从视频中检测**界面切换瞬间**，核心算法：

#### 1.1 直方图差异检测

比较相邻帧的 **HSV 色彩直方图**，检测全局色彩分布变化：

```python
hsv1 = cv2.cvtColor(frame1, cv2.COLOR_BGR2HSV)
hsv2 = cv2.cvtColor(frame2, cv2.COLOR_BGR2HSV)
hist1 = cv2.calcHist([hsv1], [0], None, [180], [0, 180])
hist2 = cv2.calcHist([hsv2], [0], None, [180], [0, 180])
correlation = cv2.compareHist(hist1, hist2, cv2.HISTCMP_CORREL)
diff = 1.0 - correlation  # 差异值，越大说明变化越大
```

- **阈值**：`diff_threshold = 0.15`
- **优点**：对位移不敏感，能捕捉整体色调变化
- **缺点**：颜色相近的不同界面可能漏检

#### 1.2 结构差异检测

缩小后的**像素级比较**，检测布局结构变化：

```python
small1 = cv2.resize(frame1, (160, 90))
small2 = cv2.resize(frame2, (160, 90))
gray1 = cv2.cvtColor(small1, cv2.COLOR_BGR2GRAY)
gray2 = cv2.cvtColor(small2, cv2.COLOR_BGR2GRAY)
diff = cv2.absdiff(gray1, gray2)
structural_diff = np.count_nonzero(diff > 25) / diff.size
```

- **阈值**：`structural_threshold = 0.10`（10% 像素变化）
- **优点**：能检测到布局变化（弹窗、菜单）
- **缺点**：对小区域变化不敏感

#### 1.3 黑屏帧过滤

自动跳过加载过渡画面中的黑屏/暗帧：

```python
avg_brightness = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY).mean()
if avg_brightness < 20:  # 黑屏帧
    continue
```

#### 1.4 判定逻辑

两种检测方法是 **OR 关系**——任一超过阈值就认为是关键帧：

```
直方图差异 > 0.15  OR  结构差异 > 0.10  →  提取为关键帧
```

同时受**最小帧间隔**约束（默认 0.5~2.0 秒），避免在短时间内提取过多帧。

### 2. 点击位置推断

当没有 getevent 触摸日志时，通过帧间差异分析推断点击位置：

| 方法 | 置信度 | 适用场景 |
|------|--------|---------|
| `getevent_aligned` | 0.9 | 有触摸日志时，精确对齐 |
| `small_diff_center` | 0.7 | 小区域变化（按钮高亮），取差异中心 |
| `diff_centroid` | 0.5 | 中等差异，取差异区域质心 |
| `full_transition_heuristic` | 0.4 | 整个界面切换，启发式推断 |

### 3. 场景匹配（scene_player.py）

运行时使用三种方法综合判断当前截图是否匹配场景模板：

```python
combined_score = hist_score * 0.2 + struct_score * 0.4 + feature_score * 0.4
```

- **直方图相关性**（权重 0.2）：HSV 色彩空间的 H/S 通道
- **结构相似性**（权重 0.4）：缩小后像素级比较
- **ORB 特征匹配**（权重 0.4）：特征点检测 + BFMatcher + Lowe's ratio test

---

## 🚀 使用方法

### 环境依赖

```
opencv-python >= 4.8.0
numpy >= 1.24.0
pyyaml >= 6.0
```

### 方式一：从已有视频提取（推荐入门）

```bash
python video_extract_templates.py --auto path/to/video.mp4 --flow-name my_flow
```

输出：
- `templates/daily/scenes/` — 关键帧截图（1280×720）
- `config/daily_scenes.yaml` — 场景流程配置

### 方式二：ADB 录屏 + 自动生成（精度最高）

```bash
python video_extract_templates.py --auto --flow-name my_flow --device <device_id>
```

同时录制 `getevent` 触摸事件，点击坐标精度 0.9。

### 方式三：手动裁剪模式

```bash
# 先录屏
python video_extract_templates.py --record

# 再浏览关键帧，手动框选 UI 元素
python video_extract_templates.py --browse
```

### 运行自动化流程

```python
from scene_player import ScenePlayer

player = ScenePlayer()
player.load_config('example_scenes.yaml')
player.play('daily_sign_in', adb)  # adb 需支持 screenshot() 和 tap()
```

---

## 📊 核心函数索引

### video_extract_templates.py

| 函数 | 行号 | 说明 |
|------|------|------|
| `compute_frame_diff()` | 246 | 直方图差异计算 |
| `compute_structural_diff()` | 273 | 结构差异计算 |
| `extract_keyframes()` | 297 | 关键帧提取（手动模式） |
| `extract_keyframes_with_timestamps()` | 648 | 关键帧提取（全自动模式，含黑屏过滤） |
| `infer_tap_positions_from_frames()` | 452 | 从帧间差异推断点击位置 |
| `_analyze_frame_transition()` | 486 | 分析单次帧转换，推断点击坐标 |
| `auto_generate_scenes()` | 751 | 全自动生成场景素材和配置 |
| `auto_record_and_generate()` | 955 | ADB 录屏 + getevent + 自动生成 |
| `_parse_getevent_log()` | 1132 | 解析 getevent 触摸事件日志 |
| `_align_touch_events_to_keyframes()` | 1203 | 触摸事件与关键帧时间对齐 |
| `browse_keyframes()` | 1485 | 交互式关键帧浏览/裁剪 |

### scene_player.py

| 函数 | 说明 |
|------|------|
| `ScenePlayer.load_config()` | 加载 YAML 场景配置 |
| `ScenePlayer.match_scene()` | 截图与模板匹配（三种方法综合） |
| `ScenePlayer.play()` | 执行场景流程 |
| `ScenePlayer._wait_for_scene()` | 等待指定场景出现 |
| `ScenePlayer._histogram_similarity()` | 直方图相似度 |
| `ScenePlayer._structural_similarity()` | 结构相似度 |
| `ScenePlayer._feature_similarity()` | ORB 特征匹配相似度 |

---

## 📋 配置文件格式（YAML）

```yaml
global:
  scenes_dir: templates/daily/scenes   # 场景截图目录
  match_threshold: 0.7                 # 默认匹配阈值
  default_wait: 1.0                    # 默认等待时间

flows:
  flow_name:
    description: "流程描述"
    loop: false
    max_loops: 1
    actions:
      - scene_id: step_0               # 步骤ID
        scene_template: scene_000.png  # 场景模板图片
        tap_x: 640                     # 点击 X（基准 1280x720）
        tap_y: 360                     # 点击 Y
        description: "步骤描述"
        wait_after: 1.5                # 点击后等待（秒）
        timeout: 10.0                  # 等待场景超时（秒）
        match_threshold: 0.65          # 匹配阈值
        optional: false                # 是否可选
```
