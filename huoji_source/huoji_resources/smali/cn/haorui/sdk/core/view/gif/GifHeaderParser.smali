.class public Lcn/haorui/sdk/core/view/gif/GifHeaderParser;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT_FRAME_DELAY:I = 0xa

.field private static final MAX_BLOCK_SIZE:I = 0x100

.field public static final MIN_FRAME_DELAY:I = 0x2

.field public static final TAG:Ljava/lang/String; = "GifHeaderParser"


# instance fields
.field private final block:[B

.field private blockSize:I

.field private header:Lcn/haorui/sdk/core/view/gif/GifHeader;

.field private rawData:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->block:[B

    const/4 v0, 0x0

    iput v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->blockSize:I

    return-void
.end method

.method private err()Z
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget v0, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private read()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    const/4 v1, 0x1

    iput v1, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->status:I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readBitmap()V
    .locals 8

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget-object v0, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->currentFrame:Lcn/haorui/sdk/core/view/gif/b;

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lcn/haorui/sdk/core/view/gif/b;->a:I

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget-object v0, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->currentFrame:Lcn/haorui/sdk/core/view/gif/b;

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lcn/haorui/sdk/core/view/gif/b;->b:I

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget-object v0, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->currentFrame:Lcn/haorui/sdk/core/view/gif/b;

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lcn/haorui/sdk/core/view/gif/b;->c:I

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget-object v0, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->currentFrame:Lcn/haorui/sdk/core/view/gif/b;

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lcn/haorui/sdk/core/view/gif/b;->d:I

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->read()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v4, v0, 0x7

    add-int/2addr v4, v3

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget-object v5, v5, Lcn/haorui/sdk/core/view/gif/GifHeader;->currentFrame:Lcn/haorui/sdk/core/view/gif/b;

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, v5, Lcn/haorui/sdk/core/view/gif/b;->e:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v4}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->readColorTable(I)[I

    move-result-object v0

    iput-object v0, v5, Lcn/haorui/sdk/core/view/gif/b;->k:[I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, v5, Lcn/haorui/sdk/core/view/gif/b;->k:[I

    :goto_1
    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget-object v0, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->currentFrame:Lcn/haorui/sdk/core/view/gif/b;

    iget-object v1, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, v0, Lcn/haorui/sdk/core/view/gif/b;->j:I

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->skipImageData()V

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->err()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget v1, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->frameCount:I

    add-int/2addr v1, v3

    iput v1, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->frameCount:I

    iget-object v1, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->frames:Ljava/util/List;

    iget-object v0, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->currentFrame:Lcn/haorui/sdk/core/view/gif/b;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readBlock()I
    .locals 6

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->read()I

    move-result v0

    iput v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->blockSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->blockSize:I

    if-ge v1, v0, :cond_1

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->block:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x3

    const-string v4, "GifHeaderParser"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Reading Block n: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " count: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " blockSize: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->blockSize:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    const/4 v2, 0x1

    iput v2, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->status:I

    :cond_1
    return v1
.end method

.method private readColorTable(I)[I
    .locals 9

    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x100

    new-array v1, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v2, 0x1

    shl-int/lit8 v3, v3, 0x10

    const/high16 v8, -0x1000000

    or-int/2addr v3, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    move v2, v7

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "GifHeaderParser"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Format Error Reading Color Table"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    const/4 v0, 0x1

    iput v0, p1, Lcn/haorui/sdk/core/view/gif/GifHeader;->status:I

    :cond_1
    return-object v1
.end method

.method private readContents()V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->readContents(I)V

    return-void
.end method

.method private readContents(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_8

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->err()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget v3, v3, Lcn/haorui/sdk/core/view/gif/GifHeader;->frameCount:I

    if-gt v3, p1, :cond_8

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->read()I

    move-result v3

    const/16 v4, 0x21

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iput v1, v3, Lcn/haorui/sdk/core/view/gif/GifHeader;->status:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget-object v4, v3, Lcn/haorui/sdk/core/view/gif/GifHeader;->currentFrame:Lcn/haorui/sdk/core/view/gif/b;

    if-nez v4, :cond_2

    new-instance v4, Lcn/haorui/sdk/core/view/gif/b;

    invoke-direct {v4}, Lcn/haorui/sdk/core/view/gif/b;-><init>()V

    iput-object v4, v3, Lcn/haorui/sdk/core/view/gif/GifHeader;->currentFrame:Lcn/haorui/sdk/core/view/gif/b;

    :cond_2
    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->readBitmap()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->read()I

    move-result v3

    if-eq v3, v1, :cond_7

    const/16 v4, 0xf9

    if-eq v3, v4, :cond_6

    const/16 v4, 0xfe

    if-eq v3, v4, :cond_7

    const/16 v4, 0xff

    if-eq v3, v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->readBlock()I

    const-string v3, ""

    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0xb

    if-ge v4, v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->block:[B

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    const-string v4, "NETSCAPE2.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->readNetscapeExt()V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    new-instance v4, Lcn/haorui/sdk/core/view/gif/b;

    invoke-direct {v4}, Lcn/haorui/sdk/core/view/gif/b;-><init>()V

    iput-object v4, v3, Lcn/haorui/sdk/core/view/gif/GifHeader;->currentFrame:Lcn/haorui/sdk/core/view/gif/b;

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->readGraphicControlExt()V

    goto/16 :goto_0

    :cond_7
    :goto_2
    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->skip()V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private readGraphicControlExt()V
    .locals 5

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->read()I

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->read()I

    move-result v0

    iget-object v1, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget-object v1, v1, Lcn/haorui/sdk/core/view/gif/GifHeader;->currentFrame:Lcn/haorui/sdk/core/view/gif/b;

    and-int/lit8 v2, v0, 0x1c

    const/4 v3, 0x2

    shr-int/2addr v2, v3

    iput v2, v1, Lcn/haorui/sdk/core/view/gif/b;->g:I

    const/4 v4, 0x1

    if-nez v2, :cond_0

    iput v4, v1, Lcn/haorui/sdk/core/view/gif/b;->g:I

    :cond_0
    and-int/2addr v0, v4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v1, Lcn/haorui/sdk/core/view/gif/b;->f:Z

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->readShort()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v3, :cond_2

    const/16 v0, 0xa

    :cond_2
    iget-object v2, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget-object v2, v2, Lcn/haorui/sdk/core/view/gif/GifHeader;->currentFrame:Lcn/haorui/sdk/core/view/gif/b;

    mul-int/lit8 v0, v0, 0xa

    iput v0, v2, Lcn/haorui/sdk/core/view/gif/b;->i:I

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->read()I

    move-result v0

    iput v0, v2, Lcn/haorui/sdk/core/view/gif/b;->h:I

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->read()I

    return-void
.end method

.method private readHeader()V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->read()I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    const/4 v1, 0x1

    iput v1, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->status:I

    return-void

    :cond_1
    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->readLSD()V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget-boolean v0, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->gctFlag:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->err()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget v1, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->gctSize:I

    invoke-direct {p0, v1}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->readColorTable(I)[I

    move-result-object v1

    iput-object v1, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->gct:[I

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget-object v1, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->gct:[I

    iget v2, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->bgIndex:I

    aget v1, v1, v2

    iput v1, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->bgColor:I

    :cond_2
    return-void
.end method

.method private readLSD()V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->width:I

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->height:I

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->read()I

    move-result v0

    iget-object v1, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcn/haorui/sdk/core/view/gif/GifHeader;->gctFlag:Z

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x2

    shl-int v0, v2, v0

    iput v0, v1, Lcn/haorui/sdk/core/view/gif/GifHeader;->gctSize:I

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->read()I

    move-result v0

    iput v0, v1, Lcn/haorui/sdk/core/view/gif/GifHeader;->bgIndex:I

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->read()I

    move-result v1

    iput v1, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->pixelAspect:I

    return-void
.end method

.method private readNetscapeExt()V
    .locals 3

    :cond_0
    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->readBlock()I

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->block:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, v2, Lcn/haorui/sdk/core/view/gif/GifHeader;->loopCount:I

    if-nez v0, :cond_1

    const/4 v0, -0x1

    iput v0, v2, Lcn/haorui/sdk/core/view/gif/GifHeader;->loopCount:I

    :cond_1
    iget v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->blockSize:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method private readShort()I
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->block:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    new-instance v0, Lcn/haorui/sdk/core/view/gif/GifHeader;

    invoke-direct {v0}, Lcn/haorui/sdk/core/view/gif/GifHeader;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iput v1, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->blockSize:I

    return-void
.end method

.method private skip()V
    .locals 3

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->read()I

    move-result v0

    iget-object v1, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v0, :cond_0

    :catch_0
    return-void
.end method

.method private skipImageData()V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->read()I

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->skip()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    return-void
.end method

.method public isAnimated()Z
    .locals 2

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->readHeader()V

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->err()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->readContents(I)V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget v0, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->frameCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public parseHeader()Lcn/haorui/sdk/core/view/gif/GifHeader;
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->readHeader()V

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->err()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->readContents()V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget v1, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->frameCount:I

    if-gez v1, :cond_1

    const/4 v1, 0x1

    iput v1, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->status:I

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setData(Ljava/nio/ByteBuffer;)Lcn/haorui/sdk/core/view/gif/GifHeaderParser;
    .locals 1

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->reset()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public setData([B)Lcn/haorui/sdk/core/view/gif/GifHeaderParser;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->setData(Ljava/nio/ByteBuffer;)Lcn/haorui/sdk/core/view/gif/GifHeaderParser;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcn/haorui/sdk/core/view/gif/GifHeaderParser;->header:Lcn/haorui/sdk/core/view/gif/GifHeader;

    const/4 v0, 0x2

    iput v0, p1, Lcn/haorui/sdk/core/view/gif/GifHeader;->status:I

    :goto_0
    return-object p0
.end method
