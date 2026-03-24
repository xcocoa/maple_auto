# 火鸡 (Huoji) APK 深度技术分析 - 补充报告

**生成日期**: 2025年3月24日  
**基于**: Explore-2 详细源码分析  
**补充内容**: 无障碍服务、IPC通信、脚本引擎内核架构

---

## 一、无障碍服务 (Accessibility Service) 详解

### 1.1 服务类实现

**文件位置**: `com/cyjh/event/accessibility/Cservice.java`

```java
public class Cservice extends AccessibilityService {
    // 继承自 AccessibilityService 
    // 提供系统级的输入事件注入能力
    
    // 注册权限:
    // <uses-permission android:name="android.permission.BIND_ACCESSIBILITY_SERVICE"/>
}
```

### 1.2 手势注入实现

#### 点击/轻触 (Tap)
```
精度: 2x2 像素路径移动
持续时间: 可配置 (默认50ms)
坐标系: 屏幕绝对坐标
触发机制: 
  1. ACTION_DOWN 在目标坐标
  2. 2x2像素微小移动
  3. ACTION_UP 释放
实现: performGlobalAction() + GestureController
```

#### 滑动 (Swipe/Line Gesture)
```
起点坐标: (x1, y1)
终点坐标: (x2, y2)
插值: 直线路径插值 (Point A -> Point B)
步长: 默认10像素/步
持续时间: 路径长度/速度决定
实现: 
  1. 计算路径点集合
  2. ACTION_DOWN 在起点
  3. ACTION_MOVE 沿路径移动
  4. ACTION_UP 在终点
```

#### 长按 (Long Press)
```
形状: 矩形路径遍历
坐标: (x, y) 为矩形中心
大小: 默认50x50像素
持续时间: 1000ms (1秒)
实现:
  1. 沿矩形边界遍历
  2. 保持ACTION_DOWN状态
  3. 1000ms后ACTION_UP
```

#### 按键事件 (Key Events)
```
支持的按键:
  - HOME (performGlobalAction(GLOBAL_ACTION_HOME))
  - BACK (performGlobalAction(GLOBAL_ACTION_BACK))
  - 音量键 (performGlobalAction(GLOBAL_ACTION_TAKE_SCREENSHOT))
  - 自定义按键 (keyCode枚举)

实现: AccessibilityService.performGlobalAction()
```

### 1.3 UI元素查询

#### 递归树遍历
```
遍历过程:
  1. 从AccessibilityNodeInfo树根开始
  2. 递归遍历子节点
  3. 对每个节点应用过滤条件
  4. 返回匹配的节点列表

支持的过滤:
  ✓ 文本内容匹配 (getContentDescription/getText)
  ✓ Resource ID匹配 (getResourceName)
  ✓ 类名匹配 (getClassName)
  ✓ 大小/位置范围过滤
```

#### 节点操作
```
父节点操作:
  - 递归点击父节点直到找到响应
  - 用于处理嵌套布局

文本输入:
  - focusNode -> 获得焦点
  - ACTION_PASTE -> 粘贴文本
  - 剪贴板中转 (通过Clipboard)
```

---

## 二、屏幕截图 & 媒体投影 (MediaProjection)

### 2.1 ScreenShoterV3 实现

**文件位置**: `com/cyjh/mobileanjian/screencap/ScreenShoterV3.java`

#### 初始化流程
```
1. 获取MediaProjectionManager
   manager = context.getSystemService(Context.MEDIA_PROJECTION_SERVICE)

2. 获取显示屏幕
   display = displayManager.getDisplay(Display.DEFAULT_DISPLAY)
   
3. 创建虚拟显示器
   virtualDisplay = mediaProjection.createVirtualDisplay(
       name: "ScreenCapture",
       width: screenWidth,
       height: screenHeight,
       dpi: screenDpi,
       flags: DisplayManager.VIRTUAL_DISPLAY_FLAG_PUBLIC,
       surface: imageSurface,
       callback: null
   )
```

#### 图像捕获机制

