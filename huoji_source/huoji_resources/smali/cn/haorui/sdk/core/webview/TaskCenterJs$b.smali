.class public Lcn/haorui/sdk/core/webview/TaskCenterJs$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/webview/TaskCenterJs;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcn/haorui/sdk/core/webview/TaskCenterJs;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/webview/TaskCenterJs;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs$b;->b:Lcn/haorui/sdk/core/webview/TaskCenterJs;

    iput-object p2, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs$b;->b:Lcn/haorui/sdk/core/webview/TaskCenterJs;

    iget-object v0, v0, Lcn/haorui/sdk/core/webview/TaskCenterJs;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs$b;->a:Ljava/lang/String;

    new-instance v2, Lcn/haorui/sdk/core/webview/TaskCenterJs$b$a;

    invoke-direct {v2, p0}, Lcn/haorui/sdk/core/webview/TaskCenterJs$b$a;-><init>(Lcn/haorui/sdk/core/webview/TaskCenterJs$b;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method
