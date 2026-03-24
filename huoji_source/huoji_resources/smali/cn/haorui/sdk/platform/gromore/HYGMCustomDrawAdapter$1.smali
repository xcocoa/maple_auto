.class public Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/draw/DrawAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;->load(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 0

    return-void
.end method

.method public onAdError()V
    .locals 4

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;

    new-instance v1, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;

    const/4 v2, -0x1

    const-string v3, "loadAdError"

    invoke-direct {v1, v2, v3}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAdapter;->callLoadFail(Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;)V

    return-void
.end method

.method public onAdExposure()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;->access$000(Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;)Lcn/haorui/sdk/platform/gromore/HYGMDrawAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;->access$000(Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;)Lcn/haorui/sdk/platform/gromore/HYGMDrawAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->callDrawAdShow()V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcn/haorui/sdk/core/ad/draw/IDrawAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/draw/IDrawAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1;->onAdLoaded(Lcn/haorui/sdk/core/ad/draw/IDrawAd;)V

    return-void
.end method

.method public onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V
    .locals 0

    return-void
.end method

.method public onAdReady(Lcn/haorui/sdk/core/ad/draw/IDrawAd;)V
    .locals 3

    if-eqz p1, :cond_1

    new-instance v0, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1$1;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1$1;-><init>(Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1;)V

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/ad/IAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;

    new-instance v1, Lcn/haorui/sdk/platform/gromore/HYGMDrawAd;

    invoke-direct {v1, p1}, Lcn/haorui/sdk/platform/gromore/HYGMDrawAd;-><init>(Lcn/haorui/sdk/core/ad/draw/IDrawAd;)V

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;->access$002(Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;Lcn/haorui/sdk/platform/gromore/HYGMDrawAd;)Lcn/haorui/sdk/platform/gromore/HYGMDrawAd;

    const-wide/16 v0, 0x0

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

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
    iget-object v2, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;

    invoke-static {v2}, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;->access$000(Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;)Lcn/haorui/sdk/platform/gromore/HYGMDrawAd;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->setBiddingPrice(D)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;

    invoke-static {v1}, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;->access$000(Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;)Lcn/haorui/sdk/platform/gromore/HYGMDrawAd;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;

    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAdapter;->callLoadSuccess(Ljava/util/List;)V

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;->access$000(Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;)Lcn/haorui/sdk/platform/gromore/HYGMDrawAd;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->callDrawRenderSuccess(FF)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onAdReady(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/draw/IDrawAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1;->onAdReady(Lcn/haorui/sdk/core/ad/draw/IDrawAd;)V

    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 2

    iget-object p1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomDrawAdapter;

    new-instance p2, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;

    const/4 v0, -0x2

    const-string v1, "AdRenderFail"

    invoke-direct {p2, v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAdapter;->callLoadFail(Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;)V

    return-void
.end method
