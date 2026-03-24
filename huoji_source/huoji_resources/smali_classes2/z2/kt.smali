.class public final Lz2/kt;
.super Lz2/fm;
.source ""


# instance fields
.field private final OooO0OO:F

.field private final OooO0Oo:I


# direct methods
.method public constructor <init>(FFF)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lz2/kt;-><init>(FFFI)V

    return-void
.end method

.method private constructor <init>(FFFI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/fm;-><init>(FF)V

    iput p3, p0, Lz2/kt;->OooO0OO:F

    iput p4, p0, Lz2/kt;->OooO0Oo:I

    return-void
.end method


# virtual methods
.method public final OooO()F
    .locals 1

    iget v0, p0, Lz2/kt;->OooO0OO:F

    return v0
.end method

.method public final OooO0o(FFF)Z
    .locals 1

    invoke-virtual {p0}, Lz2/fm;->OooO0Oo()F

    move-result v0

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/4 v0, 0x0

    cmpg-float p2, p2, p1

    if-gtz p2, :cond_2

    invoke-virtual {p0}, Lz2/fm;->OooO0OO()F

    move-result p2

    sub-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, p1

    if-gtz p2, :cond_2

    iget p2, p0, Lz2/kt;->OooO0OO:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p1, p2

    if-lez p2, :cond_1

    iget p2, p0, Lz2/kt;->OooO0OO:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public final OooO0oO(FFF)Lz2/kt;
    .locals 4

    iget v0, p0, Lz2/kt;->OooO0Oo:I

    add-int/lit8 v1, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p0}, Lz2/fm;->OooO0OO()F

    move-result v2

    mul-float v0, v0, v2

    add-float/2addr v0, p2

    int-to-float p2, v1

    div-float/2addr v0, p2

    iget v2, p0, Lz2/kt;->OooO0Oo:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lz2/fm;->OooO0Oo()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v2, p1

    div-float/2addr v2, p2

    iget p1, p0, Lz2/kt;->OooO0Oo:I

    int-to-float p1, p1

    iget v3, p0, Lz2/kt;->OooO0OO:F

    mul-float p1, p1, v3

    add-float/2addr p1, p3

    div-float/2addr p1, p2

    new-instance p2, Lz2/kt;

    invoke-direct {p2, v0, v2, p1, v1}, Lz2/kt;-><init>(FFFI)V

    return-object p2
.end method

.method public final OooO0oo()I
    .locals 1

    iget v0, p0, Lz2/kt;->OooO0Oo:I

    return v0
.end method
