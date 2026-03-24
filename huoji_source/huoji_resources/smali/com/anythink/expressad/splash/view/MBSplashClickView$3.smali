.class public final Lcom/anythink/expressad/splash/view/MBSplashClickView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/splash/view/MBSplashClickView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/splash/view/MBSplashClickView;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/splash/view/MBSplashClickView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/splash/view/MBSplashClickView$3;->a:Lcom/anythink/expressad/splash/view/MBSplashClickView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/MBSplashClickView$3;->a:Lcom/anythink/expressad/splash/view/MBSplashClickView;

    invoke-static {v0}, Lcom/anythink/expressad/splash/view/MBSplashClickView;->b(Lcom/anythink/expressad/splash/view/MBSplashClickView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/MBSplashClickView$3;->a:Lcom/anythink/expressad/splash/view/MBSplashClickView;

    invoke-static {v0}, Lcom/anythink/expressad/splash/view/MBSplashClickView;->b(Lcom/anythink/expressad/splash/view/MBSplashClickView;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/splash/view/MBSplashClickView$3$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/expressad/splash/view/MBSplashClickView$3$1;-><init>(Lcom/anythink/expressad/splash/view/MBSplashClickView$3;Landroid/view/animation/Animation;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/expressad/splash/view/MBSplashClickView$3;->a:Lcom/anythink/expressad/splash/view/MBSplashClickView;

    invoke-static {p1}, Lcom/anythink/expressad/splash/view/MBSplashClickView;->b(Lcom/anythink/expressad/splash/view/MBSplashClickView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
