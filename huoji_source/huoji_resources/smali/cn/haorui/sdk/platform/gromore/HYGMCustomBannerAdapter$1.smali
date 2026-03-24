.class public Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/banner/BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;->load(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/banner/GMCustomBannerAdapter;->callBannerAdClosed()V

    return-void
.end method

.method public onAdError()V
    .locals 4

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;

    new-instance v1, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;

    const/4 v2, -0x1

    const-string v3, "loadAdError"

    invoke-direct {v1, v2, v3}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/banner/GMCustomBannerAdapter;->callLoadFail(Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;)V

    return-void
.end method

.method public onAdExposure()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/banner/GMCustomBannerAdapter;->callBannerAdShow()V

    return-void
.end method

.method public onAdLoaded(Lcn/haorui/sdk/core/ad/banner/IBannerAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/banner/IBannerAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter$1;->onAdLoaded(Lcn/haorui/sdk/core/ad/banner/IBannerAd;)V

    return-void
.end method

.method public onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V
    .locals 0

    return-void
.end method

.method public onAdReady(Lcn/haorui/sdk/core/ad/banner/IBannerAd;)V
    .locals 4

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;

    invoke-static {v0, p1}, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;->access$002(Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;Lcn/haorui/sdk/core/ad/banner/IBannerAd;)Lcn/haorui/sdk/core/ad/banner/IBannerAd;

    new-instance v0, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter$1$1;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter$1$1;-><init>(Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter$1;)V

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/ad/IAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;->access$100(Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;

    invoke-static {v1, v0}, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;->access$200(Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;Landroid/view/View;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;

    invoke-static {v1}, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;->access$100(Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const-string v0, "HYGMCustomBannerAdapter"

    const-string v1, "\u52a0\u8f7d\u6210\u529f\uff0conAdReady"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v2

    if-eqz v2, :cond_1

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

    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/banner/GMCustomBannerAdapter;->callLoadSuccess(D)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onAdReady(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/banner/IBannerAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter$1;->onAdReady(Lcn/haorui/sdk/core/ad/banner/IBannerAd;)V

    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAdRenderFail"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HYGMCustomBannerAdapter"

    invoke-static {p2, p1}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;

    new-instance p2, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;

    const/4 v0, -0x2

    const-string v1, "AdRenderFail"

    invoke-direct {p2, v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/api/v2/ad/custom/banner/GMCustomBannerAdapter;->callLoadFail(Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;)V

    return-void
.end method
