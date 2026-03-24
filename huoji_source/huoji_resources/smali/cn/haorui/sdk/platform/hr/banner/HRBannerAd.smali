.class public Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;
.super Lcn/haorui/sdk/platform/hr/BaseHrAd;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/banner/IBannerAd;


# instance fields
.field private activity:Landroid/app/Activity;

.field private adContainer:Landroid/view/ViewGroup;

.field private adSlot:Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/platform/hr/BaseHrAd;-><init>(Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;)V

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;->adSlot:Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

    return-void
.end method


# virtual methods
.method public getAdType()Lcn/haorui/sdk/core/ad/AdType;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/ad/AdType;->BANNER:Lcn/haorui/sdk/core/ad/AdType;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;->adContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcn/haorui/sdk/core/utils/ResultBean;
    .locals 2

    new-instance v0, Lcn/haorui/sdk/core/utils/ResultBean;

    invoke-direct {v0}, Lcn/haorui/sdk/core/utils/ResultBean;-><init>()V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;->adSlot:Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setCid(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;->adSlot:Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setCat(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;->adSlot:Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setAderId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;->adSlot:Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getFromId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setFromId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;->adSlot:Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getReq_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setReqId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;->adSlot:Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getEcpm()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setPrice(I)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;->adSlot:Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getEcpm()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setEcpm(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;->adSlot:Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getS_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setS_code(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;->adSlot:Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getS_ext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setS_ext(Ljava/lang/String;)V

    const-string v1, "AD_HR"

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setSdkName(Ljava/lang/String;)V

    return-object v0
.end method

.method public getDeepLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;->adSlot:Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/AderUtil;->getIsOperationContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;->adSlot:Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getDeep_link()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getImgUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;->adSlot:Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/AderUtil;->getIsOperationContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;->adSlot:Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIsOperationContent()Z
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;->adSlot:Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/AderUtil;->getIsOperationContent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCloseButtonVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_banner_close_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcn/haorui/sdk/core/ad/BaseAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

    return-void
.end method

.method public setWidthAndHeight(II)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_banner_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->requestLayout()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;->adContainer:Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;->adContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method
