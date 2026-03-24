.class public Lz2/oO0O0OoO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO000o00;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(I)V
    .locals 0

    return-void
.end method

.method public OooO0O0()V
    .locals 0

    return-void
.end method

.method public OooO0OO(F)V
    .locals 0

    return-void
.end method

.method public OooO0Oo(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public OooO0o(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public OooO0o0()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public OooO0oO(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lz2/oO0O0OoO;->OooO0o(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
