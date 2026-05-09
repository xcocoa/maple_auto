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

## 设备参数 (ZY22LJC9ST)
- 屏幕: 2712x1220 (横屏)
- 基准: 1280x575
- 触摸面板: /dev/input/event10, X(0~19520), Y(0~43392)
- 映射: screenX = touch_y * 2712/43392, screenY = (19520-touch_x) * 1220/19520

## 坐标定位方法
1. **getevent 抓取** (最可靠): `python3 tools/locate_tap.py`
2. **OCR + y偏移**: OCR文字y + 22 ≈ 按钮真实y
3. **截图像素估算不可靠** — 偏差可达100px，禁止使用

## 已验证流程
| 流程 | 文件 | 状态 |
|------|------|------|
| 每日日常(公会+活动) | daily_tasks.yaml | ✅ |
| 每日签到 | daily_sign_in.yaml | ✅ |
| 邮件收取 | collect_mail.yaml | ✅ |
| 赠送人气 | send_popularity.yaml | ✅ |
| 星之力强化 | starforce_enhance.yaml | ✅ |
| 宝石副本 | gem_dungeon.yaml | 📝 2坐标待录制 |
| 天空岛领主狩猎 | sky_island_hunt.yaml | 📝 待验证 |

## 待完成
1. 宝石副本: 录制成长面板→"立即前往"和"入场"坐标
2. 天空岛领主狩猎: 端到端验证
3. 模板采集: 为 templates/{scenes,popups,buttons} 采集真机截图
4. 通知配置: 编辑 config/notify.yaml 填入 webhook URL
5. Crontab 安装: `crontab -e` 添加 `30 8 * * * /Users/xuzhengxin/Code/maple_auto/scripts/daily_cron.sh`

## 关键经验
- 中文输入: `adb shell cmd clipboard set "文字"` + `input keyevent 279` (PASTE)
- 关闭面板用具体X按钮坐标，不要用BACK键（可能退出游戏）
- on_fail=skip 的步骤不做截图差异校验
- 菜单需要滚动才能看到社交/成就等入口

## 运行命令
```bash
# 一键执行所有日常
python3 tools/run_daily_all.py -v

# 跳过指定流程
python3 tools/run_daily_all.py --skip gem_dungeon,sky_island_hunt

# 只执行指定流程
python3 tools/run_daily_all.py --only daily_tasks,collect_mail

# 真机运行单个流程
python3 tools/run_flow.py flows/daily_tasks.yaml -v

# 录制单个坐标
python3 tools/locate_tap.py --count 3

# 批量录制TODO坐标
python3 tools/batch_locate.py flows/gem_dungeon.yaml

# 运行测试
python3 -m pytest tests/ -v

# 定时执行 (crontab -e 添加)
# 30 8 * * * /Users/xuzhengxin/Code/maple_auto/scripts/daily_cron.sh
```
