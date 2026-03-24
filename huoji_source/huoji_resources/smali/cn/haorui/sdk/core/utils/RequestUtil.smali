.class public Lcn/haorui/sdk/core/utils/RequestUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final NETWORK_2G:Ljava/lang/String; = "4"

.field private static final NETWORK_3G:Ljava/lang/String; = "3"

.field private static final NETWORK_4G:Ljava/lang/String; = "2"

.field private static final NETWORK_5G:Ljava/lang/String; = "6"

.field private static final NETWORK_UNKNOWN:Ljava/lang/String; = "-1"

.field private static final NETWORK_WIFI:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "RequestUtil"

.field private static androidId:Ljava/lang/String;

.field private static appName:Ljava/lang/String;

.field private static boot_id:Ljava/lang/String;

.field private static cpuInfo:Ljava/lang/String;

.field private static deviceType:Ljava/lang/String;

.field private static device_appstore_ver:Ljava/lang/String;

.field private static device_available:Ljava/lang/String;

.field private static device_cupname:Ljava/lang/String;

.field private static device_hmscore:Ljava/lang/String;

.field private static device_sysfont:Ljava/lang/String;

.field private static device_totalSize:Ljava/lang/String;

.field private static displayMetrics:Landroid/util/DisplayMetrics;

.field private static h5AppType:Ljava/lang/String;

.field private static imei:Ljava/lang/String;

.field private static imsi:Ljava/lang/String;

.field private static install_time:Ljava/lang/String;

.field private static mac:Ljava/lang/String;

.field private static orientation:Ljava/lang/String;

.field private static packageName:Ljava/lang/String;

.field private static performance:Ljava/lang/String;

.field private static publicKeySha1:Ljava/lang/String;

.field private static romVersion:Ljava/lang/String;

.field private static shakeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static ssid:Ljava/lang/String;

.field private static syscmpTime:Ljava/lang/String;

.field private static update_time:Ljava/lang/String;

.field private static userAgent:Ljava/lang/String;

.field private static versionName:Ljava/lang/String;

.field private static wifiMac:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->shakeMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->shakeMap:Ljava/util/Map;

    return-object v0
.end method

