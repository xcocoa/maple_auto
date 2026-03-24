.class public Lcom/anythink/nativead/api/ATNative;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final TAG:Ljava/lang/String;

.field public adLoadListener:Lcom/anythink/core/common/b/a;

.field public mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public mAdLoadManager:Lcom/anythink/nativead/a/a;

.field public mAdSourceEventListener:Lcom/anythink/core/common/b/b;

.field public mContext:Landroid/content/Context;

.field public mDeveloperStatusListener:Lcom/anythink/core/api/ATAdSourceStatusListener;

.field public mListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

.field public mPlacementId:Ljava/lang/String;

.field public mTKExtraMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/nativead/api/ATNativeNetworkListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/anythink/nativead/api/ATNative;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/nativead/api/ATNative;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/anythink/nativead/api/ATNative$1;

    invoke-direct {v0, p0}, Lcom/anythink/nativead/api/ATNative$1;-><init>(Lcom/anythink/nativead/api/ATNative;)V

    iput-object v0, p0, Lcom/anythink/nativead/api/ATNative;->adLoadListener:Lcom/anythink/core/common/b/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mActivityRef:Ljava/lang/ref/WeakReference;

    :cond_0
    iput-object p2, p0, Lcom/anythink/nativead/api/ATNative;->mPlacementId:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/nativead/api/ATNative;->mListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    invoke-static {p1, p2}, Lcom/anythink/nativead/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/nativead/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/nativead/api/ATNative;->mAdLoadManager:Lcom/anythink/nativead/a/a;

    return-void
.end method

.method public static entryAdScenario(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    const-string v1, "0"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/anythink/core/common/b/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static entryAdScenario(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/anythink/core/common/b/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public checkAdStatus()Lcom/anythink/core/api/ATAdStatusInfo;
    .locals 6

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mAdLoadManager:Lcom/anythink/nativead/a/a;

    invoke-direct {p0}, Lcom/anythink/nativead/api/ATNative;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/nativead/api/ATNative;->mTKExtraMap:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/nativead/a/a;->a(Landroid/content/Context;Ljava/util/Map;)Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/nativead/api/ATNative;->mPlacementId:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$n;->r:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/h$n;->A:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATAdStatusInfo;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v1, v2, v3, v4, v5}, Lcom/anythink/core/common/o/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->TAG:Ljava/lang/String;

    const-string v1, "SDK init error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/anythink/core/api/ATAdStatusInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/anythink/core/api/ATAdStatusInfo;-><init>(ZZLcom/anythink/core/api/ATAdInfo;)V

    return-object v0
.end method

.method public checkValidAdCaches()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/api/ATAdInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mAdLoadManager:Lcom/anythink/nativead/a/a;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/anythink/nativead/api/ATNative;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/a/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNativeAd()Lcom/anythink/nativead/api/NativeAd;
    .locals 4

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mAdLoadManager:Lcom/anythink/nativead/a/a;

    iget-object v1, p0, Lcom/anythink/nativead/api/ATNative;->mTKExtraMap:Ljava/util/Map;

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Lcom/anythink/nativead/a/a;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/anythink/core/common/f/b;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/anythink/nativead/api/NativeAd;

    invoke-direct {p0}, Lcom/anythink/nativead/api/ATNative;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/nativead/api/ATNative;->mPlacementId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/anythink/nativead/api/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/common/f/b;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNativeAd(Ljava/lang/String;)Lcom/anythink/nativead/api/NativeAd;
    .locals 3

    invoke-static {p1}, Lcom/anythink/core/common/o/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mAdLoadManager:Lcom/anythink/nativead/a/a;

    iget-object v1, p0, Lcom/anythink/nativead/api/ATNative;->mTKExtraMap:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/anythink/nativead/a/a;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/anythink/core/common/f/b;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/anythink/nativead/api/NativeAd;

    invoke-direct {p0}, Lcom/anythink/nativead/api/ATNative;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/nativead/api/ATNative;->mPlacementId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/anythink/nativead/api/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/common/f/b;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public makeAdRequest()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/api/ATNative;->makeAdRequest(Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;)V

    return-void
.end method

.method public makeAdRequest(Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;)V
    .locals 12

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mPlacementId:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/h$n;->r:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$n;->w:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/h$n;->n:Ljava/lang/String;

    const-string v4, ""

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/common/o/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/anythink/nativead/api/ATNative;->mAdLoadManager:Lcom/anythink/nativead/a/a;

    invoke-direct {p0}, Lcom/anythink/nativead/api/ATNative;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/anythink/nativead/api/ATNative;->adLoadListener:Lcom/anythink/core/common/b/a;

    iget-object v9, p0, Lcom/anythink/nativead/api/ATNative;->mAdSourceEventListener:Lcom/anythink/core/common/b/b;

    iget-object v10, p0, Lcom/anythink/nativead/api/ATNative;->mTKExtraMap:Ljava/util/Map;

    move-object v11, p1

    invoke-virtual/range {v6 .. v11}, Lcom/anythink/nativead/a/a;->a(Landroid/content/Context;Lcom/anythink/core/common/b/a;Lcom/anythink/core/common/b/b;Ljava/util/Map;Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;)V

    return-void
.end method

.method public setAdListener(Lcom/anythink/nativead/api/ATNativeNetworkListener;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/api/ATNative;->mListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    return-void
.end method

.method public setAdSourceStatusListener(Lcom/anythink/core/api/ATAdSourceStatusListener;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mAdSourceEventListener:Lcom/anythink/core/common/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/core/common/b/b;

    invoke-direct {v0}, Lcom/anythink/core/common/b/b;-><init>()V

    iput-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mAdSourceEventListener:Lcom/anythink/core/common/b/b;

    :cond_0
    iput-object p1, p0, Lcom/anythink/nativead/api/ATNative;->mDeveloperStatusListener:Lcom/anythink/core/api/ATAdSourceStatusListener;

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mAdSourceEventListener:Lcom/anythink/core/common/b/b;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/b/b;->a(Lcom/anythink/core/api/ATAdSourceStatusListener;)V

    return-void
.end method

.method public setLocalExtra(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/nativead/api/ATNative;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setTKExtra(Ljava/util/Map;)V
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

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mTKExtraMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mTKExtraMap:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mTKExtraMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mTKExtraMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
