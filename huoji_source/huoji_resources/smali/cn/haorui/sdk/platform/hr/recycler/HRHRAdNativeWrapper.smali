.class public Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;
.super Lcn/haorui/sdk/platform/hr/HRAdLoader;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/haorui/sdk/platform/hr/HRAdLoader<",
        "Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;",
        "Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;",
        "Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdSailAdNativeWrapper"


# instance fields
.field private HRAdListenerAdapter:Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;

.field private adNative:Lcn/haorui/sdk/adsail_ad/AdNative;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;)V
    .locals 0
    .param p1    # Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/platform/hr/HRAdLoader;-><init>(Lcn/haorui/sdk/core/loader/b;Lcn/haorui/sdk/core/ad/AdSlot;)V

    new-instance p2, Lcn/haorui/sdk/adsail_ad/AdNative;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcn/haorui/sdk/adsail_ad/AdNative;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;->adNative:Lcn/haorui/sdk/adsail_ad/AdNative;

    return-void
.end method


# virtual methods
.method public getHRAdListenerAdapter()Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;->HRAdListenerAdapter:Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;

    return-object v0
.end method

.method public loadAd()V
    .locals 9

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    :cond_0
    new-instance v4, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;

    invoke-direct {v4, p0, v0}, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;-><init>(Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;)V

    iput-object v4, p0, Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;->HRAdListenerAdapter:Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;->adNative:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    move-object v3, v0

    check-cast v3, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;->isShowDetail()Z

    move-result v5

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;->getIsVideoAutoPlay()Z

    move-result v6

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;->getContainerWidth()F

    move-result v7

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;->getContainerHeight()F

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lcn/haorui/sdk/adsail_ad/AdNative;->loadNativeAd(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;ZZFF)V

    return-void
.end method
