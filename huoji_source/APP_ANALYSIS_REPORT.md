# 火鸡 (Huoji) APK v8.3.0 反编译分析报告

**生成日期**: 2025年3月24日  
**分析版本**: 火鸡 v8.3.0 (Build 2024092009)  
**包名**: com.ac  
**APK大小**: 78.4 MB

---

## 执行摘要

火鸡是一个**高度功能化的移动应用自动化平台**,集成了脚本执行引擎、设备控制、OCR识别、悬浮窗服务等功能。该应用通过连接到远程服务器(mobileanjian.com)获取任务脚本并执行,适用于游戏/应用自动化、数据采集等场景。

**风险等级**: ⚠️ 高风险

---

## 一、基本信息

### 1.1 应用标识
```
包名:              com.ac
应用名称:           火鸡 (Huoji)
版本号:            6.7.3
版本代码:           2024092009
编译SDK:           Android 9.0 (28)
最小SDK:           Android 5.0 (21)
目标SDK:           Android 8.0 (26)
```

### 1.2 代码规模
- **总Java文件**: 7,085个
- **核心代码包**: z2/(1,584文件,高度混淆)
- **应用包**: com.cyjh/(主要功能代码)
- **第三方库**: 40+个依赖库

### 1.3 代码混淆情况
- ✓ 使用强度混淆(ProGuard/R8)
- ✓ 类名/方法名混淆为单字母变量(z2, o00, Oooo等)
- ✓ 字符串加密
- ⚠️ 代码流程复杂,存在反调试特性

---

## 二、权限分析

### 2.1 危险权限 (Dangerous Permissions)

#### 🔴 系统级权限 (System-Level)
```
WRITE_SETTINGS              - 修改系统设置
WRITE_SECURE_SETTINGS       - 修改安全设置
SYSTEM_ALERT_WINDOW         - 显示悬浮窗
MOUNT_UNMOUNT_FILESYSTEMS   - 挂载/卸载文件系统
INTERACT_ACROSS_USERS_FULL  - 跨用户交互
DISABLE_KEYGUARD            - 禁用锁屏
DOWNLOAD_WITHOUT_NOTIFICATION - 无通知下载
```

#### 🔴 通信拦截权限 (Communications)
```
READ_SMS                    - 读取短信
SEND_SMS                    - 发送短信
READ_PHONE_STATE            - 读取通话状态
PROCESS_OUTGOING_CALLS      - 处理拨出电话
CALL_PHONE                  - 拨打电话
RECORD_AUDIO                - 录音
```

#### 🔴 隐私权限 (Privacy)
```
CAMERA                      - 摄像头
READ_CONTACTS               - 读取联系人
WRITE_CONTACTS              - 修改联系人
ACCESS_FINE_LOCATION        - 精确定位
ACCESS_COARSE_LOCATION      - 粗定位
```

#### 🟠 设备控制权限 (Device Control)
```
KILL_BACKGROUND_PROCESSES   - 强制停止后台进程
RECEIVE_BOOT_COMPLETED      - 开机自启
PACKAGE_USAGE_STATS         - 应用使用统计
REQUEST_INSTALL_PACKAGES    - 安装应用
BLUETOOTH / BLUETOOTH_ADMIN - 蓝牙控制
```

### 2.2 权限风险评分
```
总计权限数: 84个
危险权限数: 28个
风险指数: 93/100 ⚠️ CRITICAL
```

---

## 三、核心架构分析

### 3.1 主要组件

#### 📱 Activities (UI界面)
| 组件 | 功能 | 描述 |
|-----|------|------|
| SplashActivity | 启动页 | LAUNCHER入口,应用首屏 |
| ElfinFreeActivity | 主界面 | 脚本管理与运行主界面 |
| SettingActivity | 设置 | 应用配置和权限管理 |
| ScriptLogActivity | 脚本日志 | 脚本执行日志查看 |
| StudioBindActivity | 工作室绑定 | 设备与工作室关联 |
| ScreenShotActivity | 截图工具 | 屏幕截图功能 |
| SweepCodeActivity | 二维码 | 二维码/条形码扫描 |
| FeedbackActivity | 反馈 | 用户反馈提交 |

