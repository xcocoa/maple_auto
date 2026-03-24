.class public Lcn/haorui/sdk/core/webview/TaskCenterWebActivity$c;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity$c;->a:Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity$c;->a:Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;

    iget-object p1, p1, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;->e:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string p1, "TaskCenterWebActivity"

    const-string p2, "onPageFinished: "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const-string p1, "TaskCenterWebActivity"

    const-string p2, "onPageStarted: "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
