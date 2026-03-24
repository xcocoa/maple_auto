.class public Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1$2;->this$1:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1$2;->this$1:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;

    iget-object p1, p1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {p1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$000(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1$2;->this$1:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;

    iget-object p1, p1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {p1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$000(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onVideoSkiped()V

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1$2;->this$1:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;

    iget-object p1, p1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$102(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;Z)Z

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1$2;->this$1:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;

    iget-object p1, p1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {p1, p2}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$202(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;Z)Z

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1$2;->this$1:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;

    iget-object p1, p1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {p1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$300(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lz2/o000;

    move-result-object p1

    sget p2, Lcn/haorui/sdk/R$id;->adsail_video_playing_ad_info_container:I

    invoke-virtual {p1, p2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1}, Lz2/o000O000;->o00Ooo()Lz2/o000O000;

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1$2;->this$1:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;

    iget-object p1, p1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {p1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$300(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lz2/o000;

    move-result-object p1

    sget p2, Lcn/haorui/sdk/R$id;->adsail_ad_info_container:I

    invoke-virtual {p1, p2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1}, Lz2/o000O000;->o000o00()Lz2/o000O000;

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1$2;->this$1:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;

    iget-object p1, p1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {p1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$300(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lz2/o000;

    move-result-object p1

    sget p2, Lcn/haorui/sdk/R$id;->adsail_download_button:I

    invoke-virtual {p1, p2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    iget-object p2, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1$2;->this$1:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;

    iget-object p2, p2, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;->val$actionText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lz2/o000O000;->o000Oo00(Ljava/lang/CharSequence;)Lz2/o000O000;

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1$2;->this$1:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;

    iget-object p1, p1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {p1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$300(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lz2/o000;

    move-result-object p1

    sget p2, Lcn/haorui/sdk/R$id;->adsail_reward_close_button_parent:I

    invoke-virtual {p1, p2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1}, Lz2/o000O000;->o000o00()Lz2/o000O000;

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1$2;->this$1:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;

    iget-object p1, p1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {p1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$300(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lz2/o000;

    move-result-object p1

    sget p2, Lcn/haorui/sdk/R$id;->adsail_reward_skip_button:I

    invoke-virtual {p1, p2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1}, Lz2/o000O000;->o00Ooo()Lz2/o000O000;

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1$2;->this$1:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;

    iget-object p1, p1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {p1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$300(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lz2/o000;

    move-result-object p1

    sget p2, Lcn/haorui/sdk/R$id;->adsail_include_ad_tag:I

    invoke-virtual {p1, p2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1}, Lz2/o000O000;->o00Ooo()Lz2/o000O000;

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1$2;->this$1:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;

    iget-object p1, p1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {p1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$300(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lz2/o000;

    move-result-object p1

    sget p2, Lcn/haorui/sdk/R$id;->adsail_include_ad_tag_end:I

    invoke-virtual {p1, p2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1}, Lz2/o000O000;->o000o00()Lz2/o000O000;

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1$2;->this$1:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;

    iget-object p1, p1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {p1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$400(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1$2;->this$1:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;

    iget-object p1, p1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {p1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$400(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
