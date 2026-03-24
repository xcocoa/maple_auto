.class public Lcom/anythink/expressad/atsignalcommon/base/b;
.super Landroid/webkit/WebViewClient;
.source ""


# instance fields
.field private a:Lcom/anythink/expressad/atsignalcommon/base/a;

.field private b:Lcom/anythink/expressad/atsignalcommon/windvane/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/atsignalcommon/base/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/atsignalcommon/base/b;->a:Lcom/anythink/expressad/atsignalcommon/base/a;

    return-void
.end method

.method public final a(Lcom/anythink/expressad/atsignalcommon/windvane/e;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/atsignalcommon/base/b;->b:Lcom/anythink/expressad/atsignalcommon/windvane/e;

    return-void
.end method

.method public final b()Lcom/anythink/expressad/atsignalcommon/base/a;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/base/b;->a:Lcom/anythink/expressad/atsignalcommon/base/a;

    return-object v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/base/b;->b:Lcom/anythink/expressad/atsignalcommon/windvane/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/windvane/e;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/base/b;->b:Lcom/anythink/expressad/atsignalcommon/windvane/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/anythink/expressad/atsignalcommon/windvane/e;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/base/b;->b:Lcom/anythink/expressad/atsignalcommon/windvane/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/anythink/expressad/atsignalcommon/windvane/e;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/base/b;->a:Lcom/anythink/expressad/atsignalcommon/base/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/anythink/expressad/atsignalcommon/base/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/base/b;->b:Lcom/anythink/expressad/atsignalcommon/windvane/e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/windvane/e;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
