.class public final Lcom/anythink/rewardvideo/api/ATRewardVideoAd$2$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/rewardvideo/api/ATRewardVideoAd$2;->onAdLoadFail(Lcom/anythink/core/api/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/anythink/rewardvideo/api/ATRewardVideoAd$2;

.field public final synthetic val$adError:Lcom/anythink/core/api/AdError;


# direct methods
.method public constructor <init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAd$2;Lcom/anythink/core/api/AdError;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$2$2;->this$1:Lcom/anythink/rewardvideo/api/ATRewardVideoAd$2;

    iput-object p2, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$2$2;->val$adError:Lcom/anythink/core/api/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$2$2;->this$1:Lcom/anythink/rewardvideo/api/ATRewardVideoAd$2;

    iget-object v0, v0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$2;->this$0:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    iget-object v0, v0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mListener:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$2$2;->val$adError:Lcom/anythink/core/api/AdError;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdFailed(Lcom/anythink/core/api/AdError;)V

    :cond_0
    return-void
.end method
