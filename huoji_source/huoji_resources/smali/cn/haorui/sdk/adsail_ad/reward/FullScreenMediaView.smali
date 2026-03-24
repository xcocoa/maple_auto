.class public Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcn/haorui/sdk/adsail_ad/MediaView;


# static fields
.field private static final TAG:Ljava/lang/String; = "FullScreenMediaView"

.field private static final UPDATE_TIME:I = 0x1


# instance fields
.field private aQuery:Lz2/o000;

.field private adListener:Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;

.field private keepTime:J

.field private keepTimeFinishedPerformed:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private nativeAdMediaListener:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

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

.field private oneHalfPerformed:Z

.field private oneQuarterPerformed:Z

.field private prepared:Z

.field private processBar:Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;

.field private started:Z

.field private threeQuarterPerformed:Z

.field private uiHandler:Landroid/os/Handler;

.field private videoStartSent:Z

.field private videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->keepTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->videoStartSent:Z

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->prepared:Z

    new-instance v0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;-><init>(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->uiHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->onVideoCompleteListeners:Ljava/util/List;

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->init(Landroid/content/Context;)V

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

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->keepTime:J

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->videoStartSent:Z

    iput-boolean p2, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->prepared:Z

    new-instance p2, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;-><init>(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;Landroid/os/Looper;)V

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->uiHandler:Landroid/os/Handler;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->onVideoCompleteListeners:Ljava/util/List;

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->init(Landroid/content/Context;)V

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

    const-wide/16 p2, -0x1

    iput-wide p2, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->keepTime:J

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->videoStartSent:Z

    iput-boolean p2, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->prepared:Z

    new-instance p2, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;-><init>(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;Landroid/os/Looper;)V

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->uiHandler:Landroid/os/Handler;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->onVideoCompleteListeners:Ljava/util/List;

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    return-object p0
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->processBar:Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;

    return-object p0
.end method

.method public static synthetic access$1000(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->onOpenVolume()V

    return-void
.end method

.method public static synthetic access$1100(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->onMute()V

    return-void
.end method

.method public static synthetic access$1202(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method public static synthetic access$1302(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->prepared:Z

    return p1
.end method

.method public static synthetic access$1400(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->started:Z

    return p0
.end method

.method public static synthetic access$1402(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->started:Z

    return p1
.end method

.method public static synthetic access$1500(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->onPlay()V

    return-void
.end method

.method public static synthetic access$1600(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->onReset()V

    return-void
.end method

.method public static synthetic access$1700(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->onCompletion()V

    return-void
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)J
    .locals 2

    iget-wide v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->keepTime:J

    return-wide v0
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->keepTimeFinishedPerformed:Z

    return p0
.end method

.method public static synthetic access$302(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->keepTimeFinishedPerformed:Z

    return p1
.end method

.method public static synthetic access$400(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoKeepTimeFinishListener;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->onVideoKeepTimeFinishListener:Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoKeepTimeFinishListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->oneQuarterPerformed:Z

    return p0
.end method

.method public static synthetic access$502(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->oneQuarterPerformed:Z

    return p1
.end method

.method public static synthetic access$600(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->nativeAdMediaListener:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    return-object p0
.end method

.method public static synthetic access$700(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->oneHalfPerformed:Z

    return p0
.end method

.method public static synthetic access$702(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->oneHalfPerformed:Z

    return p1
.end method

.method public static synthetic access$800(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->threeQuarterPerformed:Z

    return p0
.end method

.method public static synthetic access$802(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->threeQuarterPerformed:Z

    return p1
.end method

.method public static synthetic access$900(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->uiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "adsail_media_view"

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->initUI(Landroid/content/Context;)V

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->initEvent()V

    return-void
.end method

.method private initEvent()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_center_play_button:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$2;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$2;-><init>(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)V

    invoke-virtual {v0, v1}, Lz2/o000O000;->OooOo0o(Landroid/view/View$OnClickListener;)Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_controlbar_video_play_button:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$3;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$3;-><init>(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)V

    invoke-virtual {v0, v1}, Lz2/o000O000;->OooOo0o(Landroid/view/View$OnClickListener;)Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_controlbar_video_pause_button:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$4;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$4;-><init>(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)V

    invoke-virtual {v0, v1}, Lz2/o000O000;->OooOo0o(Landroid/view/View$OnClickListener;)Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_video_volume_mute:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$5;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$5;-><init>(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)V

    invoke-virtual {v0, v1}, Lz2/o000O000;->OooOo0o(Landroid/view/View$OnClickListener;)Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_video_volume:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$6;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$6;-><init>(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)V

    invoke-virtual {v0, v1}, Lz2/o000O000;->OooOo0o(Landroid/view/View$OnClickListener;)Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$7;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$7;-><init>(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)V

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$8;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$8;-><init>(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)V

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$9;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$9;-><init>(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)V

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method private initUI(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcn/haorui/sdk/R$layout;->adsail_full_screen_video_player_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    sget v0, Lcn/haorui/sdk/R$id;->adsail_video_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->setUseTransform(Z)V

    new-instance p1, Lz2/o000;

    invoke-direct {p1, p0}, Lz2/o000;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->aQuery:Lz2/o000;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_process_bar:I

    invoke-virtual {p1, v0}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1}, Lz2/o000O000;->o00O0O()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->processBar:Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private onCompletion()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->started:Z

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->processBar:Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->onPause()V

    iget-wide v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->keepTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->onVideoKeepTimeFinishListener:Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoKeepTimeFinishListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoKeepTimeFinishListener;->onKeepTimeFinished()V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->onVideoCompleteListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoCompleteListener;

    invoke-interface {v1}, Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoCompleteListener;->onCompleted()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->nativeAdMediaListener:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;->onVideoComplete()V

    :cond_2
    return-void
.end method

.method private onMute()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_video_volume_mute:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_video_volume:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    :cond_0
    return-void
.end method

.method private onOpenVolume()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_video_volume_mute:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_video_volume:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    :cond_0
    return-void
.end method

.method private onPause()V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_controlbar_video_play_button:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->aQuery:Lz2/o000;

    sget v2, Lcn/haorui/sdk/R$id;->adsail_center_play_button:I

    invoke-virtual {v0, v2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0, v1}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_controlbar_video_pause_button:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->uiHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private onPlay()V
    .locals 6

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->sendVideoStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->started:Z

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->aQuery:Lz2/o000;

    sget v2, Lcn/haorui/sdk/R$id;->adsail_controlbar_video_play_button:I

    invoke-virtual {v1, v2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v1

    check-cast v1, Lz2/o000;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->aQuery:Lz2/o000;

    sget v3, Lcn/haorui/sdk/R$id;->adsail_center_play_button:I

    invoke-virtual {v1, v3}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v1

    check-cast v1, Lz2/o000;

    invoke-virtual {v1, v2}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->aQuery:Lz2/o000;

    sget v2, Lcn/haorui/sdk/R$id;->adsail_controlbar_video_pause_button:I

    invoke-virtual {v1, v2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v1

    check-cast v1, Lz2/o000;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    iget-wide v1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->keepTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {v3}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->getDuration()I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    iget-wide v1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->keepTime:J

    long-to-int v2, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->getDuration()I

    move-result v2

    :goto_0
    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->processBar:Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;

    invoke-virtual {v1, v2}, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->setmTotalTime(I)V

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method private onReset()V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_controlbar_video_play_button:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->aQuery:Lz2/o000;

    sget v2, Lcn/haorui/sdk/R$id;->adsail_center_play_button:I

    invoke-virtual {v0, v2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0, v1}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->aQuery:Lz2/o000;

    sget v2, Lcn/haorui/sdk/R$id;->adsail_controlbar_video_pause_button:I

    invoke-virtual {v0, v2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->processBar:Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->refreshProcess(I)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->processBar:Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->setmTotalTime(I)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->uiHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private onResume()V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->onPlay()V

    return-void
.end method

.method private sendVideoStart()V
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->videoStartSent:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->prepared:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->nativeAdMediaListener:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;->onVideoStart()V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->adListener:Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/IAdListener;->onADExposure()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->videoStartSent:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public addOnVideoCompleteListener(Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoCompleteListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->onVideoCompleteListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getVideoView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public isPrepared()Z
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->isPrepared()Z

    move-result v0

    return v0
.end method

.method public mute()V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->onMute()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const-string v0, "FullScreenMediaView"

    const-string v1, "onDetachedFromWindow: "

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->uiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->pause()V

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->onPause()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->nativeAdMediaListener:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;->onVideoPause()V

    :cond_0
    return-void
.end method

.method public performVideoActions()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->onVideoLoadedListener:Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoLoadedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoLoadedListener;->onLoaded(Lcn/haorui/sdk/adsail_ad/MediaView;)V

    :cond_0
    return-void
.end method

.method public replay()V
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->started:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->start()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->start()V

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->onResume()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->nativeAdMediaListener:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;->onVideoResume()V

    :cond_0
    return-void
.end method

.method public setAdListener(Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->adListener:Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;

    return-void
.end method

.method public setNativeAdMediaListener(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->nativeAdMediaListener:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method

.method public setOnVideoKeepTimeFinishListener(Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoKeepTimeFinishListener;J)V
    .locals 2

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->onVideoKeepTimeFinishListener:Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoKeepTimeFinishListener;

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    iput-wide p2, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->keepTime:J

    :cond_0
    return-void
.end method

.method public setOnVideoLoadedListener(Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoLoadedListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->onVideoLoadedListener:Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoLoadedListener;

    return-void
.end method

.method public setVideoCover(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->setVideoPath(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->start()V

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->onPlay()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->videoView:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->stopPlayback()V

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->onPause()V

    return-void
.end method

.method public unmute()V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->onOpenVolume()V

    return-void
.end method
