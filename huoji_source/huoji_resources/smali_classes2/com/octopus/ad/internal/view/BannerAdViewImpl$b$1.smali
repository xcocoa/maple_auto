.class public Lcom/octopus/ad/internal/view/BannerAdViewImpl$b$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/BannerAdViewImpl$b;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/animation/Animator;

.field public final synthetic b:Lcom/octopus/ad/internal/view/b;

.field public final synthetic c:Lcom/octopus/ad/internal/view/BannerAdViewImpl$b;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/BannerAdViewImpl$b;Lcom/octopus/ad/internal/animation/Animator;Lcom/octopus/ad/internal/view/b;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl$b$1;->c:Lcom/octopus/ad/internal/view/BannerAdViewImpl$b;

    iput-object p2, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl$b$1;->a:Lcom/octopus/ad/internal/animation/Animator;

    iput-object p3, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl$b$1;->b:Lcom/octopus/ad/internal/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl$b$1;->a:Lcom/octopus/ad/internal/animation/Animator;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/animation/Animator;->clearAnimation()V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl$b$1;->b:Lcom/octopus/ad/internal/view/b;

    invoke-interface {v0}, Lcom/octopus/ad/internal/view/b;->destroy()V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl$b$1;->a:Lcom/octopus/ad/internal/animation/Animator;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/animation/Animator;->setAnimation()V

    return-void
.end method