```java
// ImageReader 配置
ImageReader imageReader = ImageReader.newInstance(
    width, height, 
    PixelFormat.RGBA_8888,  // 颜色格式: 8888模式
    capacity: 2              // 双缓冲
);

// 异步获取图像
boolean waitForImage() {
    long startTime = System.currentTimeMillis();
    while (System.currentTimeMillis() - startTime < 1000) {  // 1秒超时
        Image image = imageReader.acquireLatestImage();
        if (image != null) {
            return true;  // 获得图像
        }
        Thread.sleep(20);  // 20ms轮询
    }
    return false;  // 超时
}
```

#### 图像数据结构

```
ScreenShotImage {
    byte[] pixelData          // RGBA像素数据
    int width                 // 宽度
    int height                // 高度
    int rotation              // 屏幕旋转角度 (0/90/180/270)
    int stride                // 每行字节数
    long timestamp            // 捕获时间戳
}
```

#### 旋转处理
```
// 自动检测屏幕旋转
int rotation = display.getRotation();
switch (rotation) {
    case Surface.ROTATION_0:    // 0°
    case Surface.ROTATION_90:   // 90°
    case Surface.ROTATION_180:  // 180°
    case Surface.ROTATION_270:  // 270°
}
// 脚本收到 rotation 参数后自动调整坐标系
```

### 2.2 权限要求

```
最低SDK: Android 5.0 (API 21)
权限:
  - android.permission.CAPTURE_VIDEO_OUTPUT (隐式)
  - 需要用户在系统设置中授予 "显示在其他应用上方" 权限
  
使用流程:
  1. requestScreenCapture() 触发系统弹窗
  2. 用户授权后获得 MediaProjection
  3. 持续调用 acquireLatestImage() 获取帧
```

---

## 三、IPC/RPC 通信协议

### 3.1 LocalSocket通信层

**文件位置**: `z2/dg.java`, `z2/ne.java`, `z2/og.java` (混淆代码)

#### 通信流程
```
进程1 (主进程)                  进程2 (Root特权进程)
    |                                |
    |---- LocalSocket连接 ---->  监听socket
    |                                |
    |---- 写入命令protobuf ------>  读取
    |                                |
    |                           执行系统操作
    |                                |
    |<---- 返回结果protobuf --------|
    |                                |
```

#### Protobuf消息格式
```
[4-byte Big-Endian Length][Protobuf Data]

Length: 数据包大小 (不含长度字段本身)
Data: Protobuf编码的消息

例:
  0x00 0x00 0x00 0x20    <- 长度: 32字节
  ... 32字节的protobuf数据 ...
```

### 3.2 IPC命令类型

| 命令ID | 功能 | 数据格式 |
|--------|------|---------|
| 20 | 输入事件 (Click/Swipe) | {x, y, type, duration} |
| 24 | 截图请求 | {id} |
| 25 | 截图响应 | {pixelData, width, height} |
| 80 | 脚本初始化 | {scriptId, version, timeout} |
| 83 | 主机初始化 | {deviceInfo, osVersion, memory} |
| 84 | 显示配置 | {width, height, dpi, rotation} |

### 3.3 执行队列

```java
// 脚本执行IPC队列
class ScriptExecutionQueue {
    private final LinkedQueue<IpcMessage> queue = new LinkedQueue<>(1024);  // 1024条消息容量
    
    void enqueue(IpcMessage msg) {
        if (queue.size() >= 1024) {
            queue.removeFirst();  // 溢出时移除最老消息
        }
        queue.addLast(msg);
    }
    
    void processAll() {
        while (!queue.isEmpty()) {
            IpcMessage msg = queue.removeFirst();
            execute(msg);
        }
    }
}
```

---

## 四、脚本执行引擎

### 4.1 MqRunner 状态机

**文件位置**: `com/cyjh/mq/sdk/MqRunner.java`

```
┌─────────────┐
│  SCRIPT_STATE_FREE  │  初始状态
└────────┬────────────┘
         │ load()
         ▼
┌─────────────────────┐
│ SCRIPT_STATE_LOAD   │  加载中
└────────┬────────────┘
         │ start()
         ▼
┌─────────────────────┐
│ SCRIPT_STATE_RUNNING│  运行中
└────┬───────────┬────┘
     │ pause()   │ end()
     ▼           ▼
   PAUSE      FREE(结束)
     │
     │ resume()
     └──────────────>RUNNING
```

