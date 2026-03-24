.class public Lcn/haorui/sdk/platform/gromore/HYGMCustomRewardAdapter;
.super Lcom/bytedance/msdk/api/v2/ad/custom/reward/GMCustomRewardAdapter;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "HYGMCustomRewardAdapter"


# instance fields
.field private rewardVideoAd:Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/reward/GMCustomRewardAdapter;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Lcn/haorui/sdk/platform/gromore/HYGMCustomRewardAdapter;Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;)Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomRewardAdapter;->rewardVideoAd:Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;

    return-object p1
.end method


# virtual methods
.method public load(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5f00\u59cb\u52a0\u8f7dgromore\u81ea\u5b9a\u4e49\u5e73\u53f0\u6fc0\u52b1\u89c6\u9891\uff0cpid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;->getADNNetworkSlotId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HYGMCustomRewardAdapter"

    invoke-static {v0, p2}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcn/haorui/sdk/core/ad/reward/RewardVideoLoader;

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;->getADNNetworkSlotId()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcn/haorui/sdk/platform/gromore/HYGMCustomRewardAdapter$1;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/platform/gromore/HYGMCustomRewardAdapter$1;-><init>(Lcn/haorui/sdk/platform/gromore/HYGMCustomRewardAdapter;)V

    invoke-direct {p2, p1, p3, v0}, Lcn/haorui/sdk/core/ad/reward/RewardVideoLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;)V

    invoke-virtual {p2}, Lcn/haorui/sdk/core/loader/b;->loadAd()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomRewardAdapter;->rewardVideoAd:Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;->showAd(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
