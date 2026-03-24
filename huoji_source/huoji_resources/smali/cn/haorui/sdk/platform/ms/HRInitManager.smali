.class public Lcn/haorui/sdk/platform/ms/HRInitManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/platform/ms/HRInitManager$InitCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HRInitManager"

.field private static sInstance:Lcn/haorui/sdk/platform/ms/HRInitManager;


# instance fields
.field private isInit:Z

.field private oaid:Ljava/lang/String;

.field private splashShowTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcn/haorui/sdk/platform/ms/HRInitManager;->oaid:Ljava/lang/String;

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcn/haorui/sdk/platform/ms/HRInitManager;->splashShowTime:J

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/platform/ms/HRInitManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/ms/HRInitManager;->oaid:Ljava/lang/String;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcn/haorui/sdk/platform/ms/HRInitManager;
    .locals 2

    const-class v0, Lcn/haorui/sdk/platform/ms/HRInitManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/haorui/sdk/platform/ms/HRInitManager;->sInstance:Lcn/haorui/sdk/platform/ms/HRInitManager;

    if-nez v1, :cond_0

    new-instance v1, Lcn/haorui/sdk/platform/ms/HRInitManager;

    invoke-direct {v1}, Lcn/haorui/sdk/platform/ms/HRInitManager;-><init>()V

    sput-object v1, Lcn/haorui/sdk/platform/ms/HRInitManager;->sInstance:Lcn/haorui/sdk/platform/ms/HRInitManager;

    :cond_0
    sget-object v1, Lcn/haorui/sdk/platform/ms/HRInitManager;->sInstance:Lcn/haorui/sdk/platform/ms/HRInitManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized initSdk(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/platform/ms/HRInitManager$InitCallback;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcn/haorui/sdk/platform/ms/HRInitManager;->isInit:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcn/haorui/sdk/platform/ms/HRInitManager$InitCallback;->onSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "com.meishu.sdk.core.AdSdk"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v3, "getLocalOaid"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcn/haorui/sdk/platform/ms/HRInitManager;->oaid:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    const/4 v2, 0x1

    :try_start_5
    const-string v3, "com.meishu.sdk.core.AdSdk"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    const-string v4, "adConfig"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.meishu.sdk.core.MSAdConfig"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "splashShowTime"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/haorui/sdk/platform/ms/HRInitManager;->splashShowTime:J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    new-instance v0, Lcn/haorui/sdk/core/HRConfig$Builder;

    invoke-direct {v0}, Lcn/haorui/sdk/core/HRConfig$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcn/haorui/sdk/core/HRConfig$Builder;->appId(Ljava/lang/String;)Lcn/haorui/sdk/core/HRConfig$Builder;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcn/haorui/sdk/core/HRConfig$Builder;->enableDebug(Z)Lcn/haorui/sdk/core/HRConfig$Builder;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcn/haorui/sdk/core/HRConfig$Builder;->downloadConfirm(I)Lcn/haorui/sdk/core/HRConfig$Builder;

    move-result-object p2

    iget-wide v0, p0, Lcn/haorui/sdk/platform/ms/HRInitManager;->splashShowTime:J

    invoke-virtual {p2, v0, v1}, Lcn/haorui/sdk/core/HRConfig$Builder;->setSplashShowTime(J)Lcn/haorui/sdk/core/HRConfig$Builder;

    move-result-object p2

    new-instance v0, Lcn/haorui/sdk/platform/ms/HRInitManager$1;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/platform/ms/HRInitManager$1;-><init>(Lcn/haorui/sdk/platform/ms/HRInitManager;)V

    invoke-virtual {p2, v0}, Lcn/haorui/sdk/core/HRConfig$Builder;->customController(Lcn/haorui/sdk/core/HRConfig$CustomController;)Lcn/haorui/sdk/core/HRConfig$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcn/haorui/sdk/core/HRConfig$Builder;->build()Lcn/haorui/sdk/core/HRConfig;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/haorui/sdk/core/AdSdk;->init(Landroid/content/Context;Lcn/haorui/sdk/core/HRConfig;)V

    iput-boolean v2, p0, Lcn/haorui/sdk/platform/ms/HRInitManager;->isInit:Z

    if-eqz p3, :cond_2

    invoke-interface {p3}, Lcn/haorui/sdk/platform/ms/HRInitManager$InitCallback;->onSuccess()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
