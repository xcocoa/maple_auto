.class public Lcn/haorui/sdk/platform/csjblend/HYCBDrawAd;
.super Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/draw/MediationCustomDrawAd;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "HYCBDrawAd"


# instance fields
.field private iDrawAd:Lcn/haorui/sdk/core/ad/draw/IDrawAd;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/ad/draw/IDrawAd;)V
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/draw/MediationCustomDrawAd;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBDrawAd;->iDrawAd:Lcn/haorui/sdk/core/ad/draw/IDrawAd;

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/csjblend/HYCBDrawAd;->isClientBidding()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

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
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/draw/MediationCustomDrawAd;->setBiddingPrice(D)V

    :cond_1
    invoke-virtual {p0}, Lcn/haorui/sdk/platform/csjblend/HYCBDrawAd;->getInteractionType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/draw/MediationCustomDrawAd;->setInteractionType(I)V

    return-void
.end method


# virtual methods
.method public getExpressView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBDrawAd;->iDrawAd:Lcn/haorui/sdk/core/ad/draw/IDrawAd;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExpressView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HYCBDrawAd"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->start()V

    :cond_0
    return-object v0
.end method

.method public getInteractionType()I
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBDrawAd;->iDrawAd:Lcn/haorui/sdk/core/ad/draw/IDrawAd;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/draw/IDrawAd;->getInteractionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public isClientBidding()Z
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/draw/MediationCustomDrawAd;->getBiddingType()I

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

    iget-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBDrawAd;->iDrawAd:Lcn/haorui/sdk/core/ad/draw/IDrawAd;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcn/haorui/sdk/core/ad/draw/IDrawAd;->showAd(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public render()V
    .locals 2

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/draw/MediationCustomDrawAd;->render()V

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBDrawAd;->iDrawAd:Lcn/haorui/sdk/core/ad/draw/IDrawAd;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/draw/MediationCustomDrawAd;->callRenderSuccess(FF)V

    return-void
.end method
