.class public final Lcom/anythink/expressad/exoplayer/k/s;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:[B

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iput p1, p0, Lcom/anythink/expressad/exoplayer/k/s;->c:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    array-length p1, p1

    iput p1, p0, Lcom/anythink/expressad/exoplayer/k/s;->c:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iput p2, p0, Lcom/anythink/expressad/exoplayer/k/s;->c:I

    return-void
.end method

.method private A()I
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private B()J
    .locals 9

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x8

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x10

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x20

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x30

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v0, v0, v4

    int-to-long v3, v0

    and-long/2addr v3, v5

    const/16 v0, 0x38

    shl-long/2addr v3, v0

    or-long v0, v1, v3

    return-wide v0
.end method

.method private C()I
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Top bit not zero: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private D()F
    .locals 1

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method private E()D
    .locals 2

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method private F()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    :goto_0
    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    aget-byte v1, v1, v0

    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/k/af;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    sub-int v2, v0, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    aget-byte v4, v2, v1

    const/16 v5, -0x11

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v2, v4

    const/16 v5, -0x45

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v1, 0x2

    aget-byte v2, v2, v4

    const/16 v4, -0x41

    if-ne v2, v4, :cond_2

    add-int/2addr v1, v3

    iput v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    :cond_2
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    sub-int v3, v0, v2

    invoke-static {v1, v2, v3}, Lcom/anythink/expressad/exoplayer/k/af;->a([BII)Ljava/lang/String;

    move-result-object v1

    iput v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    iget v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->c:I

    if-ne v0, v2, :cond_3

    return-object v1

    :cond_3
    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    aget-byte v4, v3, v0

    const/16 v5, 0xd

    if-ne v4, v5, :cond_4

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    if-ne v0, v2, :cond_4

    return-object v1

    :cond_4
    iget v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v2, v3, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    :cond_5
    return-object v1
.end method

.method private G()J
    .locals 12

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    const/4 v2, 0x7

    const/4 v3, 0x7

    :goto_0
    const/4 v4, 0x6

    const/4 v5, 0x1

    if-ltz v3, :cond_2

    shl-int v6, v5, v3

    int-to-long v7, v6

    and-long/2addr v7, v0

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_1

    if-ge v3, v4, :cond_0

    sub-int/2addr v6, v5

    int-to-long v6, v6

    and-long/2addr v0, v6

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_0
    if-ne v3, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    :goto_2
    if-ge v5, v2, :cond_4

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v6, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int/2addr v6, v5

    aget-byte v3, v3, v6

    and-int/lit16 v6, v3, 0xc0

    const/16 v7, 0x80

    if-ne v6, v7, :cond_3

    shl-long/2addr v0, v4

    and-int/lit8 v3, v3, 0x3f

    int-to-long v6, v3

    or-long/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid UTF-8 sequence continuation byte: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    iget v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    return-wide v0

    :cond_5
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid UTF-8 sequence first byte: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget p1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    return-object v0
.end method

.method private a(Lcom/anythink/expressad/exoplayer/k/r;I)V
    .locals 2

    iget-object v0, p1, Lcom/anythink/expressad/exoplayer/k/r;->a:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/anythink/expressad/exoplayer/k/s;->a([BII)V

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/exoplayer/k/r;->a(I)V

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;I)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget p1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    return-void
.end method

.method private q()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    iput v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->c:I

    return-void
.end method

.method private r()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    array-length v0, v0

    return v0
.end method

.method private s()I
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private t()C
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    int-to-char v0, v0

    return v0
.end method

.method private u()I
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private v()S
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private w()I
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    shr-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private x()I
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private y()I
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private z()J
    .locals 9

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x8

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x10

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v0, v0, v4

    int-to-long v3, v0

    and-long/2addr v3, v5

    const/16 v0, 0x18

    shl-long/2addr v3, v0

    or-long v0, v1, v3

    return-wide v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->c:I

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    new-array v0, p1, [B

    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/anythink/expressad/exoplayer/k/s;->a([BI)V

    return-void
.end method

.method public final a([BI)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iput p2, p0, Lcom/anythink/expressad/exoplayer/k/s;->c:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    return-void
.end method

.method public final a([BII)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->c:I

    return v0
.end method

.method public final b(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    array-length v0, v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    iput p1, p0, Lcom/anythink/expressad/exoplayer/k/s;->c:I

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    return v0
.end method

.method public final c(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->c:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    iput p1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    return-void
.end method

.method public final d()I
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final d(I)V
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    return-void
.end method

.method public final e()I
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final e(I)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    aget-byte v1, v2, v1

    if-nez v1, :cond_1

    add-int/lit8 v1, p1, -0x1

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    invoke-static {v2, v0, v1}, Lcom/anythink/expressad/exoplayer/k/af;->a([BII)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    return-object v0
.end method

.method public final f()S
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public final g()I
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final h()J
    .locals 9

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v1, 0x18

    shl-long/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x8

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v0, v0, v4

    int-to-long v3, v0

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0
.end method

.method public final i()I
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final j()J
    .locals 9

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v1, 0x38

    shl-long/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x30

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x28

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x18

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x8

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v0, v0, v4

    int-to-long v3, v0

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0
.end method

.method public final k()I
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    return v0
.end method

.method public final l()I
    .locals 4

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->d()I

    move-result v0

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->d()I

    move-result v1

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->d()I

    move-result v2

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->d()I

    move-result v3

    shl-int/lit8 v0, v0, 0x15

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x7

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public final m()I
    .locals 3

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Top bit not zero: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final n()J
    .locals 5

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->j()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-wide v0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Top bit not zero: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final o()Ljava/lang/String;
    .locals 5

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v3, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    return-object v1
.end method

.method public final p()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    :goto_0
    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    sub-int v3, v0, v2

    invoke-static {v1, v2, v3}, Lcom/anythink/expressad/exoplayer/k/af;->a([BII)Ljava/lang/String;

    move-result-object v1

    iput v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    iget v2, p0, Lcom/anythink/expressad/exoplayer/k/s;->c:I

    if-ge v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/anythink/expressad/exoplayer/k/s;->b:I

    :cond_2
    return-object v1
.end method
