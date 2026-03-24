.class public Lcom/octopus/ad/internal/view/AdWebView$c$1;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/AdWebView$c;-><init>(Lcom/octopus/ad/internal/view/AdWebView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/view/AdWebView;

.field public final synthetic b:Lcom/octopus/ad/internal/view/AdWebView$c;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdWebView$c;Lcom/octopus/ad/internal/view/AdWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$c$1;->b:Lcom/octopus/ad/internal/view/AdWebView$c;

    iput-object p2, p0, Lcom/octopus/ad/internal/view/AdWebView$c$1;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/AdWebView$c$1;->c:Z

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->browserLogTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opening URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$c$1;->b:Lcom/octopus/ad/internal/view/AdWebView$c;

    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$c$1;->b:Lcom/octopus/ad/internal/view/AdWebView$c;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdWebView$c;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdWebView;->k(Lcom/octopus/ad/internal/view/AdWebView;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$c$1;->b:Lcom/octopus/ad/internal/view/AdWebView$c;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdWebView$c;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdWebView;->k(Lcom/octopus/ad/internal/view/AdWebView;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$c$1;->b:Lcom/octopus/ad/internal/view/AdWebView$c;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdWebView$c;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdWebView;->k(Lcom/octopus/ad/internal/view/AdWebView;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-boolean p1, p0, Lcom/octopus/ad/internal/view/AdWebView$c$1;->c:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iput-boolean p2, p0, Lcom/octopus/ad/internal/view/AdWebView$c$1;->c:Z

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$c$1;->b:Lcom/octopus/ad/internal/view/AdWebView$c;

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$c$1;->b:Lcom/octopus/ad/internal/view/AdWebView$c;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdWebView$c;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdWebView;->l(Lcom/octopus/ad/internal/view/AdWebView;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$c$1;->b:Lcom/octopus/ad/internal/view/AdWebView$c;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$c$1;->b:Lcom/octopus/ad/internal/view/AdWebView$c;

    iget-object p2, p1, Lcom/octopus/ad/internal/view/AdWebView$c;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {p2, p1}, Lcom/octopus/ad/internal/view/AdWebView;->a(Lcom/octopus/ad/internal/view/AdWebView;Landroid/webkit/WebView;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->browserLogTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Redirecting to URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$c$1;->b:Lcom/octopus/ad/internal/view/AdWebView$c;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdWebView$c;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {p1, p2}, Lcom/octopus/ad/internal/view/AdWebView;->d(Lcom/octopus/ad/internal/view/AdWebView;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/AdWebView$c$1;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$c$1;->b:Lcom/octopus/ad/internal/view/AdWebView$c;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdWebView$c;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdWebView;->k(Lcom/octopus/ad/internal/view/AdWebView;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$c$1;->b:Lcom/octopus/ad/internal/view/AdWebView$c;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdWebView$c;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdWebView;->k(Lcom/octopus/ad/internal/view/AdWebView;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$c$1;->b:Lcom/octopus/ad/internal/view/AdWebView$c;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdWebView$c;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdWebView;->k(Lcom/octopus/ad/internal/view/AdWebView;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-boolean p1, p0, Lcom/octopus/ad/internal/view/AdWebView$c$1;->c:Z

    return p1
.end method
