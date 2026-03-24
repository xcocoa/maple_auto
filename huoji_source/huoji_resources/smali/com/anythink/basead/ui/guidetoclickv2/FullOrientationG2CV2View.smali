.class public Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;
.super Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;
.source ""


# instance fields
.field public c:Landroid/animation/ValueAnimator;

.field public d:Landroid/widget/ImageView;

.field public e:Lcom/anythink/basead/ui/guidetoclickv2/d;

.field private f:I

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->f:I

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;F)F
    .locals 0

    iput p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->g:F

    return p1
.end method

.method public static synthetic a(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)I
    .locals 0

    iget p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->f:I

    return p0
.end method

.method public static synthetic b(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;F)F
    .locals 0

    iput p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->h:F

    return p1
.end method

.method public static synthetic b(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)I
    .locals 2

    iget v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->f:I

    return v0
.end method

.method public static synthetic c(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)F
    .locals 0

    iget p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->g:F

    return p0
.end method

.method public static synthetic c(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;F)F
    .locals 1

    iget v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->i:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->i:F

    return v0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    int-to-float v0, v0

    aput v0, v1, v2

    const/4 v0, 0x2

    aput v3, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$1;-><init>(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$2;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$2;-><init>(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)F
    .locals 0

    iget p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->h:F

    return p0
.end method

.method public static synthetic d(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;F)F
    .locals 1

    iget v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->j:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->j:F

    return v0
.end method

.method private d()Lcom/anythink/basead/ui/guidetoclickv2/d;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/anythink/basead/ui/guidetoclickv2/d;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/anythink/basead/ui/guidetoclickv2/d;

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public static synthetic e(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)F
    .locals 0

    iget p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->i:F

    return p0
.end method

.method public static synthetic f(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)F
    .locals 0

    iget p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->j:F

    return p0
.end method

.method public static synthetic g(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)I
    .locals 0

    iget p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->k:I

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-super {p0}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->a()V

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "myoffer_g2c_v2_full_orientation"

    const-string v1, "layout"

    invoke-static {p2, v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->k:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "myoffer_g2c_fullori_finger"

    const-string v0, "id"

    invoke-static {p1, p2, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->d:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p1, p2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    const/4 p2, 0x3

    new-array p2, p2, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p2, v0

    const/4 v0, 0x1

    int-to-float p1, p1

    aput p1, p2, v0

    const/4 p1, 0x2

    aput v1, p2, p1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$1;

    invoke-direct {p2, p0}, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$1;-><init>(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$2;

    invoke-direct {p2, p0}, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$2;-><init>(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    invoke-super {p0}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->b()V

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/anythink/basead/ui/guidetoclickv2/d;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/anythink/basead/ui/guidetoclickv2/d;

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->e:Lcom/anythink/basead/ui/guidetoclickv2/d;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$3;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$3;-><init>(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)V

    invoke-interface {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/d;->setCallback(Lcom/anythink/basead/ui/guidetoclickv2/c;)V

    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->e:Lcom/anythink/basead/ui/guidetoclickv2/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/d;->setCallback(Lcom/anythink/basead/ui/guidetoclickv2/c;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    invoke-super {p0}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->release()V

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method
