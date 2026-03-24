.class public Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;
.super Lcn/haorui/sdk/core/ad/splash/SplashAd;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "AdSailSplashAd"


# instance fields
.field private adWrapper:Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

.field private autoShow:Z

.field private nativeAd:Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;

.field private showed:Z

.field private splashAdListener:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;Z)V
    .locals 2
    .param p1    # Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const-string v1, "AD_HR"

    invoke-direct {p0, v0, v1}, Lcn/haorui/sdk/core/ad/splash/SplashAd;-><init>(Lcn/haorui/sdk/core/loader/d;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->nativeAd:Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->adWrapper:Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    iput-object p3, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->splashAdListener:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    iput-boolean p4, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->autoShow:Z

    instance-of p2, p1, Lcn/haorui/sdk/core/ad/splash/SplashAd;

    if-eqz p2, :cond_0

    check-cast p1, Lcn/haorui/sdk/core/ad/splash/SplashAd;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/splash/SplashAd;->getWidth()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/haorui/sdk/core/ad/splash/SplashAd;->setWidth(Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/splash/SplashAd;->getHeight()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/core/ad/splash/SplashAd;->setHeight(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->closeClickEye(Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Z)V

    return-void
.end method

.method private closeClickEye(Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Z)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getIsVideoFinish()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_3

    :cond_1
    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getMediaView()Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->destroy()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->removeView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getData()Lcn/haorui/sdk/core/utils/ResultBean;
    .locals 3

    new-instance v0, Lcn/haorui/sdk/core/utils/ResultBean;

    invoke-direct {v0}, Lcn/haorui/sdk/core/utils/ResultBean;-><init>()V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->adWrapper:Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setCid(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->adWrapper:Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setCat(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->adWrapper:Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setAderId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->adWrapper:Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getFromId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setFromId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->adWrapper:Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setInteractionType(I)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->adWrapper:Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getReq_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setReqId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->adWrapper:Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getEcpm()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setPrice(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->adWrapper:Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    invoke-virtual {v2}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v2

    check-cast v2, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getEcpm()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setEcpm(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->adWrapper:Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getS_ext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setS_ext(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->adWrapper:Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getS_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setS_code(Ljava/lang/String;)V

    const-string v1, "AD_HR"

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setSdkName(Ljava/lang/String;)V

    return-object v0
.end method

.method public getDeepLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->nativeAd:Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/AderUtil;->getIsOperationContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->nativeAd:Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getDeep_link()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getImgUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->nativeAd:Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/AderUtil;->getIsOperationContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->nativeAd:Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->nativeAd:Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;->getInteractionType()I

    move-result v0

    return v0
.end method

.method public getIsOperationContent()Z
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->nativeAd:Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/AderUtil;->getIsOperationContent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeView()V
    .locals 7

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    if-eqz v0, :cond_3

    :try_start_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    move-object v5, v3

    check-cast v5, Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    move-object v5, v3

    check-cast v5, Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lcn/haorui/sdk/core/view/gif/GifImageView;

    if-eqz v6, :cond_0

    check-cast v5, Lcn/haorui/sdk/core/view/gif/GifImageView;

    invoke-virtual {v5}, Lcn/haorui/sdk/core/view/gif/GifImageView;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/haorui/sdk/core/ad/BaseAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->nativeAd:Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;

    invoke-interface {v0, p1}, Lcn/haorui/sdk/core/ad/IAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

    return-void
.end method

.method public setSplashFinishingTouchListener(Lcn/haorui/sdk/core/ad/splash/ISplashFinishingTouchListener;)V
    .locals 6

    invoke-super {p0, p1}, Lcn/haorui/sdk/core/ad/splash/SplashAd;->setSplashFinishingTouchListener(Lcn/haorui/sdk/core/ad/splash/ISplashFinishingTouchListener;)V

    iget-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    if-eqz p1, :cond_2

    :try_start_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    move-object v4, v2

    check-cast v4, Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    move-object v4, v2

    check-cast v4, Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcn/haorui/sdk/core/view/gif/GifImageView;

    if-eqz v5, :cond_0

    check-cast v4, Lcn/haorui/sdk/core/view/gif/GifImageView;

    invoke-virtual {v4, v0}, Lcn/haorui/sdk/core/view/gif/GifImageView;->setCanClear(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public setSplashImage(I)V
    .locals 2

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcn/haorui/sdk/R$id;->adsail_splash_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setSplashImage(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcn/haorui/sdk/R$id;->adsail_splash_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->showed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->nativeAd:Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;

    instance-of v0, v0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->nativeAd:Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;

    check-cast v0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->showAd(Landroid/view/ViewGroup;)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->showed:Z

    :cond_1
    return-void
.end method

.method public splashAnimationFinish()V
    .locals 5

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->nativeAd:Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->setAnimFinish(Z)V

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdRoot()Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    move-result-object v1

    sget v2, Lcn/haorui/sdk/R$id;->adsail_click_eye_close:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcn/haorui/sdk/R$id;->adsail_skipView:I

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v3, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd$1;

    invoke-direct {v3, p0, v0}, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd$1;-><init>(Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd$2;

    invoke-direct {v2, p0, v0}, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd$2;-><init>(Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd$3;

    invoke-direct {v2, p0, v0}, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd$3;-><init>(Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
