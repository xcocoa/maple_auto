.class public Lcn/haorui/sdk/core/ad/paster/HRPasterAd;
.super Lcn/haorui/sdk/core/ad/BaseAd;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/paster/PasterAd;


# instance fields
.field private adListener:Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;

.field private nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "AD_HR"

    invoke-direct {p0, v0, v1}, Lcn/haorui/sdk/core/ad/BaseAd;-><init>(Lcn/haorui/sdk/core/loader/d;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->destroy()V

    :cond_0
    return-void
.end method

.method public getAppIntro()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_intro()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getAppIntroUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_intor_url()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getAppPermissionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/domain/HRAdInfo$PermissionBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_permission()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppPremissionUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_permission_url()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_size()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_ver()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->getCurrentPosition()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getData()Lcn/haorui/sdk/core/utils/ResultBean;
    .locals 2

    new-instance v0, Lcn/haorui/sdk/core/utils/ResultBean;

    invoke-direct {v0}, Lcn/haorui/sdk/core/utils/ResultBean;-><init>()V

    iget-object v1, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setCid(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setCat(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setAderId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getFromId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setFromId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getReq_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setReqId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getEcpm()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setPrice(I)V

    iget-object v1, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getEcpm()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setEcpm(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getS_ext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setS_ext(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getS_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setS_code(Ljava/lang/String;)V

    const-string v1, "AD_HR"

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setSdkName(Ljava/lang/String;)V

    return-object v0
.end method

.method public getDeepLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/AderUtil;->getIsOperationContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getDeep_link()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDeveloper()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getDeveloper()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->getDuration()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getImgUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/AderUtil;->getIsOperationContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getIsOperationContent()Z
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/AderUtil;->getIsOperationContent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPrivacyAgreement()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPrivacy_agreement()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public mute()V
    .locals 1

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onMute()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->resume()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->onPause()V

    return-void
.end method

.method public replay()V
    .locals 4

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/haorui/sdk/core/ad/paster/HRPasterAd$1;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/core/ad/paster/HRPasterAd$1;-><init>(Lcn/haorui/sdk/core/ad/paster/HRPasterAd;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->onResume()V

    return-void
.end method

.method public setAdListener(Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/paster/HRPasterAd;->adListener:Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;

    return-void
.end method

.method public setOnPreparedListener(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$IPreparedListener;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setOnPreparedListener(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$IPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->start()V

    :cond_0
    return-void
.end method

.method public unmute()V
    .locals 1

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->unmute()V

    :cond_0
    return-void
.end method
