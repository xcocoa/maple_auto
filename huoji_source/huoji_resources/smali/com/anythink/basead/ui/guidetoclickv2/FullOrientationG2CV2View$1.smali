.class public final Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1    # Landroid/animation/ValueAnimator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;

    iget-object v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;

    invoke-static {v0}, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->a(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;

    iget-object v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->d:Landroid/widget/ImageView;

    neg-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;

    iget-object v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;

    iget-object v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->d:Landroid/widget/ImageView;

    neg-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;

    iget-object v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    :cond_3
    :goto_0
    return-void
.end method
