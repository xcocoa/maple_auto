.class public Lz2/nl$OooO0O0;
.super Lz2/nl$OooO0OO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/nl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0O0"
.end annotation


# instance fields
.field private OooO0O0:F

.field private OooO0OO:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/nl$OooO0OO;-><init>()V

    return-void
.end method

.method public static synthetic OooO0O0(Lz2/nl$OooO0O0;F)F
    .locals 0

    iput p1, p0, Lz2/nl$OooO0O0;->OooO0O0:F

    return p1
.end method

.method public static synthetic OooO0OO(Lz2/nl$OooO0O0;F)F
    .locals 0

    iput p1, p0, Lz2/nl$OooO0O0;->OooO0OO:F

    return p1
.end method


# virtual methods
.method public OooO00o(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 2

    iget-object v0, p0, Lz2/nl$OooO0OO;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget v0, p0, Lz2/nl$OooO0O0;->OooO0O0:F

    iget v1, p0, Lz2/nl$OooO0O0;->OooO0OO:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
