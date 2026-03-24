.class public Lz2/nl$OooO00o;
.super Lz2/nl$OooO0OO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/nl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation


# static fields
.field private static final OooO0oo:Landroid/graphics/RectF;


# instance fields
.field public OooO0O0:F

.field public OooO0OO:F

.field public OooO0Oo:F

.field public OooO0o:F

.field public OooO0o0:F

.field public OooO0oO:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lz2/nl$OooO00o;->OooO0oo:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Lz2/nl$OooO0OO;-><init>()V

    iput p1, p0, Lz2/nl$OooO00o;->OooO0O0:F

    iput p2, p0, Lz2/nl$OooO00o;->OooO0OO:F

    iput p3, p0, Lz2/nl$OooO00o;->OooO0Oo:F

    iput p4, p0, Lz2/nl$OooO00o;->OooO0o0:F

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 5

    iget-object v0, p0, Lz2/nl$OooO0OO;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    sget-object v0, Lz2/nl$OooO00o;->OooO0oo:Landroid/graphics/RectF;

    iget v1, p0, Lz2/nl$OooO00o;->OooO0O0:F

    iget v2, p0, Lz2/nl$OooO00o;->OooO0OO:F

    iget v3, p0, Lz2/nl$OooO00o;->OooO0Oo:F

    iget v4, p0, Lz2/nl$OooO00o;->OooO0o0:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget v1, p0, Lz2/nl$OooO00o;->OooO0o:F

    iget v2, p0, Lz2/nl$OooO00o;->OooO0oO:F

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
