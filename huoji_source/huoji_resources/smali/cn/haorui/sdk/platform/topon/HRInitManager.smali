.class public Lcn/haorui/sdk/platform/topon/HRInitManager;
.super Lcom/anythink/core/api/ATInitMediation;
.source ""


# static fields
.field private static sInstance:Lcn/haorui/sdk/platform/topon/HRInitManager;


# instance fields
.field private isInit:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/core/api/ATInitMediation;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/haorui/sdk/platform/topon/HRInitManager;
    .locals 2

    sget-object v0, Lcn/haorui/sdk/platform/topon/HRInitManager;->sInstance:Lcn/haorui/sdk/platform/topon/HRInitManager;

    if-nez v0, :cond_1

    const-class v0, Lcn/haorui/sdk/platform/topon/HRInitManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/haorui/sdk/platform/topon/HRInitManager;->sInstance:Lcn/haorui/sdk/platform/topon/HRInitManager;

    if-nez v1, :cond_0

    new-instance v1, Lcn/haorui/sdk/platform/topon/HRInitManager;

    invoke-direct {v1}, Lcn/haorui/sdk/platform/topon/HRInitManager;-><init>()V

    sput-object v1, Lcn/haorui/sdk/platform/topon/HRInitManager;->sInstance:Lcn/haorui/sdk/platform/topon/HRInitManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcn/haorui/sdk/platform/topon/HRInitManager;->sInstance:Lcn/haorui/sdk/platform/topon/HRInitManager;

    return-object v0
.end method


# virtual methods
.method public getNetworkName()Ljava/lang/String;
    .locals 1

    const-string v0, "HR Custom"

    return-object v0
.end method

.method public getNetworkVersion()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getVersionName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const-string v0, ""

    return-object v0
.end method

.method public initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/MediationInitCallback;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcn/haorui/sdk/platform/topon/HRInitManager;->isInit:Z

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lcom/anythink/core/api/MediationInitCallback;->onSuccess()V

    return-void

    :cond_0
    const-string v0, "app_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v0, Lcn/haorui/sdk/core/HRConfig$Builder;

    invoke-direct {v0}, Lcn/haorui/sdk/core/HRConfig$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcn/haorui/sdk/core/HRConfig$Builder;->appId(Ljava/lang/String;)Lcn/haorui/sdk/core/HRConfig$Builder;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcn/haorui/sdk/core/HRConfig$Builder;->enableDebug(Z)Lcn/haorui/sdk/core/HRConfig$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcn/haorui/sdk/core/HRConfig$Builder;->downloadConfirm(I)Lcn/haorui/sdk/core/HRConfig$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcn/haorui/sdk/core/HRConfig$Builder;->build()Lcn/haorui/sdk/core/HRConfig;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/haorui/sdk/core/AdSdk;->init(Landroid/content/Context;Lcn/haorui/sdk/core/HRConfig;)V

    iput-boolean v0, p0, Lcn/haorui/sdk/platform/topon/HRInitManager;->isInit:Z

    invoke-interface {p3}, Lcom/anythink/core/api/MediationInitCallback;->onSuccess()V

    return-void
.end method
