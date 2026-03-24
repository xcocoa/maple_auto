.class public Lcom/octopus/ad/internal/view/g$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/g;->d(Lcom/octopus/ad/internal/view/AdWebView;Landroid/net/Uri;)V
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

    iput-object p1, p0, Lcom/octopus/ad/internal/view/g$1;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/g$1;->a:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/view/g$1;->a:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/b;->b()V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/g$1;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->getContextFromMutableContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/view/g$1;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->d()V

    :cond_1
    :goto_0
    return-void
.end method
