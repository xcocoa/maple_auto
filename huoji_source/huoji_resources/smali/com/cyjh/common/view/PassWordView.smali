.class public Lcom/cyjh/common/view/PassWordView;
.super Landroid/view/View;
.source ""


# instance fields
.field private OoooOoO:Landroid/graphics/Paint;

.field private OoooOoo:Landroid/os/Handler;

.field private Ooooo00:Z

.field private Ooooo0o:Z

.field private OooooO0:Z

.field private OooooOO:I

.field private OooooOo:I

.field private Oooooo:I

.field private Oooooo0:I

.field private OoooooO:I

.field private Ooooooo:I

.field private o00O0O:I

.field private o00Oo0:Ljava/lang/String;

.field private o00Ooo:Landroid/content/Context;

.field private o00o0O:Ljava/lang/String;

.field private o00ooo:I

.field private o0OoOo0:Z

.field private oo000o:I

.field private ooOO:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cyjh/common/view/PassWordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cyjh/common/view/PassWordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/cyjh/common/view/PassWordView;->Ooooo0o:Z

    iput p2, p0, Lcom/cyjh/common/view/PassWordView;->OoooooO:I

    iput p2, p0, Lcom/cyjh/common/view/PassWordView;->Ooooooo:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/cyjh/common/view/PassWordView;->o0OoOo0:Z

    const/16 p3, 0x28

    iput p3, p0, Lcom/cyjh/common/view/PassWordView;->ooOO:I

    iput p3, p0, Lcom/cyjh/common/view/PassWordView;->o00O0O:I

    const-string p3, ""

    iput-object p3, p0, Lcom/cyjh/common/view/PassWordView;->o00Oo0:Ljava/lang/String;

    const-string p3, "*"

    iput-object p3, p0, Lcom/cyjh/common/view/PassWordView;->o00o0O:Ljava/lang/String;

    const/16 p3, 0x12

    iput p3, p0, Lcom/cyjh/common/view/PassWordView;->o00ooo:I

    const/4 p3, 0x4

    iput p3, p0, Lcom/cyjh/common/view/PassWordView;->oo000o:I

    iput-object p1, p0, Lcom/cyjh/common/view/PassWordView;->o00Ooo:Landroid/content/Context;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoO:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoO:Landroid/graphics/Paint;

    iget p2, p0, Lcom/cyjh/common/view/PassWordView;->oo000o:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoO:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/CornerPathEffect;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p2, p3}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/cyjh/common/view/PassWordView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cyjh/common/view/PassWordView;->OooooO0:Z

    return p0
.end method

