.class public final Lz2/dt;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:Lz2/uo;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/uo;

    sget-object v1, Lz2/so;->OooOO0o:Lz2/so;

    invoke-direct {v0, v1}, Lz2/uo;-><init>(Lz2/so;)V

    iput-object v0, p0, Lz2/dt;->OooO00o:Lz2/uo;

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
    iget-object v0, p0, Lz2/dt;->OooO00o:Lz2/uo;

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

.method private OooO0Oo(Lz2/at;Ljava/util/Map;)Lz2/go;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/at;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lz2/go;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    invoke-virtual {p1}, Lz2/at;->OooO0o0()Lz2/gt;

    move-result-object v0

    invoke-virtual {p1}, Lz2/at;->OooO0Oo()Lz2/et;

    move-result-object v1

    invoke-virtual {v1}, Lz2/et;->OooO0Oo()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v1

    invoke-virtual {p1}, Lz2/at;->OooO0OO()[B

    move-result-object p1

    invoke-static {p1, v0, v1}, Lz2/bt;->OooO0O0([BLz2/gt;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lz2/bt;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v6, p1, v4

    invoke-virtual {v6}, Lz2/bt;->OooO0OO()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v5, [B

    array-length v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v7, p1, v5

    invoke-virtual {v7}, Lz2/bt;->OooO00o()[B

    move-result-object v8

    invoke-virtual {v7}, Lz2/bt;->OooO0OO()I

    move-result v7

    invoke-direct {p0, v8, v7}, Lz2/dt;->OooO00o([BI)V

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v7, :cond_1

    add-int/lit8 v10, v6, 0x1

    aget-byte v11, v8, v9

    aput-byte v11, v2, v6

    add-int/lit8 v9, v9, 0x1

    move v6, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v2, v0, v1, p2}, Lz2/ct;->OooO00o([BLz2/gt;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lz2/go;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final OooO0O0(Lz2/eo;)Lz2/go;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz2/dt;->OooO0OO(Lz2/eo;Ljava/util/Map;)Lz2/go;

    move-result-object p1

    return-object p1
.end method

.method public final OooO0OO(Lz2/eo;Ljava/util/Map;)Lz2/go;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/eo;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lz2/go;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    new-instance v0, Lz2/at;

    invoke-direct {v0, p1}, Lz2/at;-><init>(Lz2/eo;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-direct {p0, v0, p2}, Lz2/dt;->OooO0Oo(Lz2/at;Ljava/util/Map;)Lz2/go;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lz2/at;->OooO0o()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lz2/at;->OooO0oO(Z)V

    invoke-virtual {v0}, Lz2/at;->OooO0o0()Lz2/gt;

    invoke-virtual {v0}, Lz2/at;->OooO0Oo()Lz2/et;

    invoke-virtual {v0}, Lz2/at;->OooO0O0()V

    invoke-direct {p0, v0, p2}, Lz2/dt;->OooO0Oo(Lz2/at;Ljava/util/Map;)Lz2/go;

    move-result-object p2

    new-instance v0, Lz2/ft;

    invoke-direct {v0, v2}, Lz2/ft;-><init>(Z)V

    invoke-virtual {p2, v0}, Lz2/go;->OooOOOO(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1 .. :try_end_1} :catch_2

    return-object p2

    :catch_2
    nop

    if-eqz p1, :cond_0

    throw p1

    :cond_0
    throw v1
.end method

.method public final OooO0o([[ZLjava/util/Map;)Lz2/go;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[Z",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lz2/go;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    invoke-static {p1}, Lz2/eo;->OooOOOO([[Z)Lz2/eo;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lz2/dt;->OooO0OO(Lz2/eo;Ljava/util/Map;)Lz2/go;

    move-result-object p1

    return-object p1
.end method

.method public final OooO0o0([[Z)Lz2/go;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz2/dt;->OooO0o([[ZLjava/util/Map;)Lz2/go;

    move-result-object p1

    return-object p1
.end method
