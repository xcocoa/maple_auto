.class public Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;
.super Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;
.source ""


# instance fields
.field private adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

.field private context:Landroid/content/Context;

.field private mExpressView:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;->context:Landroid/content/Context;

    iput-object p2, p0, Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setExpressAd(Z)V

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;->isClientBidding()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    invoke-interface {p2}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p2}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setBiddingPrice(D)V

    :cond_1
    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;->mExpressView:Landroid/widget/RelativeLayout;

    return-object p0
.end method


# virtual methods
.method public getExpressView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;->mExpressView:Landroid/widget/RelativeLayout;

    return-object v0
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

.method public render()V
    .locals 5

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->render()V

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;->mExpressView:Landroid/widget/RelativeLayout;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;->mExpressView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    iget-object v2, p0, Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;->context:Landroid/content/Context;

    iget-object v3, p0, Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;->mExpressView:Landroid/widget/RelativeLayout;

    new-instance v4, Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd$1;

    invoke-direct {v4, p0}, Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd$1;-><init>(Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callRenderSuccess(FF)V

    :cond_0
    return-void
.end method
