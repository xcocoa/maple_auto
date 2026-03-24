.class public Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;
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

.field public final synthetic val$actionText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    iput-object p2, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;->val$actionText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    iget-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {p1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$000(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {p1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$000(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-static {p1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->access$000(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->pause()V

    :cond_0
    new-instance p1, Lcn/haorui/sdk/core/view/NoNavigationDialog;

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;->this$0:Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-direct {p1, v0}, Lcn/haorui/sdk/core/view/NoNavigationDialog;-><init>(Landroid/content/Context;)V

    const-string v0, "\u89c2\u770b\u5b8c\u6210\u5373\u53ef\u83b7\u5f97\u5956\u52b1"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    const-string v1, "\u7ee7\u7eed\u89c2\u770b"

    :try_start_1
    new-instance v2, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1$1;

    invoke-direct {v2, p0}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1$1;-><init>(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, -0x2

    const-string v1, "\u653e\u5f03\u5956\u52b1"

    :try_start_2
    new-instance v2, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1$2;

    invoke-direct {v2, p0}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1$2;-><init>(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Lcn/haorui/sdk/core/view/NoNavigationDialog;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
