.class public Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListenerProxy;
.super Lcn/haorui/sdk/core/loader/a;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/haorui/sdk/core/loader/a<",
        "Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;",
        "Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;",
        ">;",
        "Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/loader/d;Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;)V
    .locals 0
    .param p1    # Lcn/haorui/sdk/core/loader/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/core/loader/a;-><init>(Lcn/haorui/sdk/core/loader/d;Lcn/haorui/sdk/core/loader/IAdLoadListener;)V

    return-void
.end method


# virtual methods
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

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->listener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    if-eqz v0, :cond_0

    check-cast v0, Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;

    invoke-interface {v0, p1}, Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;->onReward(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onVideoCached()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->listener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    if-eqz v0, :cond_0

    check-cast v0, Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;->onVideoCached()V

    :cond_0
    return-void
.end method
