.class public Lcom/octopus/ad/internal/view/AdWebView$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/view/AdWebView;
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

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView$5;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView$5;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdWebView;->i(Lcom/octopus/ad/internal/view/AdWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView$5;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->f()V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView$5;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdWebView;->j(Lcom/octopus/ad/internal/view/AdWebView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
