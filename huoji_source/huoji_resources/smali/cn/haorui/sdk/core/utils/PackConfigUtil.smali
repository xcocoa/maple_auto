.class public Lcn/haorui/sdk/core/utils/PackConfigUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static PACKAGEKEY:Ljava/lang/String; = "packageKey"

.field private static final TAG:Ljava/lang/String; = "PackConfigUtil"

.field private static androidId:Ljava/lang/String;

.field public static dclk:Lcn/haorui/sdk/core/utils/PackageBean$DClick;

.field private static imei:Ljava/lang/String;

.field private static packageName:Ljava/lang/String;

.field public static requirePck:Lcn/haorui/sdk/core/utils/PckIdBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/PackConfigUtil;->PACKAGEKEY:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Landroid/content/Context;Lcn/haorui/sdk/core/utils/PackageBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/haorui/sdk/core/utils/PackConfigUtil;->checkPck(Landroid/content/Context;Lcn/haorui/sdk/core/utils/PackageBean;)V

    return-void
.end method

.method private static checkAndReportResult(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;",
            ">;",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcn/haorui/sdk/core/utils/PackConfigUtil;->getPackBean(Landroid/content/Context;Ljava/util/List;I)Lcn/haorui/sdk/core/utils/PckIdBean;

    move-result-object p1

    sput-object p1, Lcn/haorui/sdk/core/utils/PackConfigUtil;->requirePck:Lcn/haorui/sdk/core/utils/PckIdBean;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p2, p1}, Lcn/haorui/sdk/core/utils/PackConfigUtil;->getPackBean(Landroid/content/Context;Ljava/util/List;I)Lcn/haorui/sdk/core/utils/PckIdBean;

    move-result-object p1

    invoke-static {p0, p1, p4}, Lcn/haorui/sdk/core/utils/PackConfigUtil;->generateData(Landroid/content/Context;Lcn/haorui/sdk/core/utils/PckIdBean;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/haorui/sdk/core/utils/SecurityHelper;->encryptAES(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "data"

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lcn/haorui/sdk/core/utils/PackConfigUtil$b;

    invoke-direct {p0}, Lcn/haorui/sdk/core/utils/PackConfigUtil$b;-><init>()V

    const/4 p2, 0x0

    invoke-static {p5, p2, p1, p2, p0}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncRequestJson(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static checkPck(Landroid/content/Context;Lcn/haorui/sdk/core/utils/PackageBean;)V
    .locals 6

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/utils/PackageBean;->getVer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcn/haorui/sdk/core/utils/PackageBean;->getApp()Lcn/haorui/sdk/core/utils/PackageBean$AppBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/PackageBean$AppBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/PackageBean$AppBean;->getRequired()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/PackageBean$AppBean;->getOthers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/PackageBean$AppBean;->getTtl()Ljava/lang/Integer;

    move-result-object v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcn/haorui/sdk/core/utils/PackConfigUtil;->checkAndReportResult(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lcn/haorui/sdk/core/utils/PackConfigUtil;->PACKAGEKEY:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static generateData(Landroid/content/Context;Lcn/haorui/sdk/core/utils/PckIdBean;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/HRConfig;->appId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1.4.6.8"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "sdk_version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v1, 0xfe0e0

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk_version_code"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/PackConfigUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    sget-object v1, Lcn/haorui/sdk/core/utils/PackConfigUtil;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcn/haorui/sdk/core/utils/PackConfigUtil;->packageName:Ljava/lang/String;

    const-string v2, "app_package"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "device_manufacturer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "device_brand"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "device_model"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/PackConfigUtil;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "country"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static {}, Lcn/haorui/sdk/core/HRConfig;->initUUID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "init_uuid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcn/haorui/sdk/core/HRConfig;->initTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "init_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ver"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getLocalOaid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getLocalOaid()Ljava/lang/String;

    move-result-object p2

    const-string v1, "device_oaid"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object p2

    invoke-virtual {p2}, Lcn/haorui/sdk/core/HRConfig$CustomController;->isCanUseAndroidId()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object p2

    invoke-virtual {p2}, Lcn/haorui/sdk/core/HRConfig$CustomController;->getAndroidId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object p2

    invoke-virtual {p2}, Lcn/haorui/sdk/core/HRConfig$CustomController;->getAndroidId()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcn/haorui/sdk/core/utils/PackConfigUtil;->androidId:Ljava/lang/String;

    goto :goto_0

    :cond_7
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/PackConfigUtil;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    :goto_0
    sget-object p2, Lcn/haorui/sdk/core/utils/PackConfigUtil;->androidId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    sget-object p2, Lcn/haorui/sdk/core/utils/PackConfigUtil;->androidId:Ljava/lang/String;

    const-string v1, "device_adid"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object p2

    invoke-virtual {p2}, Lcn/haorui/sdk/core/HRConfig$CustomController;->enablePersonalRecommend()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-static {p0}, Lcn/haorui/sdk/core/utils/PackConfigUtil;->getImei(Landroid/content/Context;)Ljava/lang/String;

    sget-object p0, Lcn/haorui/sdk/core/utils/PackConfigUtil;->imei:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_1

    :cond_9
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/PackConfigUtil;->getImei(Landroid/content/Context;)Ljava/lang/String;

    sget-object p0, Lcn/haorui/sdk/core/utils/PackConfigUtil;->imei:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_a

    :goto_1
    sget-object p0, Lcn/haorui/sdk/core/utils/PackConfigUtil;->imei:Ljava/lang/String;

    const-string p2, "device_imei"

    invoke-virtual {v0, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    sget-object p0, Lcn/haorui/sdk/core/utils/PackConfigUtil;->requirePck:Lcn/haorui/sdk/core/utils/PckIdBean;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/utils/PckIdBean;->getApp_y()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcn/haorui/sdk/core/utils/PckIdBean;->getApp_y()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v1, "."

    if-nez p2, :cond_b

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/utils/PckIdBean;->getApp_y()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_b
    sget-object p2, Lcn/haorui/sdk/core/utils/PackConfigUtil;->requirePck:Lcn/haorui/sdk/core/utils/PckIdBean;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/utils/PckIdBean;->getApp_n()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcn/haorui/sdk/core/utils/PckIdBean;->getApp_n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/utils/PckIdBean;->getApp_n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_c
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_e

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_d
    const-string p1, "app_y"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_10

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_f
    const-string p0, "app_n"

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/PackConfigUtil;->androidId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/haorui/sdk/core/utils/PackConfigUtil;->androidId:Ljava/lang/String;

    :cond_0
    sget-object p0, Lcn/haorui/sdk/core/utils/PackConfigUtil;->androidId:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getConfig(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcn/haorui/sdk/core/utils/PackConfigUtil;->PACKAGEKEY:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/HRConfig;->appId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_id"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "1.4.6.8"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "sdk_version"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v2, 0xfe0e0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk_version_code"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/PackConfigUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    sget-object v2, Lcn/haorui/sdk/core/utils/PackConfigUtil;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcn/haorui/sdk/core/utils/PackConfigUtil;->packageName:Ljava/lang/String;

    const-string v3, "app_package"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getLocalOaid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getLocalOaid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_oaid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/HRConfig$CustomController;->isCanUseAndroidId()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/HRConfig$CustomController;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/HRConfig$CustomController;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcn/haorui/sdk/core/utils/PackConfigUtil;->androidId:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/PackConfigUtil;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    :goto_0
    sget-object v2, Lcn/haorui/sdk/core/utils/PackConfigUtil;->androidId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcn/haorui/sdk/core/utils/PackConfigUtil;->androidId:Ljava/lang/String;

    const-string v3, "device_adid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "device_manufacturer"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "device_brand"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "device_model"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-static {p0}, Lcn/haorui/sdk/core/utils/PackConfigUtil;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "country"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "language"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-static {}, Lcn/haorui/sdk/core/HRConfig;->initUUID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "init_uuid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcn/haorui/sdk/core/HRConfig;->initTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "init_time"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    const-class v3, Lcn/haorui/sdk/core/utils/PackageBean;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/utils/PackageBean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/PackageBean;->getVer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/PackageBean;->getVer()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ver"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcn/haorui/sdk/core/utils/SecurityHelper;->encryptAES(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->isTest()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "https://sdk-demo.1rtb.net/sdk/config"

    goto :goto_2

    :cond_a
    const-string v0, "https://zlsdk.1rtb.net/sdk/config"

    :goto_2
    new-instance v2, Lcn/haorui/sdk/core/utils/PackConfigUtil$a;

    invoke-direct {v2, p0}, Lcn/haorui/sdk/core/utils/PackConfigUtil$a;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-static {v0, p0, v1, p0, v2}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncRequestJson(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;)V

    return-void
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcn/haorui/sdk/core/utils/PackConfigUtil;->imei:Ljava/lang/String;

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
    sput-object p0, Lcn/haorui/sdk/core/utils/PackConfigUtil;->imei:Ljava/lang/String;

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
    sget-object p0, Lcn/haorui/sdk/core/utils/PackConfigUtil;->imei:Ljava/lang/String;

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

.method private static getPackBean(Landroid/content/Context;Ljava/util/List;I)Lcn/haorui/sdk/core/utils/PckIdBean;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;",
            ">;I)",
            "Lcn/haorui/sdk/core/utils/PckIdBean;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;

    invoke-virtual {v4}, Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;->getApp_package()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;->getLastCheckTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    sub-long/2addr v6, v8

    int-to-long v8, p2

    const-string v10, "."

    cmp-long v11, v6, v8

    if-lez v11, :cond_6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_0

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v8, 0x100

    :try_start_0
    invoke-virtual {v6, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    :cond_0
    :try_start_1
    invoke-static {v5, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v5
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v5, :cond_1

    :goto_1
    const/4 v5, 0x1

    goto :goto_3

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    :cond_1
    :goto_2
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4, v7}, Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;->setInstalled(Z)V

    if-eqz v3, :cond_2

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v4}, Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_3
    invoke-virtual {v4}, Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v3, :cond_4

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v4}, Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;->setLastCheckTime(J)V

    goto :goto_5

    :cond_6
    invoke-virtual {v4}, Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v4}, Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;->getInstalled()Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v3, :cond_7

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v4}, Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v4}, Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    new-instance p0, Lcn/haorui/sdk/core/utils/PckIdBean;

    invoke-direct {p0}, Lcn/haorui/sdk/core/utils/PckIdBean;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/core/utils/PckIdBean;->setApp_y(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/core/utils/PckIdBean;->setApp_n(Ljava/lang/String;)V

    return-object p0
.end method

.method private static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/PackConfigUtil;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/haorui/sdk/core/utils/PackConfigUtil;->packageName:Ljava/lang/String;

    :cond_0
    sget-object p0, Lcn/haorui/sdk/core/utils/PackConfigUtil;->packageName:Ljava/lang/String;

    return-object p0
.end method
