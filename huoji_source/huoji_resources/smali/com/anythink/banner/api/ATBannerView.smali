.class public Lcom/anythink/banner/api/ATBannerView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/anythink/banner/a/c;


# instance fields
.field private final TAG:Ljava/lang/String;

.field public adLoadListener:Lcom/anythink/core/common/b/a;

.field private adxBidFloorInfo:Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;

.field private canRenderBanner:Z

.field public hasTouchWindow:Z

.field public impressionTracker:Lcom/anythink/core/common/o/a/c;

.field private mAdLoadManager:Lcom/anythink/banner/a/a;

.field public mAdSourceEventListener:Lcom/anythink/core/common/b/b;

.field private mBannerRefreshTimer:Lcom/anythink/banner/b/a;

.field public mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

.field public mDeveloperStatusListener:Lcom/anythink/core/api/ATAdSourceStatusListener;

.field public mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

.field private mInnerBannerListener:Lcom/anythink/banner/a/d;

.field public mIsRefresh:Z

.field private mLastShowBannerView:Landroid/view/View;

.field private mListener:Lcom/anythink/banner/api/ATBannerListener;

.field private mPlacementId:Ljava/lang/String;

.field private mScenario:Ljava/lang/String;

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

.field public visibilityChecker:Lcom/anythink/core/common/o/a/f$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->mScenario:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/banner/api/ATBannerView;->hasTouchWindow:Z

    iput-boolean p1, p0, Lcom/anythink/banner/api/ATBannerView;->mIsRefresh:Z

    new-instance p1, Lcom/anythink/banner/api/ATBannerView$1;

    invoke-direct {p1, p0}, Lcom/anythink/banner/api/ATBannerView$1;-><init>(Lcom/anythink/banner/api/ATBannerView;)V

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->mInnerBannerListener:Lcom/anythink/banner/a/d;

    new-instance p1, Lcom/anythink/banner/api/ATBannerView$2;

    invoke-direct {p1, p0}, Lcom/anythink/banner/api/ATBannerView$2;-><init>(Lcom/anythink/banner/api/ATBannerView;)V

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->adLoadListener:Lcom/anythink/core/common/b/a;

    new-instance p1, Lcom/anythink/banner/b/a;

    invoke-direct {p1, p0}, Lcom/anythink/banner/b/a;-><init>(Lcom/anythink/banner/a/c;)V

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->mBannerRefreshTimer:Lcom/anythink/banner/b/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class p1, Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->mScenario:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/banner/api/ATBannerView;->hasTouchWindow:Z

    iput-boolean p1, p0, Lcom/anythink/banner/api/ATBannerView;->mIsRefresh:Z

    new-instance p1, Lcom/anythink/banner/api/ATBannerView$1;

    invoke-direct {p1, p0}, Lcom/anythink/banner/api/ATBannerView$1;-><init>(Lcom/anythink/banner/api/ATBannerView;)V

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->mInnerBannerListener:Lcom/anythink/banner/a/d;

    new-instance p1, Lcom/anythink/banner/api/ATBannerView$2;

    invoke-direct {p1, p0}, Lcom/anythink/banner/api/ATBannerView$2;-><init>(Lcom/anythink/banner/api/ATBannerView;)V

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->adLoadListener:Lcom/anythink/core/common/b/a;

    new-instance p1, Lcom/anythink/banner/b/a;

    invoke-direct {p1, p0}, Lcom/anythink/banner/b/a;-><init>(Lcom/anythink/banner/a/c;)V

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->mBannerRefreshTimer:Lcom/anythink/banner/b/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class p1, Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->mScenario:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/banner/api/ATBannerView;->hasTouchWindow:Z

    iput-boolean p1, p0, Lcom/anythink/banner/api/ATBannerView;->mIsRefresh:Z

    new-instance p1, Lcom/anythink/banner/api/ATBannerView$1;

    invoke-direct {p1, p0}, Lcom/anythink/banner/api/ATBannerView$1;-><init>(Lcom/anythink/banner/api/ATBannerView;)V

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->mInnerBannerListener:Lcom/anythink/banner/a/d;

    new-instance p1, Lcom/anythink/banner/api/ATBannerView$2;

    invoke-direct {p1, p0}, Lcom/anythink/banner/api/ATBannerView$2;-><init>(Lcom/anythink/banner/api/ATBannerView;)V

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->adLoadListener:Lcom/anythink/core/common/b/a;

    new-instance p1, Lcom/anythink/banner/b/a;

    invoke-direct {p1, p0}, Lcom/anythink/banner/b/a;-><init>(Lcom/anythink/banner/a/c;)V

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->mBannerRefreshTimer:Lcom/anythink/banner/b/a;

    return-void
