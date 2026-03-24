.class public Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;->loadAdWithCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;)Lcn/haorui/sdk/platform/ms/reward/HrCustomRewardAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;)Lcn/haorui/sdk/platform/ms/reward/HrCustomRewardAd;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;->access$500(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;)V

    :cond_0
    return-void
.end method

.method public onAdError()V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;

    const/4 v1, -0x1

    const-string v2, "\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v0, v1, v2}, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;->access$300(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;ILjava/lang/String;)V

    return-void
.end method

.method public onAdExposure()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;)Lcn/haorui/sdk/platform/ms/reward/HrCustomRewardAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;)Lcn/haorui/sdk/platform/ms/reward/HrCustomRewardAd;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;->access$400(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2;->onAdLoaded(Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;)V

    return-void
.end method

.method public onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V
    .locals 0

    return-void
.end method

.method public onAdReady(Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2$1;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2$1;-><init>(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2;)V

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/ad/IAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;

    new-instance v1, Lcn/haorui/sdk/platform/ms/reward/HrCustomRewardAd;

    invoke-direct {v1, v0, p1}, Lcn/haorui/sdk/platform/ms/reward/HrCustomRewardAd;-><init>(Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;)V

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;->access$102(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;Lcn/haorui/sdk/platform/ms/reward/HrCustomRewardAd;)Lcn/haorui/sdk/platform/ms/reward/HrCustomRewardAd;

    iget-object p1, p0, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;

    invoke-static {p1}, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;)Lcn/haorui/sdk/platform/ms/reward/HrCustomRewardAd;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;->access$700(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onAdReady(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2;->onAdReady(Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;)V

    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;

    invoke-static {v0, p2, p1}, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;->access$800(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;ILjava/lang/String;)V

    return-void
.end method

.method public onReward(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;)Lcn/haorui/sdk/platform/ms/reward/HrCustomRewardAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;)Lcn/haorui/sdk/platform/ms/reward/HrCustomRewardAd;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;->access$200(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onVideoCached()V
    .locals 0

    return-void
.end method
