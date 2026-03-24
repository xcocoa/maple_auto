.class public Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcn/haorui/sdk/adsail_ad/MediaView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$IPreparedListener;
    }
.end annotation


# static fields
.field public static final ACTION_DOWNLOAD_CLICKED:Ljava/lang/String; = "ACTION_DOWNLOAD_CLICKED"

.field private static final PLAY_STATE_COMPLETE:I = 0x3

.field private static final PLAY_STATE_INIT:I = 0x0

.field private static final PLAY_STATE_PAUSE:I = 0x2

.field private static final PLAY_STATE_PLAYING:I = 0x1

.field private static final UPDATE_TIME:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private aQuery:Lz2/o000;

.field private adListener:Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;

.field private attachWindow:Z

.field private autoStart:Z

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private configHeight:I

.field private configWidth:I

.field private containerHeight:F

.field private containerWidth:F

.field private coverUrl:Ljava/lang/String;

.field private currentPosition:I

.field private currentTimeView:Landroid/widget/TextView;

.field private endCoverUrl:Ljava/lang/String;

.field private endTimeView:Landroid/widget/TextView;

.field private isEyes:I

.field private isVideoSkiped:Z

.field private keepTime:J

.field private volatile keepTimeFinishedPerformed:Z

.field private lifecycleHelper:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleHelper;

.field private lifecycleListener:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;

.field private mExposureListener:Lcn/haorui/sdk/core/ad/recycler/IAdExposureListener;

.field private mPreparedListener:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$IPreparedListener;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

.field private nativeAdMediaListener:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

.field private onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private onVideoCompleteListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoCompleteListener;",
            ">;"
        }
    .end annotation
.end field

.field private onVideoKeepTimeFinishListener:Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoKeepTimeFinishListener;

.field private onVideoLoadedListener:Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoLoadedListener;

.field private volatile oneHalfPerformed:Z

.field private volatile oneQuarterPerformed:Z

.field private paused:Z

.field private playOnce:Z

.field private playState:I

.field private prepared:Z

.field private recycler:Z

.field private seekBar:Landroid/widget/ProgressBar;

.field private showControl:Z

.field private showDetail:Z

.field private volatile threeQuarterPerformed:Z

.field private uiHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private videoStartSent:Z

.field private videoUrl:Ljava/lang/String;

