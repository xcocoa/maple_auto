.class public Lcn/haorui/sdk/platform/ms/reward/HrCustomRewardAd;
.super Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;
.source ""


# instance fields
.field private rewardVideoAd:Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;-><init>(Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;)V

    iput-object p2, p0, Lcn/haorui/sdk/platform/ms/reward/HrCustomRewardAd;->rewardVideoAd:Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/reward/HrCustomRewardAd;->rewardVideoAd:Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;->showAd(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
