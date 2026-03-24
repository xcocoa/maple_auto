.class public Lcom/anythink/core/api/ATSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static HAS_INIT:Z = false

.field public static final NONPERSONALIZED:I = 0x1

.field public static final PERSONALIZED:I = 0x0

.field public static final UNKNOWN:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCustomAdapterConfig(Ljava/lang/String;Lcom/anythink/core/api/ATCustomAdapterConfig;)V
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/anythink/core/common/b/n;->a(Ljava/lang/String;Lcom/anythink/core/api/ATCustomAdapterConfig;)V

    return-void
.end method

.method public static checkIsEuTraffic(Landroid/content/Context;Lcom/anythink/core/api/NetTrafficeCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/anythink/core/common/b/q;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/q;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/anythink/core/common/b/q;->a(Lcom/anythink/core/api/NetTrafficeCallback;)V

    return-void
.end method

.method public static varargs deniedUploadDeviceInfo([Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/n;->a([Ljava/lang/String;)V

    return-void
.end method

.method public static getArea(Lcom/anythink/core/api/ATAreaCallback;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/anythink/core/common/h/e;

    invoke-direct {v0}, Lcom/anythink/core/common/h/e;-><init>()V

    const/4 v1, 0x0

    new-instance v2, Lcom/anythink/core/api/ATSDK$2;

    invoke-direct {v2, p0}, Lcom/anythink/core/api/ATSDK$2;-><init>(Lcom/anythink/core/api/ATAreaCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/h/a;->a(ILcom/anythink/core/common/h/k;)V

    return-void
.end method

.method public static getGDPRDataLevel(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/anythink/core/common/b/q;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/q;->a()I

    move-result p0

    return p0
.end method

.method public static getPersionalizedAdStatus()I
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->d()I

    move-result v0

    return v0
.end method

.method public static getSDKVersionName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/o/h;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/anythink/core/api/ATSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATNetworkConfig;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATNetworkConfig;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/anythink/core/api/ATSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATNetworkConfig;Lcom/anythink/core/api/ATSDKInitListener;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATNetworkConfig;Lcom/anythink/core/api/ATSDKInitListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_1

    const-string p0, "init: Context is null!"

    if-eqz p4, :cond_0

    :try_start_0
    invoke-interface {p4, p0}, Lcom/anythink/core/api/ATSDKInitListener;->onFail(Ljava/lang/String;)V

    :cond_0
    const-string p1, "anythink"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/anythink/core/common/b/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATNetworkConfig;)V

    if-eqz p4, :cond_2

    invoke-interface {p4}, Lcom/anythink/core/api/ATSDKInitListener;->onSuccess()V

    :cond_2
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    new-instance p0, Lcom/anythink/core/api/ATSDK$1;

    invoke-direct {p0}, Lcom/anythink/core/api/ATSDK$1;-><init>()V

    invoke-static {p0}, Lcom/anythink/core/common/b/n;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static initCustomMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/n;->a(Ljava/util/Map;)V

    return-void
.end method

.method public static initPlacementCustomMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/anythink/core/common/b/n;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static integrationChecking(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/n;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static isCnSDK()Z
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isEUTraffic(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/anythink/core/common/b/q;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/q;->d()Z

    move-result p0

    return p0
.end method

.method public static isNetworkLogDebug()Z
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->A()Z

    move-result v0

    return v0
.end method

.method public static setATAdFilter([Ljava/lang/String;Lcom/anythink/core/api/IATAdFilter;)V
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/anythink/core/common/b/n;->a([Ljava/lang/String;Lcom/anythink/core/api/IATAdFilter;)V

    return-void
.end method

.method public static setATPrivacyConfig(Lcom/anythink/core/api/ATPrivacyConfig;)V
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/n;->a(Lcom/anythink/core/api/ATPrivacyConfig;)V

    return-void
.end method

.method public static setAdLogoVisible(Z)V
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/n;->c(Z)V

    return-void
.end method

.method public static setBundleName(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/n;->r(Ljava/lang/String;)V

    return-void
.end method

.method public static setChannel(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/anythink/core/common/o/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/n;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setDebuggerConfig(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/api/ATDebuggerConfig;)V
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/anythink/core/common/b/n;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/api/ATDebuggerConfig;)V

    return-void
.end method

.method public static setExcludePackageList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/n;->a(Ljava/util/List;)V

    return-void
.end method

.method public static setFilterAdSourceIdList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/anythink/core/common/b/n;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static setFilterNetworkFirmIdList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static setGDPRUploadDataLevel(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "anythink"

    if-nez p0, :cond_0

    const-string p0, "setGDPRUploadDataLevel: context should not be null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "GDPR level setting error!!! Level must be PERSONALIZED or NONPERSONALIZED."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/anythink/core/common/b/q;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/q;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/anythink/core/common/b/q;->a(I)V

    return-void
.end method

.method public static setInitType(I)V
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/n;->b(I)V

    return-void
.end method

.method public static setLocalStrategyAssetPath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    invoke-static {p0, p1}, Lcom/anythink/core/common/b/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setLocation(Landroid/location/Location;)V
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/n;->a(Landroid/location/Location;)V

    return-void
.end method

.method public static setNetworkLogDebug(Z)V
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/n;->b(Z)V

    return-void
.end method

.method public static setPersonalizedAdStatus(I)V
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/n;->a(I)V

    return-void
.end method

.method public static setSharedPlacementConfig(Lcom/anythink/core/api/ATSharedPlacementConfig;)V
    .locals 0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    invoke-static {p0}, Lcom/anythink/core/common/b/n;->a(Lcom/anythink/core/api/ATSharedPlacementConfig;)V

    return-void
.end method

.method public static setSubChannel(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/anythink/core/common/o/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/n;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs setSupportDomainCountry([Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/anythink/core/common/e/b;->a:[Ljava/lang/String;

    return-void
.end method

.method public static setSystemDevFragmentType(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/n;->q(Ljava/lang/String;)V

    return-void
.end method

.method public static setUseHTTP(Z)V
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/n;->d(Z)V

    return-void
.end method

.method public static setWXAppId(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setWXStatus(Z)V
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/n;->a(Z)V

    return-void
.end method

.method public static showGdprAuth(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/anythink/core/common/b/q;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/anythink/core/common/b/q;->a(Landroid/content/Context;Lcom/anythink/core/api/ATGDPRAuthCallback;)V

    return-void
.end method

.method public static showGdprAuth(Landroid/content/Context;Lcom/anythink/core/api/ATGDPRAuthCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/anythink/core/common/b/q;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/q;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/anythink/core/common/b/q;->a(Landroid/content/Context;Lcom/anythink/core/api/ATGDPRAuthCallback;)V

    return-void
.end method

.method public static testModeDeviceInfo(Landroid/content/Context;Lcom/anythink/core/api/DeviceInfoCallback;)V
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/anythink/core/common/b/n;->a(Landroid/content/Context;Lcom/anythink/core/api/DeviceInfoCallback;)V

    return-void
.end method
