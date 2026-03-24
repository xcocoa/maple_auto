.class public Lz2/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/d0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/d0<",
        "Landroid/graphics/Bitmap;",
        "[B>;"
    }
.end annotation


# instance fields
.field private final OooO00o:Landroid/graphics/Bitmap$CompressFormat;

.field private final OooO0O0:I


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lz2/z;-><init>(Landroid/graphics/Bitmap$CompressFormat;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/z;->OooO00o:Landroid/graphics/Bitmap$CompressFormat;

    iput p2, p0, Lz2/z;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/oO0Ooooo;Lz2/o0O0OOO0;)Lz2/oO0Ooooo;
    .locals 3
    .param p1    # Lz2/oO0Ooooo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0Ooooo<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lz2/o0O0OOO0;",
            ")",
            "Lz2/oO0Ooooo<",
            "[B>;"
        }
    .end annotation

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p1}, Lz2/oO0Ooooo;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lz2/z;->OooO00o:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Lz2/z;->OooO0O0:I

    invoke-virtual {v0, v1, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-interface {p1}, Lz2/oO0Ooooo;->recycle()V

    new-instance p1, Lz2/f;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lz2/f;-><init>([B)V

    return-object p1
.end method
