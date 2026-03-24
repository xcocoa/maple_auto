.class public final Lz2/em;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:Ljava/lang/String;

.field private final OooO0O0:[B

.field private final OooO0OO:I

.field private OooO0Oo:[Lz2/fm;

.field private OooO0o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final OooO0o0:Lcom/google/zxing/BarcodeFormat;

.field private final OooO0oO:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[BI[Lz2/fm;Lcom/google/zxing/BarcodeFormat;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/em;->OooO00o:Ljava/lang/String;

    iput-object p2, p0, Lz2/em;->OooO0O0:[B

    iput p3, p0, Lz2/em;->OooO0OO:I

    iput-object p4, p0, Lz2/em;->OooO0Oo:[Lz2/fm;

    iput-object p5, p0, Lz2/em;->OooO0o0:Lcom/google/zxing/BarcodeFormat;

    const/4 p1, 0x0

    iput-object p1, p0, Lz2/em;->OooO0o:Ljava/util/Map;

    iput-wide p6, p0, Lz2/em;->OooO0oO:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[Lz2/fm;Lcom/google/zxing/BarcodeFormat;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lz2/em;-><init>(Ljava/lang/String;[B[Lz2/fm;Lcom/google/zxing/BarcodeFormat;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[Lz2/fm;Lcom/google/zxing/BarcodeFormat;J)V
    .locals 9

    if-nez p2, :cond_0

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x8

    move v4, v0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    invoke-direct/range {v1 .. v8}, Lz2/em;-><init>(Ljava/lang/String;[BI[Lz2/fm;Lcom/google/zxing/BarcodeFormat;J)V

    return-void
.end method


# virtual methods
.method public final OooO(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lz2/em;->OooO0o:Ljava/util/Map;

    if-nez v0, :cond_0

    iput-object p1, p0, Lz2/em;->OooO0o:Ljava/util/Map;

    return-void

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public final OooO00o([Lz2/fm;)V
    .locals 4

    iget-object v0, p0, Lz2/em;->OooO0Oo:[Lz2/fm;

    if-nez v0, :cond_0

    iput-object p1, p0, Lz2/em;->OooO0Oo:[Lz2/fm;

    return-void

    :cond_0
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [Lz2/fm;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lz2/em;->OooO0Oo:[Lz2/fm;

    :cond_1
    return-void
.end method

.method public final OooO0O0()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    iget-object v0, p0, Lz2/em;->OooO0o0:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method

.method public final OooO0OO()I
    .locals 1

    iget v0, p0, Lz2/em;->OooO0OO:I

    return v0
.end method

.method public final OooO0Oo()[B
    .locals 1

    iget-object v0, p0, Lz2/em;->OooO0O0:[B

    return-object v0
.end method

.method public final OooO0o()[Lz2/fm;
    .locals 1

    iget-object v0, p0, Lz2/em;->OooO0Oo:[Lz2/fm;

    return-object v0
.end method

.method public final OooO0o0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/em;->OooO0o:Ljava/util/Map;

    return-object v0
.end method

.method public final OooO0oO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/em;->OooO00o:Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0oo()J
    .locals 2

    iget-wide v0, p0, Lz2/em;->OooO0oO:J

    return-wide v0
.end method

.method public final OooOO0(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lz2/em;->OooO0o:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lz2/em;->OooO0o:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lz2/em;->OooO0o:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/em;->OooO00o:Ljava/lang/String;

    return-object v0
.end method
