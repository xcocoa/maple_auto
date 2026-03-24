.class public Lcom/anythink/nativead/api/NativeAd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/nativead/api/NativeAd$ImpressionEventListener;,
        Lcom/anythink/nativead/api/NativeAd$DownloadConfirmListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private hasCallPrepareApi:Z

.field private hasCallPrepareRenderApi:Z

.field private hasReportRenderTypeAgent:Z

.field private hasSetShowTkDetail:Z

.field public isManualImpressionTrack:Z

.field private mAdCacheInfo:Lcom/anythink/core/common/f/b;

.field public mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

.field public mConfirmListener:Lcom/anythink/nativead/api/NativeAd$DownloadConfirmListener;

.field private mContext:Landroid/content/Context;

.field public mDefaultCloseViewListener:Landroid/view/View$OnClickListener;

.field private mDislikeListener:Lcom/anythink/nativead/api/ATNativeDislikeListener;

.field public mEventInterface:Lcom/anythink/core/api/ATEventInterface;

.field private mIsDestroyed:Z

.field private mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

.field public mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

.field private mPlacementId:Ljava/lang/String;

.field private mRecordedImpression:Z

.field private mRecordedShow:Z

.field public nativeMaterial:Lcom/anythink/nativead/api/ATNativeMaterial;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/common/f/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->hasCallPrepareApi:Z

    iput-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->hasCallPrepareRenderApi:Z

    iput-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->hasReportRenderTypeAgent:Z

    new-instance v1, Lcom/anythink/nativead/api/NativeAd$5;

    invoke-direct {v1, p0}, Lcom/anythink/nativead/api/NativeAd$5;-><init>(Lcom/anythink/nativead/api/NativeAd;)V

    iput-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mDefaultCloseViewListener:Landroid/view/View$OnClickListener;

    iput-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->isManualImpressionTrack:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/anythink/nativead/api/NativeAd;->mPlacementId:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/nativead/api/NativeAd;->mAdCacheInfo:Lcom/anythink/core/common/f/b;

    invoke-virtual {p3}, Lcom/anythink/core/common/f/b;->e()Lcom/anythink/core/api/BaseAd;

    move-result-object p1

    check-cast p1, Lcom/anythink/nativead/unitgroup/a;

    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    new-instance p2, Lcom/anythink/nativead/api/NativeAd$1;

    invoke-direct {p2, p0}, Lcom/anythink/nativead/api/NativeAd$1;-><init>(Lcom/anythink/nativead/api/NativeAd;)V

    invoke-virtual {p1, p2}, Lcom/anythink/nativead/unitgroup/a;->setNativeEventListener(Lcom/anythink/core/common/b/l;)V

    iget-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    instance-of p2, p1, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz p2, :cond_0

    new-instance p2, Lcom/anythink/nativead/a/b;

    check-cast p1, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    invoke-direct {p2, p1}, Lcom/anythink/nativead/a/b;-><init>(Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V

    iput-object p2, p0, Lcom/anythink/nativead/api/NativeAd;->nativeMaterial:Lcom/anythink/nativead/api/ATNativeMaterial;

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/anythink/nativead/api/NativeAd;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/anythink/nativead/api/NativeAd;)Lcom/anythink/core/common/f/b;
    .locals 0

    iget-object p0, p0, Lcom/anythink/nativead/api/NativeAd;->mAdCacheInfo:Lcom/anythink/core/common/f/b;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/anythink/nativead/api/NativeAd;Lcom/anythink/core/common/f/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/nativead/api/NativeAd;->fillShowTrackingInfo(Lcom/anythink/core/common/f/h;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/anythink/nativead/api/NativeAd;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/anythink/nativead/api/NativeAd;Lcom/anythink/core/common/f/h;Lcom/anythink/nativead/api/ATNativeAdView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/nativead/api/NativeAd;->fillRenderAreaToTrackingInfo(Lcom/anythink/core/common/f/h;Lcom/anythink/nativead/api/ATNativeAdView;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/anythink/nativead/api/NativeAd;)Lcom/anythink/nativead/api/ATNativeEventListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/anythink/nativead/api/NativeAd;)Lcom/anythink/nativead/api/ATNativeDislikeListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/nativead/api/NativeAd;->mDislikeListener:Lcom/anythink/nativead/api/ATNativeDislikeListener;

    return-object p0
