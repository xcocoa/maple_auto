.class public Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/adsail_ad/banner/IBannerAdListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BannerAdListenerAdapter"


# instance fields
.field private adView:Landroid/view/View;

.field private adWrapper:Lcn/haorui/sdk/platform/hr/banner/HRViewWrapper;

.field private bannerAdListener:Lcn/haorui/sdk/core/ad/banner/BannerAdListener;

.field private volatile hasExposed:Z


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/banner/HRViewWrapper;Lcn/haorui/sdk/core/ad/banner/BannerAdListener;)V
    .locals 0
    .param p1    # Lcn/haorui/sdk/platform/hr/banner/HRViewWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcn/haorui/sdk/core/ad/banner/BannerAdListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/banner/HRViewWrapper;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;->bannerAdListener:Lcn/haorui/sdk/core/ad/banner/BannerAdListener;

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;)Lcn/haorui/sdk/platform/hr/banner/HRViewWrapper;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/banner/HRViewWrapper;

    return-object p0
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;->adView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;)Lcn/haorui/sdk/core/ad/banner/BannerAdListener;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;->bannerAdListener:Lcn/haorui/sdk/core/ad/banner/BannerAdListener;

    return-object p0
.end method

.method public static synthetic access$302(Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;->hasExposed:Z

    return p1
.end method


# virtual methods
.method public onADClosed()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;->bannerAdListener:Lcn/haorui/sdk/core/ad/banner/BannerAdListener;

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    return-void
.end method

.method public onADError(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public onADExposure()V
    .locals 2

    iget-boolean v0, p0, Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;->hasExposed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;->adView:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter$1;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter$1;-><init>(Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onADLoaded(Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;)V
    .locals 2

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;->adView:Landroid/view/View;

    new-instance v0, Lcn/haorui/sdk/core/view/TouchAdContainer;

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;->adView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/haorui/sdk/core/view/TouchAdContainer;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcn/haorui/sdk/core/view/TouchPositionListener;

    invoke-direct {v1, p1}, Lcn/haorui/sdk/core/view/TouchPositionListener;-><init>(Lcn/haorui/sdk/core/ad/IAd;)V

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/view/TouchAdContainer;->setTouchPositionListener(Lcn/haorui/sdk/core/view/TouchPositionListener;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;->adView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object v0, p0, Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;->adView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAd;->setAdView(Landroid/view/View;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;->bannerAdListener:Lcn/haorui/sdk/core/ad/banner/BannerAdListener;

    invoke-interface {v0, p1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onADLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;->onADLoaded(Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;)V

    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/banner/HRViewWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/banner/HRViewWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetErrorReport(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;->bannerAdListener:Lcn/haorui/sdk/core/ad/banner/BannerAdListener;

    if-eqz v0, :cond_1

    new-instance v1, Lcn/haorui/sdk/platform/hr/HRPlatformError;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcn/haorui/sdk/platform/hr/HRPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/banner/BannerAdListenerAdapter;->bannerAdListener:Lcn/haorui/sdk/core/ad/banner/BannerAdListener;

    invoke-interface {v0, p1, p2}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
