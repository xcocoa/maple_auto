.class public Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar$OnSkipListener;
    }
.end annotation


# instance fields
.field public ARC_WIDTH:F

.field public INNER_PADDING:F

.field public RADIUS:F

.field private final SPACE_TIME_ANGLE:I

.field public TEXT_SIZE:F

.field private mCurrentTime:I

.field private mInnerCircleRadius:F

.field public mInnerCriclePaint:Landroid/graphics/Paint;

.field public mMeasuresTextWidth:F

.field private mOnSkipListener:Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar$OnSkipListener;

.field public mOutArcPaint:Landroid/graphics/Paint;

.field private mOutArcRadius:F

.field public mTextPaint:Landroid/graphics/Paint;

.field private mTotalTime:I

.field private rectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const p1, 0x400ccccd    # 2.2f

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->ARC_WIDTH:F

    const p1, 0x4141999a    # 12.1f

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->TEXT_SIZE:F

    const/high16 p1, 0x41200000    # 10.0f

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->INNER_PADDING:F

    const/high16 p1, 0x41780000    # 15.5f

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->RADIUS:F

    const/4 p1, 0x0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mCurrentTime:I

    const/16 p1, 0x1388

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mTotalTime:I

    const p1, 0x134139a

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->SPACE_TIME_ANGLE:I

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x400ccccd    # 2.2f

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->ARC_WIDTH:F

    const p1, 0x4141999a    # 12.1f

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->TEXT_SIZE:F

    const/high16 p1, 0x41200000    # 10.0f

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->INNER_PADDING:F

    const/high16 p1, 0x41780000    # 15.5f

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->RADIUS:F

    const/4 p1, 0x0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mCurrentTime:I

    const/16 p1, 0x1388

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mTotalTime:I

    const p1, 0x134139a

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->SPACE_TIME_ANGLE:I

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x400ccccd    # 2.2f

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->ARC_WIDTH:F

    const p1, 0x4141999a    # 12.1f

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->TEXT_SIZE:F

    const/high16 p1, 0x41200000    # 10.0f

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->INNER_PADDING:F

    const/high16 p1, 0x41780000    # 15.5f

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->RADIUS:F

    const/4 p1, 0x0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mCurrentTime:I

    const/16 p1, 0x1388

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mTotalTime:I

    const p1, 0x134139a

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->SPACE_TIME_ANGLE:I

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->init()V

    return-void
.end method

.method private init()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->ARC_WIDTH:F

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v2

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->ARC_WIDTH:F

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->TEXT_SIZE:F

    mul-float v1, v1, v2

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->TEXT_SIZE:F

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->INNER_PADDING:F

    mul-float v1, v1, v2

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->INNER_PADDING:F

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->RADIUS:F

    mul-float v1, v1, v2

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->RADIUS:F

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->TEXT_SIZE:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mTextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mTextPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mTextPaint:Landroid/graphics/Paint;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v0, v0, v3

    const/4 v3, 0x0

    const v4, -0x777778

    invoke-virtual {v1, v0, v3, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mInnerCriclePaint:Landroid/graphics/Paint;

    const-string v1, "#b7ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mInnerCriclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mInnerCriclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->ARC_WIDTH:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mInnerCriclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mOutArcPaint:Landroid/graphics/Paint;

    const-string v1, "#42c1f0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mOutArcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mOutArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->ARC_WIDTH:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mOutArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mTextPaint:Landroid/graphics/Paint;

    const-string v1, "999"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mMeasuresTextWidth:F

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->RADIUS:F

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mInnerCircleRadius:F

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mOutArcRadius:F

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->ARC_WIDTH:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    iget v5, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mOutArcRadius:F

    mul-float v5, v5, v2

    sub-float/2addr v5, v1

    sub-float/2addr v5, v4

    invoke-direct {v0, v3, v3, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->rectF:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->rectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mInnerCriclePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v3, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mCurrentTime:I

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mTotalTime:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v6, v0, v2

    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->rectF:Landroid/graphics/RectF;

    iget-object v8, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mOutArcPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v0

    div-float/2addr v2, v1

    sub-float/2addr v3, v2

    float-to-int v0, v3

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mTotalTime:I

    iget v3, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mCurrentTime:I

    sub-int/2addr v2, v3

    div-int/lit16 v2, v2, 0x3e8

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mTextPaint:Landroid/graphics/Paint;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v1

    sub-float/2addr v4, v3

    int-to-float v0, v0

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    iget p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mOutArcRadius:F

    mul-float p1, p1, v1

    float-to-int p1, p1

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-ne v0, v2, :cond_1

    iget p2, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mOutArcRadius:F

    mul-float p2, p2, v1

    float-to-int p2, p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mOnSkipListener:Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar$OnSkipListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar$OnSkipListener;->onSkip()V

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    :goto_0
    return v0
.end method

.method public refreshProcess(I)V
    .locals 1

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mCurrentTime:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mCurrentTime:I

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mTotalTime:I

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mOnSkipListener:Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar$OnSkipListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar$OnSkipListener;->onSkip()V

    :cond_0
    return-void
.end method

.method public setOnSkipListener(Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar$OnSkipListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mOnSkipListener:Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar$OnSkipListener;

    return-void
.end method

.method public setmTotalTime(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->mTotalTime:I

    return-void
.end method
