.class public Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter;->load(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/reward/MediationCustomRewardVideoLoader;->callRewardVideoAdClosed()V

    return-void
.end method

.method public onAdError()V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter;

    const/4 v1, -0x1

    const-string v2, "loadAdError"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/reward/MediationCustomRewardVideoLoader;->callLoadFail(ILjava/lang/String;)V

    return-void
.end method

.method public onAdExposure()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/reward/MediationCustomRewardVideoLoader;->callRewardVideoAdShow()V

    return-void
.end method

.method public onAdLoaded(Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1;->onAdLoaded(Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;)V

    return-void
.end method

.method public onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V
    .locals 0

    return-void
.end method

.method public onAdReady(Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;)V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter;

    invoke-static {v0, p1}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter;->access$002(Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter;Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;)Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;

    if-eqz p1, :cond_2

    new-instance v0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1$2;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1$2;-><init>(Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1;)V

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/ad/IAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter;->isClientBidding()Z

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
    iget-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/reward/MediationCustomRewardVideoLoader;->callLoadSuccess(D)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/reward/MediationCustomRewardVideoLoader;->callLoadSuccess()V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onAdReady(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1;->onAdReady(Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;)V

    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 1

    iget-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter;

    const/4 p2, -0x2

    const-string v0, "AdRenderFail"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/reward/MediationCustomRewardVideoLoader;->callLoadFail(ILjava/lang/String;)V

    return-void
.end method

.method public onReward(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter;

    new-instance v0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1$1;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1$1;-><init>(Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/reward/MediationCustomRewardVideoLoader;->callRewardVideoRewardVerify(Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationRewardItem;)V

    return-void
.end method

.method public onVideoCached()V
    .locals 0

    return-void
.end method