.end method

.method private bindListener()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    instance-of v1, v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->checkHasCloseViewListener()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->getNativePrepareInfo()Lcom/anythink/nativead/api/ATNativePrepareInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getCloseView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mDefaultCloseViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private checkBindView(Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getTitleView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "titleView"

    invoke-direct {p0, v0}, Lcom/anythink/nativead/api/NativeAd;->printNotSetViewLog(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getCtaView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "ctaView"

    invoke-direct {p0, v0}, Lcom/anythink/nativead/api/NativeAd;->printNotSetViewLog(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getDescView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "descView"

    invoke-direct {p0, v0}, Lcom/anythink/nativead/api/NativeAd;->printNotSetViewLog(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getIconView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "iconView"

    invoke-direct {p0, v0}, Lcom/anythink/nativead/api/NativeAd;->printNotSetViewLog(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getMainImageView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, "mainImageView"

    invoke-direct {p0, p1}, Lcom/anythink/nativead/api/NativeAd;->printNotSetViewLog(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private checkToReportRenderErrorAgent(Z)V
    .locals 7

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mRecordedShow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mRecordedImpression:Z

    if-nez v0, :cond_9

    :cond_0
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->hasReportRenderTypeAgent:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->hasReportRenderTypeAgent:Z

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->getDetail()Lcom/anythink/core/common/f/h;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v1}, Lcom/anythink/core/common/f/h;->P()I

    move-result v0

    const/16 v2, 0x42

    if-ne v0, v2, :cond_9

    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->hasCallPrepareRenderApi:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "1"

    const-string v3, "2"

    if-eqz v0, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    :try_start_1
    iget-boolean v4, p0, Lcom/anythink/nativead/api/NativeAd;->hasCallPrepareApi:Z

    if-eqz v4, :cond_3

    move-object v4, v2

    goto :goto_1

    :cond_3
    move-object v4, v3

    :goto_1
    iget-boolean v5, p0, Lcom/anythink/nativead/api/NativeAd;->mRecordedShow:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, ""

    if-nez v5, :cond_4

    :try_start_2
    iget-boolean v5, p0, Lcom/anythink/nativead/api/NativeAd;->mRecordedImpression:Z

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    iget-boolean v2, p0, Lcom/anythink/nativead/api/NativeAd;->mRecordedImpression:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_5

    move-object v2, v3

    goto :goto_2

    :cond_5
    move-object v2, v6

    :goto_2
    const-string v3, "0"

    if-eqz p1, :cond_6

    :try_start_3
    const-string p1, "3"

    move-object v2, p1

    move-object v4, v3

    goto :goto_3

    :cond_6
    move-object v3, v0

    :goto_3
    iget-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {p1}, Lcom/anythink/core/api/BaseAd;->getNetworkInfoMap()Ljava/util/Map;

    move-result-object p1

    const-string v0, "dsp_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v5, "offer_id"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_4

    :cond_7
    move-object v5, v6

    :goto_4
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    :cond_8
    invoke-static/range {v1 .. v6}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :cond_9
    :goto_5
    return-void

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkToReportRenderErrorAgent, error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private fillRenderAreaToTrackingInfo(Lcom/anythink/core/common/f/h;Lcom/anythink/nativead/api/ATNativeAdView;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->P()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/anythink/core/common/f/h;->a(II)V

    :cond_0
    return-void
.end method

.method private declared-synchronized fillShowTrackingInfo(Lcom/anythink/core/common/f/h;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->hasSetShowTkDetail:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->hasSetShowTkDetail:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/anythink/core/common/o/v;->a(Landroid/content/Context;Lcom/anythink/core/common/f/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private printNotSetViewLog(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not set, it may cause the ad to not be clicked normally."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private renderViewToWindow(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mPlacementId:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/h$n;->r:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$n;->y:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/h$n;->n:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/core/common/o/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getCustomAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v0

    :goto_0
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

    new-instance v2, Lcom/anythink/nativead/api/NativeAd$4;

    invoke-direct {v2, p0}, Lcom/anythink/nativead/api/NativeAd$4;-><init>(Lcom/anythink/nativead/api/NativeAd;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/anythink/nativead/api/ATNativeAdView;->renderView(ILandroid/view/View;Lcom/anythink/nativead/api/NativeAd$ImpressionEventListener;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized clear(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {p1, v0}, Lcom/anythink/core/api/BaseAd;->clear(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/anythink/nativead/api/ATNativeAdView;->clearImpressionListener(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized destory()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/anythink/nativead/api/NativeAd;->checkToReportRenderErrorAgent(Z)V

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/api/NativeAd;->clear(Lcom/anythink/nativead/api/ATNativeAdView;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    iput-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mDislikeListener:Lcom/anythink/nativead/api/ATNativeDislikeListener;

    iput-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mDefaultCloseViewListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/anythink/nativead/unitgroup/a;->setNativePrepareInfo(Lcom/anythink/nativead/api/ATNativePrepareInfo;)V

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finalize()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anythink/nativead/api/NativeAd;->checkToReportRenderErrorAgent(Z)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAdInfo()Lcom/anythink/core/api/ATAdInfo;
    .locals 2

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mAdCacheInfo:Lcom/anythink/core/common/f/b;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/api/ATBaseAdAdapter;)Lcom/anythink/core/common/b/j;

    move-result-object v0

    return-object v0
.end method

.method public getAdInteractionType()I
    .locals 2

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getNativeAdInteractionType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAdMaterial()Lcom/anythink/nativead/api/ATNativeMaterial;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->nativeMaterial:Lcom/anythink/nativead/api/ATNativeMaterial;

    return-object v0
.end method

.method public getCustomVideo()Lcom/anythink/core/api/ATCustomVideo;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getNativeCustomVideo()Lcom/anythink/core/api/ATCustomVideo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownloadProgress()I
    .locals 2

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->getDownloadProgress()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadStatus()I
    .locals 2

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->getDownloadStatus()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNativeType()I
    .locals 2

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getNativeType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoDuration()D
    .locals 2

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getVideoDuration()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVideoProgress()D
    .locals 2

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getVideoProgress()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public declared-synchronized handleAdDislikeButtonClick(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/nativead/api/NativeAd$11;

    invoke-direct {v1, p0, p1}, Lcom/anythink/nativead/api/NativeAd$11;-><init>(Lcom/anythink/nativead/api/NativeAd;Lcom/anythink/nativead/api/ATNativeAdView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleClick(Lcom/anythink/nativead/api/ATNativeAdView;Landroid/view/View;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean p2, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/anythink/nativead/unitgroup/a;->getDetail()Lcom/anythink/core/common/f/h;

    move-result-object p2

    sget-object v0, Lcom/anythink/core/common/b/h$n;->d:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/h$n;->l:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p2, v0, v1, v2}, Lcom/anythink/core/common/o/p;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p2}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;)V

    :cond_1
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p2

    new-instance v0, Lcom/anythink/nativead/api/NativeAd$9;

    invoke-direct {v0, p0, p1}, Lcom/anythink/nativead/api/NativeAd$9;-><init>(Lcom/anythink/nativead/api/NativeAd;Lcom/anythink/nativead/api/ATNativeAdView;)V

    invoke-virtual {p2, v0}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleDeeplinkCallback(Lcom/anythink/nativead/api/ATNativeAdView;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/nativead/api/NativeAd$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/nativead/api/NativeAd$8;-><init>(Lcom/anythink/nativead/api/NativeAd;Lcom/anythink/nativead/api/ATNativeAdView;Z)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleDownloadConfirm(Landroid/content/Context;Landroid/view/View;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mConfirmListener:Lcom/anythink/nativead/api/NativeAd$DownloadConfirmListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;

    :goto_0
    iget-object v2, p0, Lcom/anythink/nativead/api/NativeAd;->mAdCacheInfo:Lcom/anythink/core/common/f/b;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/api/ATBaseAdAdapter;)Lcom/anythink/core/common/b/j;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/anythink/nativead/api/NativeAd$DownloadConfirmListener;->onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Landroid/view/View;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleImpression(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mRecordedImpression:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mRecordedImpression:Z

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/nativead/api/NativeAd$7;

    invoke-direct {v1, p0, p1}, Lcom/anythink/nativead/api/NativeAd$7;-><init>(Lcom/anythink/nativead/api/NativeAd;Lcom/anythink/nativead/api/ATNativeAdView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleVideoEnd(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->getDetail()Lcom/anythink/core/common/f/h;

    move-result-object v0

    const/16 v1, 0x64

    iput v1, v0, Lcom/anythink/core/common/f/h;->t:I

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;)V

    :cond_1
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/nativead/api/NativeAd$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/nativead/api/NativeAd$2;-><init>(Lcom/anythink/nativead/api/NativeAd;Lcom/anythink/nativead/api/ATNativeAdView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleVideoProgress(Lcom/anythink/nativead/api/ATNativeAdView;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/nativead/api/NativeAd$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/nativead/api/NativeAd$3;-><init>(Lcom/anythink/nativead/api/NativeAd;Lcom/anythink/nativead/api/ATNativeAdView;I)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleVideoStart(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->getDetail()Lcom/anythink/core/common/f/h;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/anythink/core/common/f/h;->t:I

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;)V

    :cond_1
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/nativead/api/NativeAd$10;

    invoke-direct {v1, p0, p1}, Lcom/anythink/nativead/api/NativeAd$10;-><init>(Lcom/anythink/nativead/api/NativeAd;Lcom/anythink/nativead/api/ATNativeAdView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isNativeExpress()Z
    .locals 2

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->isNativeExpress()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public manualImpressionTrack()V
    .locals 4

    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "NativeAd had been destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->isManualImpressionTrack:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "Must call \"setManualImpressionTrack(true);\" first."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mAdCacheInfo:Lcom/anythink/core/common/f/b;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->supportImpressionCallback()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->A()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "This NativeAd don\'t support tracking impressions manually."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    if-nez v0, :cond_7

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->A()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "NativeAd don\'t call render."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->A()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "ATNativeAdView isn\'t visible."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void

    :cond_9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const-string v3, "ATNativeAdView don\'t attach window."

    if-lt v1, v2, :cond_b

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->A()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void

    :cond_b
    invoke-virtual {v0}, Lcom/anythink/nativead/api/ATNativeAdView;->isAttachInWindow()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->A()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void

    :cond_d
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->A()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->TAG:Ljava/lang/String;

    const-string v2, "try to track impression manually."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    instance-of v2, v1, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v2, :cond_f

    check-cast v1, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    invoke-virtual {v1, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->impressionTrack(Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->onPause()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->onResume()V

    :cond_1
    return-void
.end method

.method public pauseVideo()V
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->pauseVideo()V

    :cond_1
    return-void
.end method

.method public declared-synchronized prepare(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->hasCallPrepareApi:Z

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    new-instance p2, Lcom/anythink/nativead/api/ATNativePrepareInfo;

    invoke-direct {p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;-><init>()V

    :cond_1
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0, p2}, Lcom/anythink/nativead/unitgroup/a;->setNativePrepareInfo(Lcom/anythink/nativead/api/ATNativePrepareInfo;)V

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/nativead/unitgroup/a;->prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V

    invoke-direct {p0}, Lcom/anythink/nativead/api/NativeAd;->bindListener()V

    iget-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/a;->isNativeExpress()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0, p2}, Lcom/anythink/nativead/api/NativeAd;->checkBindView(Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordShow(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lcom/anythink/nativead/api/NativeAd;->mRecordedShow:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/a;->getDetail()Lcom/anythink/core/common/f/h;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mRecordedShow:Z

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mAdCacheInfo:Lcom/anythink/core/common/f/b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mPlacementId:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mAdCacheInfo:Lcom/anythink/core/common/f/b;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f/b;)V

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/nativead/api/NativeAd$6;

    invoke-direct {v1, p0, p1}, Lcom/anythink/nativead/api/NativeAd$6;-><init>(Lcom/anythink/nativead/api/NativeAd;Lcom/anythink/core/common/f/h;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized renderAdContainer(Lcom/anythink/nativead/api/ATNativeAdView;Landroid/view/View;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/anythink/nativead/api/ATNativeAdView;->clear()V

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    const-string p1, "anythink"

    const-string p2, "renderAdContainer: ATNativeAdView cannot be null for template-rendering ads!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/anythink/nativead/api/NativeAd;->isNativeExpress()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    iget-object p2, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz p2, :cond_3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p2, v0}, Lcom/anythink/nativead/unitgroup/a;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_5

    const-string p1, "anythink"

    const-string p2, "renderAdContainer: getAdMediaView() cannot be null for template-rendering ads!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    move-object p2, v0

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    :try_start_3
    const-string p1, "anythink"

    const-string p2, "renderAdContainer: selfRenderView cannot be null for self-rendering ads!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/anythink/nativead/api/NativeAd;->checkToReportRenderErrorAgent(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :goto_0
    :try_start_4
    iput-boolean v3, p0, Lcom/anythink/nativead/api/NativeAd;->hasCallPrepareRenderApi:Z

    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p0}, Lcom/anythink/nativead/api/ATNativeAdView;->attachNativeAd(Lcom/anythink/nativead/api/NativeAd;)V

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p2}, Lcom/anythink/nativead/api/NativeAd;->renderViewToWindow(Landroid/view/View;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public resumeVideo()V
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->resumeVideo()V

    :cond_1
    return-void
.end method

.method public setAdDownloadListener(Lcom/anythink/core/api/ATEventInterface;)V
    .locals 4

    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mEventInterface:Lcom/anythink/core/api/ATEventInterface;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    iget-object v2, p0, Lcom/anythink/nativead/api/NativeAd;->mAdCacheInfo:Lcom/anythink/core/common/f/b;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-interface {v0, v2, v3, p1}, Lcom/anythink/core/api/IExHandler;->createDownloadListener(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/api/ATEventInterface;)Lcom/anythink/core/api/ATEventInterface;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/anythink/nativead/unitgroup/a;->setDownloadListener(Lcom/anythink/core/api/ATEventInterface;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {p1, v1}, Lcom/anythink/nativead/unitgroup/a;->setDownloadListener(Lcom/anythink/core/api/ATEventInterface;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {p1, v1}, Lcom/anythink/nativead/unitgroup/a;->setDownloadListener(Lcom/anythink/core/api/ATEventInterface;)V

    iget-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->TAG:Ljava/lang/String;

    const-string v0, "This method is not supported in this version"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDislikeCallbackListener(Lcom/anythink/nativead/api/ATNativeDislikeListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mDislikeListener:Lcom/anythink/nativead/api/ATNativeDislikeListener;

    return-void
.end method

.method public setDownloadConfirmListener(Lcom/anythink/nativead/api/NativeAd$DownloadConfirmListener;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    instance-of v1, v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz p1, :cond_0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->registerDownloadConfirmListener()V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    check-cast v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->unregeisterDownloadConfirmListener()V

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mConfirmListener:Lcom/anythink/nativead/api/NativeAd$DownloadConfirmListener;

    return-void
.end method

.method public setManualImpressionTrack(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/nativead/api/NativeAd;->isManualImpressionTrack:Z

    return-void
.end method

.method public setNativeEventListener(Lcom/anythink/nativead/api/ATNativeEventListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    return-void
.end method

.method public setVideoMute(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/anythink/core/api/BaseAd;->setVideoMute(Z)V

    :cond_1
    return-void
.end method
