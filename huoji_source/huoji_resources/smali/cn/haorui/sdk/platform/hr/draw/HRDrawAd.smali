.class public Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;
.super Lcn/haorui/sdk/core/ad/draw/DrawAd;
.source ""

# interfaces
.implements Lcn/haorui/sdk/platform/hr/IAdSailAd;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdSailDrawAd"


# instance fields
.field private adContainer:Landroid/view/ViewGroup;

.field private adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

.field private adView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/ad/AdSlot;Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "AD_HR"

    invoke-direct {p0, v0, v1}, Lcn/haorui/sdk/core/ad/draw/DrawAd;-><init>(Lcn/haorui/sdk/core/loader/d;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adView:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v0, :cond_0

    const-string v0, "AdSailDrawAd"

    const-string v1, "destroy: "

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adView:Landroid/view/View;

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->destroy()V

    :cond_0
    return-void
.end method

.method public getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-object v0
.end method

.method public getAdType()Lcn/haorui/sdk/core/ad/AdType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcn/haorui/sdk/core/utils/ResultBean;
    .locals 3

    new-instance v0, Lcn/haorui/sdk/core/utils/ResultBean;

    invoke-direct {v0}, Lcn/haorui/sdk/core/utils/ResultBean;-><init>()V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    instance-of v2, v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    if-eqz v2, :cond_0

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setCid(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setCat(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setAderId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getFromId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setFromId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getReq_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setReqId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getEcpm()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setPrice(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v2, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getEcpm()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setEcpm(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getS_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setS_code(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getS_ext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setS_ext(Ljava/lang/String;)V

    const-string v1, "AD_HR"

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setSdkName(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getInteractionType()I

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    invoke-super {p0}, Lcn/haorui/sdk/core/ad/draw/DrawAd;->pause()V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adView:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v0, :cond_0

    const-string v0, "AdSailDrawAd"

    const-string v1, "pause: "

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adView:Landroid/view/View;

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    invoke-super {p0}, Lcn/haorui/sdk/core/ad/draw/DrawAd;->resume()V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adView:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AdSailDrawAd"

    const-string v1, "resume: "

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adView:Landroid/view/View;

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->resume()V

    :cond_0
    return-void
.end method

.method public setVideoMute(Z)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adView:Landroid/view/View;

    if-eqz v0, :cond_1

    instance-of v0, v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v0, :cond_1

    const-string v0, "AdSailDrawAd"

    const-string v1, "pause: "

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adView:Landroid/view/View;

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->mute()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adView:Landroid/view/View;

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->unmute()V

    :cond_1
    :goto_0
    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 1

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adContainer:Landroid/view/ViewGroup;

    invoke-super {p0, p1}, Lcn/haorui/sdk/core/ad/draw/DrawAd;->showAd(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adView:Landroid/view/View;

    if-eqz p1, :cond_0

    instance-of p1, p1, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz p1, :cond_0

    const-string p1, "AdSailDrawAd"

    const-string v0, "showAd: "

    invoke-static {p1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;->adView:Landroid/view/View;

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->start()V

    :cond_0
    return-void
.end method