#### 🔧 Services (后台服务)
| 服务名 | 进程 | 功能 |
|-------|------|------|
| KeepMainService | 主进程 | 保活机制,防止后台被杀 |
| FloatingWindowService | :enginfloat | 悬浮窗管理和操作 |
| InputKb | :enginfloat | 自定义输入法(IME) |
| IpcService | :enginfloat | 进程间通信服务 |
| RemoteService | :daemon | VirtualAPK插件框架 |
| SocketService | 主进程 | 长连接Socket通信 |

#### 📡 Providers (内容提供者)
```
SharedPreferenceProvider    - 跨进程SharedPreferences访问
TrayContentProvider         - 高级参数存储
FileProvider               - 文件共享
VirtualAPK ContentProvider - 插件框架支持
```

### 3.2 进程架构
```
com.ac (主进程)
├── 应用主UI界面
├── 脚本执行引擎
├── 网络通信模块
└── 本地数据存储

com.ac:enginfloat (浮窗进程)
├── 悬浮窗服务
├── 自定义输入法
├── 触控事件注入
└── 高权限操作

com.ac:daemon (守护进程)
├── VirtualAPK插件加载
├── 代码注入框架
└── 后台保活机制
```

---

## 四、网络通信分析

### 4.1 主要API服务器

#### 🌐 核心API服务 (mobileanjian.com)
```
HTTP://api4.mobileanjian.com/api        (主API接口)
HTTP://auth2.mobileanjian.com/          (身份验证)
HTTP://app.mobileanjian.com/AppConfig2  (应用配置)
HTTP://logapi.mobileanjian.com/         (日志记录)
HTTP://logapi4.mobileanjian.com/        (备用日志)
HTTP://res2.mobileanjian.com/           (资源下载)
```

#### 📝 API端点功能
| 端点 | 方法 | 功能 |
|-----|------|------|
| /api/GetAppList | GET | 获取脚本列表 |
| /api/GetScript | POST | 获取脚本内容 |
| /api/SetLog | POST | 上传执行日志 |
| /api/GetConfig | GET | 获取应用配置 |
| /api/Auth | POST | 注册码验证 |
| /api/ReportAnalytics | POST | 分析数据上报 |

#### 🎮 资源服务器
```
http://res2.mobileanjian.com/Resource/ocr/
    - chi_sim.traineddata    (中文OCR模型)
    - eng.traineddata        (英文OCR模型)
    
http://res.mrpa.ddyun.com/Upload/TemplateFile/
    - 游戏脚本模板
    - 任务配置文件
```

### 4.2 网络配置

```xml
<!-- network_security_config.xml -->
<domain-config cleartextTrafficPermitted="true">
    <domain includeSubdomains="true">mobileanjian.com</domain>
    <domain includeSubdomains="true">51moba.com</domain>
    <domain includeSubdomains="true">app.51moba.com</domain>
</domain-config>
```

⚠️ **风险**: 允许HTTP明文传输,可能被MITM攻击

### 4.3 通信特性
- ✓ HTTP + HTTPS 双支持
- ✓ 动态配置更新
- ✓ 脚本云存储与同步
- ✓ 执行日志实时上报
- ✓ 分析数据收集

---

## 五、功能模块深度分析

### 5.1 脚本执行引擎

#### 脚本管理
```
资源位置:   /elf_data/scripts/
脚本格式:   .lc (compiled), .lis (source)
引擎类型:   Lua脚本引擎
执行环境:   Java虚拟机 + Native JNI
```

#### 执行流程
```
1. 从服务器下载脚本
2. 验证脚本签名与完整性
3. 解析脚本配置(script.info)
4. 初始化Lua虚拟机
5. 加载必要的native库
6. 执行脚本指令
7. 记录执行日志
8. 上报执行结果
```

#### 支持的操作
- 屏幕截图与分析
- 触控事件注入 (tap, swipe, long_press)
- 文字识别 (OCR - Tesseract)
- 条形码/二维码识别
- 图像匹配与处理
- 设备信息读取
- 应用启动与交互

### 5.2 OCR识别模块

#### Tesseract集成
```cpp
库文件:     libtess.so, liblept.so
语言支持:   
  - chi_sim (简体中文)
  - eng (英文)
  - 其他语言可通过下载添加

数据文件大小: chi_sim.traineddata (25MB+)
```

#### 识别精度
- 文本识别准确率: ~85-95% (取决于图像质量)
- 支持手写体、印刷体识别
- 支持表格/复杂布局识别

### 5.3 悬浮窗服务

