.class public Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/splash/SplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter;->load(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter;->callSplashAdDismiss()V

    return-void
.end method

.method public onAdError()V
    .locals 4

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter;

    new-instance v1, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;

    const/4 v2, -0x1

    const-string v3, "loadAdError"

    invoke-direct {v1, v2, v3}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter;->callLoadFail(Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;)V

    return-void
.end method

.method public onAdExposure()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter;->callSplashAdShow()V

    return-void
.end method

.method public onAdLoaded(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/splash/ISplashAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter$1;->onAdLoaded(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V

    return-void
.end method

.method public onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V
    .locals 0

    return-void
.end method

.method public onAdPresent(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V
    .locals 0

    return-void
.end method

.method public onAdReady(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter;

    invoke-static {v0, p1}, Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter;->access$002(Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter;Lcn/haorui/sdk/core/ad/splash/ISplashAd;)Lcn/haorui/sdk/core/ad/splash/ISplashAd;

    if-eqz p1, :cond_1

    new-instance v0, Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter$1$1;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter$1$1;-><init>(Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter$1;)V

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/ad/IAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

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
    iget-object p1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter;->callLoadSuccess(D)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onAdReady(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/splash/ISplashAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter$1;->onAdReady(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V

    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 2

    iget-object p1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter;

    new-instance p2, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;

    const/4 v0, -0x2

    const-string v1, "AdRenderFail"

    invoke-direct {p2, v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter;->callLoadFail(Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;)V

    return-void
.end method

.method public onAdSkip(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V
    .locals 0

    iget-object p1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomSplashAdapter;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter;->callSplashAdSkip()V

    return-void
.end method

.method public onAdTick(J)V
    .locals 0

    return-void
.end method

.method public onAdTimeOver(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V
    .locals 0

    return-void
.end method