.method public static synthetic OooO0O0(Lcom/cyjh/common/view/PassWordView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cyjh/common/view/PassWordView;->OooooO0:Z

    return p1
.end method

.method public static synthetic OooO0OO(Lcom/cyjh/common/view/PassWordView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoo:Landroid/os/Handler;

    return-object p0
.end method

.method private OooO0Oo(Landroid/graphics/Canvas;)V
    .locals 9

    iget-boolean v0, p0, Lcom/cyjh/common/view/PassWordView;->Ooooo0o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoO:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/cyjh/common/view/PassWordView;->o00Ooo:Landroid/content/Context;

    iget v2, p0, Lcom/cyjh/common/view/PassWordView;->OooooOO:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoO:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/cyjh/common/view/PassWordView;->o00Ooo:Landroid/content/Context;

    iget v2, p0, Lcom/cyjh/common/view/PassWordView;->OooooOo:I

    :goto_0
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoO:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/cyjh/common/view/PassWordView;->OoooooO:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoO:Landroid/graphics/Paint;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v7, v0

    iget-object v8, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoO:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x5

    int-to-float v2, v3

    iget-object v3, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoO:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method private OooO0o(Landroid/graphics/Canvas;)V
    .locals 8

    iget-boolean v0, p0, Lcom/cyjh/common/view/PassWordView;->OooooO0:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/cyjh/common/view/PassWordView;->o0OoOo0:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0xa

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoO:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoO:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/cyjh/common/view/PassWordView;->o00Ooo:Landroid/content/Context;

    iget v3, p0, Lcom/cyjh/common/view/PassWordView;->Oooooo0:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    int-to-float v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    int-to-float v6, v1

    iget-object v7, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoO:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private OooO0o0(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v0, p0, Lcom/cyjh/common/view/PassWordView;->Ooooo00:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoO:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/cyjh/common/view/PassWordView;->o00Ooo:Landroid/content/Context;

    iget v2, p0, Lcom/cyjh/common/view/PassWordView;->Oooooo:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoO:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/cyjh/common/view/PassWordView;->Ooooooo:I

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoO:Landroid/graphics/Paint;

    iget v2, p0, Lcom/cyjh/common/view/PassWordView;->o00ooo:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoO:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/cyjh/common/view/PassWordView;->o00Oo0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/2addr v2, v1

    int-to-float v2, v2

    iget-object v4, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoO:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoO:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    const/high16 v4, 0x40a00000    # 5.0f

    div-float v4, v0, v4

    add-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v1

    int-to-float v1, v4

    div-float/2addr v0, v3

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->o00Oo0:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoO:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v1

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoO:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/cyjh/common/view/PassWordView;->o00o0O:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/2addr v2, v1

    int-to-float v2, v2

    iget-object v4, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoO:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoO:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    const/high16 v4, 0x40400000    # 3.0f

    div-float v4, v0, v4

    add-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v1

    int-to-float v1, v4

    div-float/2addr v0, v3

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->o00o0O:Ljava/lang/String;

    :goto_0
    iget-object v3, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoO:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/2addr v2, v1

    int-to-float v1, v2

    const/high16 v2, 0x41000000    # 8.0f

    iget-object v3, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoO:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public OooO0oO()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/common/view/PassWordView;->Ooooo0o:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/common/view/PassWordView;->Ooooo00:Z

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoo:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoo:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoo:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/cyjh/common/view/PassWordView;->o0OoOo0:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoo:Landroid/os/Handler;

    new-instance v1, Lcom/cyjh/common/view/PassWordView$OooO00o;

    invoke-direct {v1, p0}, Lcom/cyjh/common/view/PassWordView$OooO00o;-><init>(Lcom/cyjh/common/view/PassWordView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public OooO0oo(Z)V
    .locals 2

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoo:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cyjh/common/view/PassWordView;->Ooooo0o:Z

    iput-boolean p1, p0, Lcom/cyjh/common/view/PassWordView;->Ooooo00:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/cyjh/common/view/PassWordView;->Ooooo0o:Z

    iput-boolean v0, p0, Lcom/cyjh/common/view/PassWordView;->Ooooo00:Z

    :goto_0
    iput-boolean v0, p0, Lcom/cyjh/common/view/PassWordView;->OooooO0:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->OoooOoo:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/PassWordView;->OooO0Oo(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/PassWordView;->OooO0o(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/PassWordView;->OooO0o0(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/cyjh/common/view/PassWordView;->ooOO:I

    if-ne p1, v2, :cond_1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    if-ne p2, v3, :cond_2

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/cyjh/common/view/PassWordView;->o00O0O:I

    if-ne p2, v2, :cond_3

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, p1

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setDrawTxtContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/common/view/PassWordView;->o00o0O:Ljava/lang/String;

    return-void
.end method

.method public setInputState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cyjh/common/view/PassWordView;->Ooooo0o:Z

    return-void
.end method

.method public setInputStateColor(I)V
    .locals 0

    iput p1, p0, Lcom/cyjh/common/view/PassWordView;->OooooOO:I

    return-void
.end method

.method public setInputStateTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/cyjh/common/view/PassWordView;->Oooooo:I

    return-void
.end method

.method public setNoinputColor(I)V
    .locals 0

    iput p1, p0, Lcom/cyjh/common/view/PassWordView;->OooooOo:I

    return-void
.end method

.method public setRemindLineColor(I)V
    .locals 0

    iput p1, p0, Lcom/cyjh/common/view/PassWordView;->Oooooo0:I

    return-void
.end method

.method public setmBoxDrawType(I)V
    .locals 0

    iput p1, p0, Lcom/cyjh/common/view/PassWordView;->OoooooO:I

    return-void
.end method

.method public setmDrawBoxLineSize(I)V
    .locals 0

    iput p1, p0, Lcom/cyjh/common/view/PassWordView;->oo000o:I

    return-void
.end method

.method public setmDrawTxtSize(I)V
    .locals 0

    iput p1, p0, Lcom/cyjh/common/view/PassWordView;->o00ooo:I

    return-void
.end method

.method public setmIsShowRemindLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cyjh/common/view/PassWordView;->o0OoOo0:Z

    return-void
.end method

.method public setmPassText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/common/view/PassWordView;->o00Oo0:Ljava/lang/String;

    return-void
.end method

.method public setmShowPassType(I)V
    .locals 0

    iput p1, p0, Lcom/cyjh/common/view/PassWordView;->Ooooooo:I

    return-void
.end method