.method private static execCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    const/16 v0, 0x400

    new-array v0, v0, [B

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result p0

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "utf-8"

    invoke-direct {v1, v0, v2, p0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->androidId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->androidId:Ljava/lang/String;

    :cond_0
    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->androidId:Ljava/lang/String;

    return-object p0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->appName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->appName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public static getAppStoreName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_1
    const-string v1, "meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_2
    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "oppo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_5
    const-string v1, "huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_6
    const-string v1, "oneplus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_2

    :pswitch_0
    const-string p0, "com.sec.android.app.samsungapps"

    goto :goto_2

    :pswitch_1
    const-string p0, "com.meizu.mstore"

    goto :goto_2

    :pswitch_2
    const-string p0, "com.bbk.appstore"

    goto :goto_2

    :pswitch_3
    const-string v0, "com.heytap.market"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    move-object p0, v0

    goto :goto_2

    :catch_0
    :goto_1
    const-string p0, "com.oppo.market"

    goto :goto_2

    :pswitch_4
    const-string p0, "com.xiaomi.market"

    goto :goto_2

    :pswitch_5
    const-string p0, "com.huawei.appmarket"

    goto :goto_2

    :pswitch_6
    const-string p0, "com.oneplus.market"

    :goto_2
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4eb36700 -> :sswitch_6
        -0x47e95e19 -> :sswitch_5
        -0x2d450b45 -> :sswitch_4
        0x3427a0 -> :sswitch_3
        0x373cac -> :sswitch_2
        0x62f84cc -> :sswitch_1
        0x6f28bffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAppStoreVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->device_appstore_ver:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p0}, Lcn/haorui/sdk/core/utils/RequestUtil;->getAppStoreName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->device_appstore_ver:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    sput-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->device_appstore_ver:Ljava/lang/String;

    :cond_0
    :goto_0
    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->device_appstore_ver:Ljava/lang/String;

    return-object p0
.end method

.method public static getAvailableInternalMemorySize()V
    .locals 6

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->device_available:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v4, v1

    mul-long v4, v4, v2

    long-to-float v1, v4

    const/high16 v2, 0x100000

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->device_available:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static getBatteryPercentage(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const-string v0, "batterymanager"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManager;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getBoot()V
    .locals 4

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->boot_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    :try_start_0
    new-array v1, v0, [C

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/sys/kernel/random/boot_id"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/FileReader;->read([C)I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->boot_id:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static getCpuInfo()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->cpuInfo:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "getprop ro.config.cpu_info_display"

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/RequestUtil;->execCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->cpuInfo:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->cpuInfo:Ljava/lang/String;

    return-object v0
.end method

.method public static getCpuName()V
    .locals 3

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->device_cupname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "/proc/cpuinfo"

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "Hardware"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sput-object v1, Lcn/haorui/sdk/core/utils/RequestUtil;->device_cupname:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/haorui/sdk/core/utils/RequestUtil;->device_cupname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/haorui/sdk/core/utils/RequestUtil;->device_cupname:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private static getDeviceInfo(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig$CustomController;->isCanUseImei()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig$CustomController;->getImei()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig$CustomController;->getImei()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->imei:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/RequestUtil;->getImei(Landroid/content/Context;)Ljava/lang/String;

    :cond_1
    :goto_0
    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->imei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->imei:Ljava/lang/String;

    const-string v1, "device_imei"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getLocalOaid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getLocalOaid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getLocalOaid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_oaid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getLocalOaid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getLocalOaid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "m_oaid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig$CustomController;->isCanUseAndroidId()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig$CustomController;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig$CustomController;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->androidId:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/RequestUtil;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    :cond_6
    :goto_1
    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->androidId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->androidId:Ljava/lang/String;

    const-string v1, "device_adid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig$CustomController;->canUseMacAddress()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig$CustomController;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig$CustomController;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->mac:Ljava/lang/String;

    goto :goto_3

    :cond_9
    :goto_2
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/RequestUtil;->getMac(Landroid/content/Context;)Ljava/lang/String;

    invoke-static {p0}, Lcn/haorui/sdk/core/utils/RequestUtil;->getSsidAndWifiMac(Landroid/content/Context;)V

    :cond_a
    :goto_3
    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->mac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->mac:Ljava/lang/String;

    const-string v1, "device_mac"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->userId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->userId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/RequestUtil;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->imsi:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_d

    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->imsi:Ljava/lang/String;

    const-string v0, "device_imsi"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->ssid:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_e

    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->ssid:Ljava/lang/String;

    const-string v0, "device_ssid"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->wifiMac:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_f

    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->wifiMac:Ljava/lang/String;

    const-string v0, "device_wifi_mac"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method private static getDeviceType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->deviceType:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    sput-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->deviceType:Ljava/lang/String;

    :cond_1
    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->deviceType:Ljava/lang/String;

    return-object p0
.end method

.method private static getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->displayMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    sput-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->displayMetrics:Landroid/util/DisplayMetrics;

    :cond_0
    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->displayMetrics:Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method public static getFontSize()V
    .locals 6

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->device_sysfont:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    const-string v1, "android.app.ActivityManagerNative"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "getDefault"

    const/4 v3, 0x0

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "getConfiguration"

    :try_start_2
    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->device_sysfont:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static getH5AppType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->h5AppType:Ljava/lang/String;

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "hap://app/"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p0, "1"

    :goto_0
    sput-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->h5AppType:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_1
    :goto_1
    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->h5AppType:Ljava/lang/String;

    return-object p0
.end method

.method private static getHMS_VersionCode(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    const-string v0, "com.huawei.hwid"

    invoke-static {p0, v0}, Lcn/haorui/sdk/core/utils/RequestUtil;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    sput-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->device_hmscore:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-void
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->imsi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-gt v1, v2, :cond_0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->imsi:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p0, :cond_0

    goto :goto_0

    :catch_0
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->imsi:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez p0, :cond_1

    goto :goto_0

    :catch_1
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->imsi:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-nez p0, :cond_2

    goto :goto_0

    :catch_2
    :cond_2
    :try_start_4
    const-string p0, ""

    sput-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->imsi:Ljava/lang/String;

    :goto_0
    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->imsi:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->imsi:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x5

    if-le p0, v0, :cond_3

    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->imsi:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->imsi:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    return-object p0

    :catch_3
    :cond_4
    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->imsi:Ljava/lang/String;

    return-object p0
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->imei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt p0, v1, :cond_0

    const/4 p0, 0x0

    :goto_0
    sput-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->imei:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/16 v1, 0x1a

    if-lt p0, v1, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->imei:Ljava/lang/String;

    return-object p0
.end method

.method private static getLanguageCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLocale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method private static getMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->mac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/haorui/sdk/core/utils/AddressUtils;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->mac:Ljava/lang/String;

    :cond_0
    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->mac:Ljava/lang/String;

    return-object p0
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const-string v0, "-1"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string p0, "1"

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return-object v0

    :pswitch_1
    const-string p0, "6"

    return-object p0

    :pswitch_2
    const-string p0, "2"

    return-object p0

    :pswitch_3
    const-string p0, "3"

    return-object p0

    :pswitch_4
    const-string p0, "4"

    return-object p0

    :cond_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x4000

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->packageName:Ljava/lang/String;

    :cond_0
    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static getParams(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/ad/AdType;JJ)Ljava/util/Map;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcn/haorui/sdk/core/ad/AdType;",
            "JJ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "version"

    const-string v3, "20230916"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "pid"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcn/haorui/sdk/core/utils/CacheUtil;->getInstance()Lcn/haorui/sdk/core/utils/CacheUtil;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcn/haorui/sdk/core/utils/CacheUtil;->getTemplateCache(Landroid/content/Context;)Lcn/haorui/sdk/core/domain/LayoutBean;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_1

    invoke-static {}, Lcn/haorui/sdk/core/utils/CacheUtil;->getInstance()Lcn/haorui/sdk/core/utils/CacheUtil;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcn/haorui/sdk/core/utils/CacheUtil;->getTemplateCache(Landroid/content/Context;)Lcn/haorui/sdk/core/domain/LayoutBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean;->getMtime()I

    move-result v2

    int-to-long v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "fel_mtime"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "is_mobile"

    const-string v4, "1"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "msec"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcn/haorui/sdk/core/HRConfig;->initUUID()Ljava/lang/String;

    move-result-object v2

    const-string v4, "init_uuid"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcn/haorui/sdk/core/HRConfig;->initTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v4, "init_time"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    const-string p4, "all_times"

    invoke-virtual {v1, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    const-string p4, "type_times"

    invoke-virtual {v1, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->install_time:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string p4, "install_time"

    if-eqz p3, :cond_2

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-interface {p3, p4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    sput-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->install_time:Ljava/lang/String;

    :cond_2
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/RequestUtil;->getWxApi(Landroid/content/Context;)I

    move-result p3

    const/4 p5, -0x1

    if-eq p3, p5, :cond_3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string p6, "wxapi"

    invoke-virtual {v1, p6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->install_time:Ljava/lang/String;

    invoke-virtual {v1, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->secure()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "secure"

    invoke-virtual {v1, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->userGender()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->userGender()Ljava/lang/String;

    move-result-object p3

    const-string p4, "gender"

    invoke-virtual {v1, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->userAge()Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    if-eqz p3, :cond_5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->userAge()Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    sub-int/2addr p3, p6

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string p6, "yob"

    invoke-virtual {v1, p6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->userKeywords()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->userKeywords()Ljava/lang/String;

    move-result-object p3

    const-string p6, "keywords"

    invoke-virtual {v1, p6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->userExt()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->userExt()Ljava/lang/String;

    move-result-object p3

    const-string p6, "ext"

    invoke-virtual {v1, p6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8

    const-string p3, "third_party_sdk"

    invoke-virtual {v1, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->userType()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_9

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->userType()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p6, "user_type"

    invoke-virtual {v1, p6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/RequestUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->packageName:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_a

    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->packageName:Ljava/lang/String;

    const-string p6, "app_package"

    invoke-virtual {v1, p6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string p3, "AD_HR"

    invoke-static {p3}, Lcn/haorui/sdk/core/a;->a(Ljava/lang/String;)Lcn/haorui/sdk/core/e;

    move-result-object p3

    invoke-interface {p3}, Lcn/haorui/sdk/core/e;->config()Lcn/haorui/sdk/core/d;

    move-result-object p3

    invoke-interface {p3}, Lcn/haorui/sdk/core/d;->getAppId()Ljava/lang/String;

    move-result-object p3

    const-string p6, "app_id"

    invoke-virtual {v1, p6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->userDenyCats()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->userDenyCats()Ljava/lang/String;

    move-result-object p3

    const-string p6, "deny_cats"

    invoke-virtual {v1, p6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->userDenyCids()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_c

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->userDenyCids()Ljava/lang/String;

    move-result-object p3

    const-string p6, "deny_cids"

    invoke-virtual {v1, p6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->userDenyAderIds()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_d

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->userDenyAderIds()Ljava/lang/String;

    move-result-object p3

    const-string p6, "deny_ader_ids"

    invoke-virtual {v1, p6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/RequestUtil;->getH5AppType(Landroid/content/Context;)Ljava/lang/String;

    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->h5AppType:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_e

    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->h5AppType:Ljava/lang/String;

    const-string p6, "h5_app_type"

    invoke-virtual {v1, p6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/RequestUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->appName:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_f

    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->appName:Ljava/lang/String;

    const-string p6, "app_name"

    invoke-virtual {v1, p6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/RequestUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->versionName:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_10

    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->versionName:Ljava/lang/String;

    const-string p6, "app_ver"

    invoke-virtual {v1, p6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/RequestUtil;->getAppStoreVersionCode(Landroid/content/Context;)Ljava/lang/String;

    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->device_appstore_ver:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_11

    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->device_appstore_ver:Ljava/lang/String;

    const-string p6, "device_appstore_ver"

    invoke-virtual {v1, p6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object p3

    if-eqz p3, :cond_12

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object p3

    invoke-virtual {p3}, Lcn/haorui/sdk/core/HRConfig$CustomController;->isCanUseLocation()Z

    move-result p3

    if-eqz p3, :cond_13

    new-instance p3, Lcn/haorui/sdk/core/utils/GPSUtils;

    invoke-direct {p3, p0}, Lcn/haorui/sdk/core/utils/GPSUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lcn/haorui/sdk/core/utils/GPSUtils;->getLocation()Landroid/location/Location;

    move-result-object p3

    if-eqz p3, :cond_13

    goto :goto_0

    :cond_12
    new-instance p3, Lcn/haorui/sdk/core/utils/GPSUtils;

    invoke-direct {p3, p0}, Lcn/haorui/sdk/core/utils/GPSUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lcn/haorui/sdk/core/utils/GPSUtils;->getLocation()Landroid/location/Location;

    move-result-object p3

    if-eqz p3, :cond_13

    :goto_0
    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p6

    const-string v0, "device_geo_lat"

    invoke-virtual {v1, v0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p6, "device_geo_lon"

    invoke-virtual {v1, p6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object p3

    if-eqz p3, :cond_16

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object p3

    invoke-virtual {p3}, Lcn/haorui/sdk/core/HRConfig$CustomController;->enablePersonalRecommend()Z

    move-result p3

    if-eqz p3, :cond_14

    goto :goto_1

    :cond_14
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getLocalOaid()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_15

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getLocalOaid()Ljava/lang/String;

    move-result-object p3

    const-string p6, "unknown"

    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_15

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getLocalOaid()Ljava/lang/String;

    move-result-object p3

    const-string p6, "device_oaid"

    invoke-virtual {v1, p6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getLocalOaid()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_17

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getLocalOaid()Ljava/lang/String;

    move-result-object p3

    const-string p6, "m_oaid"

    invoke-virtual {v1, p6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_16
    :goto_1
    invoke-static {p0, v1}, Lcn/haorui/sdk/core/utils/RequestUtil;->getDeviceInfo(Landroid/content/Context;Ljava/util/Map;)V

    :cond_17
    :goto_2
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getOaid_errno()I

    move-result p3

    if-eq p3, p5, :cond_18

    invoke-static {p5}, Lcn/haorui/sdk/core/AdSdk;->setOaid_errno(I)V

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p5, "oaid_errno"

    invoke-virtual {v1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/RequestUtil;->getHMS_VersionCode(Landroid/content/Context;)V

    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->device_hmscore:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_19

    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->device_hmscore:Ljava/lang/String;

    const-string p5, "device_hmscore"

    invoke-virtual {v1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/RequestUtil;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->displayMetrics:Landroid/util/DisplayMetrics;

    if-eqz p3, :cond_1a

    iget p3, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string p5, "device_ppi"

    invoke-virtual {v1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->displayMetrics:Landroid/util/DisplayMetrics;

    iget p3, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string p5, "device_width"

    invoke-virtual {v1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->displayMetrics:Landroid/util/DisplayMetrics;

    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string p5, "device_height"

    invoke-virtual {v1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->displayMetrics:Landroid/util/DisplayMetrics;

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p3

    const-string p5, "device_density"

    invoke-virtual {v1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    sget-object p3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_1b

    const-string p5, "device_type_os"

    invoke-virtual {v1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz p3, :cond_1c

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    const-string p6, "device_apiLevel"

    invoke-virtual {v1, p6, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string p5, "device_api_level"

    invoke-virtual {v1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/RequestUtil;->getBatteryPercentage(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_1d

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p5, "device_battery_level"

    invoke-virtual {v1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/RequestUtil;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->deviceType:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1e

    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->deviceType:Ljava/lang/String;

    const-string p5, "device_type"

    invoke-virtual {v1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    sget-object p3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_1f

    const-string p5, "device_manufacturer"

    invoke-virtual {v1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    sget-object p3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_20

    const-string p5, "device_brand"

    invoke-virtual {v1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    sget-object p3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_21

    const-string p5, "device_model"

    invoke-virtual {v1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/RequestUtil;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_22

    const-string p5, "device_network"

    invoke-virtual {v1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    const-string p3, "device_os"

    const-string p5, "Android"

    invoke-virtual {v1, p3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->userAgent:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_23

    invoke-static {p0}, Lcn/haorui/sdk/core/utils/RequestUtil;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    :cond_23
    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->userAgent:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_24

    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->userAgent:Ljava/lang/String;

    const-string p5, "device_ua"

    invoke-virtual {v1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/RequestUtil;->getScreenOrientation(Landroid/content/Context;)Ljava/lang/String;

    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->orientation:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_25

    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->orientation:Ljava/lang/String;

    const-string p5, "device_orientation"

    invoke-virtual {v1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/RequestUtil;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p3

    if-eqz p3, :cond_26

    invoke-virtual {p3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p5

    const-string p6, "country"

    invoke-virtual {v1, p6, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p3

    const-string p5, "language"

    invoke-virtual {v1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/RequestUtil;->getPublicKeySha1(Landroid/content/Context;)Ljava/lang/String;

    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->publicKeySha1:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_27

    sget-object p3, Lcn/haorui/sdk/core/utils/RequestUtil;->publicKeySha1:Ljava/lang/String;

    const-string p5, "app_signature"

    invoke-virtual {v1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    const-string p3, "1.4.6.8"

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_28

    const-string p5, "sdk_version"

    invoke-virtual {v1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 p5, 0xfe0e0

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    const-string p5, "sdk_version_code"

    invoke-virtual {v1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    if-eqz p2, :cond_29

    invoke-virtual {p2}, Lcn/haorui/sdk/core/ad/AdType;->value()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "accept_ad_type"

    invoke-virtual {v1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/RequestUtil;->getPerformance(Landroid/content/Context;)Ljava/lang/String;

    sget-object p2, Lcn/haorui/sdk/core/utils/RequestUtil;->performance:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2a

    sget-object p2, Lcn/haorui/sdk/core/utils/RequestUtil;->performance:Ljava/lang/String;

    const-string p3, "device_performance"

    invoke-virtual {v1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    invoke-static {}, Lcn/haorui/sdk/core/utils/RequestUtil;->getRomVersion()Ljava/lang/String;

    sget-object p2, Lcn/haorui/sdk/core/utils/RequestUtil;->romVersion:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2b

    sget-object p2, Lcn/haorui/sdk/core/utils/RequestUtil;->romVersion:Ljava/lang/String;

    const-string p3, "device_rom_version"

    invoke-virtual {v1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    invoke-static {}, Lcn/haorui/sdk/core/utils/RequestUtil;->getSyscmpTime()Ljava/lang/String;

    sget-object p2, Lcn/haorui/sdk/core/utils/RequestUtil;->syscmpTime:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2c

    sget-object p2, Lcn/haorui/sdk/core/utils/RequestUtil;->syscmpTime:Ljava/lang/String;

    const-string p3, "device_syscmp_time"

    invoke-virtual {v1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    invoke-static {}, Lcn/haorui/sdk/core/utils/RequestUtil;->getTotalInternalMemorySize()V

    sget-object p2, Lcn/haorui/sdk/core/utils/RequestUtil;->device_totalSize:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2d

    sget-object p2, Lcn/haorui/sdk/core/utils/RequestUtil;->device_totalSize:Ljava/lang/String;

    const-string p3, "device_disk_total"

    invoke-virtual {v1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    invoke-static {}, Lcn/haorui/sdk/core/utils/RequestUtil;->getAvailableInternalMemorySize()V

    sget-object p2, Lcn/haorui/sdk/core/utils/RequestUtil;->device_available:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2e

    sget-object p2, Lcn/haorui/sdk/core/utils/RequestUtil;->device_available:Ljava/lang/String;

    const-string p3, "device_disk_free"

    invoke-virtual {v1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    invoke-static {}, Lcn/haorui/sdk/core/utils/RequestUtil;->getFontSize()V

    sget-object p2, Lcn/haorui/sdk/core/utils/RequestUtil;->device_sysfont:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2f

    sget-object p2, Lcn/haorui/sdk/core/utils/RequestUtil;->device_sysfont:Ljava/lang/String;

    const-string p3, "device_font_size"

    invoke-virtual {v1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    invoke-static {}, Lcn/haorui/sdk/core/utils/RequestUtil;->getCpuName()V

    sget-object p2, Lcn/haorui/sdk/core/utils/RequestUtil;->device_cupname:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_30

    sget-object p2, Lcn/haorui/sdk/core/utils/RequestUtil;->device_cupname:Ljava/lang/String;

    const-string p3, "device_cpu_model"

    invoke-virtual {v1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    invoke-static {p0, p1}, Lcn/haorui/sdk/core/utils/RequestUtil;->getShakeData(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->shakeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->shakeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "device_acceleration"

    invoke-virtual {v1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    invoke-static {}, Lcn/haorui/sdk/core/utils/RequestUtil;->getUpdate()V

    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->update_time:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_32

    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->update_time:Ljava/lang/String;

    const-string p2, "device_update_mark"

    invoke-virtual {v1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    invoke-static {}, Lcn/haorui/sdk/core/utils/RequestUtil;->getBoot()V

    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->boot_id:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_33

    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->boot_id:Ljava/lang/String;

    const-string p2, "device_boot_mark"

    invoke-virtual {v1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    sget-object p0, Lcn/haorui/sdk/core/utils/PackConfigUtil;->dclk:Lcn/haorui/sdk/core/utils/PackageBean$DClick;

    if-eqz p0, :cond_34

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcn/haorui/sdk/core/utils/PackConfigUtil;->dclk:Lcn/haorui/sdk/core/utils/PackageBean$DClick;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/utils/PackageBean$DClick;->getStatus()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "dclk_s"

    invoke-virtual {v1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    invoke-static {p1}, Lcn/haorui/sdk/core/utils/RecordUtil;->getSingleClick(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_35

    const-string p1, "dclk_p"

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    invoke-static {}, Lcn/haorui/sdk/core/utils/RecordUtil;->getAllClick()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_36

    const-string p1, "dclk_a"

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    sget-object p0, Lcn/haorui/sdk/core/utils/PackConfigUtil;->requirePck:Lcn/haorui/sdk/core/utils/PckIdBean;

    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Lcn/haorui/sdk/core/utils/PckIdBean;->getApp_y()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcn/haorui/sdk/core/utils/PackConfigUtil;->requirePck:Lcn/haorui/sdk/core/utils/PckIdBean;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/utils/PckIdBean;->getApp_n()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string p3, "."

    if-nez p2, :cond_38

    invoke-virtual {p0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_37

    invoke-virtual {p0, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_37
    const-string p2, "app_y"

    invoke-virtual {v1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3a

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_39

    invoke-virtual {p1, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_39
    const-string p0, "app_n"

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    return-object v1
.end method

.method private static getPerformance(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->performance:Ljava/lang/String;

    if-nez p0, :cond_4

    const-string p0, "-1"

    filled-new-array {p0, p0, p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/meminfo"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\s+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-object v0, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_0

    :catch_1
    nop

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v1, v0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    nop

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_1
    throw p0

    :catch_4
    move-object v1, v0

    :goto_2
    if-eqz v0, :cond_2

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    nop

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    :catch_6
    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "|"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->performance:Ljava/lang/String;

    :cond_4
    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->performance:Ljava/lang/String;

    return-object p0
.end method

.method private static getPublicKeySha1(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->publicKeySha1:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p0, "X509"

    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcn/haorui/sdk/core/utils/RequestUtil;->sha1([B)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->publicKeySha1:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->publicKeySha1:Ljava/lang/String;

    return-object p0
.end method

.method public static getRomVersion()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->romVersion:Ljava/lang/String;

    if-nez v0, :cond_7

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "lemobile"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1
    const-string v2, "meizu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2
    const-string v2, "vivo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_3
    const-string v2, "oppo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "xiaomi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_5
    const-string v2, "huawei"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_6
    const-string v2, "smartisan"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string v0, "getprop ro.build.version.release"

    goto :goto_1

    :pswitch_0
    const-string v0, "getprop ro.letv.release.version"

    goto :goto_1

    :pswitch_1
    const-string v0, "getprop ro.build.display.id"

    goto :goto_1

    :pswitch_2
    const-string v0, "getprop ro.vivo.product.version"

    goto :goto_1

    :pswitch_3
    const-string v0, "getprop ro.build.version.ota"

    goto :goto_1

    :pswitch_4
    const-string v0, "getprop ro.build.version.incremental"

    goto :goto_1

    :pswitch_5
    const-string v0, "getprop ro.smartisan.version"

    :goto_1
    invoke-static {v0}, Lcn/haorui/sdk/core/utils/RequestUtil;->execCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->romVersion:Ljava/lang/String;

    :cond_7
    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->romVersion:Ljava/lang/String;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5608ffe0 -> :sswitch_6
        -0x47e95e19 -> :sswitch_5
        -0x2d450b45 -> :sswitch_4
        0x3427a0 -> :sswitch_3
        0x373cac -> :sswitch_2
        0x62f84cc -> :sswitch_1
        0x721edf5b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getScreenOrientation(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->orientation:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "-1"

    goto :goto_0

    :cond_0
    const-string p0, "1"

    goto :goto_0

    :cond_1
    const-string p0, "0"

    :goto_0
    sput-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->orientation:Ljava/lang/String;

    :cond_2
    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->orientation:Ljava/lang/String;

    return-object p0
.end method

.method public static getShakeData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->shakeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    new-instance v1, Lcn/haorui/sdk/core/utils/RequestUtil$a;

    invoke-direct {v1, p1, p0}, Lcn/haorui/sdk/core/utils/RequestUtil$a;-><init>(Ljava/lang/String;Landroid/hardware/SensorManager;)V

    const/4 p1, 0x3

    invoke-virtual {p0, v1, v0, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method private static getSsidAndWifiMac(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/haorui/sdk/core/utils/RequestUtil;->wifiMac:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->ssid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sput-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->ssid:Ljava/lang/String;

    sput-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->wifiMac:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sput-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->ssid:Ljava/lang/String;

    sput-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->wifiMac:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private static getSyscmpTime()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->syscmpTime:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "getprop ro.vendor.build.date.utc"

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/RequestUtil;->execCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->syscmpTime:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->syscmpTime:Ljava/lang/String;

    return-object v0
.end method

.method public static getTotalInternalMemorySize()V
    .locals 6

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->device_totalSize:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v4, v1

    mul-long v4, v4, v2

    long-to-float v1, v4

    const/high16 v2, 0x100000

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->device_totalSize:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static getUpdate()V
    .locals 7

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->update_time:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x100

    :try_start_0
    new-array v0, v0, [B

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "stat -c %X.%x /data/data"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ \\|.]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x0

    array-length v3, v0

    if-lez v3, :cond_0

    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    array-length v5, v0

    const/4 v6, 0x3

    if-le v5, v6, :cond_1

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const-string v0, "%d.%09d"

    const/4 v5, 0x2

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    const/4 v3, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->update_time:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->userAgent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :catchall_0
    :cond_0
    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method private static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/haorui/sdk/core/utils/RequestUtil;->versionName:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    sget-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method private static getWxApi(Landroid/content/Context;)I
    .locals 9

    :try_start_0
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->getWxAppid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.tencent.mm.opensdk.openapi.BaseWXApiImplV10"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object v0, v2, v6

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p0, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v8

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "getWXAppSupportAPI"

    :try_start_1
    new-array v2, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static setRomVersion(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->romVersion:Ljava/lang/String;

    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcn/haorui/sdk/core/utils/RequestUtil;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public static sha1([B)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcn/haorui/sdk/core/utils/StringUtils;->byte2hex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static wrapParams(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/ad/AdType;JJ)Ljava/util/Map;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcn/haorui/sdk/core/ad/AdType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcn/haorui/sdk/core/ad/AdType;",
            "JJ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "AD_HR"

    invoke-static {v0}, Lcn/haorui/sdk/core/a;->a(Ljava/lang/String;)Lcn/haorui/sdk/core/e;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/e;->config()Lcn/haorui/sdk/core/d;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/d;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string v0, "wrapParams pid or appId or ad Type is empty: %s %s %s"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestUtil"

    invoke-static {v1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static/range {p0 .. p6}, Lcn/haorui/sdk/core/utils/RequestUtil;->getParams(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/ad/AdType;JJ)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
