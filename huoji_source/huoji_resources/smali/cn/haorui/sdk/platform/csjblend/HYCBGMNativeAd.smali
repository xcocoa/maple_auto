.class public Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd;
.super Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "HYCBGMNativeAd"


# instance fields
.field private adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;)V
    .locals 5

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd;->isClientBidding()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setBiddingPrice(D)V

    :cond_1
    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getActionText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setActionText(Ljava/lang/String;)V

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setDescription(Ljava/lang/String;)V

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setIconUrl(Ljava/lang/String;)V

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setSource(Ljava/lang/String;)V

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setTitle(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setExpressAd(Z)V

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getInteractionType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    :goto_1
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setInteractionType(I)V

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getImgUrls()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    array-length v3, v1

    if-lez v3, :cond_5

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getAdPatternType()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_4

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getAdPatternType()I

    move-result v3

    if-eq v3, v2, :cond_4

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getAdPatternType()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getAdPatternType()I

    move-result p1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setImageList(Ljava/util/List;)V

    goto :goto_3

    :cond_4
    :goto_2
    aget-object p1, v1, v0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setImageUrl(Ljava/lang/String;)V

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd;->getAdImageMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setAdImageMode(I)V

    return-void
.end method


# virtual methods
.method public getAdImageMode()I
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v2, 0xb

    if-eq v0, v2, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x4

    return v0

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x5

    return v0
.end method

.method public isClientBidding()Z
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->getBiddingType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public registerView(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;",
            ")V"
        }
    .end annotation

    iget-object p4, p0, Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    if-eqz p4, :cond_0

    new-instance p5, Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd$1;

    invoke-direct {p5, p0}, Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd$1;-><init>(Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd;)V

    invoke-interface {p4, p1, p2, p3, p5}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V

    if-eqz p2, :cond_0

    if-eqz p6, :cond_0

    :try_start_0
    iget p1, p6, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->mediaViewId:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    check-cast p1, Landroid/view/ViewGroup;

    new-instance p3, Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd$2;

    invoke-direct {p3, p0}, Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd$2;-><init>(Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd;)V

    invoke-interface {p2, p1, p3}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->bindMediaView(Landroid/view/ViewGroup;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
