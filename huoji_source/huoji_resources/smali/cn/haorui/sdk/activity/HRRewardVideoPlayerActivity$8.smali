.class public Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoKeepTimeFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$8;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeepTimeFinished()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$8;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$202(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;Z)Z

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$8;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {v0}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$300(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lz2/o000;

    move-result-object v0

    sget v1, Lcn/haorui/sdk/R$id;->adsail_reward_close_button_parent:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0}, Lz2/o000O000;->o000o00()Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$8;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {v0}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$300(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lz2/o000;

    move-result-object v0

    sget v1, Lcn/haorui/sdk/R$id;->adsail_reward_skip_button:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0}, Lz2/o000O000;->o00Ooo()Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$8;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {v0}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$400(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$8;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    const-string v1, "broadcast_onreward"

    invoke-static {v0, v1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$600(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;Ljava/lang/String;)V

    return-void
.end method
