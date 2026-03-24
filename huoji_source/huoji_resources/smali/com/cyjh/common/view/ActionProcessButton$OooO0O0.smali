.class public Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/common/view/ActionProcessButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0O0"
.end annotation


# static fields
.field private static final OooOOO:I = -0x80000000

.field private static final OooOOO0:I = -0x4d000000

.field private static final OooOOOO:I = 0x4d000000

.field private static final OooOOOo:I = 0x1a000000

.field private static final OooOOo:I = 0x3e8

.field private static final OooOOo0:I = 0x7d0

.field private static final OooOOoo:Landroid/view/animation/Interpolator;


# instance fields
.field private OooO:I

.field private final OooO00o:Landroid/graphics/Paint;

.field private final OooO0O0:Landroid/graphics/RectF;

.field private OooO0OO:F

.field private OooO0Oo:J

.field private OooO0o:Z

.field private OooO0o0:J

.field private OooO0oO:I

.field private OooO0oo:I

.field private OooOO0:I

.field private OooOO0O:Landroid/view/View;

.field private OooOO0o:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooOOoo:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO00o:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0O0:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooOO0o:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooOO0O:Landroid/view/View;

    const/high16 p1, -0x4d000000

    iput p1, p0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0oO:I

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0oo:I

    const/high16 p1, 0x4d000000    # 1.34217728E8f

    iput p1, p0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO:I

    const/high16 p1, 0x1a000000

    iput p1, p0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooOO0:I

    return-void
.end method

