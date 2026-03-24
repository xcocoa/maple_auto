.class public Lcn/haorui/sdk/adsail_ad/AdNative$5$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/AdNative$5;->callback(Ljava/lang/String;Ljava/io/File;Lz2/o000O;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcn/haorui/sdk/adsail_ad/AdNative$5;

.field public final synthetic val$mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

.field public final synthetic val$skipView:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/AdNative$5;Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$5$2;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$5;

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$5$2;->val$mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    iput-object p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$5$2;->val$skipView:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoCompleted()V
    .locals 0

    return-void
.end method

.method public onVideoError()V
    .locals 0

    return-void
.end method

.method public onVideoLoaded()V
    .locals 9

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$5$2;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$5;

    iget-object v0, v0, Lcn/haorui/sdk/adsail_ad/AdNative$5;->val$isLoadFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$5$2;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$5;

    iget-object v1, v0, Lcn/haorui/sdk/adsail_ad/AdNative$5;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v3, v0, Lcn/haorui/sdk/adsail_ad/AdNative$5;->val$adRoot:Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    iget-object v5, v0, Lcn/haorui/sdk/adsail_ad/AdNative$5;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    iget-object v6, v0, Lcn/haorui/sdk/adsail_ad/AdNative$5;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    iget-object v7, v0, Lcn/haorui/sdk/adsail_ad/AdNative$5;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    iget-object v8, p0, Lcn/haorui/sdk/adsail_ad/AdNative$5$2;->val$mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v8}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$900(Lcn/haorui/sdk/adsail_ad/AdNative;[BLandroid/view/View;ZLcn/haorui/sdk/core/ad/BaseAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$5$2;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$5;

    iget-object v0, v0, Lcn/haorui/sdk/adsail_ad/AdNative$5;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$5$2;->val$mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->setMediaView(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$5$2;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$5;

    iget-object v1, v0, Lcn/haorui/sdk/adsail_ad/AdNative$5;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcn/haorui/sdk/adsail_ad/AdNative$5;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$5$2;->val$mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->getAdSailVideoView()Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/ad/splash/SplashAd;->setWidth(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$5$2;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$5;

    iget-object v0, v0, Lcn/haorui/sdk/adsail_ad/AdNative$5;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$5$2;->val$mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->getAdSailVideoView()Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/ad/splash/SplashAd;->setHeight(Ljava/lang/Integer;)V

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$5$2;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$5;

    iget-object v1, v0, Lcn/haorui/sdk/adsail_ad/AdNative$5;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcn/haorui/sdk/adsail_ad/AdNative$5;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    invoke-interface {v1, v0}, Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;->onAdReady(Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;)V

    :cond_2
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$5$2;->val$skipView:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$5$2;->val$mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->setTotalTime(I)V

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
