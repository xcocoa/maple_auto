# Maple Auto - 项目上下文

## 项目概述
冒险岛手游（MapleStory Mobile）日常任务自动化工具。通过 ADB 控制真机执行每日任务。

## 架构
- **ScaledADB** (`core/scaled_adb.py`): 全屏缩放适配层，base_w=1280, base_h=0(自适应575)
- **Flow YAML** (`flows/`): 声明式任务流程定义
- **Player** (`engine/player.py`): 流程执行引擎，支持步骤延迟、截图差异校验、OCR文字验证
- **Guardian** (`engine/guardian.py`): 全局异常处理器，弹窗检测/卡死检测/自动恢复
- **RunLogger** (`engine/run_logger.py`): 运行日志持久化（JSON）
- **坐标定位** (`tools/locate_tap.py`): getevent 触摸坐标抓取工具
- **混合定位**: 优先模板匹配，失败回退到固定坐标（向后兼容）
- **ocr_tap 动作**: 通过 PaddleOCR 识别屏幕文字并点击（用于菜单按钮位置不固定的场景）

## 设备参数 (ZY22LJC9ST)
- 型号: Motorola
- 系统: Android 15 (SDK 35)
- 屏幕: 2712x1220 (横屏)
- 基准: 1280x575
- 触摸面板: /dev/input/event10, X(0~19520), Y(0~43392)
- 映射: screenX = touch_y * 2712/43392, screenY = (19520-touch_x) * 1220/19520
- 输入法: 搜狗输入法 (com.sohu.inputmethod.sogou.moto) v11.41

## 坐标定位方法
1. **getevent 抓取** (最可靠): `python3 tools/locate_tap.py`
2. **OCR 识别文字点击** (`ocr_tap`): 适合菜单按钮位置随滚动变化的场景
3. **截图像素估算不可靠** — 偏差可达100px，禁止使用

## 已验证流程（5/5 全部通过）
| 流程 | 文件 | 状态 |
|------|------|------|
| 工会签到 | daily_tasks.yaml | ✅ (ocr_tap识别公会) |
| 宝石副本 | gem_dungeon.yaml | ✅ (含超难选择+确认弹框) |
| 天空岛领主狩猎 | sky_island_hunt.yaml | ✅ (双次滑动) |
| 星之力强化 | starforce_enhance.yaml | ✅ |
| 邮件收取 | collect_mail.yaml | ✅ (默认全选，直接领取) |

## 暂停的流程
| 流程 | 文件 | 问题 |
|------|------|------|
| 赠送人气 | send_popularity.yaml | ⏸️ 中文输入问题，见下方说明 |
| 每日签到 | daily_sign_in.yaml | 已移除（与工会签到重复） |

## 已知问题与关键经验

### Android 15 中文输入问题（重要！）
- **`cmd clipboard` 命令在 Android 15 (SDK 35) 上已被移除**，执行返回 "No shell command implementation"
- `keyevent 279` (PASTE) 在搜狗输入法下不触发粘贴操作
- `input text` 不支持中文（NullPointerException）
- 已安装 `com.maple.cliphelper` helper app（前台Activity方式设置剪贴板），剪贴板可设置但搜狗仍不响应粘贴键
- **结论**: 赠送人气流程的中文昵称输入暂时无法工作，需要找到让搜狗输入法响应粘贴的方法或安装支持 broadcast 输入的 ADB Keyboard
- CLAUDE.md 中之前记录的 "cmd clipboard set + keyevent 279" 方式在 Android 15 上已失效

### PaddleOCR 注意事项
- 必须关闭文档预处理：`use_doc_orientation_classify=False, use_doc_unwarping=False, use_textline_orientation=False`
- 否则 `dt_polys` 返回的坐标会超出原始图片尺寸（PaddleOCR v5 会旋转图片）
- OCR 单次识别耗时约 9-10 秒

### 其他经验
- 关闭面板用具体X按钮坐标 (1122, 32)，不要用BACK键（可能退出游戏）
- on_fail=skip 的步骤不做截图差异校验
- 菜单需要滚动才能看到社交等入口，用 ocr_tap 代替固定坐标更可靠
- Player 支持 swipe 动作（从坐标向上滑200px）
- 流程间 `reset_to_main_screen` 通过点击关闭按钮(1122,32)来关闭面板
- Guardian 卡死检测在流程转换时正常工作（连续相同帧检测+BACK恢复）
- 切换输入法后必须切回搜狗：`adb shell ime set com.sohu.inputmethod.sogou.moto/com.sohu.inputmethod.sogou.SogouIME`

## 执行顺序
1. 工会签到 → 2. 宝石副本 → 3. 天空岛领主 → 4. 星之力强化 → 5. 邮件收取

## 待完成
1. **赠送人气**: 解决 Android 15 中文输入问题（需要 ADB Keyboard 或其他方案）
2. **通知配置**: 编辑 config/notify.yaml 填入 webhook URL
3. **弹窗模板采集**: 遇到广告/断线弹窗时截图存入 templates/popups/

## Crontab 定时任务
已安装: `0 3 * * * /Users/xuzhengxin/Code/maple_auto/scripts/daily_cron.sh`
每天凌晨 3:00 自动执行所有日常流程。

## 运行命令
```bash
# 一键执行所有日常（5个流程，约4.5分钟）
python3 tools/run_daily_all.py -v

# 跳过指定流程
python3 tools/run_daily_all.py --skip gem_dungeon,sky_island_hunt

# 只执行指定流程
python3 tools/run_daily_all.py --only daily_tasks,collect_mail

# 真机运行单个流程
python3 tools/run_flow.py flows/daily_tasks.yaml -v

# 录制单个坐标
python3 tools/locate_tap.py --count 3

# 运行测试
python3 -m pytest tests/ -v

# 查看执行日志
ls logs/*.json
```
