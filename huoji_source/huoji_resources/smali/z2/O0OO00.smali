.class public final Lz2/O0OO00;
.super Lz2/oOOO000o;
.source ""


# static fields
.field private static final OooO0Oo:Ljava/lang/String; = "com.bumptech.glide.load.resource.bitmap.RoundedCorners"

.field private static final OooO0o0:[B


# instance fields
.field private final OooO0OO:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lz2/o0O0O0Oo;->OooO0O0:Ljava/nio/charset/Charset;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.RoundedCorners"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lz2/O0OO00;->OooO0o0:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lz2/oOOO000o;-><init>()V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "roundingRadius must be greater than 0."

    invoke-static {v0, v1}, Lz2/r2;->OooO00o(ZLjava/lang/String;)V

    iput p1, p0, Lz2/O0OO00;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/security/MessageDigest;)V
    .locals 2
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lz2/O0OO00;->OooO0o0:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lz2/O0OO00;->OooO0OO:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public OooO0OO(Lz2/oO000o00;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0
    .param p1    # Lz2/oO000o00;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p3, p0, Lz2/O0OO00;->OooO0OO:I

    invoke-static {p1, p2, p3}, Lz2/a;->OooOOOo(Lz2/oO000o00;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lz2/O0OO00;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lz2/O0OO00;

    iget v0, p0, Lz2/O0OO00;->OooO0OO:I

    iget p1, p1, Lz2/O0OO00;->OooO0OO:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lz2/O0OO00;->OooO0OO:I

    invoke-static {v0}, Lz2/t2;->OooOOO(I)I

    move-result v0

    const v1, -0x21f3caa6

    invoke-static {v1, v0}, Lz2/t2;->OooOOOO(II)I

    move-result v0

    return v0
.end method