### 4.2 脚本元数据

```json
{
  "scriptId": "script_001",
  "scriptName": "游戏挂机",
  "version": "1.0",
  "timeout": 3600000,        // 1小时超时
  "permissions": [
    "GESTURE",               // 手势
    "SCREENSHOT",           // 截图
    "OCR",                  // 文字识别
    "ROOT"                  // Root权限
  ],
  "heartbeatInterval": 30000, // 30秒心跳
  "antiCheat": {
    "requireVerification": true,  // 需要服务器验证
    "failPauseScript": true       // 验证失败则暂停脚本
  }
}
```

### 4.3 Heartbeat防作弊机制

```
脚本运行中每30秒:
  1. 发送心跳请求到服务器
  2. 包含: scriptId, deviceId, executionTime
  3. 服务器验证脚本是否被篡改
  
验证失败:
  1. 服务器返回 VERIFICATION_FAILED
  2. 脚本执行引擎暂停脚本
  3. 显示警告对话框给用户
  4. 用户需要重新启动脚本

目的:
  - 防止脚本被修改或绕过限制
  - 防止未授权使用
  - 跟踪脚本许可证有效性
```

### 4.4 Native VM接口 (JNI)

```
MqLanguageStub {
    native void InitElf()          // 初始化 Lua VM
    native int Execute()           // 执行脚本
    native void Pause()            // 暂停执行
    native void Resume()           // 恢复执行
    native void Stop()             // 停止脚本
    native void SetEnv()           // 设置环境变量
}

// 调用流程
1. initElf() -> libelfinc.so::InitElf()  (初始化Lua)
2. execute() -> libelfinc.so::Execute()  (执行脚本字节码)
3. 脚本调用API -> 回调到Java层进行手势/截图操作
```

---

## 五、反射型RPC系统

### 5.1 Invocator 类

**文件位置**: `com/cyjh/mobileanjian/ipc/rpc/Invocator.java`

#### 功能
```java
// 从脚本中动态调用任意Java方法
public Object invoke(String className, String methodName, Object[] args) {
    try {
        Class<?> clazz = Class.forName(className);
        Method method = clazz.getMethod(methodName, getParamTypes(args));
        return method.invoke(null, args);
    } catch (ClassNotFoundException e) {
        return RpcResult.ERROR_CLASS_NOT_FOUND;
    } catch (NoSuchMethodException e) {
        return RpcResult.ERROR_METHOD_NOT_FOUND;
    }
}
```

#### 返回码
```
0        - 成功
-1       - 类未找到
-2       - 方法未找到
-3       - 参数类型不匹配
-4       - 权限被拒绝
-5       - 网络错误
-99      - 未知错误
```

#### 脚本示例
```lua
-- 从脚本中调用任意Java代码
result = rpc_invoke("android.app.ActivityManager", 
                    "getRunningAppProcesses", 
                    {})

-- 获取当前运行的应用列表
running_apps = rpc_invoke("com.android.internal.app.ActivityTaskManager",
                          "getRunningTasks",
                          {100})  -- 参数: 最多返回100个任务
```

### 5.2 参数类型转换
```
String -> {String class}
Integer -> {Integer.TYPE}
Float -> {Float.TYPE}
Boolean -> {Boolean.TYPE}
Object[] -> {Object[].class}

自定义类型:
  "com.example.MyClass" -> 动态加载类
```

---

## 六、UI协议自动化 (UIP)

### 6.1 文件位置
```
com/cyjh/mobileanjian/ipc/uip/
├── UIParser.java
├── UIElement.java
├── LayoutInflater.java
└── EventBinder.java
```

### 6.2 支持的UI元素
```
LinearLayout      - 线性布局
RelativeLayout    - 相对布局
FrameLayout       - 帧布局
GridLayout        - 网格布局
EditText          - 文本输入
Button            - 按钮
CheckBox          - 复选框
RadioButton       - 单选按钮
Spinner           - 下拉菜单
ScrollView        - 滚动视图
WebView           - 网页视图
ImageView         - 图像显示
```

