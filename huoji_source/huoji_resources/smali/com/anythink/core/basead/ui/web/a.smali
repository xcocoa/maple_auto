.class public final Lcom/anythink/core/basead/ui/web/a;
.super Landroid/webkit/WebViewClient;
.source ""


# instance fields
.field private a:Lcom/anythink/core/basead/ui/web/b;


# direct methods
.method public constructor <init>(Lcom/anythink/core/basead/ui/web/b;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/basead/ui/web/a;->a:Lcom/anythink/core/basead/ui/web/b;

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/a;->a:Lcom/anythink/core/basead/ui/web/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/basead/ui/web/b;->onWebPageFinish(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p3, p0, Lcom/anythink/core/basead/ui/web/a;->a:Lcom/anythink/core/basead/ui/web/b;

    if-eqz p3, :cond_0

    invoke-interface {p3, p1, p2}, Lcom/anythink/core/basead/ui/web/b;->onWebPageStart(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/a;->a:Lcom/anythink/core/basead/ui/web/b;

    invoke-interface {p1}, Lcom/anythink/core/basead/ui/web/b;->getWebProgressBarView()Lcom/anythink/core/basead/ui/web/WebProgressBarView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p2}, Lcom/anythink/core/basead/ui/web/WebProgressBarView;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/anythink/core/basead/ui/web/a;->a:Lcom/anythink/core/basead/ui/web/b;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1, p4}, Lcom/anythink/core/basead/ui/web/b;->onWebPageLoadError(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/RenderProcessGoneDetail;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/a;->a:Lcom/anythink/core/basead/ui/web/b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/anythink/core/basead/ui/web/b;->onWebFinish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const-string v0, "about:blank"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/a;->a:Lcom/anythink/core/basead/ui/web/b;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Lcom/anythink/core/basead/ui/web/b;->recordRedirectUrl(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/anythink/core/basead/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/core/common/f/bb;

    move-result-object v0

    iget-boolean v2, v0, Lcom/anythink/core/common/f/bb;->m:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/a;->a:Lcom/anythink/core/basead/ui/web/b;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lcom/anythink/core/basead/ui/web/b;->callbackClickResult(Lcom/anythink/core/common/f/bb;)V

    :cond_2
    return v3

    :cond_3
    iget-object v2, p0, Lcom/anythink/core/basead/ui/web/a;->a:Lcom/anythink/core/basead/ui/web/b;

    if-eqz v2, :cond_4

    invoke-interface {v2, v0}, Lcom/anythink/core/basead/ui/web/b;->callbackClickResult(Lcom/anythink/core/common/f/bb;)V

    :cond_4
    invoke-static {p2}, Lcom/anythink/core/basead/a/a;->a(Ljava/lang/String;)Lcom/anythink/core/common/f/bb;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/core/basead/ui/web/a;->a:Lcom/anythink/core/basead/ui/web/b;

    if-eqz v2, :cond_5

    invoke-interface {v2, v0}, Lcom/anythink/core/basead/ui/web/b;->callbackClickResult(Lcom/anythink/core/common/f/bb;)V

    :cond_5
    iget-object v2, v0, Lcom/anythink/core/common/f/bb;->o:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object p2, v0, Lcom/anythink/core/common/f/bb;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v3

    :cond_6
    invoke-static {p2}, Lcom/anythink/core/common/o/i;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    :goto_0
    return v1
.end method
