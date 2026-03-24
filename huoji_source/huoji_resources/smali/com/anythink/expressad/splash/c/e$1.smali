.class public final Lcom/anythink/expressad/splash/c/e$1;
.super Lcom/anythink/expressad/atsignalcommon/a/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/splash/c/e;->a(Lcom/anythink/expressad/splash/view/ATSplashView;Lcom/anythink/expressad/splash/c/e$c;Lcom/anythink/expressad/splash/c/e$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/splash/c/e$b;

.field public final synthetic b:Lcom/anythink/expressad/splash/view/ATSplashView;

.field public final synthetic c:Lcom/anythink/expressad/foundation/d/c;

.field public final synthetic e:Lcom/anythink/expressad/splash/c/e;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/splash/c/e;Lcom/anythink/expressad/splash/c/e$b;Lcom/anythink/expressad/splash/view/ATSplashView;Lcom/anythink/expressad/foundation/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/splash/c/e$1;->e:Lcom/anythink/expressad/splash/c/e;

    iput-object p2, p0, Lcom/anythink/expressad/splash/c/e$1;->a:Lcom/anythink/expressad/splash/c/e$b;

    iput-object p3, p0, Lcom/anythink/expressad/splash/c/e$1;->b:Lcom/anythink/expressad/splash/view/ATSplashView;

    iput-object p4, p0, Lcom/anythink/expressad/splash/c/e$1;->c:Lcom/anythink/expressad/foundation/d/c;

    invoke-direct {p0}, Lcom/anythink/expressad/atsignalcommon/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/a/b;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/anythink/expressad/splash/c/e$1;->a:Lcom/anythink/expressad/splash/c/e$b;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/anythink/expressad/splash/c/e$b;->a()V

    :cond_0
    iget-object p2, p0, Lcom/anythink/expressad/splash/c/e$1;->e:Lcom/anythink/expressad/splash/c/e;

    invoke-static {p2}, Lcom/anythink/expressad/splash/c/e;->a(Lcom/anythink/expressad/splash/c/e;)Z

    iget-object p2, p0, Lcom/anythink/expressad/splash/c/e$1;->c:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c;->s()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/anythink/expressad/splash/c/e$1;->b:Lcom/anythink/expressad/splash/view/ATSplashView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/anythink/expressad/splash/view/ATSplashView;->setH5Ready(Z)V

    :cond_1
    invoke-static {p1}, Lcom/anythink/expressad/splash/js/SplashJsUtils;->fireOnJSBridgeConnected(Landroid/webkit/WebView;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/anythink/expressad/atsignalcommon/a/b;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/e$1;->a:Lcom/anythink/expressad/splash/c/e$b;

    if-eqz p1, :cond_0

    invoke-interface {p1, p3}, Lcom/anythink/expressad/splash/c/e$b;->a(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/splash/c/e$1;->e:Lcom/anythink/expressad/splash/c/e;

    invoke-virtual {p1}, Lcom/anythink/expressad/splash/c/e;->a()V

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/e$1;->b:Lcom/anythink/expressad/splash/view/ATSplashView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/splash/view/ATSplashView;->setH5Ready(Z)V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/anythink/expressad/atsignalcommon/a/b;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/e$1;->a:Lcom/anythink/expressad/splash/c/e$b;

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/anythink/expressad/splash/c/e$b;->a(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/splash/c/e$1;->e:Lcom/anythink/expressad/splash/c/e;

    invoke-virtual {p1}, Lcom/anythink/expressad/splash/c/e;->a()V

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/e$1;->b:Lcom/anythink/expressad/splash/view/ATSplashView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/splash/view/ATSplashView;->setH5Ready(Z)V

    return-void
.end method

.method public final readyState(Landroid/webkit/WebView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/a/b;->readyState(Landroid/webkit/WebView;I)V

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/e$1;->a:Lcom/anythink/expressad/splash/c/e$b;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/anythink/expressad/splash/c/e$b;->a(I)V

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    iget-object p2, p0, Lcom/anythink/expressad/splash/c/e$1;->e:Lcom/anythink/expressad/splash/c/e;

    invoke-static {p2, p1}, Lcom/anythink/expressad/splash/c/e;->a(Lcom/anythink/expressad/splash/c/e;Z)Z

    iget-object p2, p0, Lcom/anythink/expressad/splash/c/e$1;->b:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/splash/view/ATSplashView;->setH5Ready(Z)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/splash/c/e$1;->e:Lcom/anythink/expressad/splash/c/e;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/anythink/expressad/splash/c/e;->a(Lcom/anythink/expressad/splash/c/e;Z)Z

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/e$1;->b:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/splash/view/ATSplashView;->setH5Ready(Z)V

    return-void
.end method
