.class public Lcom/octopus/ad/internal/animation/Fade;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/internal/animation/Transition;


# instance fields
.field private inAnimation:Landroid/view/animation/Animation;

.field private outAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/octopus/ad/internal/animation/Fade;->setInAnimation(Landroid/view/animation/Interpolator;J)V

    invoke-direct {p0, v0, p1, p2}, Lcom/octopus/ad/internal/animation/Fade;->setOutAnimation(Landroid/view/animation/Interpolator;J)V

    return-void
.end method

.method private setInAnimation(Landroid/view/animation/Interpolator;J)V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/octopus/ad/internal/animation/Fade;->inAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p2, p0, Lcom/octopus/ad/internal/animation/Fade;->inAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private setOutAnimation(Landroid/view/animation/Interpolator;J)V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/octopus/ad/internal/animation/Fade;->outAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p2, p0, Lcom/octopus/ad/internal/animation/Fade;->outAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public getInAnimation()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/animation/Fade;->inAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getOutAnimation()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/animation/Fade;->outAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method
