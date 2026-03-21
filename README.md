# 🚀 冒险岛自动化 - 快速开始指南

## 项目位置
```
C:\Users\46269\maplem_auto\
```

---

## ⚡ 3 分钟快速启动

### 步骤 1：安装 Python（如果已安装可跳过）

双击运行：`install.bat`

或手动安装：
1. 访问 https://www.python.org/downloads/
2. 下载 Python 3.x
3. **安装时勾选 "Add Python to PATH"**
4. 安装完成后重启命令行

### 步骤 2：安装依赖库

打开命令行，执行：
```bash
pip install opencv-python numpy pillow -i https://pypi.tuna.tsinghua.edu.cn/simple
```

### 步骤 3：游戏截图

1. 打开 MuMu 模拟器
2. 启动冒险岛枫之传说
3. 进入肉鸽小游戏界面
4. 双击运行 `截图.bat`

---

## 🎯 制作模板图片（关键步骤）

### 需要制作的模板

| 文件名 | 说明 | 尺寸建议 |
|--------|------|----------|
| `monster.png` | 怪物图片 | 50x50 像素 |
| `victory.png` | 胜利/通关文字 | 200x100 像素 |
| `defeat.png` | 失败/出局文字 | 200x100 像素 |

### 如何制作

1. **运行坐标工具**
   ```bash
   python get_position.py
   ```

2. **点击图片上的怪物**，记录坐标

3. **用画图/PS 裁剪**：
   - 打开 `screen.png`
   - 裁剪出怪物图片
   - 保存为 `templates/monster.png`

4. **同样方法制作** 胜利、失败提示模板

---

## ▶️ 运行自动化

```bash
python maplem_auto.py
```

**停止**：按 `Ctrl + C`

---

## 🔧 配置参数

如果自动化效果不好，修改这些参数：

### 在 `maplem_auto.py` 中调整

```python
# 图像匹配阈值（0.6-0.9）
MATCH_THRESHOLD = 0.8  # 调低更容易匹配

# 血量条位置（需要根据游戏测量）
self.HP_BAR_X1, self.HP_BAR_Y1 = 50, 50
self.HP_BAR_X2, self.HP_BAR_Y2 = 200, 80

# 技能栏位置
skill_positions = [
    (500, 1100),  # 技能 1
    (600, 1100),  # 技能 2
    (700, 1100),  # 技能 3
]
```

---

## 📋 检查清单

开始自动化前，确保：

- [ ] Python 已安装
- [ ] 依赖库已安装（opencv-python 等）
- [ ] 模拟器已启动
- [ ] 冒险岛已打开并进入肉鸽小游戏
- [ ] 模板图片已制作并放入 templates 文件夹
- [ ] 用 `get_position.py` 测量了关键位置坐标

---

## ❓ 常见问题

### Q: 找不到怪物？
- 检查 `templates/monster.png` 是否存在
- 降低 `MATCH_THRESHOLD` 到 0.6
- 确保模板图片清晰

### Q: 点击位置不对？
- 用 `get_position.py` 重新测量技能栏位置
- 确认模拟器分辨率是 720x1280

### Q: Python 命令找不到？
- 重新安装 Python，确保勾选 "Add to PATH"
- 或改用完整路径：`C:\Users\你的用户名\AppData\Local\Programs\Python\Python3x\python.exe`

---

## 📞 需要帮助？

告诉我你遇到的问题，我会帮你解决！