.end method

.method public static synthetic access$000(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/anythink/banner/api/ATBannerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/banner/api/ATBannerView;->canRenderBanner:Z

    return p0
.end method

.method public static synthetic access$1000(Lcom/anythink/banner/api/ATBannerView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/anythink/banner/api/ATBannerView;->isRefreshOpen()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$102(Lcom/anythink/banner/api/ATBannerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/banner/api/ATBannerView;->canRenderBanner:Z

    return p1
.end method

.method public static synthetic access$1100(Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Lcom/anythink/core/api/ATBaseAdAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/banner/api/ATBannerView;->notifyBannerImpression(Landroid/content/Context;Lcom/anythink/core/api/ATBaseAdAdapter;Z)V

    return-void
.end method

.method public static synthetic access$200(Lcom/anythink/banner/api/ATBannerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/banner/api/ATBannerView;->loadAd(I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/a/a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/anythink/banner/api/ATBannerView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/anythink/banner/api/ATBannerView;->isInView()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/b/a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/banner/api/ATBannerView;->mBannerRefreshTimer:Lcom/anythink/banner/b/a;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/anythink/banner/api/ATBannerView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Lcom/anythink/core/common/f/b;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/banner/api/ATBannerView;->notifyBannerShow(Landroid/content/Context;Lcom/anythink/core/common/f/b;Z)V

    return-void
.end method

.method public static synthetic access$800(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/core/common/f/b;
    .locals 0

    invoke-direct {p0}, Lcom/anythink/banner/api/ATBannerView;->getBannerCache()Lcom/anythink/core/common/f/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Lcom/anythink/banner/api/ATBannerView;Lcom/anythink/core/common/f/b;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/banner/api/ATBannerView;->renderBannerView(Lcom/anythink/core/common/f/b;Z)V

    return-void
.end method

.method private checkVisibilityPercent()Z
    .locals 4

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->visibilityChecker:Lcom/anythink/core/common/o/a/f$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/core/common/o/a/f$b;

    invoke-direct {v0}, Lcom/anythink/core/common/o/a/f$b;-><init>()V

    iput-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->visibilityChecker:Lcom/anythink/core/common/o/a/f$b;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->visibilityChecker:Lcom/anythink/core/common/o/a/f$b;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/16 v3, 0x50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, p0, v3, v1}, Lcom/anythink/core/common/o/a/f$b;->a(Landroid/view/View;Landroid/view/View;ILjava/lang/Integer;)Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public static entryAdScenario(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/anythink/banner/api/ATBannerView;->entryAdScenario(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

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

    const-string v1, "2"

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/anythink/core/common/b/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private getBannerCache()Lcom/anythink/core/common/f/b;
    .locals 3

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView;->mTKExtraMap:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/banner/a/a;->b(Landroid/content/Context;Ljava/util/Map;)Lcom/anythink/core/common/f/b;

    move-result-object v0

    return-object v0
.end method

.method private isInView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/banner/api/ATBannerView;->hasTouchWindow:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/anythink/banner/api/ATBannerView;->checkVisibilityPercent()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isRefreshOpen()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/d/h;->a(Landroid/content/Context;)Lcom/anythink/core/d/h;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/h;->a(Ljava/lang/String;)Lcom/anythink/core/d/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/d/f;->af()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private loadAd(I)V
    .locals 9

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mPlacementId:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/h$n;->o:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$n;->w:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/h$n;->n:Ljava/lang/String;

    const-string v4, ""

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/common/o/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/anythink/banner/api/ATBannerView;->mIsRefresh:Z

    if-nez p1, :cond_1

    iput-boolean v0, p0, Lcom/anythink/banner/api/ATBannerView;->canRenderBanner:Z

    :cond_1
    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/anythink/banner/api/ATBannerView;->adLoadListener:Lcom/anythink/core/common/b/a;

    iget-object v6, p0, Lcom/anythink/banner/api/ATBannerView;->mAdSourceEventListener:Lcom/anythink/core/common/b/b;

    iget-object v7, p0, Lcom/anythink/banner/api/ATBannerView;->mTKExtraMap:Ljava/util/Map;

    iget-object v8, p0, Lcom/anythink/banner/api/ATBannerView;->adxBidFloorInfo:Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;

    move v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/anythink/banner/a/a;->a(Landroid/content/Context;ILcom/anythink/core/common/b/a;Lcom/anythink/core/common/b/b;Ljava/util/Map;Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->adLoadListener:Lcom/anythink/core/common/b/a;

    const-string v0, "3001"

    const-string v1, ""

    invoke-static {v0, v1, v1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/core/common/b/a;->onAdLoadFail(Lcom/anythink/core/api/AdError;)V

    return-void
.end method

.method private notifyBannerImpression(Landroid/content/Context;Lcom/anythink/core/api/ATBaseAdAdapter;Z)V
    .locals 8

    invoke-virtual {p2}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v2

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v6

    new-instance v7, Lcom/anythink/banner/api/ATBannerView$6;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/anythink/banner/api/ATBannerView$6;-><init>(Lcom/anythink/banner/api/ATBannerView;Lcom/anythink/core/common/f/h;Lcom/anythink/core/api/ATBaseAdAdapter;Landroid/content/Context;Z)V

    const/4 p1, 0x2

    const/4 p2, 0x1

    invoke-virtual {v6, v7, p1, p2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method private notifyBannerShow(Landroid/content/Context;Lcom/anythink/core/common/f/b;Z)V
    .locals 11

    invoke-virtual {p2}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/anythink/core/common/f/h;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->ai()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/anythink/core/common/f/h;->F()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6, v7}, Lcom/anythink/core/common/o/h;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/h;->h(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v9

    new-instance v10, Lcom/anythink/banner/api/ATBannerView$5;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/anythink/banner/api/ATBannerView$5;-><init>(Lcom/anythink/banner/api/ATBannerView;Lcom/anythink/core/common/f/h;Landroid/content/Context;Lcom/anythink/core/common/f/b;Lcom/anythink/core/api/ATBaseAdAdapter;JZ)V

    const/4 p1, 0x2

    const/4 p2, 0x1

    invoke-virtual {v9, v10, p1, p2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method private registerDelayShow(Landroid/view/View;Landroid/content/Context;Lcom/anythink/core/common/f/b;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Z)V
    .locals 1

    if-nez p1, :cond_0

    move-object p1, p0

    :cond_0
    iget-object p4, p0, Lcom/anythink/banner/api/ATBannerView;->impressionTracker:Lcom/anythink/core/common/o/a/c;

    if-eqz p4, :cond_1

    new-instance v0, Lcom/anythink/banner/api/ATBannerView$3;

    invoke-direct {v0, p0, p2, p3, p5}, Lcom/anythink/banner/api/ATBannerView$3;-><init>(Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Lcom/anythink/core/common/f/b;Z)V

    invoke-virtual {p4, p1, v0}, Lcom/anythink/core/common/o/a/c;->a(Landroid/view/View;Lcom/anythink/core/common/o/a/b;)V

    :cond_1
    return-void
.end method

.method private renderBannerView(Lcom/anythink/core/common/f/b;Z)V
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v1

    check-cast v1, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v8, p0, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v8}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/f/av;->d()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v11, v2

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    if-eqz v1, :cond_10

    if-eqz v8, :cond_3

    if-nez v11, :cond_3

    invoke-virtual {v8}, Lcom/anythink/core/api/ATBaseAdAdapter;->internalDestory()V

    :cond_3
    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView;->mLastShowBannerView:Landroid/view/View;

    instance-of v3, v2, Lcom/anythink/basead/ui/ThirdPartyBannerATView;

    if-eqz v3, :cond_4

    check-cast v2, Lcom/anythink/basead/ui/ThirdPartyBannerATView;

    invoke-virtual {v2}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->destroy()V

    iput-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mLastShowBannerView:Landroid/view/View;

    :cond_4
    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/anythink/banner/a/b;

    iget-object v5, p0, Lcom/anythink/banner/api/ATBannerView;->mInnerBannerListener:Lcom/anythink/banner/a/d;

    invoke-direct {v4, v5, v1, p2}, Lcom/anythink/banner/a/b;-><init>(Lcom/anythink/banner/a/d;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Z)V

    invoke-virtual {v2, v3, p1, v1, v4}, Lcom/anythink/banner/a/a;->a(Landroid/content/Context;Lcom/anythink/core/common/f/b;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/banner/a/b;)Landroid/view/View;

    move-result-object v12

    instance-of v2, v12, Lcom/anythink/basead/ui/ThirdPartyBannerATView;

    if-eqz v2, :cond_5

    iput-object v12, p0, Lcom/anythink/banner/api/ATBannerView;->mLastShowBannerView:Landroid/view/View;

    :cond_5
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, p0, :cond_6

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    iput-object v1, p0, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v2

    new-instance v3, Lcom/anythink/banner/api/ATBannerView$7;

    invoke-direct {v3, p0, p1}, Lcom/anythink/banner/api/ATBannerView$7;-><init>(Lcom/anythink/banner/api/ATBannerView;Lcom/anythink/core/common/f/b;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4, v9}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    if-eqz v12, :cond_e

    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-virtual {v2}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/banner/api/ATBannerView;->mScenario:Ljava/lang/String;

    iput-object v3, v2, Lcom/anythink/core/common/f/h;->B:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/banner/api/ATBannerView;->mTKExtraMap:Ljava/util/Map;

    invoke-static {v3, v2}, Lcom/anythink/core/common/o/v;->a(Ljava/util/Map;Lcom/anythink/core/common/f/h;)V

    iget-object v3, p0, Lcom/anythink/banner/api/ATBannerView;->mPlacementId:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/anythink/core/common/o/v;->a(Ljava/lang/String;Lcom/anythink/core/common/f/h;)V

    invoke-direct {p0}, Lcom/anythink/banner/api/ATBannerView;->isInView()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object v2, p0

    move-object v3, v12

    move-object v5, p1

    move-object v6, v1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/anythink/banner/api/ATBannerView;->registerDelayShow(Landroid/view/View;Landroid/content/Context;Lcom/anythink/core/common/f/b;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Z)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, p1, p2}, Lcom/anythink/banner/api/ATBannerView;->notifyBannerShow(Landroid/content/Context;Lcom/anythink/core/common/f/b;Z)V

    :goto_3
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/b/n;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object p2

    if-eqz p2, :cond_8

    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    invoke-interface {p2, v1, v0, v2}, Lcom/anythink/core/api/IExHandler;->createDownloadListener(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/api/ATEventInterface;)Lcom/anythink/core/api/ATEventInterface;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->setAdDownloadListener(Lcom/anythink/core/api/ATEventInterface;)V

    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_4

    :cond_9
    const/4 p2, 0x0

    :goto_4
    const/4 v0, -0x2

    if-nez p2, :cond_a

    const/4 p2, -0x2

    :cond_a
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v10, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_b
    if-gtz v10, :cond_c

    goto :goto_5

    :cond_c
    move v0, v10

    :goto_5
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x11

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v12, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_d

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_d
    invoke-virtual {p0, v12, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_e
    iget-object p2, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    const-string v0, "Network\'s banner view = null. Did you call destroy()?"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    iget-object p2, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    invoke-virtual {p2, p1}, Lcom/anythink/banner/a/a;->a(Lcom/anythink/core/common/f/b;)V

    iget-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->mBannerRefreshTimer:Lcom/anythink/banner/b/a;

    iget-object p2, p0, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-virtual {p1, p2}, Lcom/anythink/banner/b/a;->a(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    iget-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->mBannerRefreshTimer:Lcom/anythink/banner/b/a;

    invoke-virtual {p1}, Lcom/anythink/banner/b/a;->b()V

    if-eqz v8, :cond_f

    if-eqz v11, :cond_f

    invoke-virtual {v8}, Lcom/anythink/core/api/ATBaseAdAdapter;->internalDestory()V

    :cond_f
    invoke-direct {p0}, Lcom/anythink/banner/api/ATBannerView;->isRefreshOpen()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-direct {p0, v9}, Lcom/anythink/banner/api/ATBannerView;->loadAd(I)V

    :cond_10
    return-void
.end method


# virtual methods
.method public checkAdStatus()Lcom/anythink/core/api/ATAdStatusInfo;
    .locals 6

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    const-string v3, "PlacementId is empty!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/anythink/core/api/ATAdStatusInfo;

    invoke-direct {v0, v2, v2, v1}, Lcom/anythink/core/api/ATAdStatusInfo;-><init>(ZZLcom/anythink/core/api/ATAdInfo;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView;->mTKExtraMap:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/banner/a/a;->a(Landroid/content/Context;Ljava/util/Map;)Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView;->mPlacementId:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$n;->o:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/h$n;->A:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATAdStatusInfo;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v1, v2, v3, v4, v5}, Lcom/anythink/core/common/o/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    const-string v3, "SDK init error!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/anythink/core/api/ATAdStatusInfo;

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

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/banner/a/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public controlShow()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/anythink/banner/api/ATBannerView;->mIsRefresh:Z

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v1

    new-instance v2, Lcom/anythink/banner/api/ATBannerView$4;

    invoke-direct {v2, p0, v0}, Lcom/anythink/banner/api/ATBannerView$4;-><init>(Lcom/anythink/banner/api/ATBannerView;Z)V

    const/4 v0, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method public destroy()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->internalDestory()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mBannerRefreshTimer:Lcom/anythink/banner/b/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/banner/b/a;->c()V

    :cond_1
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->impressionTracker:Lcom/anythink/core/common/o/a/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/core/common/o/a/c;->a()V

    :cond_2
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mPlacementId:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/banner/a/a;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mLastShowBannerView:Landroid/view/View;

    instance-of v1, v0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mLastShowBannerView:Landroid/view/View;

    :cond_4
    return-void
.end method

.method public loadAd()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anythink/banner/api/ATBannerView;->loadAd(I)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/banner/api/ATBannerView;->hasTouchWindow:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/banner/api/ATBannerView;->hasTouchWindow:Z

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/anythink/banner/api/ATBannerView;->controlShow()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/anythink/banner/api/ATBannerView;->controlShow()V

    :cond_0
    return-void
.end method

.method public setAdDownloadListener(Lcom/anythink/core/api/ATEventInterface;)V
    .locals 3

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    iget-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/n;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    invoke-interface {p1, v0, v1, v2}, Lcom/anythink/core/api/IExHandler;->createDownloadListener(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/api/ATEventInterface;)Lcom/anythink/core/api/ATEventInterface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->setAdDownloadListener(Lcom/anythink/core/api/ATEventInterface;)V

    :cond_0
    return-void
.end method

.method public setAdSourceStatusListener(Lcom/anythink/core/api/ATAdSourceStatusListener;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdSourceEventListener:Lcom/anythink/core/common/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/core/common/b/b;

    invoke-direct {v0}, Lcom/anythink/core/common/b/b;-><init>()V

    iput-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdSourceEventListener:Lcom/anythink/core/common/b/b;

    :cond_0
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->mDeveloperStatusListener:Lcom/anythink/core/api/ATAdSourceStatusListener;

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdSourceEventListener:Lcom/anythink/core/common/b/b;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/b/b;->a(Lcom/anythink/core/api/ATAdSourceStatusListener;)V

    return-void
.end method

.method public setAdxBidFloorInfo(Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->adxBidFloorInfo:Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;

    return-void
.end method

.method public setBannerAdListener(Lcom/anythink/banner/api/ATBannerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;

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

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mPlacementId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    const-string v0, "You must set unit Id first."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/anythink/banner/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/banner/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->mPlacementId:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mBannerRefreshTimer:Lcom/anythink/banner/b/a;

    invoke-virtual {v0, p1}, Lcom/anythink/banner/b/a;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->impressionTracker:Lcom/anythink/core/common/o/a/c;

    if-nez p1, :cond_0

    new-instance p1, Lcom/anythink/core/common/o/a/c;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    const/16 v0, 0x32

    invoke-direct {p1, v0}, Lcom/anythink/core/common/o/a/c;-><init>(I)V

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->impressionTracker:Lcom/anythink/core/common/o/a/c;

    :cond_0
    return-void
.end method

.method public setScenario(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/anythink/core/common/o/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->mScenario:Ljava/lang/String;

    :cond_0
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

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mTKExtraMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mTKExtraMap:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mTKExtraMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mTKExtraMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public timeUpRefreshView()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/banner/api/ATBannerView;->canRenderBanner:Z

    invoke-virtual {p0}, Lcom/anythink/banner/api/ATBannerView;->controlShow()V

    return-void
.end method
