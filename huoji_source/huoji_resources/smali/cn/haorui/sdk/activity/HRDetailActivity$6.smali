.class public Lcn/haorui/sdk/activity/HRDetailActivity$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/activity/HRDetailActivity;->loadAppDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/activity/HRDetailActivity;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/activity/HRDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity$6;->this$0:Lcn/haorui/sdk/activity/HRDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ACTION_DOWNLOAD_CLICKED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/haorui/sdk/activity/HRDetailActivity$6;->this$0:Lcn/haorui/sdk/activity/HRDetailActivity;

    invoke-static {v1}, Lcn/haorui/sdk/core/utils/ClickHandler;->setShowDialogActivity(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
