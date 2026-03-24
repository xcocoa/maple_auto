.class public interface abstract Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/loader/IAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/haorui/sdk/core/loader/IAdLoadListener<",
        "Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onReward(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onVideoCached()V
.end method
