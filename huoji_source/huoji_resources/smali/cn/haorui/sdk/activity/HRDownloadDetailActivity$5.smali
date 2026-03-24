.class public Lcn/haorui/sdk/activity/HRDownloadDetailActivity$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/activity/HRDownloadDetailActivity;

.field public final synthetic val$app_private_agreement:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/activity/HRDownloadDetailActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity$5;->this$0:Lcn/haorui/sdk/activity/HRDownloadDetailActivity;

    iput-object p2, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity$5;->val$app_private_agreement:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity$5;->this$0:Lcn/haorui/sdk/activity/HRDownloadDetailActivity;

    const-class v1, Lcn/haorui/sdk/activity/HRWebviewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "EXTRA_AD_DURL_KEY"

    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity$5;->val$app_private_agreement:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity$5;->this$0:Lcn/haorui/sdk/activity/HRDownloadDetailActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
