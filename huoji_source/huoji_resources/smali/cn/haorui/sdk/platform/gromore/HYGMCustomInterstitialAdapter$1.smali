.class public Lcn/haorui/sdk/platform/gromore/HYGMCustomInterstitialAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/gromore/HYGMCustomInterstitialAdapter;->load(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomInterstitialAdapter;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/gromore/HYGMCustomInterstitialAdapter;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomInterstitialAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomInterstitialAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomInterstitialAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/interstitial/GMCustomInterstitialAdapter;->callInterstitialClosed()V

    return-void
.end method

.method public onAdError()V
    .locals 4

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomInterstitialAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomInterstitialAdapter;

    new-instance v1, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;

    const/4 v2, -0x1

    const-string v3, "loadAdError"

    invoke-direct {v1, v2, v3}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/interstitial/GMCustomInterstitialAdapter;->callLoadFail(Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;)V

    return-void
.end method

.method public onAdExposure()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomInterstitialAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomInterstitialAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/interstitial/GMCustomInterstitialAdapter;->callInterstitialShow()V

    return-void
.end method

.method public onAdLoaded(Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/gromore/HYGMCustomInterstitialAdapter$1;->onAdLoaded(Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;)V

    return-void
.end method

.method public onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V
    .locals 0

    return-void
.end method

.method public onAdReady(Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;)V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomInterstitialAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomInterstitialAdapter;

    invoke-static {v0, p1}, Lcn/haorui/sdk/platform/gromore/HYGMCustomInterstitialAdapter;->access$002(Lcn/haorui/sdk/platform/gromore/HYGMCustomInterstitialAdapter;Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;)Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;

    if-eqz p1, :cond_1

    new-instance v0, Lcn/haorui/sdk/platform/gromore/HYGMCustomInterstitialAdapter$1$1;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/platform/gromore/HYGMCustomInterstitialAdapter$1$1;-><init>(Lcn/haorui/sdk/platform/gromore/HYGMCustomInterstitialAdapter$1;)V

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAd;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAd;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

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
    iget-object p1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomInterstitialAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomInterstitialAdapter;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/interstitial/GMCustomInterstitialAdapter;->callLoadSuccess(D)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onAdReady(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/gromore/HYGMCustomInterstitialAdapter$1;->onAdReady(Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;)V

    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 2

    iget-object p1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomInterstitialAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomInterstitialAdapter;

    new-instance p2, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;

    const/4 v0, -0x2

    const-string v1, "AdRenderFail"

    invoke-direct {p2, v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/api/v2/ad/custom/interstitial/GMCustomInterstitialAdapter;->callLoadFail(Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;)V

    return-void
.end method