### 6.3 JSON定义示例
```json
{
  "type": "LinearLayout",
  "orientation": "vertical",
  "children": [
    {
      "type": "TextView",
      "id": "title",
      "text": "游戏设置",
      "textSize": 20
    },
    {
      "type": "EditText",
      "id": "input_username",
      "hint": "输入账号",
      "inputType": "text"
    },
    {
      "type": "Button",
      "id": "btn_start",
      "text": "开始运行",
      "onClick": "startScript"
    }
  ],
  "events": {
    "btn_start": {
      "onClick": "onStartButtonClicked"
    }
  }
}
```

### 6.4 事件绑定
```
事件系统:
  ✓ onClick - 点击事件
  ✓ onLongClick - 长按事件
  ✓ onFocusChange - 焦点变化
  ✓ onTextChanged - 文本变化
  ✓ onItemSelected - 选项选择

回调流程:
  1. UI事件发生
  2. 触发EventBinder中的回调
  3. 调用脚本中对应的回调函数
  4. 脚本可以更新UI或执行操作
```

---

## 七、Root权限获取

### 7.1 RootUtil 实现

**文件位置**: `com/cyjh/mobileanjian/ipc/utils/RootUtil.java`

```java
public class RootUtil {
    public static boolean obtainRoot() {
        try {
            // 尝试第一种方式: "xu" 命令
            Process p1 = Runtime.getRuntime().exec("xu");
            if (p1 != null) {
                return writeCommand(p1, "exit");
            }
        } catch (Exception e) {
            // 失败,尝试第二种方式
        }
        
        try {
            // 尝试第二种方式: 标准 "su" 命令
            Process p2 = Runtime.getRuntime().exec("su");
            if (p2 != null) {
                return writeCommand(p2, "exit");
            }
        } catch (Exception e) {
            // 都失败了,返回False
            return false;
        }
        
        return false;
    }
    
    private static boolean writeCommand(Process process, String cmd) 
            throws IOException {
        OutputStream os = process.getOutputStream();
        os.write((cmd + "\n").getBytes());
        os.flush();
        return true;
    }
}
```

### 7.2 命令执行

```java
// Root命令执行
public String executeRootCommand(String command) {
    try {
        Process process = Runtime.getRuntime().exec(new String[]{"su", "-c", command});
        BufferedReader reader = new BufferedReader(
            new InputStreamReader(process.getInputStream()));
        
        String line;
        StringBuilder output = new StringBuilder();
        while ((line = reader.readLine()) != null) {
            output.append(line).append("\n");
        }
        
        process.waitFor();
        return output.toString();
    } catch (Exception e) {
        return null;
    }
}
```

### 7.3 Root检测UI

```
SharedPreferences:
  "root_status" = true/false

UI显示:
  ✓ "小精灵已获得ROOT权限" - Root成功
  ✗ "小精灵未获得ROOT权限" - Root失败
  ? "正在检测ROOT权限..." - 检测中
```

---

## 八、进程隔离架构

### 8.1 多进程设计

```
主进程 (com.ac)
├── 功能: 主UI, 脚本管理, IPC通信
├── 权限: 普通应用权限
└── 生命周期: 用户可见

浮窗进程 (com.ac:enginfloat)
├── 功能: 悬浮窗UI, 输入法, IPC通信
├── 权限: SYSTEM_ALERT_WINDOW
├── 生命周期: 脚本运行时
└── 隔离: 防止被强制停止

守护进程 (com.ac:daemon)
├── 功能: VirtualAPK插件, 代码注入
├── 权限: Root (如果获取)
├── 生命周期: 持久后台
└── 隐蔽: 避免用户发现
```

### 8.2 IPC通信拓扑

```
主进程
   ├─── Binder ──-> 浮窗进程
   │                  │
   │              IPC消息
   │                  │
   │    LocalSocket   守护进程
   └─── 连接 ──────────┘
                       │
                    Root命令执行
```

