.class public Lcn/haorui/sdk/platform/hr/interstitial/HRAdListenerAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/adsail_ad/interstitial/IInterstitialAdListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdSailAdListenerAdapter"


# instance fields
.field private adListener:Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;

.field private adView:Landroid/view/View;

.field private adWrapper:Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

.field private volatile hasExposed:Z


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRAdListenerAdapter;->adListener:Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;

    return-void
.end method


# virtual methods
.method public onADClosed()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRAdListenerAdapter;->adListener:Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    :cond_0
    return-void
.end method

.method public onADError(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0, p2, p1}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetErrorReport(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcn/haorui/sdk/platform/hr/HRPlatformError;

    invoke-direct {v0, p1, p2}, Lcn/haorui/sdk/platform/hr/HRPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRAdListenerAdapter;->adListener:Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/core/loader/AdPlatformError;->post(Lcn/haorui/sdk/core/loader/IAdLoadListener;)V

    return-void
.end method

.method public onADExposure()V
    .locals 6

    iget-boolean v0, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRAdListenerAdapter;->hasExposed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/RecordUtil;->saveAction(Ljava/lang/String;I)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "AdSailAdListenerAdapter"

    const-string v2, "send onADExposure"

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

    invoke-virtual {v4}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v5}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v4, v3, v5}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRAdListenerAdapter;->adListener:Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRAdListenerAdapter;->hasExposed:Z

    :cond_3
    return-void
.end method

.method public onADLoaded(Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRAdListenerAdapter;->adListener:Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;

    if-eqz v0, :cond_0

    new-instance v1, Lcn/haorui/sdk/platform/hr/interstitial/HRInterstitialAdAdapter;

    invoke-direct {v1, p1, v0}, Lcn/haorui/sdk/platform/hr/interstitial/HRInterstitialAdAdapter;-><init>(Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;)V

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRAdListenerAdapter;->adView:Landroid/view/View;

    invoke-virtual {v1, p1}, Lcn/haorui/sdk/core/ad/BaseAd;->setAdView(Landroid/view/View;)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRAdListenerAdapter;->adListener:Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;

    invoke-interface {p1, v1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onADLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/hr/interstitial/HRAdListenerAdapter;->onADLoaded(Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;)V

    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetErrorReport(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRAdListenerAdapter;->adListener:Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;

    if-eqz v0, :cond_1

    new-instance v1, Lcn/haorui/sdk/platform/hr/HRPlatformError;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcn/haorui/sdk/platform/hr/HRPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRAdListenerAdapter;->adListener:Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;

    invoke-interface {v0, p1, p2}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
