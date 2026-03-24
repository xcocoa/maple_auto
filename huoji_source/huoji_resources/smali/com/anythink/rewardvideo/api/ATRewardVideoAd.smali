.class public Lcom/anythink/rewardvideo/api/ATRewardVideoAd;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final TAG:Ljava/lang/String;

.field public adLoadListener:Lcom/anythink/core/common/b/a;

.field public mActivityWef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public mAdLoadManager:Lcom/anythink/rewardvideo/a/a;

.field public mAdSourceEventListener:Lcom/anythink/core/common/b/b;

.field public mContext:Landroid/content/Context;

.field public mDeveloperStatusListener:Lcom/anythink/core/api/ATAdSourceStatusListener;

.field public mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

.field private mInterListener:Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;

.field public mListener:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

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
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;

    invoke-direct {v0, p0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;-><init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAd;)V

    iput-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mInterListener:Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;

    new-instance v0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$2;

    invoke-direct {v0, p0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$2;-><init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAd;)V

    iput-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->adLoadListener:Lcom/anythink/core/common/b/a;

    iput-object p2, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mPlacementId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mContext:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mActivityWef:Ljava/lang/ref/WeakReference;

    :cond_0
    invoke-static {p1, p2}, Lcom/anythink/rewardvideo/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/rewardvideo/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdLoadManager:Lcom/anythink/rewardvideo/a/a;

    return-void
.end method

.method private controlShow(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mPlacementId:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/h$n;->q:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Landroid/app/Activity;

    :cond_1
    move-object v1, p1

    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->TAG:Ljava/lang/String;

    const-string v0, "RewardedVideo Show Activity is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdLoadManager:Lcom/anythink/rewardvideo/a/a;

    iget-object v3, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mInterListener:Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;

    iget-object v4, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    iget-object v5, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mTKExtraMap:Ljava/util/Map;

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/rewardvideo/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/anythink/rewardvideo/api/ATRewardVideoListener;Lcom/anythink/core/api/ATEventInterface;Ljava/util/Map;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "9999"

    const-string p2, "sdk init error"

    invoke-static {p1, v4, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mListener:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz p2, :cond_4

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdPlayFailed(Lcom/anythink/core/api/AdError;Lcom/anythink/core/api/ATAdInfo;)V

    :cond_4
    iget-object p1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->TAG:Ljava/lang/String;

    const-string p2, "SDK init error!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static entryAdScenario(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    const-string v1, "1"

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

    const-string v1, "1"

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
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdLoadManager:Lcom/anythink/rewardvideo/a/a;

    iget-object v1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mTKExtraMap:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/rewardvideo/a/a;->a(Landroid/content/Context;Ljava/util/Map;)Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "SDK init error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private getRequestContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mActivityWef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isPlaceStrategyNeedAutoLoad()Z
    .locals 3

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/d/h;->a(Landroid/content/Context;)Lcom/anythink/core/d/h;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/h;->a(Ljava/lang/String;)Lcom/anythink/core/d/f;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/d/f;->af()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method private load(Landroid/content/Context;ILcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mPlacementId:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$n;->q:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/h$n;->w:Ljava/lang/String;

    sget-object v4, Lcom/anythink/core/common/b/h$n;->n:Ljava/lang/String;

    const-string v5, ""

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/anythink/core/common/o/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, v0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdLoadManager:Lcom/anythink/rewardvideo/a/a;

    iget-object v10, v0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->adLoadListener:Lcom/anythink/core/common/b/a;

    iget-object v11, v0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdSourceEventListener:Lcom/anythink/core/common/b/b;

    iget-object v12, v0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mTKExtraMap:Ljava/util/Map;

    move-object v8, p1

    move/from16 v9, p2

    move-object/from16 v13, p3

    invoke-virtual/range {v7 .. v13}, Lcom/anythink/rewardvideo/a/a;->a(Landroid/content/Context;ILcom/anythink/core/common/b/a;Lcom/anythink/core/common/b/b;Ljava/util/Map;Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;)V

    return-void
.end method


# virtual methods
.method public checkAdStatus()Lcom/anythink/core/api/ATAdStatusInfo;
    .locals 6

    invoke-direct {p0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->getAdStatus()Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/core/api/ATAdStatusInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/anythink/core/api/ATAdStatusInfo;-><init>(ZZLcom/anythink/core/api/ATAdInfo;)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mPlacementId:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$n;->q:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdLoadManager:Lcom/anythink/rewardvideo/a/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/anythink/rewardvideo/a/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAdReady()Z
    .locals 6

    invoke-direct {p0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->getAdStatus()Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/anythink/core/api/ATAdStatusInfo;->isReady()Z

    move-result v0

    iget-object v1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mPlacementId:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$n;->q:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/h$n;->z:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v1, v2, v3, v4, v5}, Lcom/anythink/core/common/o/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public load()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->load(Landroid/content/Context;)V

    return-void
.end method

.method public load(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->load(Landroid/content/Context;Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;)V

    return-void
.end method

.method public load(Landroid/content/Context;Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->getRequestContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->load(Landroid/content/Context;ILcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;)V

    return-void
.end method

.method public load(Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->load(Landroid/content/Context;Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;)V

    return-void
.end method

.method public setAdDownloadListener(Lcom/anythink/core/api/ATEventInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    return-void
.end method

.method public setAdListener(Lcom/anythink/rewardvideo/api/ATRewardVideoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mListener:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    return-void
.end method

.method public setAdSourceStatusListener(Lcom/anythink/core/api/ATAdSourceStatusListener;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdSourceEventListener:Lcom/anythink/core/common/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/core/common/b/b;

    invoke-direct {v0}, Lcom/anythink/core/common/b/b;-><init>()V

    iput-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdSourceEventListener:Lcom/anythink/core/common/b/b;

    :cond_0
    iput-object p1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mDeveloperStatusListener:Lcom/anythink/core/api/ATAdSourceStatusListener;

    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdSourceEventListener:Lcom/anythink/core/common/b/b;

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

    iget-object v1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mPlacementId:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mTKExtraMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mTKExtraMap:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mTKExtraMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mTKExtraMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->controlShow(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lcom/anythink/core/common/o/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->controlShow(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
