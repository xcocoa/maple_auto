.class public Lcom/octopus/ad/internal/view/AdViewImpl$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/AdViewImpl$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/view/AdViewImpl$2;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdViewImpl$2;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$2$1;->a:Lcom/octopus/ad/internal/view/AdViewImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$2$1;->a:Lcom/octopus/ad/internal/view/AdViewImpl$2;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdViewImpl$2;->c:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$2$1;->a:Lcom/octopus/ad/internal/view/AdViewImpl$2;

    iget-boolean v0, p1, Lcom/octopus/ad/internal/view/AdViewImpl$2;->a:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdViewImpl$2;->b:Landroid/view/View;

    instance-of v0, p1, Lcom/octopus/ad/internal/view/AdWebView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1, v1}, Lcom/octopus/ad/internal/view/AdWebView;->loadAdBy(I)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$2$1;->a:Lcom/octopus/ad/internal/view/AdViewImpl$2;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdViewImpl$2;->c:Lcom/octopus/ad/internal/view/AdViewImpl;

    check-cast p1, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->getAdImplementation()Lcom/octopus/ad/AdActivity$a;

    move-result-object p1

    check-cast p1, Lcom/octopus/ad/internal/a/b;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/a/b;->g()V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/octopus/ad/internal/video/AdVideoView;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/octopus/ad/internal/video/AdVideoView;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/video/AdVideoView;->getAdWebView()Lcom/octopus/ad/internal/view/AdWebView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/octopus/ad/internal/view/AdWebView;->loadAdBy(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdViewImpl$2;->c:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/octopus/ad/internal/b;->b()V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$2$1;->a:Lcom/octopus/ad/internal/view/AdViewImpl$2;

    iget-object v0, p1, Lcom/octopus/ad/internal/view/AdViewImpl$2;->c:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdViewImpl$2;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_1
    return-void
.end method
