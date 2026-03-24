.class public Lcn/haorui/sdk/core/view/RoundImageView;
.super Lcn/haorui/sdk/core/view/gif/GifImageView;
.source ""


# instance fields
.field private borderColor:I

.field private borderRadii:[F

.field private borderRectF:Landroid/graphics/RectF;

.field private borderWidth:I

.field private context:Landroid/content/Context;

.field private cornerBottomLeftRadius:I

.field private cornerBottomRightRadius:I

.field private cornerRadius:I

.field private cornerTopLeftRadius:I

.field private cornerTopRightRadius:I

.field private height:I

.field private innerBorderColor:I

.field private innerBorderWidth:I

.field private isCircle:Z

.field private isCoverSrc:Z

.field private maskColor:I

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private radius:F

.field private srcPath:Landroid/graphics/Path;

.field private srcRadii:[F

.field private srcRectF:Landroid/graphics/RectF;

.field private width:I

.field private xfermode:Landroid/graphics/Xfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/haorui/sdk/core/view/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/haorui/sdk/core/view/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/core/view/gif/GifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p3, -0x1

    iput p3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->borderColor:I

    iput p3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->innerBorderColor:I

    iput-object p1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->context:Landroid/content/Context;

    sget-object p3, Lcn/haorui/sdk/R$styleable;->RoundImageView:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    if-ge v0, p2, :cond_c

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p2

    sget p3, Lcn/haorui/sdk/R$styleable;->RoundImageView_adsail_is_cover_src:I

    if-ne p2, p3, :cond_0

    iget-boolean p3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->isCoverSrc:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->isCoverSrc:Z

    goto/16 :goto_1

    :cond_0
    sget p3, Lcn/haorui/sdk/R$styleable;->RoundImageView_adsail_is_circle:I

    if-ne p2, p3, :cond_1

    iget-boolean p3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->isCircle:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->isCircle:Z

    goto/16 :goto_1

    :cond_1
    sget p3, Lcn/haorui/sdk/R$styleable;->RoundImageView_adsail_border_width:I

    if-ne p2, p3, :cond_2

    iget p3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->borderWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->borderWidth:I

    goto/16 :goto_1

    :cond_2
    sget p3, Lcn/haorui/sdk/R$styleable;->RoundImageView_adsail_border_color:I

    if-ne p2, p3, :cond_3

    iget p3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->borderColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->borderColor:I

    goto/16 :goto_1

    :cond_3
    sget p3, Lcn/haorui/sdk/R$styleable;->RoundImageView_adsail_inner_border_width:I

    if-ne p2, p3, :cond_4

    iget p3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->innerBorderWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->innerBorderWidth:I

    goto :goto_1

    :cond_4
    sget p3, Lcn/haorui/sdk/R$styleable;->RoundImageView_adsail_inner_border_color:I

    if-ne p2, p3, :cond_5

    iget p3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->innerBorderColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->innerBorderColor:I

    goto :goto_1

    :cond_5
    sget p3, Lcn/haorui/sdk/R$styleable;->RoundImageView_adsail_corner_radius:I

    if-ne p2, p3, :cond_6

    iget p3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->cornerRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->cornerRadius:I

    goto :goto_1

    :cond_6
    sget p3, Lcn/haorui/sdk/R$styleable;->RoundImageView_adsail_corner_top_left_radius:I

    if-ne p2, p3, :cond_7

    iget p3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->cornerTopLeftRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->cornerTopLeftRadius:I

    goto :goto_1

    :cond_7
    sget p3, Lcn/haorui/sdk/R$styleable;->RoundImageView_adsail_corner_top_right_radius:I

    if-ne p2, p3, :cond_8

    iget p3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->cornerTopRightRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->cornerTopRightRadius:I

    goto :goto_1

    :cond_8
    sget p3, Lcn/haorui/sdk/R$styleable;->RoundImageView_adsail_corner_bottom_left_radius:I

    if-ne p2, p3, :cond_9

    iget p3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->cornerBottomLeftRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->cornerBottomLeftRadius:I

    goto :goto_1

    :cond_9
    sget p3, Lcn/haorui/sdk/R$styleable;->RoundImageView_adsail_corner_bottom_right_radius:I

    if-ne p2, p3, :cond_a

    iget p3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->cornerBottomRightRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->cornerBottomRightRadius:I

    goto :goto_1

    :cond_a
    sget p3, Lcn/haorui/sdk/R$styleable;->RoundImageView_adsail_mask_color:I

    if-ne p2, p3, :cond_b

    iget p3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->maskColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->maskColor:I

    :cond_b
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/16 p1, 0x8

    new-array p2, p1, [F

    iput-object p2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->borderRadii:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->srcRadii:[F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->borderRectF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->srcRectF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->path:Landroid/graphics/Path;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1b

    if-gt p1, p2, :cond_d

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->xfermode:Landroid/graphics/Xfermode;

    goto :goto_2

    :cond_d
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->xfermode:Landroid/graphics/Xfermode;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->srcPath:Landroid/graphics/Path;

    :goto_2
    invoke-direct {p0}, Lcn/haorui/sdk/core/view/RoundImageView;->calculateRadii()V

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/RoundImageView;->clearInnerBorderWidth()V

    return-void
.end method

.method private calculateRadii()V
    .locals 15

    iget-boolean v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->isCircle:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->cornerRadius:I

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-lez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->borderRadii:[F

    array-length v3, v0

    if-ge v2, v3, :cond_2

    iget v3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->cornerRadius:I

    int-to-float v3, v3

    aput v3, v0, v2

    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->srcRadii:[F

    iget v4, p0, Lcn/haorui/sdk/core/view/RoundImageView;->borderWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->borderRadii:[F

    iget v3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->cornerTopLeftRadius:I

    int-to-float v3, v3

    const/4 v4, 0x1

    aput v3, v0, v4

    aput v3, v0, v2

    iget v5, p0, Lcn/haorui/sdk/core/view/RoundImageView;->cornerTopRightRadius:I

    int-to-float v5, v5

    const/4 v6, 0x3

    aput v5, v0, v6

    const/4 v7, 0x2

    aput v5, v0, v7

    iget v8, p0, Lcn/haorui/sdk/core/view/RoundImageView;->cornerBottomRightRadius:I

    int-to-float v8, v8

    const/4 v9, 0x5

    aput v8, v0, v9

    const/4 v10, 0x4

    aput v8, v0, v10

    iget v11, p0, Lcn/haorui/sdk/core/view/RoundImageView;->cornerBottomLeftRadius:I

    int-to-float v11, v11

    const/4 v12, 0x7

    aput v11, v0, v12

    const/4 v13, 0x6

    aput v11, v0, v13

    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->srcRadii:[F

    iget v14, p0, Lcn/haorui/sdk/core/view/RoundImageView;->borderWidth:I

    int-to-float v14, v14

    div-float/2addr v14, v1

    sub-float/2addr v3, v14

    aput v3, v0, v4

    aput v3, v0, v2

    sub-float/2addr v5, v14

    aput v5, v0, v6

    aput v5, v0, v7

    sub-float/2addr v8, v14

    aput v8, v0, v9

    aput v8, v0, v10

    sub-float/2addr v11, v14

    aput v11, v0, v12

    aput v11, v0, v13

    :cond_2
    return-void
.end method

.method private calculateRadiiAndRectF(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->cornerRadius:I

    :cond_0
    invoke-direct {p0}, Lcn/haorui/sdk/core/view/RoundImageView;->calculateRadii()V

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/RoundImageView;->initBorderRectF()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private clearInnerBorderWidth()V
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->isCircle:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->innerBorderWidth:I

    :cond_0
    return-void
.end method

.method private drawBorders(Landroid/graphics/Canvas;)V
    .locals 10

    iget-boolean v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->isCircle:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->borderWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    if-lez v0, :cond_0

    iget v2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->borderColor:I

    iget v3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->radius:F

    int-to-float v4, v0

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    invoke-direct {p0, p1, v0, v2, v3}, Lcn/haorui/sdk/core/view/RoundImageView;->drawCircleBorder(Landroid/graphics/Canvas;IIF)V

    :cond_0
    iget v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->innerBorderWidth:I

    if-lez v0, :cond_2

    iget v2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->innerBorderColor:I

    iget v3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->radius:F

    iget v4, p0, Lcn/haorui/sdk/core/view/RoundImageView;->borderWidth:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v0

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    invoke-direct {p0, p1, v0, v2, v3}, Lcn/haorui/sdk/core/view/RoundImageView;->drawCircleBorder(Landroid/graphics/Canvas;IIF)V

    goto :goto_0

    :cond_1
    iget v6, p0, Lcn/haorui/sdk/core/view/RoundImageView;->borderWidth:I

    if-lez v6, :cond_2

    iget v7, p0, Lcn/haorui/sdk/core/view/RoundImageView;->borderColor:I

    iget-object v8, p0, Lcn/haorui/sdk/core/view/RoundImageView;->borderRectF:Landroid/graphics/RectF;

    iget-object v9, p0, Lcn/haorui/sdk/core/view/RoundImageView;->borderRadii:[F

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcn/haorui/sdk/core/view/RoundImageView;->drawRectFBorder(Landroid/graphics/Canvas;IILandroid/graphics/RectF;[F)V

    :cond_2
    :goto_0
    return-void
.end method

.method private drawCircleBorder(Landroid/graphics/Canvas;IIF)V
    .locals 2

    invoke-direct {p0, p2, p3}, Lcn/haorui/sdk/core/view/RoundImageView;->initBorderPaint(II)V

    iget-object p2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->path:Landroid/graphics/Path;

    iget p3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->width:I

    int-to-float p3, p3

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    iget v1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p3, v1, p4, v0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object p2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawRectFBorder(Landroid/graphics/Canvas;IILandroid/graphics/RectF;[F)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcn/haorui/sdk/core/view/RoundImageView;->initBorderPaint(II)V

    iget-object p2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->path:Landroid/graphics/Path;

    sget-object p3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p4, p5, p3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object p2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private initBorderPaint(II)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private initBorderRectF()V
    .locals 4

    iget-boolean v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->isCircle:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->borderRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->borderWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->width:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iget v3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->height:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_0
    return-void
.end method

.method private initSrcRectF()V
    .locals 6

    iget-boolean v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->isCircle:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->width:I

    iget v1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->radius:F

    iget-object v2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->srcRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->width:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float v4, v3, v0

    iget v5, p0, Lcn/haorui/sdk/core/view/RoundImageView;->height:I

    int-to-float v5, v5

    div-float/2addr v5, v1

    sub-float v1, v5, v0

    add-float/2addr v3, v0

    add-float/2addr v5, v0

    invoke-virtual {v2, v4, v1, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->srcRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->height:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-boolean v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->isCoverSrc:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->borderRectF:Landroid/graphics/RectF;

    iput-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->srcRectF:Landroid/graphics/RectF;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public isCircle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->isCircle:Z

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/RoundImageView;->clearInnerBorderWidth()V

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/RoundImageView;->initSrcRectF()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public isCoverSrc(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->isCoverSrc:Z

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/RoundImageView;->initSrcRectF()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->srcRectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    iget-boolean v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->isCoverSrc:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    iget v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->width:I

    iget v3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->borderWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v4, v0, v3

    iget v5, p0, Lcn/haorui/sdk/core/view/RoundImageView;->innerBorderWidth:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v4, v4, v6

    int-to-float v0, v0

    div-float/2addr v4, v0

    iget v7, p0, Lcn/haorui/sdk/core/view/RoundImageView;->height:I

    sub-int v3, v7, v3

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float v3, v3, v6

    int-to-float v5, v7

    div-float/2addr v3, v5

    div-float/2addr v0, v2

    div-float/2addr v5, v2

    invoke-virtual {p1, v4, v3, v0, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->isCircle:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->path:Landroid/graphics/Path;

    iget v3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->width:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v4, p0, Lcn/haorui/sdk/core/view/RoundImageView;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget v2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->radius:F

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->srcRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/haorui/sdk/core/view/RoundImageView;->srcRadii:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    :goto_0
    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->xfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-gt v0, v2, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->srcPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->srcRectF:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->srcPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->path:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->srcPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->srcPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    :goto_1
    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->maskColor:I

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-direct {p0, p1}, Lcn/haorui/sdk/core/view/RoundImageView;->drawBorders(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    iput p1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->width:I

    iput p2, p0, Lcn/haorui/sdk/core/view/RoundImageView;->height:I

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/RoundImageView;->initBorderRectF()V

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/RoundImageView;->initSrcRectF()V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->borderColor:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->context:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/utils/DimensionUtils;->dip2px(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->borderWidth:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/core/view/RoundImageView;->calculateRadiiAndRectF(Z)V

    return-void
.end method

.method public setCornerBottomLeftRadius(I)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->context:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/utils/DimensionUtils;->dip2px(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->cornerBottomLeftRadius:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcn/haorui/sdk/core/view/RoundImageView;->calculateRadiiAndRectF(Z)V

    return-void
.end method

.method public setCornerBottomRightRadius(I)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->context:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/utils/DimensionUtils;->dip2px(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->cornerBottomRightRadius:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcn/haorui/sdk/core/view/RoundImageView;->calculateRadiiAndRectF(Z)V

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->context:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/utils/DimensionUtils;->dip2px(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->cornerRadius:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/core/view/RoundImageView;->calculateRadiiAndRectF(Z)V

    return-void
.end method

.method public setCornerTopLeftRadius(I)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->context:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/utils/DimensionUtils;->dip2px(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->cornerTopLeftRadius:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcn/haorui/sdk/core/view/RoundImageView;->calculateRadiiAndRectF(Z)V

    return-void
.end method

.method public setCornerTopRightRadius(I)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->context:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/utils/DimensionUtils;->dip2px(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->cornerTopRightRadius:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcn/haorui/sdk/core/view/RoundImageView;->calculateRadiiAndRectF(Z)V

    return-void
.end method

.method public setInnerBorderColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->innerBorderColor:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setInnerBorderWidth(I)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/view/RoundImageView;->context:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/utils/DimensionUtils;->dip2px(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->innerBorderWidth:I

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/RoundImageView;->clearInnerBorderWidth()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setMaskColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcn/haorui/sdk/core/view/RoundImageView;->maskColor:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
