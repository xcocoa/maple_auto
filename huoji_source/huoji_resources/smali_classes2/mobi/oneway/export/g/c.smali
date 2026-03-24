.class public Lmobi/oneway/export/g/c;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:[I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmobi/oneway/export/g/c;->c:I

    iput-boolean v0, p0, Lmobi/oneway/export/g/c;->d:Z

    iput-object p1, p0, Lmobi/oneway/export/g/c;->a:Ljava/io/InputStream;

    return-void
.end method

.method private a()V
    .locals 10

    const/4 v0, 0x4

    new-array v1, v0, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    iget-object v4, p0, Lmobi/oneway/export/g/c;->a:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    const-string v6, "Bad base64 stream"

    const/4 v7, 0x1

    if-ne v4, v5, :cond_2

    if-nez v3, :cond_1

    new-array v0, v2, [I

    iput-object v0, p0, Lmobi/oneway/export/g/c;->b:[I

    iput-boolean v7, p0, Lmobi/oneway/export/g/c;->d:Z

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    int-to-char v4, v4

    sget-object v8, Lmobi/oneway/export/g/q;->a:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ne v8, v5, :cond_5

    sget-char v8, Lmobi/oneway/export/g/q;->b:C

    if-ne v4, v8, :cond_3

    goto :goto_0

    :cond_3
    const/16 v8, 0xd

    if-eq v4, v8, :cond_6

    const/16 v8, 0xa

    if-ne v4, v8, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    add-int/lit8 v8, v3, 0x1

    aput-char v4, v1, v3

    move v3, v8

    :cond_6
    :goto_1
    if-lt v3, v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    if-ge v3, v0, :cond_a

    aget-char v8, v1, v3

    sget-char v9, Lmobi/oneway/export/g/q;->b:C

    if-eq v8, v9, :cond_8

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    if-nez v4, :cond_9

    const/4 v4, 0x1

    :cond_9
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    const/4 v3, 0x3

    aget-char v4, v1, v3

    sget-char v8, Lmobi/oneway/export/g/q;->b:C

    const/4 v9, 0x2

    if-ne v4, v8, :cond_d

    iget-object v3, p0, Lmobi/oneway/export/g/c;->a:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ne v3, v5, :cond_c

    iput-boolean v7, p0, Lmobi/oneway/export/g/c;->d:Z

    aget-char v3, v1, v9

    sget-char v4, Lmobi/oneway/export/g/q;->b:C

    if-ne v3, v4, :cond_b

    goto :goto_4

    :cond_b
    const/4 v7, 0x2

    goto :goto_4

    :cond_c
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const/4 v7, 0x3

    :goto_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_5
    if-ge v3, v0, :cond_f

    aget-char v5, v1, v3

    sget-char v6, Lmobi/oneway/export/g/q;->b:C

    if-eq v5, v6, :cond_e

    sget-object v5, Lmobi/oneway/export/g/q;->a:Ljava/lang/String;

    aget-char v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    rsub-int/lit8 v6, v3, 0x3

    mul-int/lit8 v6, v6, 0x6

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_f
    new-array v0, v7, [I

    iput-object v0, p0, Lmobi/oneway/export/g/c;->b:[I

    :goto_6
    if-ge v2, v7, :cond_10

    iget-object v0, p0, Lmobi/oneway/export/g/c;->b:[I

    rsub-int/lit8 v1, v2, 0x2

    mul-int/lit8 v1, v1, 0x8

    ushr-int v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/g/c;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 3

    iget-object v0, p0, Lmobi/oneway/export/g/c;->b:[I

    if-eqz v0, :cond_0

    iget v1, p0, Lmobi/oneway/export/g/c;->c:I

    array-length v2, v0

    if-eq v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmobi/oneway/export/g/c;->c:I

    aget v0, v0, v1

    return v0

    :cond_0
    iget-boolean v0, p0, Lmobi/oneway/export/g/c;->d:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lmobi/oneway/export/g/c;->a()V

    iget-object v0, p0, Lmobi/oneway/export/g/c;->b:[I

    array-length v2, v0

    if-nez v2, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/oneway/export/g/c;->b:[I

    return v1

    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lmobi/oneway/export/g/c;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmobi/oneway/export/g/c;->c:I

    aget v0, v0, v1

    return v0
.end method
