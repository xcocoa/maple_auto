.class public final Lcom/anythink/basead/ui/SpreadAnimLayout$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/SpreadAnimLayout;->startSpreadAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/SpreadAnimLayout;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/SpreadAnimLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/SpreadAnimLayout$2;->a:Lcom/anythink/basead/ui/SpreadAnimLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/anythink/basead/ui/SpreadAnimLayout$2;->a:Lcom/anythink/basead/ui/SpreadAnimLayout;

    invoke-static {v0}, Lcom/anythink/basead/ui/SpreadAnimLayout;->a(Lcom/anythink/basead/ui/SpreadAnimLayout;)Lcom/anythink/basead/ui/SpreadAnimLayout$a;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/anythink/basead/ui/SpreadAnimLayout$a;->b:I

    iget-object v0, p0, Lcom/anythink/basead/ui/SpreadAnimLayout$2;->a:Lcom/anythink/basead/ui/SpreadAnimLayout;

    invoke-static {v0}, Lcom/anythink/basead/ui/SpreadAnimLayout;->b(Lcom/anythink/basead/ui/SpreadAnimLayout;)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    iget-object v0, p0, Lcom/anythink/basead/ui/SpreadAnimLayout$2;->a:Lcom/anythink/basead/ui/SpreadAnimLayout;

    invoke-static {v0}, Lcom/anythink/basead/ui/SpreadAnimLayout;->a(Lcom/anythink/basead/ui/SpreadAnimLayout;)Lcom/anythink/basead/ui/SpreadAnimLayout$a;

    move-result-object v0

    iget-object v0, v0, Lcom/anythink/basead/ui/SpreadAnimLayout$a;->a:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/anythink/basead/ui/SpreadAnimLayout$2;->a:Lcom/anythink/basead/ui/SpreadAnimLayout;

    invoke-static {v1}, Lcom/anythink/basead/ui/SpreadAnimLayout;->c(Lcom/anythink/basead/ui/SpreadAnimLayout;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/SpreadAnimLayout$2;->a:Lcom/anythink/basead/ui/SpreadAnimLayout;

    invoke-static {v0}, Lcom/anythink/basead/ui/SpreadAnimLayout;->a(Lcom/anythink/basead/ui/SpreadAnimLayout;)Lcom/anythink/basead/ui/SpreadAnimLayout$a;

    move-result-object v0

    iget-object v0, v0, Lcom/anythink/basead/ui/SpreadAnimLayout$a;->a:Landroid/graphics/RectF;

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p1, p1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object p1, p0, Lcom/anythink/basead/ui/SpreadAnimLayout$2;->a:Lcom/anythink/basead/ui/SpreadAnimLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->postInvalidate()V

    return-void
.end method