.field private videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->autoStart:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->keepTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playState:I

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoStartSent:Z

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->prepared:Z

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playOnce:Z

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->recycler:Z

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->paused:Z

    new-instance v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->uiHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onVideoCompleteListeners:Ljava/util/List;

    new-instance v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->lifecycleListener:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;

    new-instance v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$13;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$13;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->TAG:Ljava/lang/String;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->autoStart:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->keepTime:J

    const/4 p2, 0x0

    iput p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playState:I

    iput-boolean p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoStartSent:Z

    iput-boolean p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->prepared:Z

    iput-boolean p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playOnce:Z

    iput-boolean p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->recycler:Z

    iput-boolean p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->paused:Z

    new-instance p2, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;

    invoke-direct {p2, p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->uiHandler:Landroid/os/Handler;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onVideoCompleteListeners:Ljava/util/List;

    new-instance p2, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;

    invoke-direct {p2, p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->lifecycleListener:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;

    new-instance p2, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$13;

    invoke-direct {p2, p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$13;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->TAG:Ljava/lang/String;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->autoStart:Z

    const-wide/16 p2, -0x1

    iput-wide p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->keepTime:J

    const/4 p2, 0x0

    iput p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playState:I

    iput-boolean p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoStartSent:Z

    iput-boolean p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->prepared:Z

    iput-boolean p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playOnce:Z

    iput-boolean p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->recycler:Z

    iput-boolean p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->paused:Z

    new-instance p2, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;

    invoke-direct {p2, p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->uiHandler:Landroid/os/Handler;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onVideoCompleteListeners:Ljava/util/List;

    new-instance p2, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;

    invoke-direct {p2, p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$12;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->lifecycleListener:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;

    new-instance p2, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$13;

    invoke-direct {p2, p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$13;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    return-object p0
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->currentTimeView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$1000(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->threeQuarterPerformed:Z

    return p0
.end method

.method public static synthetic access$1002(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->threeQuarterPerformed:Z

    return p1
.end method

.method public static synthetic access$1100(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->uiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1200(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->prepared:Z

    return p0
.end method

.method public static synthetic access$1202(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->prepared:Z

    return p1
.end method

.method public static synthetic access$1300(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)I
    .locals 0

    iget p0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playState:I

    return p0
.end method

.method public static synthetic access$1400(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1500(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->adListener:Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;

    return-object p0
.end method

.method public static synthetic access$1600(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onPlay()V

    return-void
.end method

.method public static synthetic access$1700(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onReset()V

    return-void
.end method

.method public static synthetic access$1800(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lz2/o000;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    return-object p0
.end method

.method public static synthetic access$1900(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$IPreparedListener;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->mPreparedListener:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$IPreparedListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;Landroid/widget/TextView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->updateTimeFormat(Landroid/widget/TextView;I)V

    return-void
.end method

.method public static synthetic access$2000(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onCompletion()V

    return-void
.end method

.method public static synthetic access$2100(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object p0
.end method

.method public static synthetic access$2200(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->attachWindow:Z

    return p0
.end method

.method public static synthetic access$2300(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->showDetail:Z

    return p0
.end method

.method public static synthetic access$2400(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)I
    .locals 0

    iget p0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->isEyes:I

    return p0
.end method

.method public static synthetic access$2500(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    return-object p0
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->seekBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static synthetic access$400(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)J
    .locals 2

    iget-wide v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->keepTime:J

    return-wide v0
.end method

.method public static synthetic access$402(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;J)J
    .locals 0

    iput-wide p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->keepTime:J

    return-wide p1
.end method

.method public static synthetic access$500(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->keepTimeFinishedPerformed:Z

    return p0
.end method

.method public static synthetic access$502(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->keepTimeFinishedPerformed:Z

    return p1
.end method

.method public static synthetic access$600(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoKeepTimeFinishListener;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onVideoKeepTimeFinishListener:Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoKeepTimeFinishListener;

    return-object p0
.end method

.method public static synthetic access$700(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->oneQuarterPerformed:Z

    return p0
.end method

.method public static synthetic access$702(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->oneQuarterPerformed:Z

    return p1
.end method

.method public static synthetic access$800(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->nativeAdMediaListener:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    return-object p0
.end method

.method public static synthetic access$900(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->oneHalfPerformed:Z

    return p0
.end method

.method public static synthetic access$902(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->oneHalfPerformed:Z

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "adsail_media_view"

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->initUI(Landroid/content/Context;)V

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->initEvent()V

    return-void
.end method

.method private initEvent()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_center_play_button:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$3;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$3;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    invoke-virtual {v0, v1}, Lz2/o000O000;->OooOo0o(Landroid/view/View$OnClickListener;)Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_controlbar_video_play_button:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$4;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$4;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    invoke-virtual {v0, v1}, Lz2/o000O000;->OooOo0o(Landroid/view/View$OnClickListener;)Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_controlbar_video_pause_button:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$5;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$5;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    invoke-virtual {v0, v1}, Lz2/o000O000;->OooOo0o(Landroid/view/View$OnClickListener;)Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_video_volume_mute:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$6;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$6;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    invoke-virtual {v0, v1}, Lz2/o000O000;->OooOo0o(Landroid/view/View$OnClickListener;)Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_video_volume:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$7;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$7;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    invoke-virtual {v0, v1}, Lz2/o000O000;->OooOo0o(Landroid/view/View$OnClickListener;)Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$8;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$8;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$9;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$9;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$10;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$10;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$11;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$11;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleHelper;

    invoke-direct {v0}, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleHelper;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->lifecycleHelper:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleHelper;->setActivity(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private initUI(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcn/haorui/sdk/R$layout;->adsail_normal_video_player_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    sget v0, Lcn/haorui/sdk/R$id;->adsail_video_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    new-instance p1, Lz2/o000;

    invoke-direct {p1, p0}, Lz2/o000;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_video_currentTime:I

    invoke-virtual {p1, v0}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1}, Lz2/o000O000;->ooOO()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->currentTimeView:Landroid/widget/TextView;

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_video_endTime:I

    invoke-virtual {p1, v0}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1}, Lz2/o000O000;->ooOO()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->endTimeView:Landroid/widget/TextView;

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_video_seekBar:I

    invoke-virtual {p1, v0}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1}, Lz2/o000O000;->Ooooo0o()Landroid/widget/ProgressBar;

    move-result-object p1

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->seekBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method private onCompletion()V
    .locals 6

    const/4 v0, 0x3

    :try_start_0
    iput v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playState:I

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->isEyes:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v3, Lcn/haorui/sdk/R$id;->adsail_video_cover:I

    invoke-virtual {v2, v3}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v2

    check-cast v2, Lz2/o000;

    invoke-virtual {v2, v0}, Lz2/o000O000;->o0OOO0o(Landroid/graphics/Bitmap;)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0}, Lz2/o000O000;->o000o00()Lz2/o000O000;

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->endCoverUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->endCoverUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->coverUrl:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v3, Lcn/haorui/sdk/R$id;->adsail_video_cover:I

    invoke-virtual {v2, v3}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v2

    check-cast v2, Lz2/o000;

    invoke-virtual {v2, v0}, Lz2/o000O000;->o000000(Ljava/lang/String;)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0}, Lz2/o000O000;->o000o00()Lz2/o000O000;

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playOnce:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v2, Lcn/haorui/sdk/R$id;->adsail_video_view:I

    invoke-virtual {v0, v2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0}, Lz2/o000O000;->o00Ooo()Lz2/o000O000;

    :cond_2
    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onPause()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->getDuration()I

    move-result v0

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->currentTimeView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->updateTimeFormat(Landroid/widget/TextView;I)V

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->seekBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->autoStart:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v2, Lcn/haorui/sdk/R$id;->adsail_center_play_button:I

    invoke-virtual {v0, v2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    :cond_3
    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->isVideoSkiped:Z

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-wide v2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->keepTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onVideoKeepTimeFinishListener:Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoKeepTimeFinishListener;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->keepTimeFinishedPerformed:Z

    if-nez v0, :cond_5

    iput-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->keepTimeFinishedPerformed:Z

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onVideoKeepTimeFinishListener:Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoKeepTimeFinishListener;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoKeepTimeFinishListener;->onKeepTimeFinished()V

    :cond_5
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onVideoCompleteListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoCompleteListener;

    invoke-interface {v1}, Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoCompleteListener;->onCompleted()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->nativeAdMediaListener:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;->onVideoComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_2
    return-void
.end method

.method private onPause()V
    .locals 2

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->showControl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_center_play_button:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->uiHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method private onPlay()V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->sendVideoStart()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_center_play_button:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->prepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_video_cover:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0}, Lz2/o000O000;->o00000oo()Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_progress_loading:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0}, Lz2/o000O000;->o00Ooo()Lz2/o000O000;

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->seekBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->endTimeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->getDuration()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->updateTimeFormat(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->uiHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method private onReplay()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->nativeAdMediaListener:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;->onVideoReplay()V

    :cond_0
    return-void
.end method

.method private onReset()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->currentTimeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->updateTimeFormat(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->endTimeView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {v2}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->getDuration()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->updateTimeFormat(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->seekBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->uiHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private sendVideoStart()V
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->prepared:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoStartSent:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->recycler:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->adListener:Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/IAdListener;->onADExposure()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoStartSent:Z

    :cond_1
    return-void
.end method

.method private updateTimeFormat(Landroid/widget/TextView;I)V
    .locals 4

    div-int/lit16 p2, p2, 0x3e8

    div-int/lit8 v0, p2, 0x3c

    rem-int/lit8 p2, p2, 0x3c

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, v2, v0

    const-string p2, "%02d:%02d"

    invoke-static {v1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public addOnVideoCompleteListener(Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoCompleteListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onVideoCompleteListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public adjustVideoSize()V
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->configWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->configHeight:I

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->configWidth:I

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->configHeight:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->lifecycleHelper:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleHelper;->setActivity(Landroid/app/Activity;)V

    :cond_1
    iput-object v1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->adListener:Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;

    iput-object v1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onVideoLoadedListener:Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoLoadedListener;

    iput-object v1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->nativeAdMediaListener:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    return-void
.end method

.method public getAdSailVideoView()Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->currentPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->currentPosition:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->getDuration()I

    move-result v0

    return v0
.end method

.method public getHrVideoView()Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    return-object v0
.end method

.method public getPlayState()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playState:I

    return v0
.end method

.method public getVideoThumb()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public isPlaying()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->isPrepared()Z

    move-result v0

    return v0
.end method

.method public mute()V
    .locals 0

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onMute()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->attachWindow:Z

    iget-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->recycler:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoStartSent:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->adListener:Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcn/haorui/sdk/adsail_ad/IAdListener;->onADExposure()V

    :cond_0
    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->mExposureListener:Lcn/haorui/sdk/core/ad/recycler/IAdExposureListener;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcn/haorui/sdk/core/ad/recycler/IAdExposureListener;->onAdExposure()V

    :cond_1
    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoStartSent:Z

    :cond_2
    iget v1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playState:I

    if-nez v1, :cond_3

    iget-boolean v2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->autoStart:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->start()V

    goto :goto_0

    :cond_3
    if-eq v1, v0, :cond_4

    const/4 v0, 0x2

    if-ne v1, v0, :cond_5

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->autoStart:Z

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->resume()V

    :cond_5
    :goto_0
    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->autoStart:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "ACTION_DOWNLOAD_CLICKED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_6
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->attachWindow:Z

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->recycler:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->showDetail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->autoStart:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->pause()V

    :cond_0
    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->autoStart:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public onDetailReturn()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->showDetail:Z

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->attachWindow:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->destroy()V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->containerWidth:F

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    cmpg-float v5, v3, v2

    if-gez v5, :cond_1

    iget v5, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->containerHeight:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    if-lez v0, :cond_0

    if-nez v1, :cond_0

    int-to-float p2, v0

    mul-float v5, v5, p2

    div-float/2addr v5, v2

    float-to-int p2, v5

    :goto_0
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_3

    :cond_0
    if-nez v0, :cond_4

    if-lez v1, :cond_4

    int-to-float p1, v1

    mul-float v2, v2, p1

    div-float/2addr v2, v5

    float-to-int p1, v2

    :goto_1
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_3

    :cond_1
    iget v2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->configWidth:I

    if-lez v2, :cond_4

    iget v3, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->configHeight:I

    if-lez v3, :cond_4

    if-lez v0, :cond_2

    if-nez v1, :cond_2

    int-to-float p2, v3

    int-to-float v0, v0

    mul-float p2, p2, v0

    int-to-float v0, v2

    :goto_2
    div-float/2addr p2, v0

    float-to-int p2, p2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    if-lez v1, :cond_3

    int-to-float p1, v2

    int-to-float v0, v1

    mul-float p1, p1, v0

    int-to-float v0, v3

    div-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_1

    :cond_3
    if-lez v0, :cond_4

    if-lez v1, :cond_4

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->configHeight:I

    int-to-float p2, p2

    int-to-float v0, v0

    mul-float p2, p2, v0

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->configWidth:I

    int-to-float v0, v0

    goto :goto_2

    :cond_4
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onMute()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_video_volume_mute:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_video_volume:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->nativeAdMediaListener:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;->onVideoMute()V

    :cond_0
    return-void
.end method

.method public onUnmute()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    :try_start_0
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_video_volume_mute:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_video_volume:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->nativeAdMediaListener:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;->onVideoUnmute()V

    :cond_0
    return-void
.end method

.method public onVideoSkiped()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->isVideoSkiped:Z

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->stop()V

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onCompletion()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    const/4 v0, 0x3

    if-nez p1, :cond_0

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playState:I

    if-eq v1, v0, :cond_0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->attachWindow:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->showDetail:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->isEyes:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->TAG:Ljava/lang/String;

    const-string v0, "onWindowFocusChanged,onPause"

    invoke-static {p1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->pause()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    iget p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playState:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    iget-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->showDetail:Z

    if-eqz v1, :cond_2

    if-eq p1, v0, :cond_2

    iget-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->attachWindow:Z

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume,playState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->resume()V

    :cond_2
    :goto_0
    return-void
.end method

.method public openDetail()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->showDetail:Z

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-static {p0}, Lcn/haorui/sdk/activity/HRDetailActivity;->setVideoView(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcn/haorui/sdk/activity/HRDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    move-result v2

    const-string v3, "EXTRA_INTERACTION_TYPE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "EXTRA_DURL"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAppName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EXTRA_APP_NAME"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EXTRA_ICON_URL"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EXTRA_CONTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getScore()Ljava/lang/Float;

    move-result-object v2

    const-string v3, "EXTRA_SCORE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getDownNum()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "EXTRA_DOWN_NUM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getWidth()I

    move-result v2

    const-string v3, "EXTRA_VIDEO_WIDTH"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getHeight()I

    move-result v0

    const-string v2, "EXTRA_VIDEO_HEIGHT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public pause()V
    .locals 2

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playOnce:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playState:I

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->paused:Z

    const/4 v0, 0x2

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playState:I

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->pause()V

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onPause()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->nativeAdMediaListener:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;->onVideoPause()V

    :cond_3
    return-void
.end method

.method public performVideoActions()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onVideoLoadedListener:Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoLoadedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoLoadedListener;->onLoaded(Lcn/haorui/sdk/adsail_ad/MediaView;)V

    :cond_0
    return-void
.end method

.method public replay()V
    .locals 2

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playOnce:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playState:I

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->paused:Z

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->start()V

    return-void
.end method

.method public resume()V
    .locals 2

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playOnce:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playState:I

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->paused:Z

    const/4 v0, 0x1

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playState:I

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->resume()V

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onPlay()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->nativeAdMediaListener:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;->onVideoResume()V

    :cond_3
    return-void
.end method

.method public setActivityForLifecycle(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->lifecycleHelper:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleHelper;

    invoke-direct {v0}, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleHelper;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->lifecycleHelper:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleHelper;

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleHelper;->setActivity(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public setAdListener(Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->adListener:Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;

    return-void
.end method

.method public setAutoStart(Z)V
    .locals 1

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->autoStart:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_center_play_button:I

    invoke-virtual {p1, v0}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    :cond_0
    return-void
.end method

.method public setConfigHeight(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->configHeight:I

    return-void
.end method

.method public setConfigWidth(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->configWidth:I

    return-void
.end method

.method public setContainerHeight(F)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->containerHeight:F

    return-void
.end method

.method public setContainerWidth(F)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->containerWidth:F

    return-void
.end method

.method public setDisplayMode(I)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->setDisplayMode(I)V

    return-void
.end method

.method public setFromLogo(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_img_ad_tag:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0, p1}, Lz2/o000O000;->o000000(Ljava/lang/String;)Lz2/o000O000;

    :cond_0
    return-void
.end method

.method public setFromLogoVisibility(I)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_img_ad_tag:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0, p1}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    return-void
.end method

.method public setInitMute(Z)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v3, Lcn/haorui/sdk/R$id;->adsail_video_volume_mute:I

    invoke-virtual {v2, v3}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v2

    check-cast v2, Lz2/o000;

    if-eqz p1, :cond_0

    invoke-virtual {v2, v0}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v2, Lcn/haorui/sdk/R$id;->adsail_video_volume:I

    invoke-virtual {v0, v2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0, v1}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v2, Lcn/haorui/sdk/R$id;->adsail_video_volume:I

    invoke-virtual {v1, v2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v1

    check-cast v1, Lz2/o000;

    invoke-virtual {v1, v0}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    :goto_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->setInitMute(Z)V

    return-void
.end method

.method public setIsEyes(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->isEyes:I

    return-void
.end method

.method public setMsAd(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    return-void
.end method

.method public setNativeAdMediaListener(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->nativeAdMediaListener:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    return-void
.end method

.method public setOnExposureListener(Lcn/haorui/sdk/core/ad/recycler/IAdExposureListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->mExposureListener:Lcn/haorui/sdk/core/ad/recycler/IAdExposureListener;

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$IPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->mPreparedListener:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$IPreparedListener;

    return-void
.end method

.method public setOnVideoKeepTimeFinishListener(Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoKeepTimeFinishListener;J)V
    .locals 2

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onVideoKeepTimeFinishListener:Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoKeepTimeFinishListener;

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    iput-wide p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->keepTime:J

    :cond_0
    return-void
.end method

.method public setOnVideoLoadedListener(Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoLoadedListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onVideoLoadedListener:Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoLoadedListener;

    return-void
.end method

.method public setPlayOnce(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playOnce:Z

    return-void
.end method

.method public setRecycler(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->recycler:Z

    return-void
.end method

.method public setUseTransform(Z)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->setUseTransform(Z)V

    return-void
.end method

.method public setVideoCover(Ljava/lang/String;)V
    .locals 8

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->coverUrl:Ljava/lang/String;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_video_cover:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lz2/o000;

    new-instance v7, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$2;

    invoke-direct {v7, p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$2;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lz2/o000O000;->o00000o0(Ljava/lang/String;ZZIILz2/o000OO00;)Lz2/o000O000;

    return-void
.end method

.method public setVideoEndCover(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->endCoverUrl:Ljava/lang/String;

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoUrl:Ljava/lang/String;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->setVideoPath(Ljava/lang/String;)V

    return-void
.end method

.method public showControl(Z)V
    .locals 1

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->showControl:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_control:I

    invoke-virtual {p1, v0}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1}, Lz2/o000O000;->o000o00()Lz2/o000O000;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_control:I

    invoke-virtual {p1, v0}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1}, Lz2/o000O000;->o00Ooo()Lz2/o000O000;

    :goto_0
    return-void
.end method

.method public showProgressLoading()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_progress_loading:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0}, Lz2/o000O000;->o000o00()Lz2/o000O000;

    return-void
.end method

.method public start()V
    .locals 3

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playState:I

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playOnce:Z

    if-eqz v2, :cond_1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->playState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->oneQuarterPerformed:Z

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->oneHalfPerformed:Z

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->threeQuarterPerformed:Z

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->paused:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->start()V

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onPlay()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->nativeAdMediaListener:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;->onVideoStart()V

    :cond_2
    return-void
.end method

.method public stop()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onPause()V

    return-void
.end method

.method public unmute()V
    .locals 0

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onUnmute()V

    return-void
.end method
