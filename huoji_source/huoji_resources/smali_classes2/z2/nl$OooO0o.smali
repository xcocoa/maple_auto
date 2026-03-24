.class public Lz2/nl$OooO0o;
.super Lz2/nl$OooO0OO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/nl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0o"
.end annotation


# instance fields
.field public OooO0O0:F

.field public OooO0OO:F

.field public OooO0Oo:F

.field public OooO0o0:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/nl$OooO0OO;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 4

    iget-object v0, p0, Lz2/nl$OooO0OO;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget v0, p0, Lz2/nl$OooO0o;->OooO0O0:F

    iget v1, p0, Lz2/nl$OooO0o;->OooO0OO:F

    iget v2, p0, Lz2/nl$OooO0o;->OooO0Oo:F

    iget v3, p0, Lz2/nl$OooO0o;->OooO0o0:F

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
