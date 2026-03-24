.class public Lcom/anythink/core/debugger/CoreDebuggerManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile a:Lcom/anythink/core/debugger/CoreDebuggerManager;


# instance fields
.field private final b:Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;

.field private final c:Lcom/anythink/core/debugger/api/DebuggerSdkInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;

    invoke-direct {v0}, Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/debugger/CoreDebuggerManager;->b:Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;

    new-instance v0, Lcom/anythink/core/debugger/api/DebuggerSdkInfo;

    invoke-direct {v0}, Lcom/anythink/core/debugger/api/DebuggerSdkInfo;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/debugger/CoreDebuggerManager;->c:Lcom/anythink/core/debugger/api/DebuggerSdkInfo;

    return-void
.end method

.method private a()V
    .locals 7

    const-string v0, "mac"

    const-string v1, "oaid"

    const-string v2, "imei"

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/n;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object v3

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v4

    if-nez v3, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v3, v4}, Lcom/anythink/core/api/IExHandler;->getAid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Lcom/anythink/core/api/IExHandler;->fillRequestData(Lorg/json/JSONObject;Lcom/anythink/core/d/a;)V

    iget-object v3, p0, Lcom/anythink/core/debugger/CoreDebuggerManager;->b:Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;

    invoke-virtual {v3, v4}, Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;->setAndroidId(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/anythink/core/debugger/CoreDebuggerManager;->b:Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;->setImei(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/anythink/core/debugger/CoreDebuggerManager;->b:Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;->setOaid(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/anythink/core/debugger/CoreDebuggerManager;->b:Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;->setMac(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public static getInstance()Lcom/anythink/core/debugger/CoreDebuggerManager;
    .locals 2

    sget-object v0, Lcom/anythink/core/debugger/CoreDebuggerManager;->a:Lcom/anythink/core/debugger/CoreDebuggerManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/anythink/core/debugger/CoreDebuggerManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/core/debugger/CoreDebuggerManager;->a:Lcom/anythink/core/debugger/CoreDebuggerManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/core/debugger/CoreDebuggerManager;

    invoke-direct {v1}, Lcom/anythink/core/debugger/CoreDebuggerManager;-><init>()V

    sput-object v1, Lcom/anythink/core/debugger/CoreDebuggerManager;->a:Lcom/anythink/core/debugger/CoreDebuggerManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/anythink/core/debugger/CoreDebuggerManager;->a:Lcom/anythink/core/debugger/CoreDebuggerManager;

    return-object v0
.end method


# virtual methods
.method public setDeviceInfoGetter(Landroid/content/Context;Lcom/anythink/core/debugger/api/IDeviceInfoGetter;)V
    .locals 6

    const-string v0, "mac"

    const-string v1, "oaid"

    const-string v2, "imei"

    if-eqz p2, :cond_3

    iget-object v3, p0, Lcom/anythink/core/debugger/CoreDebuggerManager;->b:Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;

    invoke-static {p1}, Lcom/anythink/core/common/o/e;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;->setGaid(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/anythink/core/debugger/CoreDebuggerManager;->b:Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;

    invoke-static {p1}, Lcom/anythink/core/common/o/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;->setMnc(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/anythink/core/debugger/CoreDebuggerManager;->b:Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;

    invoke-static {p1}, Lcom/anythink/core/common/o/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;->setMcc(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/core/debugger/CoreDebuggerManager;->b:Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/n;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;->setUpId(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/n;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v3

    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1, v3}, Lcom/anythink/core/api/IExHandler;->getAid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Lcom/anythink/core/api/IExHandler;->fillRequestData(Lorg/json/JSONObject;Lcom/anythink/core/d/a;)V

    iget-object p1, p0, Lcom/anythink/core/debugger/CoreDebuggerManager;->b:Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;

    invoke-virtual {p1, v3}, Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;->setAndroidId(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/core/debugger/CoreDebuggerManager;->b:Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;->setImei(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/core/debugger/CoreDebuggerManager;->b:Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;->setOaid(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/core/debugger/CoreDebuggerManager;->b:Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;->setMac(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    iget-object p1, p0, Lcom/anythink/core/debugger/CoreDebuggerManager;->b:Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;

    invoke-interface {p2, p1}, Lcom/anythink/core/debugger/api/IDeviceInfoGetter;->onDeviceInfoCallback(Lcom/anythink/core/debugger/api/DebuggerDeviceInfo;)V

    :cond_3
    return-void
.end method

.method public setSdkInfoGetter(Lcom/anythink/core/debugger/api/ISdkInfoGetter;)V
    .locals 3

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/anythink/core/debugger/CoreDebuggerManager;->c:Lcom/anythink/core/debugger/api/DebuggerSdkInfo;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->M()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/debugger/api/DebuggerSdkInfo;->setInitSdk(Z)V

    iget-object v1, p0, Lcom/anythink/core/debugger/CoreDebuggerManager;->c:Lcom/anythink/core/debugger/api/DebuggerSdkInfo;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/debugger/api/DebuggerSdkInfo;->setAppId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/debugger/CoreDebuggerManager;->c:Lcom/anythink/core/debugger/api/DebuggerSdkInfo;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->e()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/debugger/api/DebuggerSdkInfo;->setDeniedUploadDeviceInfo([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/debugger/CoreDebuggerManager;->c:Lcom/anythink/core/debugger/api/DebuggerSdkInfo;

    iget-boolean v2, v0, Lcom/anythink/core/common/b/n;->c:Z

    invoke-virtual {v1, v2}, Lcom/anythink/core/debugger/api/DebuggerSdkInfo;->setHaveLoadAd(Z)V

    iget-object v1, p0, Lcom/anythink/core/debugger/CoreDebuggerManager;->c:Lcom/anythink/core/debugger/api/DebuggerSdkInfo;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->H()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/anythink/core/debugger/api/DebuggerSdkInfo;->setHavePreInitNetwork(Z)V

    iget-object v0, p0, Lcom/anythink/core/debugger/CoreDebuggerManager;->c:Lcom/anythink/core/debugger/api/DebuggerSdkInfo;

    invoke-interface {p1, v0}, Lcom/anythink/core/debugger/api/ISdkInfoGetter;->onSdkInfoCallback(Lcom/anythink/core/debugger/api/DebuggerSdkInfo;)V

    :cond_0
    return-void
.end method
