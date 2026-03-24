.class public final Lcom/anythink/basead/mraid/d$1$1;
.super Lcom/anythink/expressad/atsignalcommon/a/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/mraid/d$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/anythink/basead/mraid/d$1;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/mraid/d$1;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/mraid/d$1$1;->b:Lcom/anythink/basead/mraid/d$1;

    invoke-direct {p0}, Lcom/anythink/expressad/atsignalcommon/a/b;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/basead/mraid/d$1$1;->a:Z

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/basead/mraid/d$1$1;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/mraid/d$1$1;->a:Z

    const-string v0, "about:blank"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/anythink/basead/mraid/d$1$1;->b:Lcom/anythink/basead/mraid/d$1;

    iget-object p2, p2, Lcom/anythink/basead/mraid/d$1;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", about:blank"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/basead/mraid/d$1$1;->b:Lcom/anythink/basead/mraid/d$1;

    iget-object p1, p1, Lcom/anythink/basead/mraid/d$1;->e:Lcom/anythink/basead/mraid/d$a;

    if-eqz p1, :cond_1

    const-string p2, "30005"

    const-string v0, "Html path is illegal!"

    invoke-static {p2, v0}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/anythink/basead/mraid/d$a;->a(Lcom/anythink/basead/c/e;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {p1}, Lcom/anythink/expressad/mbbanner/a/a/a;->a(Landroid/webkit/WebView;)V

    iget-object p1, p0, Lcom/anythink/basead/mraid/d$1$1;->b:Lcom/anythink/basead/mraid/d$1;

    iget-object p2, p1, Lcom/anythink/basead/mraid/d$1;->f:Lcom/anythink/basead/mraid/MraidWebView;

    if-eqz p2, :cond_3

    iget-object p1, p1, Lcom/anythink/basead/mraid/d$1;->g:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/anythink/basead/a/b/c;->a(Ljava/lang/String;Lcom/anythink/basead/mraid/MraidWebView;)V

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/anythink/basead/mraid/d$1$1;->b:Lcom/anythink/basead/mraid/d$1;

    iget-object p2, p2, Lcom/anythink/basead/mraid/d$1;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", load success"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/basead/mraid/d$1$1;->b:Lcom/anythink/basead/mraid/d$1;

    iget-object p1, p1, Lcom/anythink/basead/mraid/d$1;->e:Lcom/anythink/basead/mraid/d$a;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/anythink/basead/mraid/d$a;->a()V

    :cond_4
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/basead/mraid/d$1$1;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/mraid/d$1$1;->a:Z

    invoke-super {p0, p1, p2, p3, p4}, Lcom/anythink/expressad/atsignalcommon/a/b;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "10000"

    invoke-static {p2, p1}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/anythink/basead/mraid/d$1$1;->b:Lcom/anythink/basead/mraid/d$1;

    iget-object p3, p3, Lcom/anythink/basead/mraid/d$1;->d:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", load failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/anythink/basead/mraid/d$1$1;->b:Lcom/anythink/basead/mraid/d$1;

    iget-object p2, p2, Lcom/anythink/basead/mraid/d$1;->e:Lcom/anythink/basead/mraid/d$a;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/anythink/basead/mraid/d$a;->a(Lcom/anythink/basead/c/e;)V

    :cond_1
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/basead/mraid/d$1$1;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/mraid/d$1$1;->a:Z

    invoke-super {p0, p1, p2, p3}, Lcom/anythink/expressad/atsignalcommon/a/b;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "onReceivedSslError"

    :goto_0
    const-string p2, "10000"

    invoke-static {p2, p1}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/anythink/basead/mraid/d$1$1;->b:Lcom/anythink/basead/mraid/d$1;

    iget-object p3, p3, Lcom/anythink/basead/mraid/d$1;->d:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", load failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/anythink/basead/mraid/d$1$1;->b:Lcom/anythink/basead/mraid/d$1;

    iget-object p2, p2, Lcom/anythink/basead/mraid/d$1;->e:Lcom/anythink/basead/mraid/d$a;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lcom/anythink/basead/mraid/d$a;->a(Lcom/anythink/basead/c/e;)V

    :cond_2
    return-void
.end method
