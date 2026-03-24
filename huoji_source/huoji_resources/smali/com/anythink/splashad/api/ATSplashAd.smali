.class public Lcom/anythink/splashad/api/ATSplashAd;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final DEFAULT_SPLASH_TIMEOUT_TIME:I

.field public final TAG:Ljava/lang/String;

.field public mActivityWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public mAdLoadManager:Lcom/anythink/splashad/a/c;

.field public mAdSourceEventListener:Lcom/anythink/core/common/b/b;

.field public mContext:Landroid/content/Context;

.field public mDefaultAdSourceConfig:Ljava/lang/String;

.field public mDefaultRequestInfo:Lcom/anythink/core/api/ATMediationRequestInfo;

.field public mDeveloperStatusListener:Lcom/anythink/core/api/ATAdSourceStatusListener;

.field public mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

.field public mFetchAdTimeout:I

.field public mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

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
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/api/ATMediationRequestInfo;Lcom/anythink/splashad/api/ATSplashAdListener;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/anythink/splashad/api/ATSplashAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/api/ATMediationRequestInfo;Lcom/anythink/splashad/api/ATSplashAdListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/api/ATMediationRequestInfo;Lcom/anythink/splashad/api/ATSplashAdListener;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->TAG:Ljava/lang/String;

    const/16 v0, 0x1388

    iput v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->DEFAULT_SPLASH_TIMEOUT_TIME:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/anythink/splashad/api/ATSplashAd;->mPlacementId:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/splashad/api/ATSplashAd;->mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

    iput-object p3, p0, Lcom/anythink/splashad/api/ATSplashAd;->mDefaultRequestInfo:Lcom/anythink/core/api/ATMediationRequestInfo;

    iput p5, p0, Lcom/anythink/splashad/api/ATSplashAd;->mFetchAdTimeout:I

    instance-of p3, p1, Landroid/app/Activity;

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/ref/WeakReference;

    move-object p4, p1

    check-cast p4, Landroid/app/Activity;

    invoke-direct {p3, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/anythink/splashad/api/ATSplashAd;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    :cond_0
    iget-object p3, p0, Lcom/anythink/splashad/api/ATSplashAd;->mDefaultRequestInfo:Lcom/anythink/core/api/ATMediationRequestInfo;

    if-eqz p3, :cond_1

    const-string p4, "4"

    invoke-virtual {p3, p4}, Lcom/anythink/core/api/ATMediationRequestInfo;->setFormat(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1, p2}, Lcom/anythink/splashad/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/splashad/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd;->mAdLoadManager:Lcom/anythink/splashad/a/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/splashad/api/ATSplashAdListener;)V
    .locals 6

    const/4 v4, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/anythink/splashad/api/ATSplashAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/splashad/api/ATSplashAdListener;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/splashad/api/ATSplashAdListener;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->TAG:Ljava/lang/String;

    const/16 v0, 0x1388

    iput v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->DEFAULT_SPLASH_TIMEOUT_TIME:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/anythink/splashad/api/ATSplashAd;->mPlacementId:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/splashad/api/ATSplashAd;->mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

    iput-object p5, p0, Lcom/anythink/splashad/api/ATSplashAd;->mDefaultAdSourceConfig:Ljava/lang/String;

    iput p4, p0, Lcom/anythink/splashad/api/ATSplashAd;->mFetchAdTimeout:I

    instance-of p3, p1, Landroid/app/Activity;

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/ref/WeakReference;

    move-object p4, p1

    check-cast p4, Landroid/app/Activity;

    invoke-direct {p3, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/anythink/splashad/api/ATSplashAd;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    :cond_0
    iget-object p3, p0, Lcom/anythink/splashad/api/ATSplashAd;->mDefaultRequestInfo:Lcom/anythink/core/api/ATMediationRequestInfo;

    if-eqz p3, :cond_1

    const-string p4, "4"

    invoke-virtual {p3, p4}, Lcom/anythink/core/api/ATMediationRequestInfo;->setFormat(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1, p2}, Lcom/anythink/splashad/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/splashad/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd;->mAdLoadManager:Lcom/anythink/splashad/a/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/splashad/api/ATSplashAdListener;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/anythink/splashad/api/ATSplashAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/splashad/api/ATSplashAdListener;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/anythink/splashad/api/ATSplashAd;ILcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/splashad/api/ATSplashAd;->loadAd(ILcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;)V

    return-void
.end method

.method public static entryAdScenario(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    const-string v1, "4"

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

    const-string v1, "4"

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/anythink/core/common/b/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private getAdStatus()Lcom/anythink/core/api/ATAdStatusInfo;
    .locals 3

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
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mAdLoadManager:Lcom/anythink/splashad/a/c;

    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/splashad/api/ATSplashAd;->mTKExtraMap:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/splashad/a/c;->a(Landroid/content/Context;Ljava/util/Map;)Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->TAG:Ljava/lang/String;

    const-string v1, "SDK init error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private loadAd(ILcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mPlacementId:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/h$n;->s:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$n;->w:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/h$n;->n:Ljava/lang/String;

    const-string v4, ""

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/common/o/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mTKExtraMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd;->mTKExtraMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v1

    new-instance v2, Lcom/anythink/splashad/api/ATSplashAd$1;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/anythink/splashad/api/ATSplashAd$1;-><init>(Lcom/anythink/splashad/api/ATSplashAd;ILjava/util/Map;Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public checkAdStatus()Lcom/anythink/core/api/ATAdStatusInfo;
    .locals 6

    invoke-direct {p0}, Lcom/anythink/splashad/api/ATSplashAd;->getAdStatus()Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/core/api/ATAdStatusInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/anythink/core/api/ATAdStatusInfo;-><init>(ZZLcom/anythink/core/api/ATAdInfo;)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd;->mPlacementId:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$n;->s:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/h$n;->A:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATAdStatusInfo;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v1, v2, v3, v4, v5}, Lcom/anythink/core/common/o/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mAdLoadManager:Lcom/anythink/splashad/a/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/anythink/splashad/a/c;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAdReady()Z
    .locals 6

    invoke-direct {p0}, Lcom/anythink/splashad/api/ATSplashAd;->getAdStatus()Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/anythink/core/api/ATAdStatusInfo;->isReady()Z

    move-result v0

    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd;->mPlacementId:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$n;->s:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/h$n;->z:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v1, v2, v3, v4, v5}, Lcom/anythink/core/common/o/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public loadAd()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anythink/splashad/api/ATSplashAd;->loadAd(Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;)V

    return-void
.end method

.method public loadAd(Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/anythink/splashad/api/ATSplashAd;->loadAd(ILcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;)V

    return-void
.end method

.method public onDestory()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setAdDownloadListener(Lcom/anythink/core/api/ATEventInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    return-void
.end method

.method public setAdListener(Lcom/anythink/splashad/api/ATSplashAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd;->mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

    return-void
.end method

.method public setAdSourceStatusListener(Lcom/anythink/core/api/ATAdSourceStatusListener;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mAdSourceEventListener:Lcom/anythink/core/common/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/core/common/b/b;

    invoke-direct {v0}, Lcom/anythink/core/common/b/b;-><init>()V

    iput-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mAdSourceEventListener:Lcom/anythink/core/common/b/b;

    :cond_0
    iput-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd;->mDeveloperStatusListener:Lcom/anythink/core/api/ATAdSourceStatusListener;

    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mAdSourceEventListener:Lcom/anythink/core/common/b/b;

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

    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd;->mPlacementId:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mTKExtraMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mTKExtraMap:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mTKExtraMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mTKExtraMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/anythink/splashad/api/ATSplashAd;->show(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/splashad/api/ATSplashSkipInfo;Ljava/lang/String;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/splashad/api/ATSplashSkipInfo;)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/anythink/splashad/api/ATSplashAd;->show(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/splashad/api/ATSplashSkipInfo;Ljava/lang/String;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/splashad/api/ATSplashSkipInfo;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mPlacementId:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/h$n;->s:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$n;->y:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/h$n;->n:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/core/common/o/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->TAG:Ljava/lang/String;

    const-string v1, "Splash Activity is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd;->TAG:Ljava/lang/String;

    const-string p2, "Splash Container is null."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v3, Lcom/anythink/splashad/api/ATSplashAd$2;

    invoke-direct {v3, p0}, Lcom/anythink/splashad/api/ATSplashAd$2;-><init>(Lcom/anythink/splashad/api/ATSplashAd;)V

    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mAdLoadManager:Lcom/anythink/splashad/a/c;

    iget-object v4, p0, Lcom/anythink/splashad/api/ATSplashAd;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    iget-object v7, p0, Lcom/anythink/splashad/api/ATSplashAd;->mTKExtraMap:Ljava/util/Map;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/anythink/splashad/a/c;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/splashad/a/a;Lcom/anythink/core/api/ATEventInterface;Lcom/anythink/splashad/api/ATSplashSkipInfo;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd;->TAG:Ljava/lang/String;

    const-string p2, "SDK init error!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public show(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 1

    invoke-static {p3}, Lcom/anythink/core/common/o/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/anythink/splashad/api/ATSplashAd;->show(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/splashad/api/ATSplashSkipInfo;Ljava/lang/String;)V

    return-void
.end method
