.class public Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2$2;
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

    iput-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2$2;->this$1:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2$2;->this$1:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2;

    iget-object p1, p1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    const-string p2, "broadcast_onclosed"

    invoke-static {p1, p2}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$600(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2$2;->this$1:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2;

    iget-object p1, p1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
