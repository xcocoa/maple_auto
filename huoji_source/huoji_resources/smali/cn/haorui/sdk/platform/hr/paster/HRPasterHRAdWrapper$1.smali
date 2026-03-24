.class public Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private recyclerAdMediaListener:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;

.field public final synthetic this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$2;

    invoke-direct {p1, p0}, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$2;-><init>(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;)V

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->recyclerAdMediaListener:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;

    return-void
.end method


# virtual methods
.method public onADError(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->access$800(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->access$900(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;

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

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-virtual {p1}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/ad/paster/PasterAdLoader;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/core/loader/AdPlatformError;->post(Lcn/haorui/sdk/core/loader/IAdLoadListener;)V

    return-void
.end method

.method public onADExposure()V
    .locals 6

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->access$700(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/RecordUtil;->saveAction(Ljava/lang/String;I)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "AdSailPasterAdWrapper"

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

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

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
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/paster/PasterAdListener;

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    :cond_2
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->access$702(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;Z)Z

    :cond_3
    return-void
.end method

.method public bridge synthetic onADLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->onADLoaded(Ljava/util/List;)V

    return-void
.end method

.method public onADLoaded(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/paster/PasterAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/paster/PasterAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/paster/PasterAdListener;

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdError()V

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v1

    instance-of v1, v1, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/core/ad/paster/PasterAdLoader;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/core/ad/paster/PasterAdLoader;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/core/ad/paster/PasterAdListener;

    invoke-interface {v1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdError()V

    :cond_2
    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-static {v1}, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->access$000(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-interface {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v1, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setAutoStart(Z)V

    new-instance v0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-static {v1}, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->access$100(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-direct {v0, v1}, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;)V

    invoke-virtual {v0, p0}, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->setAdListener(Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;)V

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/ad/BaseAd;->setAdView(Landroid/view/View;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-static {v1}, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->access$000(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$1;

    invoke-direct {v2, p0, v0, p1}, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$1;-><init>(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;Lcn/haorui/sdk/core/ad/paster/HRPasterAd;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcn/haorui/sdk/core/view/TouchAdContainer;

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-virtual {v2}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/haorui/sdk/core/view/TouchAdContainer;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcn/haorui/sdk/core/view/TouchPositionListener;

    invoke-direct {v2, p1}, Lcn/haorui/sdk/core/view/TouchPositionListener;-><init>(Lcn/haorui/sdk/core/ad/IAd;)V

    invoke-virtual {v1, v2}, Lcn/haorui/sdk/core/view/TouchAdContainer;->setTouchPositionListener(Lcn/haorui/sdk/core/view/TouchPositionListener;)V

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-static {v2}, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->access$000(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-static {v2}, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->access$000(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v2, 0x0

    new-instance v3, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-virtual {v4}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-static {v5}, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->access$400(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v5

    check-cast v5, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iget-object v6, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->recyclerAdMediaListener:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;

    invoke-direct {v3, v4, v5, v6}, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;-><init>(Landroid/content/Context;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;)V

    invoke-interface {p1, v1, v2, v3}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->bindMediaView(Landroid/view/ViewGroup;Landroid/widget/FrameLayout$LayoutParams;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-virtual {p1}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-virtual {p1}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/ad/paster/PasterAdListener;

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-virtual {p1}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/ad/paster/PasterAdListener;

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->access$1000(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->access$1100(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;

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
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/paster/PasterAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/paster/PasterAdListener;

    new-instance v1, Lcn/haorui/sdk/platform/hr/HRPlatformError;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcn/haorui/sdk/platform/hr/HRPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/paster/PasterAdListener;

    invoke-interface {v0, p1, p2}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
