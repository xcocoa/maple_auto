.class public final Lcom/anythink/expressad/exoplayer/b/m;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:I = 0x7ffe8001

.field private static final b:I = 0x1fffe800

.field private static final c:I = -0x180fe80

.field private static final d:I = -0xe0ff18

.field private static final e:B = 0x7ft

.field private static final f:B = 0x1ft

.field private static final g:B = -0x2t

.field private static final h:B = -0x1t

.field private static final i:[I

.field private static final j:[I

.field private static final k:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/anythink/expressad/exoplayer/b/m;->i:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/anythink/expressad/exoplayer/b/m;->j:[I

    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/anythink/expressad/exoplayer/b/m;->k:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)I
    .locals 3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x5

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x6

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x7

    :goto_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit8 p0, p0, 0x3c

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x4

    :goto_1
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xfc

    :goto_2
    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x20

    return p0
.end method

.method private static a([B)I
    .locals 6

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/4 v1, -0x2

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    const/4 v5, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_0

    aget-byte v0, p0, v4

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v2

    aget-byte p0, p0, v3

    goto :goto_1

    :cond_0
    aget-byte v0, p0, v3

    and-int/2addr v0, v5

    shl-int/2addr v0, v4

    aget-byte p0, p0, v2

    goto :goto_0

    :cond_1
    aget-byte v0, p0, v4

    and-int/2addr v0, v5

    shl-int/2addr v0, v4

    aget-byte p0, p0, v5

    :goto_0
    and-int/lit8 p0, p0, 0x3c

    goto :goto_2

    :cond_2
    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v2

    aget-byte p0, p0, v4

    :goto_1
    and-int/lit16 p0, p0, 0xfc

    :goto_2
    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x20

    return p0
.end method

.method private static a([BLjava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/exoplayer/d/e;)Lcom/anythink/expressad/exoplayer/m;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x7f

    if-ne v2, v6, :cond_0

    new-instance v2, Lcom/anythink/expressad/exoplayer/k/r;

    invoke-direct {v2, v0}, Lcom/anythink/expressad/exoplayer/k/r;-><init>([B)V

    goto :goto_4

    :cond_0
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    aget-byte v2, v0, v1

    const/4 v6, -0x2

    if-eq v2, v6, :cond_2

    aget-byte v2, v0, v1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_2
    array-length v6, v0

    sub-int/2addr v6, v5

    if-ge v2, v6, :cond_3

    aget-byte v6, v0, v2

    add-int/lit8 v7, v2, 0x1

    aget-byte v8, v0, v7

    aput-byte v8, v0, v2

    aput-byte v6, v0, v7

    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/anythink/expressad/exoplayer/k/r;

    invoke-direct {v2, v0}, Lcom/anythink/expressad/exoplayer/k/r;-><init>([B)V

    aget-byte v6, v0, v1

    const/16 v7, 0x1f

    if-ne v6, v7, :cond_4

    new-instance v6, Lcom/anythink/expressad/exoplayer/k/r;

    invoke-direct {v6, v0}, Lcom/anythink/expressad/exoplayer/k/r;-><init>([B)V

    :goto_3
    invoke-virtual {v6}, Lcom/anythink/expressad/exoplayer/k/r;->a()I

    move-result v7

    const/16 v8, 0x10

    if-lt v7, v8, :cond_4

    invoke-virtual {v6, v4}, Lcom/anythink/expressad/exoplayer/k/r;->b(I)V

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Lcom/anythink/expressad/exoplayer/k/r;->c(I)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/anythink/expressad/exoplayer/k/r;->d(I)V

    goto :goto_3

    :cond_4
    array-length v6, v0

    invoke-virtual {v2, v0, v6}, Lcom/anythink/expressad/exoplayer/k/r;->a([BI)V

    :goto_4
    const/16 v0, 0x3c

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/exoplayer/k/r;->b(I)V

    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/exoplayer/k/r;->c(I)I

    move-result v0

    sget-object v6, Lcom/anythink/expressad/exoplayer/b/m;->i:[I

    aget v0, v6, v0

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Lcom/anythink/expressad/exoplayer/k/r;->c(I)I

    move-result v6

    sget-object v7, Lcom/anythink/expressad/exoplayer/b/m;->j:[I

    aget v13, v7, v6

    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Lcom/anythink/expressad/exoplayer/k/r;->c(I)I

    move-result v6

    sget-object v7, Lcom/anythink/expressad/exoplayer/b/m;->k:[I

    array-length v8, v7

    if-lt v6, v8, :cond_5

    const/4 v11, -0x1

    goto :goto_5

    :cond_5
    aget v3, v7, v6

    mul-int/lit16 v3, v3, 0x3e8

    div-int/2addr v3, v4

    move v11, v3

    :goto_5
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/anythink/expressad/exoplayer/k/r;->b(I)V

    invoke-virtual {v2, v4}, Lcom/anythink/expressad/exoplayer/k/r;->c(I)I

    move-result v2

    if-lez v2, :cond_6

    const/4 v1, 0x1

    :cond_6
    add-int v12, v0, v1

    const/4 v10, 0x0

    const/4 v14, 0x0

    const-string v9, "audio/vnd.dts"

    move-object/from16 v8, p1

    move-object/from16 v15, p3

    move-object/from16 v16, p2

    invoke-static/range {v8 .. v16}, Lcom/anythink/expressad/exoplayer/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v0

    return-object v0
.end method

.method private static a(I)Z
    .locals 1

    const v0, 0x7ffe8001

    if-eq p0, v0, :cond_1

    const v0, -0x180fe80

    if-eq p0, v0, :cond_1

    const v0, 0x1fffe800

    if-eq p0, v0, :cond_1

    const v0, -0xe0ff18

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static b([B)I
    .locals 7

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, -0x2

    const/4 v3, 0x6

    const/4 v4, 0x7

    const/4 v5, 0x1

    const/4 v6, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_0

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    or-int/2addr v1, v2

    aget-byte p0, p0, v4

    goto :goto_1

    :cond_0
    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0xc

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v6

    or-int/2addr v0, v1

    const/16 v1, 0x8

    aget-byte p0, p0, v1

    goto :goto_0

    :cond_1
    aget-byte v0, p0, v4

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0xc

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v6

    or-int/2addr v0, v1

    const/16 v1, 0x9

    aget-byte p0, p0, v1

    :goto_0
    and-int/lit8 p0, p0, 0x3c

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    add-int/2addr p0, v5

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    aget-byte v1, p0, v6

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    or-int/2addr v1, v2

    aget-byte p0, p0, v3

    :goto_1
    and-int/lit16 p0, p0, 0xf0

    shr-int/2addr p0, v6

    or-int/2addr p0, v1

    add-int/2addr p0, v5

    :goto_2
    if-eqz v0, :cond_3

    mul-int/lit8 p0, p0, 0x10

    div-int/lit8 p0, p0, 0xe

    :cond_3
    return p0
.end method

.method private static c([B)Lcom/anythink/expressad/exoplayer/k/r;
    .locals 6

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/anythink/expressad/exoplayer/k/r;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/exoplayer/k/r;-><init>([B)V

    return-object v0

    :cond_0
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    aget-byte v1, p0, v0

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    aget-byte v1, p0, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_2
    array-length v2, p0

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    aget-byte v2, p0, v1

    add-int/lit8 v4, v1, 0x1

    aget-byte v5, p0, v4

    aput-byte v5, p0, v1

    aput-byte v2, p0, v4

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/anythink/expressad/exoplayer/k/r;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/exoplayer/k/r;-><init>([B)V

    aget-byte v0, p0, v0

    const/16 v2, 0x1f

    if-ne v0, v2, :cond_4

    new-instance v0, Lcom/anythink/expressad/exoplayer/k/r;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/exoplayer/k/r;-><init>([B)V

    :goto_3
    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k/r;->a()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_4

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/exoplayer/k/r;->b(I)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/exoplayer/k/r;->c(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/exoplayer/k/r;->d(I)V

    goto :goto_3

    :cond_4
    array-length v0, p0

    invoke-virtual {v1, p0, v0}, Lcom/anythink/expressad/exoplayer/k/r;->a([BI)V

    return-object v1
.end method

.method private static d([B)Z
    .locals 3

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, -0x2

    if-eq v1, v2, :cond_1

    aget-byte p0, p0, v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
