.class public abstract Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdListenerAdapter"


# instance fields
.field private ad:Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;

.field private adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

.field private adWrapper:Lcn/haorui/sdk/platform/hr/HRAdLoader;

.field private apiAdListener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

.field private hasExposed:Z


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/HRAdLoader;Lcn/haorui/sdk/core/loader/IAdLoadListener;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;)V
    .locals 0
    .param p1    # Lcn/haorui/sdk/platform/hr/HRAdLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/HRAdLoader;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;->apiAdListener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    iput-object p3, p0, Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    return-void
.end method


# virtual methods
.method public abstract getResponUrl()[Ljava/lang/String;
.end method

.method public onADError(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/HRAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/HRAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0, p2, p1}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetErrorReport(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcn/haorui/sdk/platform/hr/HRPlatformError;

    invoke-direct {v0, p1, p2}, Lcn/haorui/sdk/platform/hr/HRPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;->apiAdListener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/core/loader/AdPlatformError;->post(Lcn/haorui/sdk/core/loader/IAdLoadListener;)V

    return-void
.end method

.method public onADExposure()V
    .locals 6

    iget-boolean v0, p0, Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;->hasExposed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/HRAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getPosId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/RecordUtil;->saveAction(Ljava/lang/String;I)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/HRAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getMonitorUrl()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "AdListenerAdapter"

    const-string v2, "send onAdExposure"

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/HRAdLoader;

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
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;->apiAdListener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;->hasExposed:Z

    :cond_3
    return-void
.end method

.method public bridge synthetic onADLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;->onADLoaded(Ljava/util/List;)V

    return-void
.end method

.method public onADLoaded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;->apiAdListener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/HRAdLoader;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/platform/hr/IAdSailAd;

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-direct {v0, v1, p1, v2}, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;-><init>(Lcn/haorui/sdk/platform/hr/HRAdLoader;Lcn/haorui/sdk/platform/hr/IAdSailAd;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;)V

    iput-object v0, p0, Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;->ad:Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;->apiAdListener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;->apiAdListener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    instance-of v0, p1, Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;

    if-eqz v0, :cond_0

    check-cast p1, Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;->onVideoCached()V

    :cond_0
    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/HRAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/HRAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetErrorReport(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;->ad:Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->destroy()V

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;->apiAdListener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    if-eqz v0, :cond_2

    new-instance v1, Lcn/haorui/sdk/platform/hr/HRPlatformError;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcn/haorui/sdk/platform/hr/HRPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;->apiAdListener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    invoke-interface {v0, p1, p2}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method