---

## 九、ADB命令接口

### 9.1 ADB集成

**UI元素**:
```
Dialog: "ADB命令输入"
TextField: com.ac:id/et_adb_command
Button: "执行"
Output: 命令执行结果
```

### 9.2 支持的操作

```bash
# 应用安装
adb install <apk_path>

# 应用卸载
adb uninstall <package_name>

# 文件操作
adb push <local_path> <device_path>
adb pull <device_path> <local_path>

# 系统命令
adb shell <command>

# 权限管理
adb shell pm grant <package> <permission>
adb shell pm revoke <package> <permission>

# 性能监控
adb shell dumpsys meminfo <package>
adb shell dumpsys cpuinfo

# 日志收集
adb logcat <filter>
```

---

## 十、输入法服务

### 10.1 InputKb IME

**文件位置**: `com/ime/input/InputKb.java`

```
Service类型:     InputMethodService
权限:           BIND_INPUT_METHOD
进程:           :enginfloat (隔离进程)
监听方式:        用户手动选择输入法
```

### 10.2 功能
```
✓ 文本输入模拟 (粘贴剪贴板)
✓ 按键事件注入 (backspace, enter等)
✓ 特殊字符输入
✓ 输入法快捷菜单
✓ 与脚本引擎集成
```

---

## 十一、设备标识服务

### 11.1 支持的设备ID服务

```
Google:
  com.google.android.gms              (Google Play Services)
  com.android.vending                 (Play Store)

OEM厂商:
  com.samsung.android.deviceidservice (Samsung)
  com.huawei.hms                      (Huawei)
  com.asus.msa.SupplementaryDID       (ASUS)
  com.coolpad.deviceidsupport         (Coolpad)
  com.zui.deviceidservice             (ZUI)
  com.heytap.openid                   (OPPO/OnePlus)

其他:
  com.mdid.msa                        (中国移动MSA)
  com.android.creator                 (设备创建者)
```

### 11.2 设备指纹

```
采集项:
  ✓ Android ID
  ✓ IMEI/IMSI
  ✓ MAC地址
  ✓ Serial号
  ✓ 硬件信息
  ✓ 构建指纹 (Build Fingerprint)
  ✓ 设备型号
  ✓ Android版本

用途:
  - 脚本许可验证
  - 防止脚本盗版
  - 设备去重
  - 广告欺诈检测
```

---

## 十二、代码流复杂性

### 12.1 混淆技术分析

```
z2包 (1582个文件) 混淆特征:
  ├─ 类名: 单字母 + 数字/符号
  │   例: z2.OooO0o, z2.Oooo00, z2.OOOoOo
  │   
  ├─ 方法名: 混淆标识符
  │   例: OooO00o(), oOOo0O0(), OooOo00o()
  │   
  ├─ 字符串加密: 阿拉伯/特殊字符
  │   例: "۫۠ۘۖۢۦۗۙۚۦ۪۪ۣۣ۟۠۫ۨۨۢۨۢۦۣۣۣۣۨۧۨۢۨۨۧ" 
  │        => 实际含义: "execute_script_with_root_privilege"
  │   
  ├─ 控制流: 状态机 + switch-case
  │   例: 
  │     switch (obfuscatedValue) {
  │         case 673794143: /* 实际是check_debugger() */
  │         case 845213402: /* 实际是init_lua_vm() */
  │         default: break;
  │     }
  │   
  └─ 虚假分支: 死代码
      例: 存在永远不会执行的代码块
```

### 12.2 反调试机制

```java
// FloatingWindowService 中的反调试循环
private void checkDebugger() {
    String obfuscated = "ۗۖ۟۬ۡۖۡ۠ۧ۠ۘۡۙۛۡۙۜۘۢۦۖۘۛۛ";
    
    while (true) {
        switch (obfuscated.hashCode() ^ 673794143) {
            // 检查 Android.os.Debug.isDebuggerConnected()
            // 检查 /proc/self/status 中的 TracerPid
            // 检查 frida-server 进程
            // 检查 xposed modules
            
            // 如果检测到:
            //   1. System.exit(-1)
            //   2. 或卡在死循环
            //   3. 或执行混淆代码路径
        }
    }
}
```

