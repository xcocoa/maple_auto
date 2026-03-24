.class public Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/loader/InteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2;->onAdReady(Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2$1;->this$1:Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2$1;->this$1:Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2;

    iget-object v0, v0, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;)Lcn/haorui/sdk/platform/ms/reward/HrCustomRewardAd;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;->access$600(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;)V

    return-void
.end method
