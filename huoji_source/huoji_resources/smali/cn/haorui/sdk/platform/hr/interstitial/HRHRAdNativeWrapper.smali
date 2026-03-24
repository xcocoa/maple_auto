.class public Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;
.super Lcn/haorui/sdk/platform/hr/HRAdLoader;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/haorui/sdk/platform/hr/HRAdLoader<",
        "Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;",
        "Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdLoader;",
        "Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdSailAdNativeWrapper"


# instance fields
.field private adNative:Lcn/haorui/sdk/adsail_ad/AdNative;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdLoader;Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;)V
    .locals 0
    .param p1    # Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/platform/hr/HRAdLoader;-><init>(Lcn/haorui/sdk/core/loader/b;Lcn/haorui/sdk/core/ad/AdSlot;)V

    new-instance p2, Lcn/haorui/sdk/adsail_ad/AdNative;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcn/haorui/sdk/adsail_ad/AdNative;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;->adNative:Lcn/haorui/sdk/adsail_ad/AdNative;

    return-void
.end method


# virtual methods
.method public loadAd()V
    .locals 3

    const-string v0, "AdSailAdNativeWrapper"

    const-string v1, "loadAd: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;->adNative:Lcn/haorui/sdk/adsail_ad/AdNative;

    new-instance v1, Lcn/haorui/sdk/platform/hr/interstitial/HRAdListenerAdapter;

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v2

    check-cast v2, Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;

    invoke-direct {v1, p0, v2}, Lcn/haorui/sdk/platform/hr/interstitial/HRAdListenerAdapter;-><init>(Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;)V

    invoke-virtual {v0, p0, v1}, Lcn/haorui/sdk/adsail_ad/AdNative;->loadInterstitialAd(Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;Lcn/haorui/sdk/adsail_ad/interstitial/IInterstitialAdListener;)V

    return-void
.end method
