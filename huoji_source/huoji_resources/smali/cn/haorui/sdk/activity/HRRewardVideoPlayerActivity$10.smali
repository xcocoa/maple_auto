.class public Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;


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

.field public final synthetic val$keepTime:J

.field public final synthetic val$rewardMediaView:Lcn/haorui/sdk/adsail_ad/MediaView;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;Lcn/haorui/sdk/adsail_ad/MediaView;J)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$10;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    iput-object p2, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$10;->val$rewardMediaView:Lcn/haorui/sdk/adsail_ad/MediaView;

    iput-wide p3, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$10;->val$keepTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoCompleted()V
    .locals 0

    return-void
.end method

.method public onVideoError()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$10;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    const-string v1, "broadcast_on_video_error"

    invoke-static {v0, v1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$600(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-static {}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$1300()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$1300()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$10;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onVideoLoaded()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$10;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$1102(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;Z)Z

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$10;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    iget-object v1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$10;->val$rewardMediaView:Lcn/haorui/sdk/adsail_ad/MediaView;

    invoke-static {v0, v1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$1200(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;Lcn/haorui/sdk/adsail_ad/MediaView;)V

    return-void
.end method

.method public onVideoPause()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$10;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    const-string v1, "broadcast_on_video_pause"

    invoke-static {v0, v1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$600(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoResume()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$10;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    const-string v1, "broadcast_on_video_resume"

    invoke-static {v0, v1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$600(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoStart()V
    .locals 5

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$10;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {v0}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$000(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$10;->val$keepTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v2, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$10;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {v2}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$000(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->getDuration()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    iget-wide v0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$10;->val$keepTime:J

    long-to-int v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$10;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {v0}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$000(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->getDuration()I

    move-result v1

    :goto_0
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$10;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {v0}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$400(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->setmTotalTime(I)V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$10;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    const-string v1, "broadcast_on_video_start"

    invoke-static {v0, v1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$600(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;Ljava/lang/String;)V

    return-void
.end method