.method private OooO0O0(Landroid/graphics/Canvas;FFIF)V
    .locals 1

    iget-object v0, p0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO00o:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object p3, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooOOoo:Landroid/view/animation/Interpolator;

    invoke-interface {p3, p5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p3

    invoke-virtual {p1, p3, p3}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p3, p0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO00o:Landroid/graphics/Paint;

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private OooO0OO(Landroid/graphics/Canvas;II)V
    .locals 2

    iget-object v0, p0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO00o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0oO:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p2

    int-to-float p3, p3

    iget v0, p0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0OO:F

    mul-float v0, v0, p2

    iget-object v1, p0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO00o:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooOO0o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, v6, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooOO0o:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v8, v0, 0x2

    div-int/lit8 v9, v1, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    iget-object v0, v6, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooOO0o:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-boolean v0, v6, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0o:Z

    const-wide/16 v2, 0x0

    const/4 v11, 0x0

    if-nez v0, :cond_1

    iget-wide v4, v6, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0o0:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v6, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0OO:F

    cmpl-float v1, v0, v11

    if-lez v1, :cond_e

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_e

    invoke-direct {v6, v7, v8, v9}, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0OO(Landroid/graphics/Canvas;II)V

    goto/16 :goto_4

    :cond_1
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-wide v12, v6, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0Oo:J

    sub-long v14, v4, v12

    const-wide/16 v16, 0x7d0

    rem-long v14, v14, v16

    sub-long v12, v4, v12

    div-long v12, v12, v16

    long-to-float v0, v14

    const/high16 v14, 0x41a00000    # 20.0f

    div-float v14, v0, v14

    iget-boolean v0, v6, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0o:Z

    const/4 v15, 0x0

    const/high16 v16, 0x42c80000    # 100.0f

    move-wide/from16 v18, v12

    if-nez v0, :cond_3

    iget-wide v11, v6, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0o0:J

    sub-long v20, v4, v11

    const-wide/16 v22, 0x3e8

    cmp-long v0, v20, v22

    if-ltz v0, :cond_2

    iput-wide v2, v6, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0o0:J

    return-void

    :cond_2
    sub-long/2addr v4, v11

    rem-long v4, v4, v22

    long-to-float v0, v4

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v0, v4

    div-float v0, v0, v16

    int-to-float v4, v8

    sget-object v5, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooOOoo:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float v0, v0, v4

    iget-object v5, v6, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0O0:Landroid/graphics/RectF;

    sub-float v11, v4, v0

    add-float/2addr v4, v0

    int-to-float v0, v1

    const/4 v1, 0x0

    invoke-virtual {v5, v11, v1, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, v6, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0O0:Landroid/graphics/RectF;

    invoke-virtual {v7, v0, v15, v15}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    const/4 v15, 0x1

    :cond_3
    const/high16 v11, 0x42960000    # 75.0f

    const/high16 v12, 0x42480000    # 50.0f

    const/high16 v13, 0x41c80000    # 25.0f

    cmp-long v0, v18, v2

    if-nez v0, :cond_4

    :goto_1
    iget v0, v6, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0oO:I

    :goto_2
    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    cmpl-float v1, v14, v0

    if-ltz v1, :cond_5

    cmpg-float v0, v14, v13

    if-gez v0, :cond_5

    iget v0, v6, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooOO0:I

    goto :goto_2

    :cond_5
    cmpl-float v0, v14, v13

    if-ltz v0, :cond_6

    cmpg-float v0, v14, v12

    if-gez v0, :cond_6

    goto :goto_1

    :cond_6
    cmpl-float v0, v14, v12

    if-ltz v0, :cond_7

    cmpg-float v0, v14, v11

    if-gez v0, :cond_7

    iget v0, v6, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0oo:I

    goto :goto_2

    :cond_7
    iget v0, v6, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO:I

    goto :goto_2

    :goto_3
    const/high16 v18, 0x40000000    # 2.0f

    const/4 v0, 0x0

    cmpl-float v19, v14, v0

    if-ltz v19, :cond_8

    cmpg-float v0, v14, v13

    if-gtz v0, :cond_8

    add-float v0, v14, v13

    mul-float v0, v0, v18

    div-float v5, v0, v16

    int-to-float v2, v8

    int-to-float v3, v9

    iget v4, v6, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0oO:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0O0(Landroid/graphics/Canvas;FFIF)V

    :cond_8
    if-ltz v19, :cond_9

    cmpg-float v0, v14, v12

    if-gtz v0, :cond_9

    mul-float v0, v14, v18

    div-float v5, v0, v16

    int-to-float v2, v8

    int-to-float v3, v9

    iget v4, v6, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0oo:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0O0(Landroid/graphics/Canvas;FFIF)V

    :cond_9
    cmpl-float v0, v14, v13

    if-ltz v0, :cond_a

    cmpg-float v0, v14, v11

    if-gtz v0, :cond_a

    sub-float v0, v14, v13

    mul-float v0, v0, v18

    div-float v5, v0, v16

    int-to-float v2, v8

    int-to-float v3, v9

    iget v4, v6, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0O0(Landroid/graphics/Canvas;FFIF)V

    :cond_a
    cmpl-float v0, v14, v12

    if-ltz v0, :cond_b

    cmpg-float v0, v14, v16

    if-gtz v0, :cond_b

    sub-float v0, v14, v12

    mul-float v0, v0, v18

    div-float v5, v0, v16

    int-to-float v2, v8

    int-to-float v3, v9

    iget v4, v6, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooOO0:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0O0(Landroid/graphics/Canvas;FFIF)V

    :cond_b
    cmpl-float v0, v14, v11

    if-ltz v0, :cond_c

    cmpg-float v0, v14, v16

    if-gtz v0, :cond_c

    sub-float/2addr v14, v11

    mul-float v14, v14, v18

    div-float v5, v14, v16

    int-to-float v2, v8

    int-to-float v3, v9

    iget v4, v6, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0oO:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0O0(Landroid/graphics/Canvas;FFIF)V

    :cond_c
    iget v0, v6, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0OO:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    if-eqz v15, :cond_d

    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, v6, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooOO0o:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-direct {v6, v7, v8, v9}, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0OO(Landroid/graphics/Canvas;II)V

    move v10, v0

    :cond_d
    iget-object v0, v6, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooOO0O:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_e
    :goto_4
    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public OooO0Oo(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooOO0o:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iput p2, v0, Landroid/graphics/Rect;->top:I

    iput p3, v0, Landroid/graphics/Rect;->right:I

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public OooO0o()V
    .locals 2

    iget-boolean v0, p0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0OO:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0Oo:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0o:Z

    iget-object v0, p0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooOO0O:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public OooO0o0(IIII)V
    .locals 0

    iput p1, p0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0oO:I

    iput p2, p0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0oo:I

    iput p3, p0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO:I

    iput p4, p0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooOO0:I

    return-void
.end method
