.class public Lcom/octopus/ad/internal/view/BannerAdViewImpl$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/view/BannerAdViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

.field private final b:Lcom/octopus/ad/internal/view/b;

.field private final c:Lcom/octopus/ad/internal/animation/Animator;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/BannerAdViewImpl;Lcom/octopus/ad/internal/view/b;Lcom/octopus/ad/internal/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl$b;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl$b;->b:Lcom/octopus/ad/internal/view/b;

    iput-object p3, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl$b;->c:Lcom/octopus/ad/internal/animation/Animator;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl$b;->b:Lcom/octopus/ad/internal/view/b;

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl$b;->c:Lcom/octopus/ad/internal/animation/Animator;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/octopus/ad/internal/view/b;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/octopus/ad/internal/view/BannerAdViewImpl$b$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/octopus/ad/internal/view/BannerAdViewImpl$b$1;-><init>(Lcom/octopus/ad/internal/view/BannerAdViewImpl$b;Lcom/octopus/ad/internal/animation/Animator;Lcom/octopus/ad/internal/view/b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
