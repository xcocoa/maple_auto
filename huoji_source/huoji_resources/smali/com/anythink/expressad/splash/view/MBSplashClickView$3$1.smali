.class public final Lcom/anythink/expressad/splash/view/MBSplashClickView$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/splash/view/MBSplashClickView$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/animation/Animation;

.field public final synthetic b:Lcom/anythink/expressad/splash/view/MBSplashClickView$3;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/splash/view/MBSplashClickView$3;Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/splash/view/MBSplashClickView$3$1;->b:Lcom/anythink/expressad/splash/view/MBSplashClickView$3;

    iput-object p2, p0, Lcom/anythink/expressad/splash/view/MBSplashClickView$3$1;->a:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/MBSplashClickView$3$1;->b:Lcom/anythink/expressad/splash/view/MBSplashClickView$3;

    iget-object v0, v0, Lcom/anythink/expressad/splash/view/MBSplashClickView$3;->a:Lcom/anythink/expressad/splash/view/MBSplashClickView;

    invoke-static {v0}, Lcom/anythink/expressad/splash/view/MBSplashClickView;->b(Lcom/anythink/expressad/splash/view/MBSplashClickView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/splash/view/MBSplashClickView$3$1;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
