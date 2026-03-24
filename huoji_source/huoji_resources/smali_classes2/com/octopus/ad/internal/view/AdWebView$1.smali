.class public Lcom/octopus/ad/internal/view/AdWebView$1;
.super Lcom/octopus/ad/internal/utilities/HTTPGet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/AdWebView;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/octopus/ad/internal/view/AdWebView;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdWebView;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$1;->b:Lcom/octopus/ad/internal/view/AdWebView;

    iput-object p3, p0, Lcom/octopus/ad/internal/view/AdWebView$1;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/octopus/ad/internal/utilities/HTTPGet;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView$1;->a:Ljava/lang/String;

    return-object v0
.end method

.method public onPostExecute(Lcom/octopus/ad/internal/utilities/HTTPResponse;)V
    .locals 7

    invoke-virtual {p1}, Lcom/octopus/ad/internal/utilities/HTTPResponse;->getSucceeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView$1;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/utilities/HTTPResponse;->getResponseBody()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/octopus/ad/internal/view/AdWebView;->a(Lcom/octopus/ad/internal/view/AdWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView$1;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {v0, p1}, Lcom/octopus/ad/internal/view/AdWebView;->b(Lcom/octopus/ad/internal/view/AdWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView$1;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {v0, p1}, Lcom/octopus/ad/internal/view/AdWebView;->c(Lcom/octopus/ad/internal/view/AdWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdWebView$1;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/octopus/ad/internal/m;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$1;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdWebView;->fireMRAIDEnabled()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/octopus/ad/internal/utilities/HTTPResponse;

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/view/AdWebView$1;->onPostExecute(Lcom/octopus/ad/internal/utilities/HTTPResponse;)V

    return-void
.end method
