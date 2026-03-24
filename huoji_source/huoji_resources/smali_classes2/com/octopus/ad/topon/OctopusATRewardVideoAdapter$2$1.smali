.class public Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/RewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardVideoAdClicked()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->access$500(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRewardVideoAdClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->access$1600(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->access$1700(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked()V

    :cond_0
    return-void
.end method

.method public onRewardVideoAdClosed()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->access$500(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRewardVideoAdClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->access$1400(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->access$1500(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public onRewardVideoAdComplete()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->access$500(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRewardVideoAdComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->access$1800(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->access$1900(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayEnd()V

    :cond_0
    return-void
.end method

.method public onRewardVideoAdFailedToLoad(I)V
    .locals 4

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->access$500(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRewardVideoAdFailedToLoad:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->access$800(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->access$900(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRewardVideoAdFailedToLoad errorCode\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;

    iget-object v0, v0, Lcom/anythink/core/api/ATBaseAdAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    :cond_1
    return-void
.end method

.method public onRewardVideoAdLoaded()V
    .locals 7

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->access$500(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRewardVideoAdLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->access$1000(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->access$1100(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;

    iget-object v1, v0, Lcom/anythink/core/api/ATBaseAdAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->access$300(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/octopus/ad/RewardVideoAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/RewardVideoAd;->getPrice()I

    move-result v0

    int-to-double v0, v0

    sget-object v2, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/octopus/ad/topon/OctopusBiddingNotice;

    iget-object v6, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    iget-object v6, v6, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;

    invoke-static {v6}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->access$300(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/octopus/ad/RewardVideoAd;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/octopus/ad/topon/OctopusBiddingNotice;-><init>(Lcom/octopus/ad/IBidding;)V

    iget-object v6, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    iget-object v6, v6, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;

    iget-object v6, v6, Lcom/anythink/core/api/ATBaseAdAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    invoke-static {v0, v1, v3, v5, v2}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object v0

    invoke-interface {v6, v0, v4}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    :cond_1
    return-void
.end method

.method public onRewardVideoAdShown()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->access$500(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRewardVideoAdShown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->access$1200(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->access$1300(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart()V

    :cond_0
    return-void
.end method

.method public onRewarded(Lcom/octopus/ad/RewardItem;)V
    .locals 1

    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    iget-object p1, p1, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;

    invoke-static {p1}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->access$500(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onRewarded"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    iget-object p1, p1, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;

    invoke-static {p1}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->access$600(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    iget-object p1, p1, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;

    invoke-static {p1}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->access$700(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward()V

    :cond_0
    return-void
.end method
