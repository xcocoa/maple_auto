.class public Lcn/haorui/sdk/adsail_ad/AdNative$16;
.super Lz2/o000O0O0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/AdNative;->loadVideoSplashAd(Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lz2/o000;ZLandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/o000O0O0<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

.field public final synthetic val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

.field public final synthetic val$adRoot:Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

.field public final synthetic val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

.field public final synthetic val$customSkipButton:Landroid/view/View;

.field public final synthetic val$isLoadFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

.field public final synthetic val$videoIsMute:Z


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;ZLcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Landroid/view/View;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    iput-object p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    iput-boolean p4, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$videoIsMute:Z

    iput-object p5, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$adRoot:Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    iput-object p6, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    iput-object p7, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$customSkipButton:Landroid/view/View;

    iput-object p8, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$isLoadFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lz2/o000O0O0;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/io/File;Lz2/o000O;)V
    .locals 7

    invoke-virtual {p3}, Lz2/o000O;->OooOO0o()I

    move-result p1

    const-string v0, "AdNative"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc8

    if-gt v3, p1, :cond_2

    invoke-virtual {p3}, Lz2/o000O;->OooOO0o()I

    move-result p1

    const/16 v3, 0x12c

    if-gt v3, p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "splash video file error, file: null"

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "splash video code error, code: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lz2/o000O;->OooOO0o()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {v0, p1}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_2
    const-string v0, "splash video load error"

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {}, Lcn/haorui/sdk/core/utils/MemoryUtil;->getTraceMemory()I

    move-result p1

    int-to-long v5, p1

    cmp-long p1, v3, v5

    if-ltz p1, :cond_3

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object p2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    invoke-virtual {p3}, Lz2/o000O;->OooOO0o()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2, v0, p3}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$000(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/IAdListener;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_3
    new-instance p1, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    iget-object p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    invoke-static {p3}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$200(Lcn/haorui/sdk/adsail_ad/AdNative;)Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {p3}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getWidth()I

    move-result p3

    invoke-virtual {p1, p3}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setConfigWidth(I)V

    iget-object p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {p3}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getHeight()I

    move-result p3

    invoke-virtual {p1, p3}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setConfigHeight(I)V

    invoke-virtual {p1, v1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setPlayOnce(Z)V

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->mute()V

    iget-boolean p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$videoIsMute:Z

    if-nez p3, :cond_4

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->unmute()V

    :cond_4
    iget-object p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {p3}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->getIs_eyes()I

    move-result p3

    invoke-virtual {p1, p3}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setIsEyes(I)V

    invoke-virtual {p1, v2}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setUseTransform(Z)V

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setDisplayMode(I)V

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcn/haorui/sdk/core/HRConfig;->showLogo()Z

    move-result p3

    if-nez p3, :cond_5

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setFromLogoVisibility(I)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setFromLogo(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {p3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setFromLogo(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setFromLogoVisibility(I)V

    :goto_3
    new-instance p3, Lcn/haorui/sdk/adsail_ad/AdNative$16$1;

    invoke-direct {p3, p0}, Lcn/haorui/sdk/adsail_ad/AdNative$16$1;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative$16;)V

    invoke-virtual {p1, p3}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setAdListener(Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;)V

    iget-object p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$adRoot:Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_splash_video:I

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, -0x1

    invoke-virtual {p3, p1, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    invoke-virtual {p3, p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->setMediaView(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    iget-object p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$adRoot:Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$customSkipButton:Landroid/view/View;

    invoke-static {p3, v0, v1, v2, v3}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$800(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Landroid/view/View;)Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    move-result-object p3

    new-instance v0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$200(Lcn/haorui/sdk/adsail_ad/AdNative;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    new-instance v3, Lcn/haorui/sdk/adsail_ad/AdNative$16$2;

    invoke-direct {v3, p0, p1, p3}, Lcn/haorui/sdk/adsail_ad/AdNative$16$2;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative$16;Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)V

    invoke-direct {v0, v1, v2, v3}, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;-><init>(Landroid/content/Context;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;)V

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setNativeAdMediaListener(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;)V

    iget-object p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {p3}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_cover()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setVideoCover(Ljava/lang/String;)V

    iget-object p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {p3}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_endcover()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setVideoEndCover(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setVideoPath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->start()V

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object p2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    invoke-virtual {p3}, Lz2/o000O;->OooOO0o()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2, v0, p3}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$000(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/IAdListener;Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_4
    return-void
.end method

.method public bridge synthetic callback(Ljava/lang/String;Ljava/lang/Object;Lz2/o000O;)V
    .locals 0

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lcn/haorui/sdk/adsail_ad/AdNative$16;->callback(Ljava/lang/String;Ljava/io/File;Lz2/o000O;)V

    return-void
.end method
