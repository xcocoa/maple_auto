.class public Lcn/haorui/sdk/core/AdSdk;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "AdSdk"

.field private static adConfig:Lcn/haorui/sdk/core/HRConfig; = null

.field private static context:Landroid/content/Context; = null

.field private static local_oaid:Ljava/lang/String; = null

.field private static oaid:Ljava/lang/String; = null

.field private static oaid_errno:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcn/haorui/sdk/core/AdSdk;->local_oaid:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/AdSdk;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic access$200()V
    .locals 0

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->initUA()V

    return-void
.end method

.method public static adConfig()Lcn/haorui/sdk/core/HRConfig;
    .locals 2

    sget-object v0, Lcn/haorui/sdk/core/AdSdk;->adConfig:Lcn/haorui/sdk/core/HRConfig;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SDK IS NOT INITED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/AdSdk;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getLocalOaid()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/haorui/sdk/core/AdSdk;->local_oaid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/haorui/sdk/core/AdSdk;->local_oaid:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig$CustomController;->getOaid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/AdSdk;->local_oaid:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcn/haorui/sdk/core/AdSdk;->local_oaid:Ljava/lang/String;

    return-object v0
.end method

.method public static getOaid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/AdSdk;->oaid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->customController()Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig$CustomController;->getOaid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/AdSdk;->oaid:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcn/haorui/sdk/core/AdSdk;->oaid:Ljava/lang/String;

    return-object v0
.end method

.method public static getOaid_errno()I
    .locals 1

    sget v0, Lcn/haorui/sdk/core/AdSdk;->oaid_errno:I

    return v0
.end method

