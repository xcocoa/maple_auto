.class public Lcn/haorui/sdk/platform/gromore/HYGMCustomRewardAdapter$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/msdk/api/reward/RewardItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/gromore/HYGMCustomRewardAdapter$1;->onReward(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcn/haorui/sdk/platform/gromore/HYGMCustomRewardAdapter$1;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/gromore/HYGMCustomRewardAdapter$1;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomRewardAdapter$1$1;->this$1:Lcn/haorui/sdk/platform/gromore/HYGMCustomRewardAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCustomData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRewardName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public rewardVerify()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
