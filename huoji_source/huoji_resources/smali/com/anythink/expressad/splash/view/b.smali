.class public final Lcom/anythink/expressad/splash/view/b;
.super Lcom/anythink/expressad/atsignalcommon/base/b;
.source ""


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/anythink/expressad/splash/d/a;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/anythink/expressad/splash/d/a;)V
    .locals 1

    invoke-direct {p0}, Lcom/anythink/expressad/atsignalcommon/base/b;-><init>()V

    const-string v0, "SplashWebViewClient"

    iput-object v0, p0, Lcom/anythink/expressad/splash/view/b;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/anythink/expressad/splash/view/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/anythink/expressad/splash/view/b;->b:Lcom/anythink/expressad/splash/d/a;

    return-void
.end method


# virtual methods
.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "javascript:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/d/b/a;->a()Lcom/anythink/expressad/d/b/a;

    invoke-static {}, Lcom/anythink/expressad/d/b/a;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-gt p3, v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/anythink/expressad/splash/view/b$1;

    invoke-direct {p3, p0}, Lcom/anythink/expressad/splash/view/b$1;-><init>(Lcom/anythink/expressad/splash/view/b;)V

    invoke-virtual {p1, p2, p3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    check-cast p1, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->lastTouchTime:J

    sub-long/2addr v1, v3

    sget v3, Lcom/anythink/expressad/a/b/a;->c:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

    invoke-virtual {v1}, Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;->getmCampaignList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    sget p1, Lcom/anythink/expressad/a/b/a;->b:I

    invoke-static {v1}, Lcom/anythink/expressad/a/b/a;->a(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/splash/view/b;->b:Lcom/anythink/expressad/splash/d/a;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lcom/anythink/expressad/splash/d/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :catchall_0
    return v0
.end method