---

## 十三、完整执行流程图

```
┌─────────────────────────────────────────────────────────────┐
│                  用户启动脚本                                │
└────────────────┬─────────────────────────────────────────────┘
                 │
                 ▼
         ┌──────────────────┐
         │ 初始化检查        │
         │ ✓ Root权限       │
         │ ✓ 无障碍服务     │
         │ ✓ 悬浮窗权限     │
         └────────┬─────────┘
                  │
                  ▼
         ┌──────────────────────────┐
         │ 启动浮窗进程 :enginfloat  │
         └────────┬─────────────────┘
                  │
                  ▼
         ┌──────────────────────────────────────┐
         │ 初始化脚本执行环境                   │
         │ 1. MqLanguageStub.InitElf()         │
         │ 2. libelfinc.so 加载 Lua VM         │
         │ 3. 传递设备信息 (分辨率, 系统版本)  │
         └────────┬─────────────────────────────┘
                  │
                  ▼
         ┌──────────────────────────────────────┐
         │ 脚本执行循环                         │
         │ 每个脚本指令可能触发:               │
         │ • screenshot() -> MediaProjection   │
         │ • tap(x,y) -> Accessibility Service│
         │ • ocr() -> Tesseract native lib    │
         │ • rpc_invoke() -> 反射调用Java      │
         └────────┬─────────────────────────────┘
                  │
                  ▼
         ┌──────────────────────────────────────┐
         │ IPC通信执行                          │
         │ 1. 脚本发送命令到 IPC 队列          │
         │ 2. LocalSocket 发送到 Root 进程    │
         │ 3. Root 进程执行系统操作           │
         │ 4. 返回结果给脚本                  │
         └────────┬─────────────────────────────┘
                  │
                  ▼
         ┌──────────────────────────────────────┐
         │ 心跳验证 (每30秒)                   │
         │ 1. 发送心跳到 auth2.mobileanjian   │
         │ 2. 服务器验证脚本完整性            │
         │ 3. 验证失败 -> 暂停脚本            │
         └────────┬─────────────────────────────┘
                  │
                  ▼
         ┌──────────────────────────────────────┐
         │ 日志上报                             │
         │ logapi.mobileanjian.com/api/SetLog  │
         │ • 脚本执行时间                      │
         │ • 成功/失败状态                     │
         │ • 点击次数                          │
         │ • 截图数量                         │
         └────────┬─────────────────────────────┘
                  │
                  ▼
         ┌──────────────────────────────────────┐
         │ 脚本完成或用户停止                   │
         └────────┬─────────────────────────────┘
                  │
                  ▼
         ┌──────────────────────────────────────┐
         │ 清理资源                             │
         │ • 关闭浮窗进程                      │
         │ • 销毁 Lua VM                       │
         │ • 释放截图资源                     │
         │ • 保存执行日志                      │
         └──────────────────────────────────────┘
```

---

## 十四、核心文件位置汇总

```
关键Java文件:

无障碍服务:
  /com/cyjh/event/accessibility/Cservice.java
  
截图引擎:
  /com/cyjh/mobileanjian/screencap/ScreenShoterV3.java
  
脚本执行:
  /com/cyjh/mq/sdk/MqRunner.java
  /com/cyjh/mobileanjian/ipc/rpc/Invocator.java
  
悬浮窗服务:
  /com/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService.java
  /com/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView.java
  
Root管理:
  /com/cyjh/mobileanjian/ipc/utils/RootUtil.java
  
UI自动化:
  /com/cyjh/mobileanjian/ipc/uip/UIParser.java
  /com/cyjh/mobileanjian/ipc/uip/EventBinder.java
  
输入法服务:
  /com/ime/input/InputKb.java
  
核心混淆代码:
  /z2/ 目录下 1582 个混淆文件
```

---

**报告完成**: 2025年3月24日  
**分析来源**: Explore-2 详细源码反编译分析  
**技术深度**: 架构级别

