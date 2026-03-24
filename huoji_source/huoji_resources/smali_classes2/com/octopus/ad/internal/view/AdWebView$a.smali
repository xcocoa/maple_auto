.class public Lcom/octopus/ad/internal/view/AdWebView$a;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/view/AdWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/view/AdWebView;


# direct methods
.method private constructor <init>(Lcom/octopus/ad/internal/view/AdWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/octopus/ad/internal/view/AdWebView;Lcom/octopus/ad/internal/view/AdWebView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/view/AdWebView$a;-><init>(Lcom/octopus/ad/internal/view/AdWebView;)V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0, p2}, Lcom/octopus/ad/internal/view/AdWebView;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdWebView;->c()V

    nop

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, p2, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    iget-object v0, v0, Lcom/octopus/ad/internal/network/ServerResponse;->mMediaType:Lcom/octopus/ad/internal/l;

    sget-object v1, Lcom/octopus/ad/internal/l;->a:Lcom/octopus/ad/internal/l;

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/octopus/ad/internal/view/AdWebView;->visible()V

    :cond_0
    iget-object p2, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {p2}, Lcom/octopus/ad/internal/view/AdWebView;->f(Lcom/octopus/ad/internal/view/AdWebView;)Z

    move-result p2

    if-nez p2, :cond_3

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    const-string v1, "javascript:window.mraid.util.pageFinished()"

    if-lt p2, v0, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdWebView;->a(Lcom/octopus/ad/internal/view/AdWebView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdWebView;->c(Lcom/octopus/ad/internal/view/AdWebView;)Lcom/octopus/ad/internal/view/e;

    move-result-object p1

    iget-object p2, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, p2, Lcom/octopus/ad/internal/view/AdWebView;->b:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/octopus/ad/internal/view/e;->a(Lcom/octopus/ad/internal/view/AdWebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdWebView;->g(Lcom/octopus/ad/internal/view/AdWebView;)V

    :cond_2
    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/octopus/ad/internal/view/AdWebView;->b(Lcom/octopus/ad/internal/view/AdWebView;Z)Z

    :cond_3
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->httpRespLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->webview_received_error:I

    invoke-static {v0, p2, p3, p4}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/octopus/ad/internal/b;->a(I)V

    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdWebView;->h(Lcom/octopus/ad/internal/view/AdWebView;)V

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->httpRespLogTag:Ljava/lang/String;

    sget p2, Lcom/octopus/ad/R$string;->webclient_error:I

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, v0, p3}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/octopus/ad/internal/b;->a(I)V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 12

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Loading:::::::::::::::::::::::"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "octopus"

    invoke-static {v0, p1}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "javascript:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p1, "mraid://"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->mraidLogTag:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdWebView;->a(Lcom/octopus/ad/internal/view/AdWebView;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdWebView;->c(Lcom/octopus/ad/internal/view/AdWebView;)Lcom/octopus/ad/internal/view/e;

    move-result-object p1

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {v1}, Lcom/octopus/ad/internal/view/AdWebView;->b(Lcom/octopus/ad/internal/view/AdWebView;)Z

    move-result v1

    invoke-virtual {p1, p2, v1}, Lcom/octopus/ad/internal/view/e;->a(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "enable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdWebView;->fireMRAIDEnabled()V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    const-string v1, "open"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const-string p1, "Octopus://"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "ClosePage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v1, p1, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    if-eqz v1, :cond_5

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdParameters()Lcom/octopus/ad/internal/d;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v1, v2, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    invoke-static {v2}, Lcom/octopus/ad/internal/view/AdWebView;->d(Lcom/octopus/ad/internal/view/AdWebView;)Z

    move-result v9

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdParameters()Lcom/octopus/ad/internal/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/octopus/ad/internal/d;->a()Ljava/lang/String;

    move-result-object v10

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdWebView;->e(Lcom/octopus/ad/internal/view/AdWebView;)I

    move-result v11

    invoke-virtual/range {v1 .. v11}, Lcom/octopus/ad/internal/network/ServerResponse;->handleClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/view/AdWebView;->a(Lcom/octopus/ad/internal/view/AdWebView;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {p1, p2}, Lcom/octopus/ad/internal/view/g;->a(Lcom/octopus/ad/internal/view/AdWebView;Ljava/lang/String;)V

    return v0

    :cond_6
    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1, p2}, Lcom/octopus/ad/internal/view/AdWebView;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$a;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdWebView;->c()V

    return v0
.end method
