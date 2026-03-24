.class public final Lcom/anythink/basead/mraid/MraidWebView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/mraid/MraidWebView;->prepare(Landroid/content/Context;Lcom/anythink/basead/mraid/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/mraid/MraidWebView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/mraid/MraidWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/mraid/MraidWebView$1;->a:Lcom/anythink/basead/mraid/MraidWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/basead/mraid/MraidWebView$1;->a:Lcom/anythink/basead/mraid/MraidWebView;

    iget-boolean v2, v1, Lcom/anythink/basead/mraid/MraidWebView;->b:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v1, p0, Lcom/anythink/basead/mraid/MraidWebView$1;->a:Lcom/anythink/basead/mraid/MraidWebView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/anythink/basead/mraid/MraidWebView;->b:Z

    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    iget-object v1, p0, Lcom/anythink/basead/mraid/MraidWebView$1;->a:Lcom/anythink/basead/mraid/MraidWebView;

    aget v4, v3, v0

    int-to-float v4, v4

    aget v5, v3, v2

    int-to-float v5, v5

    invoke-static {v1, v4, v5}, Lcom/anythink/expressad/mbbanner/a/a/a;->a(Landroid/webkit/WebView;FF)V

    iget-object v1, p0, Lcom/anythink/basead/mraid/MraidWebView$1;->a:Lcom/anythink/basead/mraid/MraidWebView;

    aget v4, v3, v0

    aget v2, v3, v2

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWidth()I

    move-result v3

    iget-object v5, p0, Lcom/anythink/basead/mraid/MraidWebView$1;->a:Lcom/anythink/basead/mraid/MraidWebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getHeight()I

    move-result v5

    invoke-static {v1, v4, v2, v3, v5}, Lcom/anythink/expressad/mbbanner/a/a/a;->a(Landroid/webkit/WebView;IIII)V

    iget-object v1, p0, Lcom/anythink/basead/mraid/MraidWebView$1;->a:Lcom/anythink/basead/mraid/MraidWebView;

    invoke-static {v1}, Lcom/anythink/basead/mraid/MraidWebView;->a(Lcom/anythink/basead/mraid/MraidWebView;)V

    iget-object v1, p0, Lcom/anythink/basead/mraid/MraidWebView$1;->a:Lcom/anythink/basead/mraid/MraidWebView;

    iget-boolean v2, v1, Lcom/anythink/basead/mraid/MraidWebView;->d:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/anythink/basead/mraid/MraidWebView;->b(Lcom/anythink/basead/mraid/MraidWebView;)V

    :cond_0
    iget-object v1, p0, Lcom/anythink/basead/mraid/MraidWebView$1;->a:Lcom/anythink/basead/mraid/MraidWebView;

    iget-object v1, v1, Lcom/anythink/basead/mraid/MraidWebView;->a:Lcom/anythink/basead/mraid/b;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/anythink/basead/mraid/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method
