.class public Lcn/haorui/sdk/activity/HRWebviewActivity$2;
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

    iput-object p1, p0, Lcn/haorui/sdk/activity/HRWebviewActivity$2;->this$0:Lcn/haorui/sdk/activity/HRWebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRWebviewActivity$2;->this$0:Lcn/haorui/sdk/activity/HRWebviewActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