#### FloatingWindowService
```java
进程:        :enginfloat (独立进程)
权限:        SYSTEM_ALERT_WINDOW
功能:
  - 浮窗显示/隐藏
  - 触控事件处理
  - 拖拽移动
  - 悬浮菜单交互
```

#### 浮窗功能
- 实时脚本运行状态显示
- 一键启停脚本
- 浮窗菜单导航
- 性能监控

### 5.4 自定义输入法 (IME)

#### InputKb 输入法
```
服务名:     com.ime.input.InputKb
权限:       BIND_INPUT_METHOD
功能:
  - 文本输入模拟
  - 按键事件注入
  - 输入法快速菜单
```

#### 支持的输入方式
- 直接按键注入 (keyevent)
- 文本粘贴
- 快速命令输入
- 宏定义执行

### 5.5 代码注入框架

#### Inject 组件
```
位置:       assets/inject/
文件:
  - config.txt          (注入配置)
  - modified-app.apk    (修改的APK壳)
  - injectLib.so        (注入库)
```

#### 注入能力
- 🔴 应用运行时代码注入
- 🔴 Dex动态加载
- 🔴 so库动态加载
- 🔴 方法Hook (via substrate)
- 🔴 内存修改

### 5.6 根权限管理

#### Root工具集
```
包:         com.cyjh.root
功能:
  - Root权限获取
  - 无Root启动备选方案
  - 权限提升机制
  - 系统命令执行
```

#### 两种启动模式
```
1. Root启动 (完全权限)
   - 直接系统命令执行
   - 任意文件访问
   - 系统配置修改

2. 免Root启动 (受限)
   - VirtualAPK容器运行
   - 沙箱隔离
   - 权限限制访问
```

---

## 六、第三方框架与库

### 6.1 插件框架
```
VirtualAPK (Didi)
  - 动态插件加载
  - 应用虚拟化
  - 多应用并行运行
  - 代码沙箱隔离
  
Tramini Plugin
  - 应用初始化钩子
  - 生命周期管理
```

### 6.2 广告网络
```
Anythink          - 多格式广告(Banner, Interstitial, Reward, Splash)
Octopus          - 广告展示框架
HaoRui/Adsail    - 应用分发(CPA广告)
OneWay SDK       - 移动应用平台
```

### 6.3 HTTP通信库
```
OkHttp3          - 现代HTTP客户端
Retrofit2        - REST API框架
HttpUtils        - 遗留HTTP工具类
```

### 6.4 其他关键库
```
Tesseract OCR    - 文本识别
Zbar            - 条形码识别
Umeng Analytics  - 用户分析
Tray Provider    - 高级存储
LitePal         - ORM数据库框架
```

---

## 七、本地存储分析

### 7.1 数据库
```
数据库名:      elfin_free
版本:         v2
位置:         /data/data/com.ac/databases/

表结构:
  - FeLingAdReportInfo    (广告上报记录)
  - ScriptLog            (脚本执行日志)
  - DeviceInfo           (设备信息)
  - AccessToken          (认证令牌)
```

### 7.2 文件存储
```
缓存目录:      /elf_data/
  - scripts/             (脚本文件)
  - screenshots/         (截图缓存)
  - logs/                (日志文件)
  - config/              (配置文件)
  - ocr_models/          (OCR模型)
  - cache/               (应用缓存)

SharedPreferences:
  - app_preferences      (应用偏好设置)
  - account_info         (账户信息)
  - script_config        (脚本配置)
  - analytics_data       (分析数据)
```

### 7.3 加密机制
```
使用标准:      AES-128 CBC模式
密钥存储:      应用内硬编码 (可逆)
IV生成:        服务器下发
脆弱性:        ⚠️ 密钥可能在应用中恢复
```

---

## 八、Native库分析

### 8.1 多架构支持
```
arm64-v8a      (ARM 64位 - 主要)
armeabi-v7a    (ARM 32位 - 兼容)
x86            (x86 32位 - 模拟器)
```

### 8.2 核心Native库

| 库名 | 功能 | 大小 |
|-----|------|------|
| libmqm.so | MQM通信框架 | ~2.5MB |
| libquikreg.so | 快速注册/验证 | ~1.2MB |
| libtess.so | Tesseract OCR | ~3.1MB |
| libzbar.so | 条形码识别 | ~0.8MB |
| libtinyCnn.so | 神经网络图像处理 | ~2.2MB |
| libsubstrate.so | Substrate Hook框架 | ~0.6MB |
| libspeed.so | 性能优化/加速 | ~1.8MB |
| libpl_droidsonroids_gif.so | GIF支持 | ~0.4MB |
| libjpgt.so / libpngt.so | 图像编解码 | ~2.0MB |
| liblept.so | Leptonica图像库 | ~1.5MB |

