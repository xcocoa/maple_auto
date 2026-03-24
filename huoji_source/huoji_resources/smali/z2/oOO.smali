.class public Lz2/oOO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO0Ooooo;
.implements Lz2/oO0000o0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/oO0Ooooo<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lz2/oO0000o0;"
    }
.end annotation


# instance fields
.field private final OoooOoO:Landroid/graphics/Bitmap;

.field private final OoooOoo:Lz2/oO000o00;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lz2/oO000o00;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/oO000o00;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bitmap must not be null"

    invoke-static {p1, v0}, Lz2/r2;->OooO0o0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lz2/oOO;->OoooOoO:Landroid/graphics/Bitmap;

    const-string p1, "BitmapPool must not be null"

    invoke-static {p2, p1}, Lz2/r2;->OooO0o0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/oO000o00;

    iput-object p1, p0, Lz2/oOO;->OoooOoo:Lz2/oO000o00;

    return-void
.end method

.method public static OooO0Oo(Landroid/graphics/Bitmap;Lz2/oO000o00;)Lz2/oOO;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lz2/oO000o00;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lz2/oOO;

    invoke-direct {v0, p0, p1}, Lz2/oOO;-><init>(Landroid/graphics/Bitmap;Lz2/oO000o00;)V

    return-object v0
.end method


# virtual methods
.method public OooO00o()V
    .locals 1

    iget-object v0, p0, Lz2/oOO;->OoooOoO:Landroid/graphics/Bitmap;

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
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public OooO0OO()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/oOO;->OoooOoO:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/oOO;->OooO0OO()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lz2/oOO;->OoooOoO:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lz2/t2;->OooO0oo(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 2

    iget-object v0, p0, Lz2/oOO;->OoooOoo:Lz2/oO000o00;

    iget-object v1, p0, Lz2/oOO;->OoooOoO:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lz2/oO000o00;->OooO0Oo(Landroid/graphics/Bitmap;)V

    return-void
.end method