.method public static getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    sget-object v0, Lcn/haorui/sdk/core/AdSdk;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AdSailSdk"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    const-string v0, "1.4.6.8"

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcn/haorui/sdk/core/HRConfig;)V
    .locals 2
    .param p1    # Lcn/haorui/sdk/core/HRConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    sget-object v0, Lcn/haorui/sdk/core/AdSdk;->adConfig:Lcn/haorui/sdk/core/HRConfig;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/AdSdk;->context:Landroid/content/Context;

    sput-object p1, Lcn/haorui/sdk/core/AdSdk;->adConfig:Lcn/haorui/sdk/core/HRConfig;

    const-string p1, "AD_HR"

    invoke-static {p1}, Lcn/haorui/sdk/core/a;->a(Ljava/lang/String;)Lcn/haorui/sdk/core/e;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/e;->config()Lcn/haorui/sdk/core/d;

    move-result-object p1

    sget-object v0, Lcn/haorui/sdk/core/AdSdk;->adConfig:Lcn/haorui/sdk/core/HRConfig;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->appId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p1, p0, v0, v1}, Lcn/haorui/sdk/core/d;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcn/haorui/sdk/core/AdSdk;->TAG:Ljava/lang/String;

    const-string p1, "hr init start"

    invoke-static {p0, p1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->initPackConfig()V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "config is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    sput-object p1, Lcn/haorui/sdk/core/AdSdk;->adConfig:Lcn/haorui/sdk/core/HRConfig;

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object p0, Lcn/haorui/sdk/core/AdSdk;->TAG:Ljava/lang/String;

    const-string p1, "SDK INIT ERROR"

    invoke-static {p0, p1}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object p0, Lcn/haorui/sdk/core/AdSdk;->adConfig:Lcn/haorui/sdk/core/HRConfig;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcn/haorui/sdk/core/HRConfig;->enableOaid()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->initLocalOaid()V

    goto :goto_1

    :cond_2
    const-string p0, "unknown"

    sput-object p0, Lcn/haorui/sdk/core/AdSdk;->local_oaid:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private static initLocalOaid()V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "local_oaid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sput-object v0, Lcn/haorui/sdk/core/AdSdk;->local_oaid:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcn/haorui/sdk/core/AdSdk;->context:Landroid/content/Context;

    new-instance v1, Lcn/haorui/sdk/core/AdSdk$a;

    invoke-direct {v1}, Lcn/haorui/sdk/core/AdSdk$a;-><init>()V

    if-eqz v0, :cond_2

    instance-of v3, v0, Landroid/app/Application;

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :cond_2
    sget-object v3, Lcn/haorui/sdk/core/loader/e;->a:Lcn/haorui/sdk/core/oaid/b;

    if-eqz v3, :cond_3

    goto/16 :goto_20

    :cond_3
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "LENOVO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_5

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "ZUK"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_2b

    const-string v4, "MOTOLORA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_8

    goto/16 :goto_1c

    :cond_8
    const-string v4, "MEIZU"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FLYME"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v4, 0x1

    :goto_5
    if-eqz v4, :cond_b

    new-instance v2, Lcn/haorui/sdk/core/oaid/impl/i;

    invoke-direct {v2, v0}, Lcn/haorui/sdk/core/oaid/impl/i;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1d

    :cond_b
    const-string v4, "NUBIA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_6

    :cond_c
    const/4 v4, 0x0

    goto :goto_7

    :cond_d
    :goto_6
    const/4 v4, 0x1

    :goto_7
    if-eqz v4, :cond_e

    new-instance v2, Lcn/haorui/sdk/core/oaid/impl/k;

    invoke-direct {v2, v0}, Lcn/haorui/sdk/core/oaid/impl/k;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1d

    :cond_e
    const-string v4, "XIAOMI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "REDMI"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_8

    :cond_f
    const/4 v4, 0x0

    goto :goto_9

    :cond_10
    :goto_8
    const/4 v4, 0x1

    :goto_9
    if-nez v4, :cond_2a

    const-string v4, "ro.miui.ui.version.name"

    invoke-static {v4, v2}, Lcn/haorui/sdk/core/loader/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v7

    if-nez v4, :cond_2a

    const-string v4, "BLACKSHARK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_a

    :cond_11
    const/4 v4, 0x0

    goto :goto_b

    :cond_12
    :goto_a
    const/4 v4, 0x1

    :goto_b
    if-eqz v4, :cond_13

    goto/16 :goto_1b

    :cond_13
    const-string v4, "SAMSUNG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_c

    :cond_14
    const/4 v4, 0x0

    goto :goto_d

    :cond_15
    :goto_c
    const/4 v4, 0x1

    :goto_d
    if-eqz v4, :cond_16

    new-instance v2, Lcn/haorui/sdk/core/oaid/impl/n;

    invoke-direct {v2, v0}, Lcn/haorui/sdk/core/oaid/impl/n;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1d

    :cond_16
    const-string v4, "VIVO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_18

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    const-string v4, "ro.vivo.os.version"

    invoke-static {v4, v2}, Lcn/haorui/sdk/core/loader/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    goto :goto_e

    :cond_17
    const/4 v4, 0x0

    goto :goto_f

    :cond_18
    :goto_e
    const/4 v4, 0x1

    :goto_f
    if-eqz v4, :cond_19

    new-instance v2, Lcn/haorui/sdk/core/oaid/impl/o;

    invoke-direct {v2, v0}, Lcn/haorui/sdk/core/oaid/impl/o;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1d

    :cond_19
    const-string v4, "ASUS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1b

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_10

    :cond_1a
    const/4 v4, 0x0

    goto :goto_11

    :cond_1b
    :goto_10
    const/4 v4, 0x1

    :goto_11
    if-eqz v4, :cond_1c

    new-instance v2, Lcn/haorui/sdk/core/oaid/impl/a;

    invoke-direct {v2, v0}, Lcn/haorui/sdk/core/oaid/impl/a;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1d

    :cond_1c
    const-string v4, "HUAWEI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1e

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1e

    const-string v4, "HONOR"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    goto :goto_12

    :cond_1d
    const/4 v4, 0x0

    goto :goto_13

    :cond_1e
    :goto_12
    const/4 v4, 0x1

    :goto_13
    if-nez v4, :cond_29

    const-string v4, "ro.build.version.emui"

    invoke-static {v4, v2}, Lcn/haorui/sdk/core/loader/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v7

    if-eqz v4, :cond_1f

    goto/16 :goto_1a

    :cond_1f
    const-string v4, "OPPO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_21

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    const-string v4, "REALME"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    const-string v4, "ro.build.version.opporom"

    invoke-static {v4, v2}, Lcn/haorui/sdk/core/loader/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_20

    goto :goto_14

    :cond_20
    const/4 v4, 0x0

    goto :goto_15

    :cond_21
    :goto_14
    const/4 v4, 0x1

    :goto_15
    if-nez v4, :cond_28

    const-string v4, "ONEPLUS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_16

    :cond_22
    const/4 v3, 0x0

    goto :goto_17

    :cond_23
    :goto_16
    const/4 v3, 0x1

    :goto_17
    if-eqz v3, :cond_24

    goto :goto_19

    :cond_24
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.coolpad.deviceidsupport"

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    goto :goto_18

    :catch_0
    nop

    :goto_18
    if-eqz v6, :cond_25

    new-instance v2, Lcn/haorui/sdk/core/oaid/impl/b;

    invoke-direct {v2, v0}, Lcn/haorui/sdk/core/oaid/impl/b;-><init>(Landroid/content/Context;)V

    goto :goto_1d

    :cond_25
    const-string v3, "ro.odm.manufacturer"

    invoke-static {v3, v2}, Lcn/haorui/sdk/core/loader/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PRIZE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    new-instance v2, Lcn/haorui/sdk/core/oaid/impl/c;

    invoke-direct {v2, v0}, Lcn/haorui/sdk/core/oaid/impl/c;-><init>(Landroid/content/Context;)V

    goto :goto_1d

    :cond_26
    const-string v3, "ro.build.freeme.label"

    invoke-static {v3, v2}, Lcn/haorui/sdk/core/loader/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v7

    if-eqz v2, :cond_27

    new-instance v2, Lcn/haorui/sdk/core/oaid/impl/e;

    invoke-direct {v2, v0}, Lcn/haorui/sdk/core/oaid/impl/e;-><init>(Landroid/content/Context;)V

    goto :goto_1d

    :cond_27
    const/4 v2, 0x0

    goto :goto_1d

    :cond_28
    :goto_19
    new-instance v2, Lcn/haorui/sdk/core/oaid/impl/m;

    invoke-direct {v2, v0}, Lcn/haorui/sdk/core/oaid/impl/m;-><init>(Landroid/content/Context;)V

    goto :goto_1d

    :cond_29
    :goto_1a
    new-instance v2, Lcn/haorui/sdk/core/oaid/impl/g;

    invoke-direct {v2, v0}, Lcn/haorui/sdk/core/oaid/impl/g;-><init>(Landroid/content/Context;)V

    goto :goto_1d

    :cond_2a
    :goto_1b
    new-instance v2, Lcn/haorui/sdk/core/oaid/impl/p;

    invoke-direct {v2, v0}, Lcn/haorui/sdk/core/oaid/impl/p;-><init>(Landroid/content/Context;)V

    goto :goto_1d

    :cond_2b
    :goto_1c
    new-instance v2, Lcn/haorui/sdk/core/oaid/impl/h;

    invoke-direct {v2, v0}, Lcn/haorui/sdk/core/oaid/impl/h;-><init>(Landroid/content/Context;)V

    :goto_1d
    sput-object v2, Lcn/haorui/sdk/core/loader/e;->a:Lcn/haorui/sdk/core/oaid/b;

    if-eqz v2, :cond_2c

    invoke-interface {v2}, Lcn/haorui/sdk/core/oaid/b;->a()Z

    move-result v2

    if-eqz v2, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Manufacturer interface has been found: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcn/haorui/sdk/core/loader/e;->a:Lcn/haorui/sdk/core/oaid/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v3, Lcn/haorui/sdk/core/loader/e;->a:Lcn/haorui/sdk/core/oaid/b;

    goto :goto_20

    :cond_2c
    new-instance v2, Lcn/haorui/sdk/core/oaid/impl/j;

    invoke-direct {v2, v0}, Lcn/haorui/sdk/core/oaid/impl/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcn/haorui/sdk/core/oaid/impl/j;->a()Z

    move-result v3

    if-eqz v3, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mobile Security Alliance has been found: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcn/haorui/sdk/core/oaid/impl/j;

    :goto_1e
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v3, v2

    goto :goto_1f

    :cond_2d
    new-instance v2, Lcn/haorui/sdk/core/oaid/impl/f;

    invoke-direct {v2, v0}, Lcn/haorui/sdk/core/oaid/impl/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcn/haorui/sdk/core/oaid/impl/f;->a()Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Google Play Service has been found: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcn/haorui/sdk/core/oaid/impl/f;

    goto :goto_1e

    :cond_2e
    new-instance v0, Lcn/haorui/sdk/core/oaid/impl/d;

    invoke-direct {v0}, Lcn/haorui/sdk/core/oaid/impl/d;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OAID/AAID was not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcn/haorui/sdk/core/oaid/impl/d;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v3, v0

    :goto_1f
    sput-object v3, Lcn/haorui/sdk/core/loader/e;->a:Lcn/haorui/sdk/core/oaid/b;

    :goto_20
    invoke-interface {v3, v1}, Lcn/haorui/sdk/core/oaid/b;->a(Lcn/haorui/sdk/core/oaid/a;)V

    return-void
.end method

.method private static initPackConfig()V
    .locals 2

    invoke-static {}, Lcn/haorui/sdk/core/utils/LocalThreadPools;->getInstance()Lcn/haorui/sdk/core/utils/LocalThreadPools;

    move-result-object v0

    new-instance v1, Lcn/haorui/sdk/core/AdSdk$b;

    invoke-direct {v1}, Lcn/haorui/sdk/core/AdSdk$b;-><init>()V

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/LocalThreadPools;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static initSdkIfNot(Landroid/content/Context;Lcn/haorui/sdk/core/domain/SdkAdInfo;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcn/haorui/sdk/core/domain/SdkAdInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/a;->a(Ljava/lang/String;)Lcn/haorui/sdk/core/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/core/e;->config()Lcn/haorui/sdk/core/d;

    move-result-object v0

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getApp_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getApp_key()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lcn/haorui/sdk/core/d;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static initUA()V
    .locals 4

    const-string v0, "install_time"

    :try_start_0
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    sget-object v0, Lcn/haorui/sdk/core/AdSdk;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/RequestUtil;->setUserAgent(Ljava/lang/String;)V

    invoke-static {}, Lcn/haorui/sdk/core/utils/RequestUtil;->getRomVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/RequestUtil;->setRomVersion(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :catchall_0
    :goto_1
    return-void
.end method

.method public static setOaid_errno(I)V
    .locals 0

    sput p0, Lcn/haorui/sdk/core/AdSdk;->oaid_errno:I

    return-void
.end method
