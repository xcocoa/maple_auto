.class public final Lcom/anythink/basead/ui/guidetoclickv2/picverify/b;
.super Lcom/anythink/basead/ui/guidetoclickv2/picverify/a;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-object v0
.end method

.method public final a(I)Landroid/graphics/Path;
    .locals 3

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v2, p1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-object v0
.end method

.method public final a(III)Lcom/anythink/basead/ui/guidetoclickv2/picverify/c;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    int-to-double v0, p1

    const-wide v2, 0x3fc3333333333333L    # 0.15

    mul-double v0, v0, v2

    double-to-int v0, v0

    sub-int/2addr p1, p3

    sub-int/2addr p1, v0

    int-to-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    int-to-double p2, p3

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double p2, p2, v2

    sub-double/2addr v0, p2

    double-to-int p2, v0

    new-instance p3, Lcom/anythink/basead/ui/guidetoclickv2/picverify/c;

    invoke-direct {p3, p1, p2}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/c;-><init>(II)V

    return-object p3
.end method

.method public final a(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {p1, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1, p3}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :array_0
    .array-data 4
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data
.end method

.method public final b()Landroid/graphics/Paint;
    .locals 1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    return-object v0
.end method

.method public final b(III)Lcom/anythink/basead/ui/guidetoclickv2/picverify/c;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    int-to-double v0, p1

    const-wide v2, 0x3fc3333333333333L    # 0.15

    mul-double v0, v0, v2

    double-to-int p1, v0

    int-to-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    int-to-double p2, p3

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double p2, p2, v2

    sub-double/2addr v0, p2

    double-to-int p2, v0

    new-instance p3, Lcom/anythink/basead/ui/guidetoclickv2/picverify/c;

    invoke-direct {p3, p1, p2}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/c;-><init>(II)V

    return-object p3
.end method
