.class public Lcn/haorui/sdk/activity/HRDownloadDetailActivity$2;
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


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/activity/HRDownloadDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity$2;->this$0:Lcn/haorui/sdk/activity/HRDownloadDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity$2;->this$0:Lcn/haorui/sdk/activity/HRDownloadDetailActivity;

    invoke-static {p1}, Lcn/haorui/sdk/activity/HRDownloadDetailActivity;->access$000(Lcn/haorui/sdk/activity/HRDownloadDetailActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDownloadDetailActivity$2;->this$0:Lcn/haorui/sdk/activity/HRDownloadDetailActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
