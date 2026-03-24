.class public Lcn/haorui/sdk/platform/hr/banner/HRViewWrapper;
.super Lcn/haorui/sdk/platform/hr/HRAdLoader;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/haorui/sdk/platform/hr/HRAdLoader<",
        "Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;",
        "Lcn/haorui/sdk/core/ad/banner/BannerAdLoader;",
        "Lcn/haorui/sdk/core/ad/banner/BannerAdListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdSailViewWrapper"


# instance fields
.field private adNative:Lcn/haorui/sdk/adsail_ad/AdNative;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/ad/banner/BannerAdLoader;Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;)V
    .locals 0
    .param p1    # Lcn/haorui/sdk/core/ad/banner/BannerAdLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/platform/hr/HRAdLoader;-><init>(Lcn/haorui/sdk/core/loader/b;Lcn/haorui/sdk/core/ad/AdSlot;)V

    new-instance p2, Lcn/haorui/sdk/adsail_ad/AdNative;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcn/haorui/sdk/adsail_ad/AdNative;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/banner/HRViewWrapper;->adNative:Lcn/haorui/sdk/adsail_ad/AdNative;

    return-void
.end method


# virtual methods
.method public loadAd()V
    .locals 4

    new-instance v0, Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v1, Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

    invoke-direct {v0, v1}, Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;-><init>(Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;)V

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/core/ad/banner/BannerAdListener;

    invoke-interface {v1, v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/banner/HRViewWrapper;->adNative:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v1, Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

    new-instance v2, Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v3

    check-cast v3, Lcn/haorui/sdk/core/ad/banner/BannerAdListener;

    invoke-direct {v2, p0, v3}, Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;-><init>(Lcn/haorui/sdk/platform/hr/banner/HRViewWrapper;Lcn/haorui/sdk/core/ad/banner/BannerAdListener;)V

    invoke-virtual {v0, v1, v2}, Lcn/haorui/sdk/adsail_ad/AdNative;->loadBannerAd(Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;Lcn/haorui/sdk/adsail_ad/banner/IBannerAdListener;)V

    return-void
.end method
