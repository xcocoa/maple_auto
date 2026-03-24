.class public Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdSailAdListenerAdapter"


# instance fields
.field private adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

.field private apiAdListener:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;

.field private volatile hasExposed:Z


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;->apiAdListener:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;

    return-void
.end method


# virtual methods
.method public onADError(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0, p2, p1}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetErrorReport(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcn/haorui/sdk/platform/hr/HRPlatformError;

    invoke-direct {v0, p1, p2}, Lcn/haorui/sdk/platform/hr/HRPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;->apiAdListener:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/core/loader/AdPlatformError;->post(Lcn/haorui/sdk/core/loader/IAdLoadListener;)V

    return-void
.end method

.method public onADExposure()V
    .locals 6

    iget-boolean v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;->hasExposed:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;->hasExposed:Z

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/RecordUtil;->saveAction(Ljava/lang/String;I)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

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

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

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
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;->apiAdListener:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    :cond_2
    return-void
.end method

.method public bridge synthetic onADLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;->onADLoaded(Ljava/util/List;)V

    return-void
.end method

.method public onADLoaded(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;->apiAdListener:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getDrawing()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v2}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v2

    instance-of v2, v2, Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdLoader;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    instance-of v0, v0, Lcn/haorui/sdk/core/ad/prerender/PreRenderAdLoader;

    if-eqz v0, :cond_1

    :goto_0
    const/4 v1, 0x1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v1, :cond_2

    new-instance v3, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-direct {v3, v4, v2}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;-><init>(Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;)V

    goto :goto_2

    :cond_2
    new-instance v3, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-direct {v3, v4, v2}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;-><init>(Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;)V

    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;->apiAdListener:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetErrorReport(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;->apiAdListener:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;

    if-eqz v0, :cond_1

    new-instance v1, Lcn/haorui/sdk/platform/hr/HRPlatformError;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcn/haorui/sdk/platform/hr/HRPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;->apiAdListener:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;

    invoke-interface {v0, p1, p2}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
