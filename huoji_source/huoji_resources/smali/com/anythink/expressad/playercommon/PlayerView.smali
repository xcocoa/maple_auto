.class public Lcom/anythink/expressad/playercommon/PlayerView;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/playercommon/PlayerView$MySurfaceHoldeCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PlayerView"


# instance fields
.field private isBTVideo:Z

.field private isBTVideoPlaying:Z

.field private mInitState:Z

.field private mIsCovered:Z

.field private mIsFirstCreateHolder:Z

.field private mIsNeedToRepeatPrepare:Z

.field private mIsSurfaceHolderDestoryed:Z

.field private mLlSurContainer:Landroid/widget/LinearLayout;

.field private mLoadingView:Landroid/widget/LinearLayout;

.field private mPlayUrl:Ljava/lang/String;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

.field public tempEventListener:Lcom/anythink/expressad/reward/player/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mInitState:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mIsFirstCreateHolder:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mIsSurfaceHolderDestoryed:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mIsCovered:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mIsNeedToRepeatPrepare:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->isBTVideo:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->isBTVideoPlaying:Z

    invoke-direct {p0}, Lcom/anythink/expressad/playercommon/PlayerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mInitState:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mIsFirstCreateHolder:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mIsSurfaceHolderDestoryed:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mIsCovered:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mIsNeedToRepeatPrepare:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->isBTVideo:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->isBTVideoPlaying:Z

    invoke-direct {p0}, Lcom/anythink/expressad/playercommon/PlayerView;->init()V

    return-void
.end method

.method public static synthetic access$100(Lcom/anythink/expressad/playercommon/PlayerView;)Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/anythink/expressad/playercommon/PlayerView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/anythink/expressad/playercommon/PlayerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mIsFirstCreateHolder:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/anythink/expressad/playercommon/PlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mIsSurfaceHolderDestoryed:Z

    return p0
.end method

.method public static synthetic access$402(Lcom/anythink/expressad/playercommon/PlayerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mIsSurfaceHolderDestoryed:Z

    return p1
.end method

.method public static synthetic access$502(Lcom/anythink/expressad/playercommon/PlayerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mIsNeedToRepeatPrepare:Z

    return p1
.end method

.method public static synthetic access$600(Lcom/anythink/expressad/playercommon/PlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mIsCovered:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/anythink/expressad/playercommon/PlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->isBTVideo:Z

    return p0
.end method

.method private init()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/anythink/expressad/playercommon/PlayerView;->initView()V

    invoke-direct {p0}, Lcom/anythink/expressad/playercommon/PlayerView;->initPlayer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method private initPlayer()V
    .locals 1

    new-instance v0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    invoke-direct {v0}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    return-void
.end method

.method private initView()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "anythink_playercommon_player_view"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "anythink_playercommon_ll_sur_container"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mLlSurContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "anythink_playercommon_ll_loading"

    invoke-static {v1, v2, v3}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/anythink/expressad/playercommon/PlayerView;->addSurfaceView()V

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addSurfaceView()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    iget-object v1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    iget-object v1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    new-instance v2, Lcom/anythink/expressad/playercommon/PlayerView$MySurfaceHoldeCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/anythink/expressad/playercommon/PlayerView$MySurfaceHoldeCallback;-><init>(Lcom/anythink/expressad/playercommon/PlayerView;Lcom/anythink/expressad/playercommon/PlayerView$1;)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mLlSurContainer:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public closeSound()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->closeSound()V

    :cond_0
    return-void
.end method

.method public coverUnlockResume()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->setIsFrontDesk(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->hasPrepare()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mIsNeedToRepeatPrepare:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/anythink/expressad/playercommon/PlayerView;->start(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/playercommon/PlayerView;->playVideo(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public getCurPosition()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->getCurPosition()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initBufferIngParam(I)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->initBufferIngParam(I)V

    :cond_0
    return-void
.end method

.method public initVFPData(Ljava/lang/String;Ljava/lang/String;ILcom/anythink/expressad/playercommon/VideoPlayerStatusListener;)Z
    .locals 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput-object p1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mPlayUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    iget-object v1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->tempEventListener:Lcom/anythink/expressad/reward/player/c;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->setTempEventListener(Lcom/anythink/expressad/reward/player/c;)V

    iget-object v2, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mLoadingView:Landroid/widget/LinearLayout;

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->initPlayer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ILcom/anythink/expressad/playercommon/VideoPlayerStatusListener;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mInitState:Z

    return p1
.end method

.method public isComplete()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->isComplete()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return v0
.end method

.method public isPlayIng()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->isPlayIng()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSilent()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->isSilent()Z

    move-result v0

    return v0
.end method

.method public justSeekTo(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->justSeekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public onPause()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/expressad/playercommon/PlayerView;->pause()V

    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->setIsFrontDesk(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public onResume()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->setIsFrontDesk(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mIsSurfaceHolderDestoryed:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/anythink/expressad/playercommon/PlayerView;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mIsCovered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->hasPrepare()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/playercommon/PlayerView;->resumeStart()V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/playercommon/PlayerView;->playVideo(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public openSound()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->openSound()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public playVideo()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/playercommon/PlayerView;->playVideo(I)Z

    move-result v0

    return v0
.end method

.method public playVideo(I)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-boolean v2, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mInitState:Z

    if-nez v2, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->play(Ljava/lang/String;I)V

    iput-boolean v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mIsNeedToRepeatPrepare:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return v0
.end method

.method public prepare()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public release()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->releasePlayer()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public removeSurface()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mLlSurContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public resumeStart()V
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/playercommon/PlayerView;->start(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public setDataSource()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->showLoading()V

    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->setDataSource()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mIsNeedToRepeatPrepare:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public setDesk(Z)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->setIsFrontDesk(Z)V

    return-void
.end method

.method public setIsBTVideo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->isBTVideo:Z

    return-void
.end method

.method public setIsBTVideoPlaying(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->isBTVideoPlaying:Z

    return-void
.end method

.method public setIsCovered(Z)V
    .locals 0

    :try_start_0
    iput-boolean p1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mIsCovered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public setPlaybackParams(F)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->setPlaybackParams(F)V

    :cond_0
    return-void
.end method

.method public setTempEventListener(Lcom/anythink/expressad/reward/player/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->tempEventListener:Lcom/anythink/expressad/reward/player/c;

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public start(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mIsCovered:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->start(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public stop()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/playercommon/PlayerView;->mVideoFeedsPlayer:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method