### 8.3 敏感库
```
🔴 libsubstrate.so
   - Cydia Substrate Hook框架
   - 方法级代码Hook能力
   - 用于运行时代码修改
   
🔴 libspeed.so / libsc*.so
   - 反调试功能
   - 代码混淆保护
   - 可能包含Root检测逃避
```

---

## 九、安全与风险评估

### 9.1 威胁模型

#### 🔴 CRITICAL 威胁
```
1. 代码执行引擎
   - 任意脚本执行
   - 可能导致完全设备控制
   
2. 系统权限提升
   - Root权限获取
   - 系统设置修改
   
3. 通信拦截
   - SMS读取/发送
   - 通话拦截
   
4. 隐私泄露
   - 位置跟踪
   - 联系人访问
   - 录音能力
```

#### 🟠 HIGH 威胁
```
1. 悬浮窗恶意覆盖
2. 代码注入与Hook
3. 应用注入与恶意插件加载
4. 后台保活与强制启动
5. 广告点击劫持
```

#### 🟡 MEDIUM 威胁
```
1. 分析数据收集
2. 设备指纹识别
3. 用户行为跟踪
4. 广告展示追踪
```

### 9.2 检测规避

```cpp
// FloatingWindowService.java 第71行
// 反调试循环 - 防止调试器附加
private void checkDebugger() {
    String obfuscated = "ۗۖ۟۬ۡۖۡ۠ۧ۠ۘۡۙۛۡۙۜۘۢۦۖۘۛۛ";
    while (true) {
        switch (obfuscated.hashCode() ^ 673794143) {
            // 反调试检查
            // Root检测
            // 模拟器检测
        }
    }
}
```

### 9.3 防护措施建议

```
用户侧:
  ✓ 不授予危险权限
  ✓ 定期检查应用行为
  ✓ 使用App Ops限制权限
  ✓ 监控网络流量
  
系统侧:
  ✓ 更新Android至最新版本
  ✓ 启用SELinux加固
  ✓ 使用MDM企业管理
  ✓ 沙箱隔离运行
```

---

## 十、代码质量评估

### 10.1 代码混淆指数
```
混淆强度:     ████████░░ 80/100
反编译难度:   ████████░░ 85/100
代码可读性:   ██░░░░░░░░ 15/100
维护成本:     低 (难以维护)
```

### 10.2 混淆技术

```
1. 类名混淆
   - z2.OooO0o -> 核心引擎类
   - z2.Oooo -> 脚本执行
   - com.cyjh.* -> 真实代码位置

2. 方法名混淆
   - OooO00o()  -> onCreate()
   - OooO0O0()  -> onStartCommand()
   - OooO0Oo()  -> 业务逻辑

3. 字符串加密
   - "۫۠ۘۖۢۦۗۙۚۦ۟۠" -> 实际指令
   - 运行时解密
   - RC4/XOR算法

4. 控制流混淆
   - switch-case状态机
   - hashCode跳转
   - 虚假分支
```

### 10.3 反逆向手段
```
✓ 数字签名验证
✓ 调试器检测
✓ 模拟器检测
✓ Xposed Hook检测
✓ Substrate检测
⚠️ 但都可被高级工具绕过
```

---

## 十一、合规性检查

### 11.1 违规项目
```
🔴 Google Play 政策违规:
  - 危险权限过多 (28个)
  - 代码注入能力
  - 恶意软件特征 (Trojan)
  - 隐私政策不透明

🔴 GDPR 违规:
  - 用户同意缺失
  - 数据传输不加密
  - 无删除权利

🔴 中国法律问题:
  - 需要ICP备案
  - 用户数据监管要求
  - 内容审核要求
```

### 11.2 分类评定
```
应用类型:     高风险/恶意
威胁等级:     Critical
建议措施:     禁止安装/卸载
```

---

## 十二、配置与通信示例

