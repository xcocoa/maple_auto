.class public Lz2/oOO0Oo00;
.super Lz2/h;
.source ""

# interfaces
.implements Lz2/oO0000o0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/h<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;",
        "Lz2/oO0000o0;"
    }
.end annotation


# instance fields
.field private final OoooOoo:Lz2/oO000o00;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/BitmapDrawable;Lz2/oO000o00;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/h;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lz2/oOO0Oo00;->OoooOoo:Lz2/oO000o00;

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 1

    iget-object v0, p0, Lz2/h;->OoooOoO:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

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
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lz2/h;->OoooOoO:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lz2/t2;->OooO0oo(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 2

    iget-object v0, p0, Lz2/oOO0Oo00;->OoooOoo:Lz2/oO000o00;

    iget-object v1, p0, Lz2/h;->OoooOoO:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lz2/oO000o00;->OooO0Oo(Landroid/graphics/Bitmap;)V

    return-void
.end method
