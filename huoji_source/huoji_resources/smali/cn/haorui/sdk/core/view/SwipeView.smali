.class public Lcn/haorui/sdk/core/view/SwipeView;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/core/view/SwipeView$OnSwipeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SwipeView"


# instance fields
.field private clkType:I

.field private distance:I

.field private downloadX:F

.field private downloadY:F

.field private mListener:Lcn/haorui/sdk/core/view/SwipeView$OnSwipeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private maxMoveX:F

.field private maxMoveY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/haorui/sdk/core/view/SwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/haorui/sdk/core/view/SwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/SwipeView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/core/view/SwipeView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/core/view/SwipeView;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcn/haorui/sdk/core/view/SwipeView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/SwipeView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/SwipeView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/SwipeView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/SwipeView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/haorui/sdk/core/view/SwipeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v5, p0, Lcn/haorui/sdk/core/view/SwipeView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v4, p1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    iget p1, p0, Lcn/haorui/sdk/core/view/SwipeView;->downloadY:F

    sub-float p1, v3, p1

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    iget v2, p0, Lcn/haorui/sdk/core/view/SwipeView;->maxMoveY:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_1

    iget p1, p0, Lcn/haorui/sdk/core/view/SwipeView;->downloadY:F

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcn/haorui/sdk/core/view/SwipeView;->maxMoveY:F

    :cond_1
    iget p1, p0, Lcn/haorui/sdk/core/view/SwipeView;->maxMoveX:F

    iget v2, p0, Lcn/haorui/sdk/core/view/SwipeView;->downloadX:F

    sub-float/2addr v0, v2

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    iput v0, p0, Lcn/haorui/sdk/core/view/SwipeView;->maxMoveX:F

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "maxMoveX="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/haorui/sdk/core/view/SwipeView;->maxMoveX:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",maxMoveY="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/haorui/sdk/core/view/SwipeView;->maxMoveY:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",distance="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/haorui/sdk/core/view/SwipeView;->distance:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SwipeView"

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcn/haorui/sdk/core/view/SwipeView;->clkType:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcn/haorui/sdk/core/view/SwipeView;->maxMoveY:F

    iget v3, p0, Lcn/haorui/sdk/core/view/SwipeView;->distance:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    :goto_0
    iget-object p1, p0, Lcn/haorui/sdk/core/view/SwipeView;->mListener:Lcn/haorui/sdk/core/view/SwipeView$OnSwipeListener;

    invoke-interface {p1}, Lcn/haorui/sdk/core/view/SwipeView$OnSwipeListener;->onSwipe()V

    iget-object p1, p0, Lcn/haorui/sdk/core/view/SwipeView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iput v2, p0, Lcn/haorui/sdk/core/view/SwipeView;->maxMoveX:F

    iput v2, p0, Lcn/haorui/sdk/core/view/SwipeView;->maxMoveY:F

    return v1

    :cond_3
    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    iget p1, p0, Lcn/haorui/sdk/core/view/SwipeView;->maxMoveX:F

    iget v0, p0, Lcn/haorui/sdk/core/view/SwipeView;->distance:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcn/haorui/sdk/core/view/SwipeView;->downloadX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcn/haorui/sdk/core/view/SwipeView;->downloadY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcn/haorui/sdk/core/view/SwipeView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_5
    :goto_1
    return v1
.end method

.method public setMoveDistance(II)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/view/SwipeView;->clkType:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int p1, p1, p2

    div-int/lit8 p1, p1, 0x64

    iput p1, p0, Lcn/haorui/sdk/core/view/SwipeView;->distance:I

    return-void
.end method

.method public setOnSwipeListener(Lcn/haorui/sdk/core/view/SwipeView$OnSwipeListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/view/SwipeView;->mListener:Lcn/haorui/sdk/core/view/SwipeView$OnSwipeListener;

    return-void
.end method
