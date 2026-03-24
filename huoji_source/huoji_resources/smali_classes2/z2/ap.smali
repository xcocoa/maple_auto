.class public final Lz2/ap;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:Lz2/uo;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/uo;

    sget-object v1, Lz2/so;->OooOOO0:Lz2/so;

    invoke-direct {v0, v1}, Lz2/uo;-><init>(Lz2/so;)V

    iput-object v0, p0, Lz2/ap;->OooO00o:Lz2/uo;

    return-void
.end method

.method private OooO00o([BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    array-length v0, p1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lz2/ap;->OooO00o:Lz2/uo;

    array-length v3, p1

    sub-int/2addr v3, p2

    invoke-virtual {v0, v1, v3}, Lz2/uo;->OooO00o([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-ge v2, p2, :cond_1

    aget v0, v1, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :catch_0
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final OooO0O0(Lz2/eo;)Lz2/go;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    new-instance v0, Lz2/yo;

    invoke-direct {v0, p1}, Lz2/yo;-><init>(Lz2/eo;)V

    invoke-virtual {v0}, Lz2/yo;->OooO0O0()Lz2/bp;

    move-result-object p1

    invoke-virtual {v0}, Lz2/yo;->OooO0OO()[B

    move-result-object v0

    invoke-static {v0, p1}, Lz2/zo;->OooO0O0([BLz2/bp;)[Lz2/zo;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lz2/zo;->OooO0OO()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v3, [B

    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lz2/zo;->OooO00o()[B

    move-result-object v5

    invoke-virtual {v4}, Lz2/zo;->OooO0OO()I

    move-result v4

    invoke-direct {p0, v5, v4}, Lz2/ap;->OooO00o([BI)V

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_1

    mul-int v7, v6, v2

    add-int/2addr v7, v3

    aget-byte v8, v5, v6

    aput-byte v8, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->OooO00o([B)Lz2/go;

    move-result-object p1

    return-object p1
.end method

.method public final OooO0OO([[Z)Lz2/go;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    invoke-static {p1}, Lz2/eo;->OooOOOO([[Z)Lz2/eo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/ap;->OooO0O0(Lz2/eo;)Lz2/go;

    move-result-object p1

    return-object p1
.end method
