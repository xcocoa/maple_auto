.class public Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/splash/SplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter;->load(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/splash/MediationCustomSplashLoader;->callSplashAdDismiss()V

    return-void
.end method

.method public onAdError()V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter;

    const/4 v1, -0x1

    const-string v2, "loadAdError"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/splash/MediationCustomSplashLoader;->callLoadFail(ILjava/lang/String;)V

    return-void
.end method

.method public onAdExposure()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/splash/MediationCustomSplashLoader;->callSplashAdShow()V

    return-void
.end method

.method public onAdLoaded(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/splash/ISplashAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter$1;->onAdLoaded(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V

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

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter;

    invoke-static {v0, p1}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter;->access$002(Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter;Lcn/haorui/sdk/core/ad/splash/ISplashAd;)Lcn/haorui/sdk/core/ad/splash/ISplashAd;

    if-eqz p1, :cond_2

    new-instance v0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter$1$1;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter$1$1;-><init>(Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter$1;)V

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/ad/IAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter;->isClientBidding()Z

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
    iget-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/splash/MediationCustomSplashLoader;->callLoadSuccess(D)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/splash/MediationCustomSplashLoader;->callLoadSuccess()V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onAdReady(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/splash/ISplashAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter$1;->onAdReady(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V

    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 1

    iget-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter;

    const/4 p2, -0x2

    const-string v0, "AdRenderFail"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/splash/MediationCustomSplashLoader;->callLoadFail(ILjava/lang/String;)V

    return-void
.end method

.method public onAdSkip(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V
    .locals 0

    iget-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/splash/MediationCustomSplashLoader;->callSplashAdSkip()V

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
