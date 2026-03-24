.class public Lz2/t;
.super Lz2/h;
.source ""

# interfaces
.implements Lz2/oO0000o0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/h<",
        "Lz2/r;",
        ">;",
        "Lz2/oO0000o0;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lz2/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/h;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 1

    iget-object v0, p0, Lz2/h;->OoooOoO:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lz2/r;

    invoke-virtual {v0}, Lz2/r;->OooO0o0()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public OooO0O0()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lz2/r;",
            ">;"
        }
    .end annotation

    const-class v0, Lz2/r;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lz2/h;->OoooOoO:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lz2/r;

    invoke-virtual {v0}, Lz2/r;->OooOO0()I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lz2/h;->OoooOoO:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lz2/r;

    invoke-virtual {v0}, Lz2/r;->stop()V

    iget-object v0, p0, Lz2/h;->OoooOoO:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lz2/r;

    invoke-virtual {v0}, Lz2/r;->OooOOO0()V

    return-void
.end method
