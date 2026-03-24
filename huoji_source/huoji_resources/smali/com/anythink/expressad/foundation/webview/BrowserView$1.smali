.class public final Lcom/anythink/expressad/foundation/webview/BrowserView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/foundation/webview/BrowserView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/foundation/webview/BrowserView;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/foundation/webview/BrowserView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/webview/BrowserView;->a(Lcom/anythink/expressad/foundation/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/webview/BrowserView;->a(Lcom/anythink/expressad/foundation/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "backward"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "forward"

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {p1}, Lcom/anythink/expressad/foundation/webview/BrowserView;->b(Lcom/anythink/expressad/foundation/webview/BrowserView;)Lcom/anythink/expressad/foundation/webview/ToolBar;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/anythink/expressad/foundation/webview/ToolBar;->getItem(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {p1}, Lcom/anythink/expressad/foundation/webview/BrowserView;->a(Lcom/anythink/expressad/foundation/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {p1}, Lcom/anythink/expressad/foundation/webview/BrowserView;->a(Lcom/anythink/expressad/foundation/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {p1}, Lcom/anythink/expressad/foundation/webview/BrowserView;->a(Lcom/anythink/expressad/foundation/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {p1}, Lcom/anythink/expressad/foundation/webview/BrowserView;->b(Lcom/anythink/expressad/foundation/webview/BrowserView;)Lcom/anythink/expressad/foundation/webview/ToolBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/foundation/webview/ToolBar;->getItem(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/webview/BrowserView;->a(Lcom/anythink/expressad/foundation/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/webview/BrowserView;->a(Lcom/anythink/expressad/foundation/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_3
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {p1}, Lcom/anythink/expressad/foundation/webview/BrowserView;->b(Lcom/anythink/expressad/foundation/webview/BrowserView;)Lcom/anythink/expressad/foundation/webview/ToolBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/foundation/webview/ToolBar;->getItem(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {p1}, Lcom/anythink/expressad/foundation/webview/BrowserView;->a(Lcom/anythink/expressad/foundation/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {p1}, Lcom/anythink/expressad/foundation/webview/BrowserView;->a(Lcom/anythink/expressad/foundation/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {p1}, Lcom/anythink/expressad/foundation/webview/BrowserView;->a(Lcom/anythink/expressad/foundation/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->goForward()V

    :cond_4
    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {p1}, Lcom/anythink/expressad/foundation/webview/BrowserView;->b(Lcom/anythink/expressad/foundation/webview/BrowserView;)Lcom/anythink/expressad/foundation/webview/ToolBar;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/anythink/expressad/foundation/webview/ToolBar;->getItem(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/webview/BrowserView;->a(Lcom/anythink/expressad/foundation/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/webview/BrowserView;->a(Lcom/anythink/expressad/foundation/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_6
    const-string v1, "refresh"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {p1}, Lcom/anythink/expressad/foundation/webview/BrowserView;->b(Lcom/anythink/expressad/foundation/webview/BrowserView;)Lcom/anythink/expressad/foundation/webview/ToolBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/foundation/webview/ToolBar;->getItem(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/webview/BrowserView;->a(Lcom/anythink/expressad/foundation/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/webview/BrowserView;->a(Lcom/anythink/expressad/foundation/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {p1}, Lcom/anythink/expressad/foundation/webview/BrowserView;->b(Lcom/anythink/expressad/foundation/webview/BrowserView;)Lcom/anythink/expressad/foundation/webview/ToolBar;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/anythink/expressad/foundation/webview/ToolBar;->getItem(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/webview/BrowserView;->a(Lcom/anythink/expressad/foundation/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/webview/BrowserView;->a(Lcom/anythink/expressad/foundation/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    :cond_8
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {p1}, Lcom/anythink/expressad/foundation/webview/BrowserView;->a(Lcom/anythink/expressad/foundation/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {p1}, Lcom/anythink/expressad/foundation/webview/BrowserView;->a(Lcom/anythink/expressad/foundation/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/webview/BrowserView;->c(Lcom/anythink/expressad/foundation/webview/BrowserView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_9
    const-string v0, "exits"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {p1}, Lcom/anythink/expressad/foundation/webview/BrowserView;->d(Lcom/anythink/expressad/foundation/webview/BrowserView;)Lcom/anythink/expressad/foundation/webview/BrowserView$a;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/BrowserView$1;->a:Lcom/anythink/expressad/foundation/webview/BrowserView;

    invoke-static {p1}, Lcom/anythink/expressad/foundation/webview/BrowserView;->d(Lcom/anythink/expressad/foundation/webview/BrowserView;)Lcom/anythink/expressad/foundation/webview/BrowserView$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/expressad/foundation/webview/BrowserView$a;->a()V

    :cond_a
    return-void
.end method