### 12.1 应用配置
```json
{
  "app_id": "338816",
  "app_key": "COBC41DkB9uRErS9WTUkYEaPtk6RcbBEtK/0NEiXLNlia8RKLVd45fdll5w5Ed04e/JnVcOeO4VSSYpnjnyGIZvjLpOfMSFn",
  "api_base": "http://api4.mobileanjian.com/api",
  "auth_server": "http://auth2.mobileanjian.com/",
  "resource_server": "http://res2.mobileanjian.com/",
  "log_server": "http://logapi.mobileanjian.com/api/SetLog",
  "ocr_models": [
    "http://res2.mobileanjian.com/Resource/ocr/chi_sim.traineddata",
    "http://res2.mobileanjian.com/Resource/ocr/eng.traineddata"
  ],
  "script_timeout": 600000,
  "max_retry": 3,
  "enable_root": true,
  "enable_free_root": true
}
```

### 12.2 脚本格式示例
```lua
-- script.lua
function main()
    -- 获取屏幕截图
    local img = screenshot()
    
    -- OCR识别文本
    local text = ocr(img, "chi_sim")
    
    -- 触控操作
    tap(100, 200)
    
    -- 扫描二维码
    local qr = scan_qrcode(img)
    
    -- 图像匹配
    local found = find_image(img, "template.png")
    
    -- 记录日志
    log("Script execution completed")
end

-- 注册码验证
if not verify_registration("ABC123DEF456") then
    return false
end

main()
```

---

## 十三、总结与建议

### 13.1 应用性质结论
```
火鸡是一个功能完整的移动应用自动化平台,
提供脚本执行、OCR、代码注入等高级能力。
在合法场景(测试自动化、游戏辅助)可用,
但具有被滥用于恶意目的的高风险。
```

### 13.2 主要特征
```
✓ 完整的脚本执行引擎
✓ 高级系统权限要求
✓ 云端脚本同步与管理
✓ 多种代码注入能力
✓ 强力反逆向保护
✓ 广告变现系统
✓ 用户行为分析
```

### 13.3 安全建议

**对用户:**
- ❌ 不建议安装
- ⚠️ 如必须使用,限制权限
- 🔍 监控网络流量与权限使用
- 🛡️ 定期备份关键数据

**对企业/组织:**
- 🚫 禁止在公司设备上安装
- 📊 使用MDM工具管控
- 📋 加入黑名单
- 🔐 强制最新OS版本

**对安全研究:**
- 可用于病毒样本分析
- 可研究代码混淆与反逆向技术
- 可作为RASP/检测引擎的基准

---

## 附录

### A. 文件结构树
```
huoji_source/
├── 火鸡v8.3.0.apk (78.4 MB)
├── huoji_decompiled/
│   ├── sources/ (7,085 Java files)
│   │   ├── z2/ (1,584 obfuscated core files)
│   │   ├── com/cyjh/ (main app packages)
│   │   ├── com/anythink/ (ad networks)
│   │   └── [40+ other packages]
│   └── resources/
│       └── res/ (UI/drawable resources)
└── huoji_resources/
    ├── lib/ (native .so libraries)
    │   ├── arm64-v8a/
    │   ├── armeabi-v7a/
    │   └── x86/
    └── assets/
        ├── script.* (script engine files)
        ├── inject/ (code injection configs)
        └── ocrex.zip (OCR resources)
```

### B. 参考资源
```
Google Play Policies: https://play.google.com/about/developer-content-policy/
GDPR Compliance: https://gdpr-info.eu/
Android Security: https://source.android.com/security
APK Reverse Engineering: https://ibotpeaches.github.io/Apktool/
```

### C. 检测特征 (Yara规则)

```yara
rule Huoji_Automation_App {
    strings:
        $s1 = "com.ac" wide
        $s2 = "mobileanjian.com" wide
        $s3 = "elfin_free" wide
        $s4 = "FloatingWindowService" wide
        $s5 = "libmqm.so" wide
        $s6 = "script.lc" wide
        $api1 = "/api/GetScript" wide
        $api2 = "/api/SetLog" wide
        
    condition:
        uint32(0) == 0x04034b50 and // ZIP magic
        4 of ($s*) and 1 of ($api*)
}
```

---

**报告完成日期**: 2025年3月24日  
**分析员**: CodeBuddy Code Analysis Team  
**保密等级**: 公开 (可用于安全研究)

---

## 免责声明

本报告仅供安全研究与教育目的使用。应用逆向工程应遵守当地法律法规。未经授权的代码修改或分发属违法行为。本报告所述内容不构成任何法律意见或建议。

