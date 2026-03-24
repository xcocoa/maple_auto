.class public Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATBiddingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;

.field public final synthetic val$biddingListener:Lcom/anythink/core/api/ATBiddingListener;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;Lcom/anythink/core/api/ATBiddingListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;

    iput-object p2, p0, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3;->val$biddingListener:Lcom/anythink/core/api/ATBiddingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;->access$700(Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;->access$800(Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public onAdError()V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3;->val$biddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v0, :cond_0

    const-string v1, "load error"

    invoke-static {v1}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;->access$300(Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;->access$400(Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u52a0\u8f7d\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onAdExposure()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;->access$500(Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;->access$600(Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart()V

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

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3;->onAdLoaded(Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;)V

    return-void
.end method

.method public onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V
    .locals 0

    return-void
.end method

.method public onAdReady(Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;)V
    .locals 6

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;

    invoke-static {v0, p1}, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;->access$902(Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;)Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3;->val$biddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v5, v4}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    :cond_1
    new-instance v0, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3$1;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3$1;-><init>(Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3;)V

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/ad/IAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;->access$1200(Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;->access$1300(Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdDataLoaded()V

    :cond_2
    iget-object p1, p0, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;->access$1400(Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;->access$1500(Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onAdReady(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3;->onAdReady(Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;)V

    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3;->val$biddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v0, :cond_0

    const-string v1, "load error"

    invoke-static {v1}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;->access$1600(Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;->access$1700(Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onReward(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;->access$100(Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;->access$200(Lcn/haorui/sdk/platform/topon/reward/HRRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward()V

    :cond_0
    return-void
.end method

.method public onVideoCached()V
    .locals 0

    return-void
.end method
