.class public Lz2/wu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/wu$OooO00o;
    }
.end annotation


# static fields
.field public static final OooO:I = 0x2

.field public static final OooO00o:I = 0x18

.field public static final OooO0O0:I = 0x434e5953

.field public static final OooO0OO:I = 0x4e584e43

.field public static final OooO0Oo:I = 0x1000000

.field public static OooO0o:[B = null

.field public static final OooO0o0:I = 0x1000

.field public static final OooO0oO:I = 0x48545541

.field public static final OooO0oo:I = 0x1

.field public static final OooOO0:I = 0x3

.field public static final OooOO0O:I = 0x4e45504f

.field public static final OooOO0o:I = 0x59414b4f

.field public static final OooOOO:I = 0x45545257

.field public static final OooOOO0:I = 0x45534c43


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "host::\u0000"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lz2/wu;->OooO0o:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO(Lz2/wu$OooO00o;)Z
    .locals 3

    iget v0, p0, Lz2/wu$OooO00o;->OooO00o:I

    iget v1, p0, Lz2/wu$OooO00o;->OooO0o:I

    not-int v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lz2/wu$OooO00o;->OooO0Oo:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/wu$OooO00o;->OooO0oO:[B

    invoke-static {v0}, Lz2/wu;->OooO0oo([B)I

    move-result v0

    iget p0, p0, Lz2/wu$OooO00o;->OooO0o0:I

    if-eq v0, p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static OooO00o(I[B)[B
    .locals 2

    const v0, 0x48545541

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lz2/wu;->OooO0Oo(III[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static OooO0O0(II)[B
    .locals 2

    const v0, 0x45534c43

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lz2/wu;->OooO0Oo(III[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static OooO0OO()[B
    .locals 4

    sget-object v0, Lz2/wu;->OooO0o:[B

    const v1, 0x4e584e43    # 9.072519E8f

    const/high16 v2, 0x1000000

    const/16 v3, 0x1000

    invoke-static {v1, v2, v3, v0}, Lz2/wu;->OooO0Oo(III[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static OooO0Oo(III[B)[B
    .locals 2

    const/16 v0, 0x18

    if-eqz p3, :cond_0

    array-length v1, p3

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_1

    array-length p1, p3

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {p3}, Lz2/wu;->OooO0oo([B)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_1
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    not-int p0, p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_2

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static OooO0o(II)[B
    .locals 2

    const v0, 0x59414b4f

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lz2/wu;->OooO0Oo(III[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static OooO0o0(ILjava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const v1, 0x4e45504f    # 8.2759366E8f

    invoke-static {v1, p0, p1, v0}, Lz2/wu;->OooO0Oo(III[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static OooO0oO(II[B)[B
    .locals 1

    const v0, 0x45545257

    invoke-static {v0, p0, p1, p2}, Lz2/wu;->OooO0Oo(III[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static OooO0oo([B)I
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v3, p0, v1

    if-ltz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit16 v3, v3, 0x100

    :goto_1
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
