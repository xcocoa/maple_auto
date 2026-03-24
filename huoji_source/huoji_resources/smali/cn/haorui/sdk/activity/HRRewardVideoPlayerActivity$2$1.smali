.class public Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2$1;->this$1:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2$1;->this$1:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2;

    iget-object p1, p1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {p1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$000(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2$1;->this$1:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2;

    iget-object p1, p1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {p1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$000(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2$1;->this$1:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2;

    iget-object p1, p1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {p1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$000(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->resume()V

    :cond_0
    return-void
.end method
