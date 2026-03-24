.class public final Lcom/anythink/basead/ui/GuideToClickView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/GuideToClickView;->startAnim(Landroid/animation/ValueAnimator;Lcom/anythink/basead/ui/WaveAnimImageView;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/WaveAnimImageView;

.field public final synthetic b:Lcom/anythink/basead/ui/GuideToClickView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/GuideToClickView;Lcom/anythink/basead/ui/WaveAnimImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->b:Lcom/anythink/basead/ui/GuideToClickView;

    iput-object p2, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->a:Lcom/anythink/basead/ui/WaveAnimImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 12

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x3f36db6e

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->a:Lcom/anythink/basead/ui/WaveAnimImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->b:Lcom/anythink/basead/ui/GuideToClickView;

    iget v1, v0, Lcom/anythink/basead/ui/GuideToClickView;->i:F

    iget v2, v0, Lcom/anythink/basead/ui/GuideToClickView;->j:F

    sub-float/2addr v2, v1

    mul-float v2, v2, p1

    add-float/2addr v2, v1

    iget v3, v0, Lcom/anythink/basead/ui/GuideToClickView;->g:F

    iget v4, v0, Lcom/anythink/basead/ui/GuideToClickView;->h:F

    sub-float/2addr v4, v1

    mul-float v4, v4, p1

    add-float/2addr v3, v4

    float-to-double v4, p1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x3fc999999999999aL    # 0.2

    cmpg-double v1, v4, v8

    if-gez v1, :cond_1

    iget v1, v0, Lcom/anythink/basead/ui/GuideToClickView;->e:F

    float-to-double v4, v1

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float p1, p1, v10

    float-to-double v10, p1

    div-double/2addr v10, v8

    sub-double/2addr v6, v10

    iget p1, v0, Lcom/anythink/basead/ui/GuideToClickView;->f:F

    sub-float/2addr p1, v1

    float-to-double v8, p1

    mul-double v6, v6, v8

    add-double/2addr v4, v6

    double-to-float p1, v4

    goto :goto_0

    :cond_1
    iget p1, v0, Lcom/anythink/basead/ui/GuideToClickView;->e:F

    float-to-double v10, p1

    sub-double/2addr v4, v8

    mul-double v4, v4, v6

    const-wide v6, 0x3fe999999999999aL    # 0.8

    div-double/2addr v4, v6

    iget v1, v0, Lcom/anythink/basead/ui/GuideToClickView;->f:F

    sub-float/2addr v1, p1

    float-to-double v6, v1

    mul-double v4, v4, v6

    add-double/2addr v10, v4

    double-to-float p1, v10

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->a:Lcom/anythink/basead/ui/WaveAnimImageView;

    new-instance v1, Lcom/anythink/basead/ui/WaveAnimImageView$a;

    invoke-direct {v1, v2, v3, p1}, Lcom/anythink/basead/ui/WaveAnimImageView$a;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/WaveAnimImageView;->setWaveAnimParams(Lcom/anythink/basead/ui/WaveAnimImageView$a;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->a:Lcom/anythink/basead/ui/WaveAnimImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->a:Lcom/anythink/basead/ui/WaveAnimImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method
