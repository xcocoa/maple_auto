.class public Lcn/haorui/sdk/platform/hr/interstitial/HRInterstitialAdAdapter;
.super Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;
.source ""


# instance fields
.field private apiAdListener:Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;

.field private interstitialAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;)V
    .locals 2
    .param p1    # Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const-string v1, "AD_HR"

    invoke-direct {p0, v0, v1}, Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;-><init>(Lcn/haorui/sdk/core/loader/d;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRInterstitialAdAdapter;->interstitialAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRInterstitialAdAdapter;->apiAdListener:Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;

    return-void
.end method


# virtual methods
.method public getAdListener()Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRInterstitialAdAdapter;->apiAdListener:Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;

    return-object v0
.end method

.method public getData()Lcn/haorui/sdk/core/utils/ResultBean;
    .locals 3

    new-instance v0, Lcn/haorui/sdk/core/utils/ResultBean;

    invoke-direct {v0}, Lcn/haorui/sdk/core/utils/ResultBean;-><init>()V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRInterstitialAdAdapter;->interstitialAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->getAdSlot()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setCid(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRInterstitialAdAdapter;->interstitialAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->getAdSlot()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setCat(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRInterstitialAdAdapter;->interstitialAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->getAdSlot()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setAderId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRInterstitialAdAdapter;->interstitialAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->getAdSlot()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getFromId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setFromId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRInterstitialAdAdapter;->interstitialAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->getAdSlot()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getReq_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setReqId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRInterstitialAdAdapter;->interstitialAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->getAdSlot()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getEcpm()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setPrice(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRInterstitialAdAdapter;->interstitialAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-virtual {v2}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->getAdSlot()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getEcpm()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setEcpm(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRInterstitialAdAdapter;->interstitialAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->getAdSlot()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getS_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setS_code(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRInterstitialAdAdapter;->interstitialAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->getAdSlot()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getS_ext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setS_ext(Ljava/lang/String;)V

    const-string v1, "AD_HR"

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setSdkName(Ljava/lang/String;)V

    return-object v0
.end method

.method public getDeepLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRInterstitialAdAdapter;->interstitialAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->getAdSlot()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/AderUtil;->getIsOperationContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRInterstitialAdAdapter;->interstitialAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->getAdSlot()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object v0

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

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRInterstitialAdAdapter;->interstitialAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->getAdSlot()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/AderUtil;->getIsOperationContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRInterstitialAdAdapter;->interstitialAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->getAdSlot()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object v0

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

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRInterstitialAdAdapter;->interstitialAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->getAdSlot()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/AderUtil;->getIsOperationContent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/haorui/sdk/core/ad/BaseAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRInterstitialAdAdapter;->interstitialAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

    return-void
.end method

.method public showAd()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRInterstitialAdAdapter;->interstitialAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->showAd()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/interstitial/HRInterstitialAdAdapter;->interstitialAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->showAd(Landroid/app/Activity;)V

    return-void
.end method
