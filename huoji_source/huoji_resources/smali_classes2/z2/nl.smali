.class public Lz2/nl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/nl$OooO00o;,
        Lz2/nl$OooO0o;,
        Lz2/nl$OooO0O0;,
        Lz2/nl$OooO0OO;
    }
.end annotation

.annotation build Lz2/rk;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# instance fields
.field public OooO00o:F

.field public OooO0O0:F

.field public OooO0OO:F

.field public OooO0Oo:F

.field private final OooO0o0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/nl$OooO0OO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/nl;->OooO0o0:Ljava/util/List;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lz2/nl;->OooO0o0(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/nl;->OooO0o0:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lz2/nl;->OooO0o0(FF)V

    return-void
.end method


# virtual methods
.method public OooO00o(FFFFFF)V
    .locals 4

    new-instance v0, Lz2/nl$OooO00o;

    invoke-direct {v0, p1, p2, p3, p4}, Lz2/nl$OooO00o;-><init>(FFFF)V

    iput p5, v0, Lz2/nl$OooO00o;->OooO0o:F

    iput p6, v0, Lz2/nl$OooO00o;->OooO0oO:F

    iget-object v1, p0, Lz2/nl;->OooO0o0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-float v0, p1, p3

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    sub-float/2addr p3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p3, p1

    add-float/2addr p5, p6

    float-to-double p5, p5

    invoke-static {p5, p6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float p3, p3, v2

    add-float/2addr v0, p3

    iput v0, p0, Lz2/nl;->OooO0OO:F

    add-float p3, p2, p4

    mul-float p3, p3, v1

    sub-float/2addr p4, p2

    div-float/2addr p4, p1

    invoke-static {p5, p6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float p4, p4, p1

    add-float/2addr p3, p4

    iput p3, p0, Lz2/nl;->OooO0Oo:F

    return-void
.end method

.method public OooO0O0(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 3

    iget-object v0, p0, Lz2/nl;->OooO0o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lz2/nl;->OooO0o0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2/nl$OooO0OO;

    invoke-virtual {v2, p1, p2}, Lz2/nl$OooO0OO;->OooO00o(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooO0OO(FF)V
    .locals 2

    new-instance v0, Lz2/nl$OooO0O0;

    invoke-direct {v0}, Lz2/nl$OooO0O0;-><init>()V

    invoke-static {v0, p1}, Lz2/nl$OooO0O0;->OooO0O0(Lz2/nl$OooO0O0;F)F

    invoke-static {v0, p2}, Lz2/nl$OooO0O0;->OooO0OO(Lz2/nl$OooO0O0;F)F

    iget-object v1, p0, Lz2/nl;->OooO0o0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p1, p0, Lz2/nl;->OooO0OO:F

    iput p2, p0, Lz2/nl;->OooO0Oo:F

    return-void
.end method

.method public OooO0Oo(FFFF)V
    .locals 1

    new-instance v0, Lz2/nl$OooO0o;

    invoke-direct {v0}, Lz2/nl$OooO0o;-><init>()V

    iput p1, v0, Lz2/nl$OooO0o;->OooO0O0:F

    iput p2, v0, Lz2/nl$OooO0o;->OooO0OO:F

    iput p3, v0, Lz2/nl$OooO0o;->OooO0Oo:F

    iput p4, v0, Lz2/nl$OooO0o;->OooO0o0:F

    iget-object p1, p0, Lz2/nl;->OooO0o0:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p3, p0, Lz2/nl;->OooO0OO:F

    iput p4, p0, Lz2/nl;->OooO0Oo:F

    return-void
.end method

.method public OooO0o0(FF)V
    .locals 0

    iput p1, p0, Lz2/nl;->OooO00o:F

    iput p2, p0, Lz2/nl;->OooO0O0:F

    iput p1, p0, Lz2/nl;->OooO0OO:F

    iput p2, p0, Lz2/nl;->OooO0Oo:F

    iget-object p1, p0, Lz2/nl;->OooO0o0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
