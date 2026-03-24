.class public Lcom/octopus/ad/internal/view/AdViewImpl$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/AdViewImpl;->addSkipView(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/view/AdViewImpl;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdViewImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$5;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$5;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->j(Lcom/octopus/ad/internal/view/AdViewImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$5;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->e(Lcom/octopus/ad/internal/view/AdViewImpl;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$5;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/octopus/ad/internal/b;->b()V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$5;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->k(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/a/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$5;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->k(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/octopus/ad/a/a;->d()V

    :cond_1
    :goto_0
    return-void
.end method
