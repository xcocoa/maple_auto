.class public Lcn/haorui/sdk/core/ad/reward/RewardVideoLoader;
.super Lcn/haorui/sdk/core/ad/BaseFullScreenVideoAdLoader;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/haorui/sdk/core/ad/BaseFullScreenVideoAdLoader<",
        "Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RewardVideoLoader"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcn/haorui/sdk/core/ad/BaseFullScreenVideoAdLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/loader/IAdLoadListener;)V

    return-void
.end method


# virtual methods
.method public createAdSailDelegateInternal(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;)Lcn/haorui/sdk/core/loader/d;
    .locals 1

    new-instance v0, Lcn/haorui/sdk/platform/hr/reward/HRRewardVideoHRAdWrapper;

    invoke-direct {v0, p0, p1}, Lcn/haorui/sdk/platform/hr/reward/HRRewardVideoHRAdWrapper;-><init>(Lcn/haorui/sdk/core/ad/reward/RewardVideoLoader;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;)V

    return-object v0
.end method

.method public createDelegate(Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;
    .locals 1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/a;->a(Ljava/lang/String;)Lcn/haorui/sdk/core/e;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcn/haorui/sdk/core/e;->rewardLoader(Lcn/haorui/sdk/core/ad/reward/RewardVideoLoader;Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;

    move-result-object p1

    return-object p1
.end method
