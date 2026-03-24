.class public Lcom/octopus/ad/topon/OctopusATInitManager;
.super Lcom/anythink/core/api/ATInitMediation;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "OctopusATInitManager"

.field private static volatile sInstance:Lcom/octopus/ad/topon/OctopusATInitManager;


# instance fields
.field private mAppId:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mHasInit:Z

.field private final mIsIniting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/api/MediationInitCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/anythink/core/api/ATInitMediation;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/octopus/ad/topon/OctopusATInitManager;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/octopus/ad/topon/OctopusATInitManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/octopus/ad/topon/OctopusATInitManager;->mIsIniting:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic access$000(Lcom/octopus/ad/topon/OctopusATInitManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/topon/OctopusATInitManager;->mAppId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/octopus/ad/topon/OctopusATInitManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/topon/OctopusATInitManager;->mHasInit:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/octopus/ad/topon/OctopusATInitManager;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/octopus/ad/topon/OctopusATInitManager;->callbackResult(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private callbackResult(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATInitManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/octopus/ad/topon/OctopusATInitManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Lcom/octopus/ad/topon/OctopusATInitManager;->mListeners:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/api/MediationInitCallback;

    if-eqz v4, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {v4}, Lcom/anythink/core/api/MediationInitCallback;->onSuccess()V

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/anythink/core/api/MediationInitCallback;->onFail(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATInitManager;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATInitManager;->mIsIniting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getInstance()Lcom/octopus/ad/topon/OctopusATInitManager;
    .locals 2

    sget-object v0, Lcom/octopus/ad/topon/OctopusATInitManager;->sInstance:Lcom/octopus/ad/topon/OctopusATInitManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/octopus/ad/topon/OctopusATInitManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/octopus/ad/topon/OctopusATInitManager;->sInstance:Lcom/octopus/ad/topon/OctopusATInitManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/octopus/ad/topon/OctopusATInitManager;

    invoke-direct {v1}, Lcom/octopus/ad/topon/OctopusATInitManager;-><init>()V

    sput-object v1, Lcom/octopus/ad/topon/OctopusATInitManager;->sInstance:Lcom/octopus/ad/topon/OctopusATInitManager;

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
    sget-object v0, Lcom/octopus/ad/topon/OctopusATInitManager;->sInstance:Lcom/octopus/ad/topon/OctopusATInitManager;

    return-object v0
.end method


# virtual methods
.method public getNetworkName()Ljava/lang/String;
    .locals 1

    const-string v0, "Octopus"

    return-object v0
.end method

.method public getNetworkVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/octopus/ad/Octopus;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V
    .locals 3
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

    iget-boolean v0, p0, Lcom/octopus/ad/topon/OctopusATInitManager;->mHasInit:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/anythink/core/api/MediationInitCallback;->onSuccess()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATInitManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/octopus/ad/topon/OctopusATInitManager;->mIsIniting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATInitManager;->mListeners:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    iget-object v1, p0, Lcom/octopus/ad/topon/OctopusATInitManager;->mListeners:Ljava/util/List;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/topon/OctopusATInitManager;->mListeners:Ljava/util/List;

    :cond_4
    iget-object v1, p0, Lcom/octopus/ad/topon/OctopusATInitManager;->mIsIniting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "app_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "app_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/octopus/ad/topon/OctopusATInitManager;->mAppId:Ljava/lang/String;

    :cond_5
    if-eqz p3, :cond_6

    iget-object p2, p0, Lcom/octopus/ad/topon/OctopusATInitManager;->mListeners:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object p2, p0, Lcom/octopus/ad/topon/OctopusATInitManager;->mAppId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    const-string p2, "80000"

    const-string p3, "AppId is empty!"

    invoke-direct {p0, p1, p2, p3}, Lcom/octopus/ad/topon/OctopusATInitManager;->callbackResult(ZLjava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/octopus/ad/topon/OctopusATInitManager;->TAG:Ljava/lang/String;

    const-string p2, "init fail"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    iget-object p2, p0, Lcom/octopus/ad/topon/OctopusATInitManager;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/octopus/ad/topon/OctopusATInitManager$1;

    invoke-direct {p3, p0, p1}, Lcom/octopus/ad/topon/OctopusATInitManager$1;-><init>(Lcom/octopus/ad/topon/OctopusATInitManager;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
