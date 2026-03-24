.class public Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$5;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "AdsailRewardVideoPlayerActivity"

    const-string v0, "video_playing_download_button  clicked"

    invoke-static {p1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$5;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {p1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$800(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)V

    return-void
.end method
