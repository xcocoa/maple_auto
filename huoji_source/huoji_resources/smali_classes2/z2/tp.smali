.class public final Lz2/tp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/dm;


# instance fields
.field private final OooO00o:Lz2/dm;


# direct methods
.method public constructor <init>(Lz2/dm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/tp;->OooO00o:Lz2/dm;

    return-void
.end method

.method private static OooO0OO([Lz2/fm;II)V
    .locals 5

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-object v1, p0, v0

    new-instance v2, Lz2/fm;

    invoke-virtual {v1}, Lz2/fm;->OooO0OO()F

    move-result v3

    int-to-float v4, p1

    add-float/2addr v3, v4

    invoke-virtual {v1}, Lz2/fm;->OooO0Oo()F

    move-result v1

    int-to-float v4, p2

    add-float/2addr v1, v4

    invoke-direct {v2, v3, v1}, Lz2/fm;-><init>(FF)V

    aput-object v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final OooO00o(Lz2/vl;Ljava/util/Map;)Lz2/em;
    .locals 5
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

    invoke-virtual {p1}, Lz2/vl;->OooO0o0()I

    move-result v0

    invoke-virtual {p1}, Lz2/vl;->OooO0Oo()I

    move-result v1

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lz2/tp;->OooO00o:Lz2/dm;

    invoke-virtual {p1, v2, v2, v0, v1}, Lz2/vl;->OooO00o(IIII)Lz2/vl;

    move-result-object v4

    invoke-interface {v3, v4, p2}, Lz2/dm;->OooO00o(Lz2/vl;Ljava/util/Map;)Lz2/em;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :try_start_1
    iget-object v3, p0, Lz2/tp;->OooO00o:Lz2/dm;

    invoke-virtual {p1, v0, v2, v0, v1}, Lz2/vl;->OooO00o(IIII)Lz2/vl;

    move-result-object v4

    invoke-interface {v3, v4, p2}, Lz2/dm;->OooO00o(Lz2/vl;Ljava/util/Map;)Lz2/em;

    move-result-object v3

    invoke-virtual {v3}, Lz2/em;->OooO0o()[Lz2/fm;

    move-result-object v4

    invoke-static {v4, v0, v2}, Lz2/tp;->OooO0OO([Lz2/fm;II)V
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    :catch_1
    :try_start_2
    iget-object v3, p0, Lz2/tp;->OooO00o:Lz2/dm;

    invoke-virtual {p1, v2, v1, v0, v1}, Lz2/vl;->OooO00o(IIII)Lz2/vl;

    move-result-object v4

    invoke-interface {v3, v4, p2}, Lz2/dm;->OooO00o(Lz2/vl;Ljava/util/Map;)Lz2/em;

    move-result-object v3

    invoke-virtual {v3}, Lz2/em;->OooO0o()[Lz2/fm;

    move-result-object v4

    invoke-static {v4, v2, v1}, Lz2/tp;->OooO0OO([Lz2/fm;II)V
    :try_end_2
    .catch Lcom/google/zxing/NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v3

    :catch_2
    :try_start_3
    iget-object v2, p0, Lz2/tp;->OooO00o:Lz2/dm;

    invoke-virtual {p1, v0, v1, v0, v1}, Lz2/vl;->OooO00o(IIII)Lz2/vl;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lz2/dm;->OooO00o(Lz2/vl;Ljava/util/Map;)Lz2/em;

    move-result-object v2

    invoke-virtual {v2}, Lz2/em;->OooO0o()[Lz2/fm;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lz2/tp;->OooO0OO([Lz2/fm;II)V
    :try_end_3
    .catch Lcom/google/zxing/NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v2

    :catch_3
    div-int/lit8 v2, v0, 0x2

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v2, v3, v0, v1}, Lz2/vl;->OooO00o(IIII)Lz2/vl;

    move-result-object p1

    iget-object v0, p0, Lz2/tp;->OooO00o:Lz2/dm;

    invoke-interface {v0, p1, p2}, Lz2/dm;->OooO00o(Lz2/vl;Ljava/util/Map;)Lz2/em;

    move-result-object p1

    invoke-virtual {p1}, Lz2/em;->OooO0o()[Lz2/fm;

    move-result-object p2

    invoke-static {p2, v2, v3}, Lz2/tp;->OooO0OO([Lz2/fm;II)V

    return-object p1
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

    invoke-virtual {p0, p1, v0}, Lz2/tp;->OooO00o(Lz2/vl;Ljava/util/Map;)Lz2/em;

    move-result-object p1

    return-object p1
.end method

.method public final reset()V
    .locals 1

    iget-object v0, p0, Lz2/tp;->OooO00o:Lz2/dm;

    invoke-interface {v0}, Lz2/dm;->reset()V

    return-void
.end method
