.class public Lcom/octopus/ad/internal/view/AdWebView$c;
.super Landroid/webkit/WebView;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/view/AdWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/view/AdWebView;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdWebView;Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$c;->a:Lcom/octopus/ad/internal/view/AdWebView;

    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-direct {v0, p2}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/octopus/ad/internal/utilities/WebviewUtil;->setWebViewSettings(Landroid/webkit/WebView;)V

    new-instance p2, Lcom/octopus/ad/internal/view/AdWebView$c$1;

    invoke-direct {p2, p0, p1}, Lcom/octopus/ad/internal/view/AdWebView$c$1;-><init>(Lcom/octopus/ad/internal/view/AdWebView$c;Lcom/octopus/ad/internal/view/AdWebView;)V

    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
