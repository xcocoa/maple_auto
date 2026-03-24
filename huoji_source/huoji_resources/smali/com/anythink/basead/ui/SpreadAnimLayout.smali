.class public Lcom/anythink/basead/ui/SpreadAnimLayout;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/ui/SpreadAnimLayout$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/animation/ValueAnimator;

.field private c:Lcom/anythink/basead/ui/SpreadAnimLayout$a;

.field private d:Landroid/graphics/RectF;

.field private e:Landroid/graphics/RectF;

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Paint;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/anythink/basead/ui/SpreadAnimLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/basead/ui/SpreadAnimLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->j:Z

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const-string v0, "color_spread"

    const-string v1, "color"

    invoke-static {p1, v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_spread_max_distance_normal"

    const-string v3, "dimen"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->g:I

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->f:I

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->h:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->a:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->i:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->i:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->i:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/ui/SpreadAnimLayout;)Lcom/anythink/basead/ui/SpreadAnimLayout$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->c:Lcom/anythink/basead/ui/SpreadAnimLayout$a;

    return-object p0
.end method

.method public static synthetic b(Lcom/anythink/basead/ui/SpreadAnimLayout;)I
    .locals 0

    iget p0, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->g:I

    return p0
.end method

.method public static synthetic c(Lcom/anythink/basead/ui/SpreadAnimLayout;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->d:Landroid/graphics/RectF;

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-boolean v0, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->k:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    iget-object v1, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->c:Lcom/anythink/basead/ui/SpreadAnimLayout$a;

    iget v2, v2, Lcom/anythink/basead/ui/SpreadAnimLayout$a;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->c:Lcom/anythink/basead/ui/SpreadAnimLayout$a;

    iget-object v1, v1, Lcom/anythink/basead/ui/SpreadAnimLayout$a;->a:Landroid/graphics/RectF;

    iget v2, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->f:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->d:Landroid/graphics/RectF;

    iget v2, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->f:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget p1, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->g:I

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    iget-boolean v0, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->j:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Lcom/anythink/basead/ui/SpreadAnimLayout$1;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/SpreadAnimLayout$1;-><init>(Lcom/anythink/basead/ui/SpreadAnimLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->b:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    return-void
.end method

.method public setMaxSpreadDistance(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->g:I

    return-void
.end method

.method public setRoundRadius(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->f:I

    return-void
.end method

.method public startSpreadAnimation()V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->j:Z

    iget-boolean v2, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->k:Z

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->d:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->d:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->e:Landroid/graphics/RectF;

    new-instance v2, Lcom/anythink/basead/ui/SpreadAnimLayout$a;

    invoke-direct {v2}, Lcom/anythink/basead/ui/SpreadAnimLayout$a;-><init>()V

    iput-object v2, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->c:Lcom/anythink/basead/ui/SpreadAnimLayout$a;

    const/16 v3, 0xff

    iput v3, v2, Lcom/anythink/basead/ui/SpreadAnimLayout$a;->b:I

    iget-object v3, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->e:Landroid/graphics/RectF;

    iput-object v3, v2, Lcom/anythink/basead/ui/SpreadAnimLayout$a;->a:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v3, v0

    iget v0, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->g:I

    const/4 v4, 0x2

    div-int/2addr v2, v4

    div-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->g:I

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->b:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->h:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->b:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->b:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->b:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/anythink/basead/ui/SpreadAnimLayout$2;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/SpreadAnimLayout$2;-><init>(Lcom/anythink/basead/ui/SpreadAnimLayout;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-boolean v1, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->k:Z

    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/SpreadAnimLayout;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
