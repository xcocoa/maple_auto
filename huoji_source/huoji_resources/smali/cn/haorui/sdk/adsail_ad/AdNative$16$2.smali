.class public Lcn/haorui/sdk/adsail_ad/AdNative$16$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/AdNative$16;->callback(Ljava/lang/String;Ljava/io/File;Lz2/o000O;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcn/haorui/sdk/adsail_ad/AdNative$16;

.field public final synthetic val$mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

.field public final synthetic val$skipView:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/AdNative$16;Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16$2;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$16;

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16$2;->val$mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    iput-object p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16$2;->val$skipView:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoCompleted()V
    .locals 4

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16$2;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$16;

    iget-object v0, v0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->setVideoFinish(Z)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16$2;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$16;

    iget-object v0, v0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->getIs_eyes()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16$2;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$16;

    iget-object v0, v0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getIsAnimFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcn/haorui/sdk/adsail_ad/AdNative$16$2$1;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/adsail_ad/AdNative$16$2$1;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative$16$2;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onVideoError()V
    .locals 0

    return-void
.end method

.method public onVideoLoaded()V
    .locals 4

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16$2;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$16;

    iget-object v0, v0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$isLoadFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16$2;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$16;

    iget-object v1, v0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16$2;->val$mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->getAdSailVideoView()Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/ad/splash/SplashAd;->setWidth(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16$2;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$16;

    iget-object v0, v0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16$2;->val$mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->getAdSailVideoView()Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/ad/splash/SplashAd;->setHeight(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16$2;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$16;

    iget-object v1, v0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    iget-object v0, v0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    invoke-interface {v1, v0}, Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;->onAdReady(Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;)V

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16$2;->val$mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->getDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/HRConfig;->getSplashShowTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16$2;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$16;

    iget-object v2, v2, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v2}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->getIs_eyes()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16$2;->val$skipView:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    long-to-int v1, v0

    invoke-virtual {v2, v1}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->setTotalTime(I)V

    :cond_2
    return-void
.end method

.method public onVideoPause()V
    .locals 0

    return-void
.end method

.method public onVideoResume()V
    .locals 0

    return-void
.end method

.method public onVideoStart()V
    .locals 0

    return-void
.end method
