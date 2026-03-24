.class public Lcn/haorui/sdk/platform/hr/reward/HRRewardVideoHRAdWrapper;
.super Lcn/haorui/sdk/platform/hr/HRAdLoader;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/haorui/sdk/platform/hr/HRAdLoader<",
        "Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;",
        "Lcn/haorui/sdk/core/ad/reward/RewardVideoLoader;",
        "Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdSailRewardVideoAdWrapper"


# instance fields
.field private adListener:Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;

.field private adNative:Lcn/haorui/sdk/adsail_ad/AdNative;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/ad/reward/RewardVideoLoader;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;)V
    .locals 0
    .param p1    # Lcn/haorui/sdk/core/ad/reward/RewardVideoLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/platform/hr/HRAdLoader;-><init>(Lcn/haorui/sdk/core/loader/b;Lcn/haorui/sdk/core/ad/AdSlot;)V

    new-instance p2, Lcn/haorui/sdk/adsail_ad/AdNative;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcn/haorui/sdk/adsail_ad/AdNative;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/reward/HRRewardVideoHRAdWrapper;->adNative:Lcn/haorui/sdk/adsail_ad/AdNative;

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/platform/hr/reward/HRRewardVideoHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-object p0
.end method


# virtual methods
.method public getAdSailAdListener()Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/reward/HRRewardVideoHRAdWrapper;->adListener:Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;

    return-object v0
.end method

.method public loadAd()V
    .locals 4

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcn/haorui/sdk/platform/hr/reward/HRRewardVideoHRAdWrapper$1;

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v1

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v2, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-direct {v0, p0, p0, v1, v2}, Lcn/haorui/sdk/platform/hr/reward/HRRewardVideoHRAdWrapper$1;-><init>(Lcn/haorui/sdk/platform/hr/reward/HRRewardVideoHRAdWrapper;Lcn/haorui/sdk/platform/hr/HRAdLoader;Lcn/haorui/sdk/core/loader/IAdLoadListener;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;)V

    iput-object v0, p0, Lcn/haorui/sdk/platform/hr/reward/HRRewardVideoHRAdWrapper;->adListener:Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/reward/HRRewardVideoHRAdWrapper;->adNative:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v2, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v3

    check-cast v3, Lcn/haorui/sdk/core/ad/BaseFullScreenVideoAdLoader;

    invoke-virtual {v1, v2, v0, v3}, Lcn/haorui/sdk/adsail_ad/AdNative;->loadRewardVideoAd(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;Lcn/haorui/sdk/core/ad/BaseFullScreenVideoAdLoader;)V

    return-void
.end method
