.class public final Lcom/anythink/basead/a/c/a$6$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/a/c/a$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/a/c/a$6;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/a/c/a$6;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/a/c/a$6$1;->a:Lcom/anythink/basead/a/c/a$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    mul-long v1, v1, v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-float v1, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-float p1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float p1, p1, v2

    div-float/2addr v1, p1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    float-to-double v0, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v2, v2, v0

    iget-object p1, p0, Lcom/anythink/basead/a/c/a$6$1;->a:Lcom/anythink/basead/a/c/a$6;

    iget-object v0, p1, Lcom/anythink/basead/a/c/a$6;->a:Landroid/view/View;

    iget-object p1, p1, Lcom/anythink/basead/a/c/a$6;->b:Lcom/anythink/basead/a/c/a;

    iget p1, p1, Lcom/anythink/basead/a/c/a;->k:I

    int-to-double v4, p1

    mul-double v4, v4, v2

    double-to-float p1, v4

    neg-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
