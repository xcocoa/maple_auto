.class public Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/loader/g$d;


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

.field public final synthetic val$shakeRootView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$4;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    iput-object p2, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$4;->val$shakeRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShake()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$4;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {v0}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$800(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$4;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {v0}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$900(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lcn/haorui/sdk/core/view/gif/GifImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$4;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {v0}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$900(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lcn/haorui/sdk/core/view/gif/GifImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/view/gif/GifImageView;->clear()V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$4;->val$shakeRootView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    sget-object v0, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    iget-object v1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$4;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {v1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$1000(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/loader/g;->a(I)V

    return-void
.end method
