.class public Lcom/octopus/ad/internal/view/AdViewImpl$7$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/AdViewImpl$7;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/view/AdViewImpl$7;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdViewImpl$7;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$7$2;->a:Lcom/octopus/ad/internal/view/AdViewImpl$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$7$2;->a:Lcom/octopus/ad/internal/view/AdViewImpl$7;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdViewImpl$7;->c:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$7$2;->a:Lcom/octopus/ad/internal/view/AdViewImpl$7;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdViewImpl$7;->c:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/octopus/ad/internal/b;->b()V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$7$2;->a:Lcom/octopus/ad/internal/view/AdViewImpl$7;

    iget-object v0, p1, Lcom/octopus/ad/internal/view/AdViewImpl$7;->c:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdViewImpl$7;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
