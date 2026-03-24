.class public Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SplashAdListenerAdapter"


# instance fields
.field private HRSplashAd:Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;

.field private adView:Landroid/view/View;

.field private adWrapper:Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

.field private autoShow:Z

.field private hasExposed:Z

.field private isViewClicked:Z

.field private splashAdListener:Lcn/haorui/sdk/core/ad/splash/SplashAdListener;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;Lcn/haorui/sdk/core/ad/splash/SplashAdListener;Z)V
    .locals 0
    .param p2    # Lcn/haorui/sdk/core/ad/splash/SplashAdListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->splashAdListener:Lcn/haorui/sdk/core/ad/splash/SplashAdListener;

    iput-boolean p3, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->autoShow:Z

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    return-object p0
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->adView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Lcn/haorui/sdk/core/ad/splash/SplashAdListener;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->splashAdListener:Lcn/haorui/sdk/core/ad/splash/SplashAdListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->HRSplashAd:Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;

    return-object p0
.end method

.method public static synthetic access$402(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->hasExposed:Z

    return p1
.end method

.method public static synthetic access$500(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->isViewClicked:Z

    return p0
.end method


# virtual methods
.method public isHasExposed()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->hasExposed:Z

    return v0
.end method

.method public onADClosed()V
    .locals 2

    sget-object v0, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/g;->a()V

    invoke-static {}, Lcn/haorui/sdk/core/utils/SdkHandler;->getInstance()Lcn/haorui/sdk/core/utils/SdkHandler;

    move-result-object v0

    new-instance v1, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$2;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$2;-><init>(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)V

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onADError(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    invoke-static {}, Lcn/haorui/sdk/core/utils/SdkHandler;->getInstance()Lcn/haorui/sdk/core/utils/SdkHandler;

    move-result-object v0

    new-instance v1, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$5;

    invoke-direct {v1, p0, p1, p2}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$5;-><init>(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onADExposure()V
    .locals 2

    iget-boolean v0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->hasExposed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->adView:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$1;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$1;-><init>(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onADLoaded(Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;)V
    .locals 3

    new-instance v0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    iget-boolean v2, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->autoShow:Z

    invoke-direct {v0, p1, v1, p0, v2}, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;-><init>(Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;Z)V

    iput-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->HRSplashAd:Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->splashAdListener:Lcn/haorui/sdk/core/ad/splash/SplashAdListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onADLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->onADLoaded(Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;)V

    return-void
.end method

.method public onADSkip()V
    .locals 2

    invoke-static {}, Lcn/haorui/sdk/core/utils/SdkHandler;->getInstance()Lcn/haorui/sdk/core/utils/SdkHandler;

    move-result-object v0

    new-instance v1, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$3;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$3;-><init>(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)V

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onADTick(J)V
    .locals 2

    invoke-static {}, Lcn/haorui/sdk/core/utils/SdkHandler;->getInstance()Lcn/haorui/sdk/core/utils/SdkHandler;

    move-result-object v0

    new-instance v1, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$7;

    invoke-direct {v1, p0, p1, p2}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$7;-><init>(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;J)V

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onADTimeOver()V
    .locals 2

    invoke-static {}, Lcn/haorui/sdk/core/utils/SdkHandler;->getInstance()Lcn/haorui/sdk/core/utils/SdkHandler;

    move-result-object v0

    new-instance v1, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$4;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$4;-><init>(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)V

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdClicked()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->isViewClicked:Z

    return-void
.end method

.method public onAdReady(Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;)V
    .locals 3

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->adView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->adView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v1, Lcn/haorui/sdk/core/view/TouchAdContainer;

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->adView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/haorui/sdk/core/view/TouchAdContainer;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcn/haorui/sdk/core/view/TouchPositionListener;

    invoke-direct {v2, p1}, Lcn/haorui/sdk/core/view/TouchPositionListener;-><init>(Lcn/haorui/sdk/core/ad/IAd;)V

    invoke-virtual {v1, v2}, Lcn/haorui/sdk/core/view/TouchAdContainer;->setTouchPositionListener(Lcn/haorui/sdk/core/view/TouchPositionListener;)V

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->adView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iput-object v1, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->adView:Landroid/view/View;

    invoke-virtual {p1, v1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->setAdView(Landroid/view/View;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->HRSplashAd:Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->adView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/ad/BaseAd;->setAdView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->showAdReal()V

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->onADExposure()V

    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Lcn/haorui/sdk/core/utils/SdkHandler;->getInstance()Lcn/haorui/sdk/core/utils/SdkHandler;

    move-result-object v0

    new-instance v1, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$6;

    invoke-direct {v1, p0, p2, p1}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$6;-><init>(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
