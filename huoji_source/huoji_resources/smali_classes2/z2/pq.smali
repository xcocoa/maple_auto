.class public final Lz2/pq;
.super Lz2/uq;
.source ""


# instance fields
.field private final OooOO0O:Lz2/uq;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lz2/uq;-><init>()V

    new-instance v0, Lz2/eq;

    invoke-direct {v0}, Lz2/eq;-><init>()V

    iput-object v0, p0, Lz2/pq;->OooOO0O:Lz2/uq;

    return-void
.end method

.method private static OooOOoo(Lz2/em;)Lz2/em;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/em;->OooO0oO()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1

    new-instance v1, Lz2/em;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lz2/em;->OooO0o()[Lz2/fm;

    move-result-object v3

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v1, v0, v2, v3, v4}, Lz2/em;-><init>(Ljava/lang/String;[B[Lz2/fm;Lcom/google/zxing/BarcodeFormat;)V

    invoke-virtual {p0}, Lz2/em;->OooO0o0()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/em;->OooO0o0()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, p0}, Lz2/em;->OooO(Ljava/util/Map;)V

    :cond_0
    return-object v1

    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final OooO00o(Lz2/vl;Ljava/util/Map;)Lz2/em;
    .locals 1
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
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    iget-object v0, p0, Lz2/pq;->OooOO0O:Lz2/uq;

    invoke-virtual {v0, p1, p2}, Lz2/nq;->OooO00o(Lz2/vl;Ljava/util/Map;)Lz2/em;

    move-result-object p1

    invoke-static {p1}, Lz2/pq;->OooOOoo(Lz2/em;)Lz2/em;

    move-result-object p1

    return-object p1
.end method

.method public final OooO0O0(Lz2/vl;)Lz2/em;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    iget-object v0, p0, Lz2/pq;->OooOO0O:Lz2/uq;

    invoke-virtual {v0, p1}, Lz2/nq;->OooO0O0(Lz2/vl;)Lz2/em;

    move-result-object p1

    invoke-static {p1}, Lz2/pq;->OooOOoo(Lz2/em;)Lz2/em;

    move-result-object p1

    return-object p1
.end method

.method public final OooO0OO(ILz2/do;Ljava/util/Map;)Lz2/em;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lz2/do;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lz2/em;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    iget-object v0, p0, Lz2/pq;->OooOO0O:Lz2/uq;

    invoke-virtual {v0, p1, p2, p3}, Lz2/uq;->OooO0OO(ILz2/do;Ljava/util/Map;)Lz2/em;

    move-result-object p1

    invoke-static {p1}, Lz2/pq;->OooOOoo(Lz2/em;)Lz2/em;

    move-result-object p1

    return-object p1
.end method

.method public final OooOO0o(Lz2/do;[ILjava/lang/StringBuilder;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lz2/pq;->OooOO0O:Lz2/uq;

    invoke-virtual {v0, p1, p2, p3}, Lz2/uq;->OooOO0o(Lz2/do;[ILjava/lang/StringBuilder;)I

    move-result p1

    return p1
.end method

.method public final OooOOO0(ILz2/do;[ILjava/util/Map;)Lz2/em;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lz2/do;",
            "[I",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lz2/em;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    iget-object v0, p0, Lz2/pq;->OooOO0O:Lz2/uq;

    invoke-virtual {v0, p1, p2, p3, p4}, Lz2/uq;->OooOOO0(ILz2/do;[ILjava/util/Map;)Lz2/em;

    move-result-object p1

    invoke-static {p1}, Lz2/pq;->OooOOoo(Lz2/em;)Lz2/em;

    move-result-object p1

    return-object p1
.end method

.method public final OooOOo0()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
