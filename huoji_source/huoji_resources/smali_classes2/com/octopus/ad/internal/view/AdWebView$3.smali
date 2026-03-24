.class public Lcom/octopus/ad/internal/view/AdWebView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/AdWebView;->onAdShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/view/AdWebView;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$3;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView$3;->a:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/b;->a()V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView$3;->a:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v1, v0, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v2}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdParameters()Lcom/octopus/ad/internal/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/octopus/ad/internal/network/ServerResponse;->handleView(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
