.class public final Lcom/anythink/expressad/video/dynview/i/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(FLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 5

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p0

    mul-float v2, v1, v1

    iget v3, p1, Landroid/graphics/PointF;->x:F

    mul-float v3, v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, p0

    mul-float v4, v4, v1

    iget v1, p2, Landroid/graphics/PointF;->x:F

    mul-float v1, v1, v4

    add-float/2addr v3, v1

    mul-float p0, p0, p0

    iget v1, p3, Landroid/graphics/PointF;->x:F

    mul-float v1, v1, p0

    add-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, p1

    iget p1, p2, Landroid/graphics/PointF;->y:F

    mul-float v4, v4, p1

    add-float/2addr v2, v4

    iget p1, p3, Landroid/graphics/PointF;->y:F

    mul-float p0, p0, p1

    add-float/2addr v2, p0

    iput v2, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method private static a(FLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 5

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p0

    iget v2, p1, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, v1

    mul-float v2, v2, v1

    mul-float v2, v2, v1

    iget v3, p2, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v3, v3, v4

    mul-float v3, v3, p0

    mul-float v3, v3, v1

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    iget v3, p3, Landroid/graphics/PointF;->x:F

    mul-float v3, v3, v4

    mul-float v3, v3, p0

    mul-float v3, v3, p0

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    iget v3, p4, Landroid/graphics/PointF;->x:F

    mul-float v3, v3, p0

    mul-float v3, v3, p0

    mul-float v3, v3, p0

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float p1, p1, v1

    mul-float p1, p1, v1

    mul-float p1, p1, v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    mul-float p2, p2, v4

    mul-float p2, p2, p0

    mul-float p2, p2, v1

    mul-float p2, p2, v1

    add-float/2addr p1, p2

    iget p2, p3, Landroid/graphics/PointF;->y:F

    mul-float p2, p2, v4

    mul-float p2, p2, p0

    mul-float p2, p2, p0

    mul-float p2, p2, v1

    add-float/2addr p1, p2

    iget p2, p4, Landroid/graphics/PointF;->y:F

    mul-float p2, p2, p0

    mul-float p2, p2, p0

    mul-float p2, p2, p0

    add-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method
