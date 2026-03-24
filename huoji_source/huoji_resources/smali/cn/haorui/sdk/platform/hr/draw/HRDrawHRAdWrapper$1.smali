.class public Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->loadVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADError(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    const-string v0, "AdSailDrawAdWrapper"

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->access$1100(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->access$1200(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;

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

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-virtual {p1}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/ad/draw/DrawAdLoader;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/core/loader/AdPlatformError;->post(Lcn/haorui/sdk/core/loader/IAdLoadListener;)V

    return-void
.end method

.method public onADExposure()V
    .locals 6

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->access$1000(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/RecordUtil;->saveAction(Ljava/lang/String;I)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "AdSailDrawAdWrapper"

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

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

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
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/draw/DrawAdListener;

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    :cond_2
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->access$1002(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;Z)Z

    :cond_3
    return-void
.end method

.method public bridge synthetic onADLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->onADLoaded(Ljava/util/List;)V

    return-void
.end method

.method public onADLoaded(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/draw/DrawAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/draw/DrawAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/draw/DrawAdListener;

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdError()V

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v0

    instance-of v0, v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/draw/DrawAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/draw/DrawAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/draw/DrawAdListener;

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdError()V

    :cond_2
    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-static {v1}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->access$000(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcn/haorui/sdk/R$layout;->adsail_draw_ad_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView;

    new-instance v2, Lcn/haorui/sdk/core/view/DownloadView;

    invoke-direct {v2}, Lcn/haorui/sdk/core/view/DownloadView;-><init>()V

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-static {v4}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->access$100(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v4

    check-cast v4, Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v2, v1, v4}, Lcn/haorui/sdk/core/view/DownloadView;->handleDownloadView(Landroid/view/View;Lcn/haorui/sdk/core/ad/BaseAdSlot;)V

    sget v2, Lcn/haorui/sdk/R$id;->adsail_draw_ad_video:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    new-instance v4, Lz2/o000;

    invoke-direct {v4, v1}, Lz2/o000;-><init>(Landroid/view/View;)V

    sget v5, Lcn/haorui/sdk/R$id;->adsail_draw_ad_detail_logo:I

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    sget v6, Lcn/haorui/sdk/R$id;->adsail_draw_ad_detail_title:I

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget v7, Lcn/haorui/sdk/R$id;->adsail_draw_ad_detail_desc:I

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-static {v8}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->access$200(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v8

    check-cast v8, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v8}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_cover()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v4, v5}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v4

    check-cast v4, Lz2/o000;

    iget-object v5, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-static {v5}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->access$300(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v5

    check-cast v5, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v5}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getIconUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lz2/o000O000;->o000000(Ljava/lang/String;)Lz2/o000O000;

    :cond_3
    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-static {v4}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->access$400(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v4

    check-cast v4, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v4}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-static {v4}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->access$500(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v4

    check-cast v4, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v4}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;

    iget-object v5, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-virtual {v5}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;-><init>(Lcn/haorui/sdk/core/ad/AdSlot;Landroid/view/View;)V

    if-eqz v0, :cond_5

    new-instance v5, Lcn/haorui/sdk/core/view/TouchAdContainer;

    iget-object v6, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-virtual {v6}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcn/haorui/sdk/core/view/TouchAdContainer;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lcn/haorui/sdk/core/view/TouchPositionListener;

    invoke-direct {v6, p1}, Lcn/haorui/sdk/core/view/TouchPositionListener;-><init>(Lcn/haorui/sdk/core/ad/IAd;)V

    invoke-virtual {v5, v6}, Lcn/haorui/sdk/core/view/TouchAdContainer;->setTouchPositionListener(Lcn/haorui/sdk/core/view/TouchPositionListener;)V

    invoke-virtual {v5, v0, v7, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    new-instance v6, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;

    iget-object v7, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-virtual {v7}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-static {v8}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->access$600(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v8

    check-cast v8, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iget-object v9, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-static {v9}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->access$700(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;-><init>(Landroid/content/Context;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;)V

    invoke-interface {p1, v5, v3, v6}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->bindMediaView(Landroid/view/ViewGroup;Landroid/widget/FrameLayout$LayoutParams;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;)V

    instance-of v3, v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-virtual {v3}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-object v3, v0

    check-cast v3, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setRecycler(Z)V

    :cond_4
    new-instance v3, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1$1;

    invoke-direct {v3, p0, v0}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1$1;-><init>(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView;->setOnVisibilityChangeListener(Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView$OnVisibilityChangeListener;)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v1}, Lcn/haorui/sdk/core/ad/BaseAd;->setAdView(Landroid/view/View;)V

    new-instance v0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1$2;

    invoke-direct {v0, p0, v4, p1}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1$2;-><init>(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;)V

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-virtual {p1}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-virtual {p1}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/ad/draw/DrawAdListener;

    invoke-interface {p1, v4}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-virtual {p1}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/ad/draw/DrawAdListener;

    invoke-interface {p1, v4}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method
