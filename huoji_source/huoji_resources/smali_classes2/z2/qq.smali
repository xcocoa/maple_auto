.class public final Lz2/qq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/hm;


# instance fields
.field private final OooO00o:Lz2/fq;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/fq;

    invoke-direct {v0}, Lz2/fq;-><init>()V

    iput-object v0, p0, Lz2/qq;->OooO00o:Lz2/fq;

    return-void
.end method


# virtual methods
.method public final OooO00o(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lz2/eo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lz2/qq;->OooO0O0(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lz2/eo;

    move-result-object p1

    return-object p1
.end method

.method public final OooO0O0(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lz2/eo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lz2/eo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_0

    iget-object v1, p0, Lz2/qq;->OooO00o:Lz2/fq;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lz2/fq;->OooO0O0(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lz2/eo;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can only encode UPC-A, but got "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
