.class public Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;
.super Lcn/haorui/sdk/platform/hr/HRAdLoader;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/haorui/sdk/platform/hr/HRAdLoader<",
        "Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;",
        "Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;",
        "Lcn/haorui/sdk/core/ad/splash/SplashAdListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdSailAdNativeWrapper"


# instance fields
.field private adNative:Lcn/haorui/sdk/adsail_ad/AdNative;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;)V
    .locals 0
    .param p1    # Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/platform/hr/HRAdLoader;-><init>(Lcn/haorui/sdk/core/loader/b;Lcn/haorui/sdk/core/ad/AdSlot;)V

    new-instance p2, Lcn/haorui/sdk/adsail_ad/AdNative;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcn/haorui/sdk/adsail_ad/AdNative;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;->adNative:Lcn/haorui/sdk/adsail_ad/AdNative;

    return-void
.end method


# virtual methods
.method public loadAd()V
    .locals 8

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/splash/SplashAdListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->localParams:Ljava/util/Map;

    const-string v2, "KEY_AUTO_SHOW"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    new-instance v4, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/splash/SplashAdListener;

    invoke-direct {v4, p0, v0, v7}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;-><init>(Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;Lcn/haorui/sdk/core/ad/splash/SplashAdListener;Z)V

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "\u672a\u6307\u5b9a\u5e7f\u544a\u5bb9\u5668"

    invoke-interface {v4, v1, v0}, Lcn/haorui/sdk/adsail_ad/IAdListener;->onAdRenderFail(Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->localParams:Ljava/util/Map;

    const-string v2, "KEY_SKIP_BUTTON"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    move-object v6, v1

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;->adNative:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    move-object v3, v0

    check-cast v3, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-object v5, p0

    invoke-virtual/range {v2 .. v7}, Lcn/haorui/sdk/adsail_ad/AdNative;->loadSplashAd(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;Landroid/view/View;Z)V

    return-void
.end method
