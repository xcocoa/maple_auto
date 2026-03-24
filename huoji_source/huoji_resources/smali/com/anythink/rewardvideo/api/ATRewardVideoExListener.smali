.class public interface abstract Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/rewardvideo/api/ATRewardVideoListener;


# virtual methods
.method public abstract onAgainReward(Lcom/anythink/core/api/ATAdInfo;)V
.end method

.method public abstract onDeeplinkCallback(Lcom/anythink/core/api/ATAdInfo;Z)V
.end method

.method public abstract onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
.end method

.method public abstract onRewardedVideoAdAgainPlayClicked(Lcom/anythink/core/api/ATAdInfo;)V
.end method

.method public abstract onRewardedVideoAdAgainPlayEnd(Lcom/anythink/core/api/ATAdInfo;)V
.end method

.method public abstract onRewardedVideoAdAgainPlayFailed(Lcom/anythink/core/api/AdError;Lcom/anythink/core/api/ATAdInfo;)V
.end method

.method public abstract onRewardedVideoAdAgainPlayStart(Lcom/anythink/core/api/ATAdInfo;)V
.end method
