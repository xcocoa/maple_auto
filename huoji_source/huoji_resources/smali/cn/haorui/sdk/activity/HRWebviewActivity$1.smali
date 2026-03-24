.class public Lcn/haorui/sdk/activity/HRWebviewActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/activity/HRWebviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/activity/HRWebviewActivity;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/activity/HRWebviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/activity/HRWebviewActivity$1;->this$0:Lcn/haorui/sdk/activity/HRWebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcn/haorui/sdk/activity/HRWebviewActivity;->access$000()Lcn/haorui/sdk/core/loader/ShareInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcn/haorui/sdk/activity/HRWebviewActivity;->access$000()Lcn/haorui/sdk/core/loader/ShareInteractionListener;

    move-result-object p1

    new-instance v0, Lcn/haorui/sdk/core/loader/ShareInfo;

    iget-object v1, p0, Lcn/haorui/sdk/activity/HRWebviewActivity$1;->this$0:Lcn/haorui/sdk/activity/HRWebviewActivity;

    invoke-static {v1}, Lcn/haorui/sdk/activity/HRWebviewActivity;->access$100(Lcn/haorui/sdk/activity/HRWebviewActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/haorui/sdk/activity/HRWebviewActivity$1;->this$0:Lcn/haorui/sdk/activity/HRWebviewActivity;

    invoke-static {v2}, Lcn/haorui/sdk/activity/HRWebviewActivity;->access$200(Lcn/haorui/sdk/activity/HRWebviewActivity;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/haorui/sdk/core/loader/ShareInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/loader/ShareInteractionListener;->onShareButtonClicked(Lcn/haorui/sdk/core/loader/ShareInfo;)V

    :cond_0
    return-void
.end method
