.class public Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/loader/InteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1;->onAdReady(Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1$2;->this$1:Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1$2;->this$1:Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1;

    iget-object v0, v0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomRewardAdapter;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/reward/MediationCustomRewardVideoLoader;->callRewardVideoAdClick()V

    return-void
.end method
