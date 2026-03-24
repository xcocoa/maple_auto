.class public final Lcom/anythink/basead/ui/b/f$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/b/f$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/b/f$1;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/b/f$1;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/b/f$1$1;->a:Lcom/anythink/basead/ui/b/f$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/anythink/basead/ui/b/f$1$1;->a:Lcom/anythink/basead/ui/b/f$1;

    iget-object v0, v0, Lcom/anythink/basead/ui/b/f$1;->a:Lcom/anythink/basead/ui/b/f;

    iget-object v0, v0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/b/f$1$1;->a:Lcom/anythink/basead/ui/b/f$1;

    iget-object v0, v0, Lcom/anythink/basead/ui/b/f$1;->a:Lcom/anythink/basead/ui/b/f;

    iget-object v0, v0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/b/f$1$1;->a:Lcom/anythink/basead/ui/b/f$1;

    iget-object v0, v0, Lcom/anythink/basead/ui/b/f$1;->a:Lcom/anythink/basead/ui/b/f;

    iget-object v0, v0, Lcom/anythink/basead/ui/b/f;->j:Lcom/anythink/basead/ui/BaseShakeView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/b/f$1$1;->a:Lcom/anythink/basead/ui/b/f$1;

    iget-object v0, v0, Lcom/anythink/basead/ui/b/f$1;->a:Lcom/anythink/basead/ui/b/f;

    iget-object v0, v0, Lcom/anythink/basead/ui/b/f;->j:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_1
    return-void
.end method
