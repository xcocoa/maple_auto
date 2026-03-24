.class public Lz2/ll;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Landroidx/core/graphics/drawable/TintAwareDrawable;


# annotations
.annotation build Lz2/rk;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# instance fields
.field private final OoooOoO:Landroid/graphics/Paint;

.field private final OoooOoo:[Landroid/graphics/Matrix;

.field private final Ooooo00:[Landroid/graphics/Matrix;

.field private final Ooooo0o:[Lz2/nl;

.field private final OooooO0:Landroid/graphics/Matrix;

.field private final OooooOO:Landroid/graphics/Path;

.field private final OooooOo:Landroid/graphics/PointF;

.field private final Oooooo:Landroid/graphics/Region;

.field private final Oooooo0:Lz2/nl;

.field private final OoooooO:Landroid/graphics/Region;

.field private final Ooooooo:[F

.field private o00O0O:Z

.field private o00Oo0:Z

.field private o00Ooo:F

.field private o00o0O:I

.field private o00oO0O:F

.field private o00oO0o:I

.field private o00ooo:I

.field private o0OOO0o:Landroid/graphics/PorterDuff$Mode;

.field private o0Oo0oo:Landroid/content/res/ColorStateList;

.field private final o0OoOo0:[F

.field private o0ooOO0:F

.field private o0ooOOo:Landroid/graphics/Paint$Style;

.field private o0ooOoO:Landroid/graphics/PorterDuffColorFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private oo000o:I

.field private ooOO:Lz2/ol;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lz2/ll;-><init>(Lz2/ol;)V

    return-void
.end method

.method public constructor <init>(Lz2/ol;)V
    .locals 5
    .param p1    # Lz2/ol;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lz2/ll;->OoooOoO:Landroid/graphics/Paint;

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lz2/ll;->OoooOoo:[Landroid/graphics/Matrix;

    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lz2/ll;->Ooooo00:[Landroid/graphics/Matrix;

    new-array v1, v0, [Lz2/nl;

    iput-object v1, p0, Lz2/ll;->Ooooo0o:[Lz2/nl;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lz2/ll;->OooooO0:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lz2/ll;->OooooOO:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lz2/ll;->OooooOo:Landroid/graphics/PointF;

    new-instance v1, Lz2/nl;

    invoke-direct {v1}, Lz2/nl;-><init>()V

    iput-object v1, p0, Lz2/ll;->Oooooo0:Lz2/nl;

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lz2/ll;->Oooooo:Landroid/graphics/Region;

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lz2/ll;->OoooooO:Landroid/graphics/Region;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iput-object v2, p0, Lz2/ll;->Ooooooo:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lz2/ll;->o0OoOo0:[F

    const/4 v1, 0x0

    iput-object v1, p0, Lz2/ll;->ooOO:Lz2/ol;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lz2/ll;->o00O0O:Z

    iput-boolean v2, p0, Lz2/ll;->o00Oo0:Z

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lz2/ll;->o00Ooo:F

    const/high16 v4, -0x1000000

    iput v4, p0, Lz2/ll;->o00o0O:I

    const/4 v4, 0x5

    iput v4, p0, Lz2/ll;->o00ooo:I

    const/16 v4, 0xa

    iput v4, p0, Lz2/ll;->oo000o:I

    const/16 v4, 0xff

    iput v4, p0, Lz2/ll;->o00oO0o:I

    iput v3, p0, Lz2/ll;->o00oO0O:F

    const/4 v3, 0x0

    iput v3, p0, Lz2/ll;->o0ooOO0:F

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v3, p0, Lz2/ll;->o0ooOOo:Landroid/graphics/Paint$Style;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v3, p0, Lz2/ll;->o0OOO0o:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lz2/ll;->o0Oo0oo:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lz2/ll;->ooOO:Lz2/ol;

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object p1, p0, Lz2/ll;->OoooOoo:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    aput-object v1, p1, v2

    iget-object p1, p0, Lz2/ll;->Ooooo00:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    aput-object v1, p1, v2

    iget-object p1, p0, Lz2/ll;->Ooooo0o:[Lz2/nl;

    new-instance v1, Lz2/nl;

    invoke-direct {v1}, Lz2/nl;-><init>()V

    aput-object v1, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private OooO00o(III)F
    .locals 5

    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lz2/ll;->OooooOo:Landroid/graphics/PointF;

    invoke-direct {p0, v0, p2, p3, v1}, Lz2/ll;->OooO0o0(IIILandroid/graphics/PointF;)V

    iget-object v0, p0, Lz2/ll;->OooooOo:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    add-int/lit8 v3, p1, 0x1

    rem-int/lit8 v3, v3, 0x4

    invoke-direct {p0, v3, p2, p3, v0}, Lz2/ll;->OooO0o0(IIILandroid/graphics/PointF;)V

    iget-object v0, p0, Lz2/ll;->OooooOo:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1, p2, p3, v0}, Lz2/ll;->OooO0o0(IIILandroid/graphics/PointF;)V

    iget-object p1, p0, Lz2/ll;->OooooOo:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p2

    sub-float/2addr v2, p1

    sub-float/2addr v3, p2

    sub-float/2addr v4, p1

    float-to-double p1, v2

    float-to-double v0, v1

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    double-to-float p1, p1

    float-to-double p2, v4

    float-to-double v0, v3

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p2

    double-to-float p2, p2

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_0

    float-to-double p1, p1

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr p1, v0

    double-to-float p1, p1

    :cond_0
    return p1
.end method

.method private OooO0O0(III)F
    .locals 3

    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lz2/ll;->OooooOo:Landroid/graphics/PointF;

    invoke-direct {p0, p1, p2, p3, v1}, Lz2/ll;->OooO0o0(IIILandroid/graphics/PointF;)V

    iget-object p1, p0, Lz2/ll;->OooooOo:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, p2, p3, p1}, Lz2/ll;->OooO0o0(IIILandroid/graphics/PointF;)V

    iget-object p1, p0, Lz2/ll;->OooooOo:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v1

    sub-float/2addr p1, v2

    float-to-double v0, p1

    float-to-double p1, p2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private OooO0OO(ILandroid/graphics/Path;)V
    .locals 4

    iget-object v0, p0, Lz2/ll;->Ooooooo:[F

    iget-object v1, p0, Lz2/ll;->Ooooo0o:[Lz2/nl;

    aget-object v2, v1, p1

    iget v2, v2, Lz2/nl;->OooO00o:F

    const/4 v3, 0x0

    aput v2, v0, v3

    aget-object v1, v1, p1

    iget v1, v1, Lz2/nl;->OooO0O0:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Lz2/ll;->OoooOoo:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lz2/ll;->Ooooooo:[F

    if-nez p1, :cond_0

    aget v1, v0, v3

    aget v0, v0, v2

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    :cond_0
    aget v1, v0, v3

    aget v0, v0, v2

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    iget-object v0, p0, Lz2/ll;->Ooooo0o:[Lz2/nl;

    aget-object v0, v0, p1

    iget-object v1, p0, Lz2/ll;->OoooOoo:[Landroid/graphics/Matrix;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1, p2}, Lz2/nl;->OooO0O0(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    return-void
.end method

.method private OooO0Oo(ILandroid/graphics/Path;)V
    .locals 6

    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lz2/ll;->Ooooooo:[F

    iget-object v2, p0, Lz2/ll;->Ooooo0o:[Lz2/nl;

    aget-object v3, v2, p1

    iget v3, v3, Lz2/nl;->OooO0OO:F

    const/4 v4, 0x0

    aput v3, v1, v4

    aget-object v2, v2, p1

    iget v2, v2, Lz2/nl;->OooO0Oo:F

    const/4 v3, 0x1

    aput v2, v1, v3

    iget-object v2, p0, Lz2/ll;->OoooOoo:[Landroid/graphics/Matrix;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, p0, Lz2/ll;->o0OoOo0:[F

    iget-object v2, p0, Lz2/ll;->Ooooo0o:[Lz2/nl;

    aget-object v5, v2, v0

    iget v5, v5, Lz2/nl;->OooO00o:F

    aput v5, v1, v4

    aget-object v2, v2, v0

    iget v2, v2, Lz2/nl;->OooO0O0:F

    aput v2, v1, v3

    iget-object v2, p0, Lz2/ll;->OoooOoo:[Landroid/graphics/Matrix;

    aget-object v0, v2, v0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lz2/ll;->Ooooooo:[F

    aget v1, v0, v4

    iget-object v2, p0, Lz2/ll;->o0OoOo0:[F

    aget v4, v2, v4

    sub-float/2addr v1, v4

    float-to-double v4, v1

    aget v0, v0, v3

    aget v1, v2, v3

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lz2/ll;->Oooooo0:Lz2/nl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lz2/nl;->OooO0o0(FF)V

    invoke-direct {p0, p1}, Lz2/ll;->OooO0oO(I)Lz2/jl;

    move-result-object v1

    iget v2, p0, Lz2/ll;->o00Ooo:F

    iget-object v3, p0, Lz2/ll;->Oooooo0:Lz2/nl;

    invoke-virtual {v1, v0, v2, v3}, Lz2/jl;->OooO00o(FFLz2/nl;)V

    iget-object v0, p0, Lz2/ll;->Oooooo0:Lz2/nl;

    iget-object v1, p0, Lz2/ll;->Ooooo00:[Landroid/graphics/Matrix;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1, p2}, Lz2/nl;->OooO0O0(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    return-void
.end method

.method private OooO0o(I)Lz2/hl;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lz2/ll;->ooOO:Lz2/ol;

    invoke-virtual {p1}, Lz2/ol;->OooO0oO()Lz2/hl;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lz2/ll;->ooOO:Lz2/ol;

    invoke-virtual {p1}, Lz2/ol;->OooO0O0()Lz2/hl;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lz2/ll;->ooOO:Lz2/ol;

    invoke-virtual {p1}, Lz2/ol;->OooO0OO()Lz2/hl;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lz2/ll;->ooOO:Lz2/ol;

    invoke-virtual {p1}, Lz2/ol;->OooO0oo()Lz2/hl;

    move-result-object p1

    return-object p1
.end method

.method private OooO0o0(IIILandroid/graphics/PointF;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    invoke-virtual {p4, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :cond_0
    int-to-float p1, p3

    invoke-virtual {p4, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :cond_1
    int-to-float p1, p2

    int-to-float p2, p3

    invoke-virtual {p4, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :cond_2
    int-to-float p1, p2

    invoke-virtual {p4, p1, v1}, Landroid/graphics/PointF;->set(FF)V

    :goto_0
    return-void
.end method

.method private OooO0oO(I)Lz2/jl;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lz2/ll;->ooOO:Lz2/ol;

    invoke-virtual {p1}, Lz2/ol;->OooO0o()Lz2/jl;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lz2/ll;->ooOO:Lz2/ol;

    invoke-virtual {p1}, Lz2/ol;->OooO0Oo()Lz2/jl;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lz2/ll;->ooOO:Lz2/ol;

    invoke-virtual {p1}, Lz2/ol;->OooO00o()Lz2/jl;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lz2/ll;->ooOO:Lz2/ol;

    invoke-virtual {p1}, Lz2/ol;->OooO0o0()Lz2/jl;

    move-result-object p1

    return-object p1
.end method

.method private OooOO0(IILandroid/graphics/Path;)V
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lz2/ll;->OooOO0O(IILandroid/graphics/Path;)V

    iget v0, p0, Lz2/ll;->o00oO0O:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lz2/ll;->OooooO0:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lz2/ll;->OooooO0:Landroid/graphics/Matrix;

    iget v1, p0, Lz2/ll;->o00oO0O:F

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object p1, p0, Lz2/ll;->OooooO0:Landroid/graphics/Matrix;

    invoke-virtual {p3, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private OooOo0(III)V
    .locals 4

    iget-object v0, p0, Lz2/ll;->OooooOo:Landroid/graphics/PointF;

    invoke-direct {p0, p1, p2, p3, v0}, Lz2/ll;->OooO0o0(IIILandroid/graphics/PointF;)V

    invoke-direct {p0, p1, p2, p3}, Lz2/ll;->OooO00o(III)F

    move-result v0

    invoke-direct {p0, p1}, Lz2/ll;->OooO0o(I)Lz2/hl;

    move-result-object v1

    iget v2, p0, Lz2/ll;->o00Ooo:F

    iget-object v3, p0, Lz2/ll;->Ooooo0o:[Lz2/nl;

    aget-object v3, v3, p1

    invoke-virtual {v1, v0, v2, v3}, Lz2/hl;->OooO00o(FFLz2/nl;)V

    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0, p2, p3}, Lz2/ll;->OooO0O0(III)F

    move-result p2

    const p3, 0x3fc90fdb

    add-float/2addr p2, p3

    iget-object p3, p0, Lz2/ll;->OoooOoo:[Landroid/graphics/Matrix;

    aget-object p3, p3, p1

    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    iget-object p3, p0, Lz2/ll;->OoooOoo:[Landroid/graphics/Matrix;

    aget-object p3, p3, p1

    iget-object v0, p0, Lz2/ll;->OooooOo:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p3, p0, Lz2/ll;->OoooOoo:[Landroid/graphics/Matrix;

    aget-object p1, p3, p1

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p2

    double-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preRotate(F)Z

    return-void
.end method

.method private static OooOo00(II)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x7

    add-int/2addr p1, v0

    mul-int p0, p0, p1

    ushr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method private OooOo0O(III)V
    .locals 4

    iget-object v0, p0, Lz2/ll;->Ooooooo:[F

    iget-object v1, p0, Lz2/ll;->Ooooo0o:[Lz2/nl;

    aget-object v2, v1, p1

    iget v2, v2, Lz2/nl;->OooO0OO:F

    const/4 v3, 0x0

    aput v2, v0, v3

    aget-object v1, v1, p1

    iget v1, v1, Lz2/nl;->OooO0Oo:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Lz2/ll;->OoooOoo:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-direct {p0, p1, p2, p3}, Lz2/ll;->OooO0O0(III)F

    move-result p2

    iget-object p3, p0, Lz2/ll;->Ooooo00:[Landroid/graphics/Matrix;

    aget-object p3, p3, p1

    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    iget-object p3, p0, Lz2/ll;->Ooooo00:[Landroid/graphics/Matrix;

    aget-object p3, p3, p1

    iget-object v0, p0, Lz2/ll;->Ooooooo:[F

    aget v1, v0, v3

    aget v0, v0, v2

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p3, p0, Lz2/ll;->Ooooo00:[Landroid/graphics/Matrix;

    aget-object p1, p3, p1

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p2

    double-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preRotate(F)Z

    return-void
.end method

.method private Oooo00O()V
    .locals 3

    iget-object v0, p0, Lz2/ll;->o0Oo0oo:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lz2/ll;->o0OOO0o:Landroid/graphics/PorterDuff$Mode;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lz2/ll;->o0OOO0o:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lz2/ll;->o0ooOoO:Landroid/graphics/PorterDuffColorFilter;

    iget-boolean v1, p0, Lz2/ll;->o00Oo0:Z

    if-eqz v1, :cond_1

    iput v0, p0, Lz2/ll;->o00o0O:I

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lz2/ll;->o0ooOoO:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method


# virtual methods
.method public OooO()Landroid/graphics/Paint$Style;
    .locals 1

    iget-object v0, p0, Lz2/ll;->o0ooOOo:Landroid/graphics/Paint$Style;

    return-object v0
.end method

.method public OooO0oo()F
    .locals 1

    iget v0, p0, Lz2/ll;->o00Ooo:F

    return v0
.end method

.method public OooOO0O(IILandroid/graphics/Path;)V
    .locals 3

    invoke-virtual {p3}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lz2/ll;->ooOO:Lz2/ol;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    invoke-direct {p0, v1, p1, p2}, Lz2/ll;->OooOo0(III)V

    invoke-direct {p0, v1, p1, p2}, Lz2/ll;->OooOo0O(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0, p3}, Lz2/ll;->OooO0OO(ILandroid/graphics/Path;)V

    invoke-direct {p0, v0, p3}, Lz2/ll;->OooO0Oo(ILandroid/graphics/Path;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public OooOO0o()F
    .locals 1

    iget v0, p0, Lz2/ll;->o00oO0O:F

    return v0
.end method

.method public OooOOO()I
    .locals 1

    iget v0, p0, Lz2/ll;->oo000o:I

    return v0
.end method

.method public OooOOO0()I
    .locals 1

    iget v0, p0, Lz2/ll;->o00ooo:I

    return v0
.end method

.method public OooOOOO()Lz2/ol;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/ll;->ooOO:Lz2/ol;

    return-object v0
.end method

.method public OooOOOo()F
    .locals 1

    iget v0, p0, Lz2/ll;->o0ooOO0:F

    return v0
.end method

.method public OooOOo(II)Z
    .locals 1

    invoke-virtual {p0}, Lz2/ll;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    return p1
.end method

.method public OooOOo0()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lz2/ll;->o0Oo0oo:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public OooOOoo()Z
    .locals 1

    iget-boolean v0, p0, Lz2/ll;->o00O0O:Z

    return v0
.end method

.method public OooOo(Landroid/graphics/Paint$Style;)V
    .locals 0

    iput-object p1, p0, Lz2/ll;->o0ooOOo:Landroid/graphics/Paint$Style;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public OooOo0o(F)V
    .locals 0

    iput p1, p0, Lz2/ll;->o00Ooo:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public OooOoO(I)V
    .locals 0

    iput p1, p0, Lz2/ll;->o00o0O:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz2/ll;->o00Oo0:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public OooOoO0(F)V
    .locals 0

    iput p1, p0, Lz2/ll;->o00oO0O:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public OooOoOO(I)V
    .locals 0

    iput p1, p0, Lz2/ll;->o00ooo:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public OooOoo(I)V
    .locals 0

    iput p1, p0, Lz2/ll;->oo000o:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public OooOoo0(Z)V
    .locals 0

    iput-boolean p1, p0, Lz2/ll;->o00O0O:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public OooOooO(Lz2/ol;)V
    .locals 0

    iput-object p1, p0, Lz2/ll;->ooOO:Lz2/ol;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public OooOooo(F)V
    .locals 0

    iput p1, p0, Lz2/ll;->o0ooOO0:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public Oooo000(Z)V
    .locals 0

    iput-boolean p1, p0, Lz2/ll;->o00Oo0:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lz2/ll;->OoooOoO:Landroid/graphics/Paint;

    iget-object v1, p0, Lz2/ll;->o0ooOoO:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lz2/ll;->OoooOoO:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lz2/ll;->OoooOoO:Landroid/graphics/Paint;

    iget v2, p0, Lz2/ll;->o00oO0o:I

    invoke-static {v0, v2}, Lz2/ll;->OooOo00(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lz2/ll;->OoooOoO:Landroid/graphics/Paint;

    iget v2, p0, Lz2/ll;->o0ooOO0:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lz2/ll;->OoooOoO:Landroid/graphics/Paint;

    iget-object v2, p0, Lz2/ll;->o0ooOOo:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, p0, Lz2/ll;->o00ooo:I

    if-lez v1, :cond_0

    iget-boolean v2, p0, Lz2/ll;->o00O0O:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lz2/ll;->OoooOoO:Landroid/graphics/Paint;

    iget v3, p0, Lz2/ll;->oo000o:I

    int-to-float v3, v3

    const/4 v4, 0x0

    int-to-float v1, v1

    iget v5, p0, Lz2/ll;->o00o0O:I

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_0
    iget-object v1, p0, Lz2/ll;->ooOO:Lz2/ol;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget-object v3, p0, Lz2/ll;->OooooOO:Landroid/graphics/Path;

    invoke-direct {p0, v1, v2, v3}, Lz2/ll;->OooOO0(IILandroid/graphics/Path;)V

    iget-object v1, p0, Lz2/ll;->OooooOO:Landroid/graphics/Path;

    iget-object v2, p0, Lz2/ll;->OoooOoO:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v7, v1

    iget-object v8, p0, Lz2/ll;->OoooOoO:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    iget-object p1, p0, Lz2/ll;->OoooOoO:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lz2/ll;->Oooooo:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v2, p0, Lz2/ll;->OooooOO:Landroid/graphics/Path;

    invoke-direct {p0, v1, v0, v2}, Lz2/ll;->OooOO0(IILandroid/graphics/Path;)V

    iget-object v0, p0, Lz2/ll;->OoooooO:Landroid/graphics/Region;

    iget-object v1, p0, Lz2/ll;->OooooOO:Landroid/graphics/Path;

    iget-object v2, p0, Lz2/ll;->Oooooo:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    iget-object v0, p0, Lz2/ll;->Oooooo:Landroid/graphics/Region;

    iget-object v1, p0, Lz2/ll;->OoooooO:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lz2/ll;->Oooooo:Landroid/graphics/Region;

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    iput p1, p0, Lz2/ll;->o00oO0o:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/ll;->OoooOoO:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTint(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/ll;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lz2/ll;->o0Oo0oo:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lz2/ll;->Oooo00O()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Lz2/ll;->o0OOO0o:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0}, Lz2/ll;->Oooo00O()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
