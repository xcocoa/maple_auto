.class public final Lz2/pp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/dm;


# static fields
.field private static final OooO0O0:[Lz2/fm;

.field private static final OooO0OO:I = 0x1e

.field private static final OooO0Oo:I = 0x21


# instance fields
.field private final OooO00o:Lz2/sp;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lz2/fm;

    sput-object v0, Lz2/pp;->OooO0O0:[Lz2/fm;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/sp;

    invoke-direct {v0}, Lz2/sp;-><init>()V

    iput-object v0, p0, Lz2/pp;->OooO00o:Lz2/sp;

    return-void
.end method

.method private static OooO0OO(Lz2/eo;)Lz2/eo;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/eo;->OooO0oO()[I

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v5, v0, v4

    const/4 v6, 0x3

    aget v0, v0, v6

    new-instance v6, Lz2/eo;

    const/16 v7, 0x1e

    const/16 v8, 0x21

    invoke-direct {v6, v7, v8}, Lz2/eo;-><init>(II)V

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_2

    mul-int v10, v9, v0

    div-int/lit8 v11, v0, 0x2

    add-int/2addr v10, v11

    div-int/2addr v10, v8

    add-int/2addr v10, v3

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v7, :cond_1

    mul-int v12, v11, v5

    div-int/lit8 v13, v5, 0x2

    add-int/2addr v12, v13

    and-int/lit8 v13, v9, 0x1

    mul-int v13, v13, v5

    div-int/2addr v13, v4

    add-int/2addr v12, v13

    div-int/2addr v12, v7

    add-int/2addr v12, v2

    invoke-virtual {p0, v12, v10}, Lz2/eo;->OooO0o0(II)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v6, v11, v9}, Lz2/eo;->OooOOo0(II)V

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    return-object v6

    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final OooO00o(Lz2/vl;Ljava/util/Map;)Lz2/em;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/vl;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lz2/em;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    if-eqz p2, :cond_1

    sget-object v0, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lz2/vl;->OooO0O0()Lz2/eo;

    move-result-object p1

    invoke-static {p1}, Lz2/pp;->OooO0OO(Lz2/eo;)Lz2/eo;

    move-result-object p1

    iget-object v0, p0, Lz2/pp;->OooO00o:Lz2/sp;

    invoke-virtual {v0, p1, p2}, Lz2/sp;->OooO0OO(Lz2/eo;Ljava/util/Map;)Lz2/go;

    move-result-object p1

    new-instance p2, Lz2/em;

    invoke-virtual {p1}, Lz2/go;->OooOO0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lz2/go;->OooO0oO()[B

    move-result-object v1

    sget-object v2, Lz2/pp;->OooO0O0:[Lz2/fm;

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {p2, v0, v1, v2, v3}, Lz2/em;-><init>(Ljava/lang/String;[B[Lz2/fm;Lcom/google/zxing/BarcodeFormat;)V

    invoke-virtual {p1}, Lz2/go;->OooO0O0()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p2, v0, p1}, Lz2/em;->OooOO0(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_0
    return-object p2

    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method public final OooO0O0(Lz2/vl;)Lz2/em;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz2/pp;->OooO00o(Lz2/vl;Ljava/util/Map;)Lz2/em;

    move-result-object p1

    return-object p1
.end method

.method public final reset()V
    .locals 0

    return-void
.end method
