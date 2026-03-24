.class public final Lz2/up;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/vp;


# static fields
.field private static final OooO0O0:I = 0x64

.field private static final OooO0OO:I = 0x4


# instance fields
.field private final OooO00o:Lz2/dm;


# direct methods
.method public constructor <init>(Lz2/dm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/up;->OooO00o:Lz2/dm;

    return-void
.end method

.method private OooO00o(Lz2/vl;Ljava/util/Map;Ljava/util/List;III)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/vl;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;",
            "Ljava/util/List<",
            "Lz2/em;",
            ">;III)V"
        }
    .end annotation

    move/from16 v7, p4

    move-object/from16 v8, p1

    move/from16 v9, p5

    move/from16 v10, p6

    :goto_0
    const/4 v0, 0x4

    if-le v10, v0, :cond_0

    return-void

    :cond_0
    move-object/from16 v11, p0

    :try_start_0
    iget-object v0, v11, Lz2/up;->OooO00o:Lz2/dm;

    move-object/from16 v12, p2

    invoke-interface {v0, v8, v12}, Lz2/dm;->OooO00o(Lz2/vl;Ljava/util/Map;)Lz2/em;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2/em;

    invoke-virtual {v2}, Lz2/em;->OooO0oO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lz2/em;->OooO0oO()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    invoke-static {v0, v7, v9}, Lz2/up;->OooO0O0(Lz2/em;II)Lz2/em;

    move-result-object v1

    move-object/from16 v14, p3

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object/from16 v14, p3

    :goto_2
    invoke-virtual {v0}, Lz2/em;->OooO0o()[Lz2/fm;

    move-result-object v0

    if-eqz v0, :cond_d

    array-length v1, v0

    if-nez v1, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v8}, Lz2/vl;->OooO0o0()I

    move-result v15

    invoke-virtual {v8}, Lz2/vl;->OooO0Oo()I

    move-result v6

    int-to-float v1, v15

    int-to-float v2, v6

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v2

    const/4 v2, 0x0

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v3, :cond_9

    aget-object v16, v0, v13

    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Lz2/fm;->OooO0OO()F

    move-result v17

    invoke-virtual/range {v16 .. v16}, Lz2/fm;->OooO0Oo()F

    move-result v16

    cmpg-float v18, v17, v1

    if-gez v18, :cond_5

    move/from16 v1, v17

    :cond_5
    cmpg-float v18, v16, v5

    if-gez v18, :cond_6

    move/from16 v5, v16

    :cond_6
    cmpl-float v18, v17, v4

    if-lez v18, :cond_7

    move/from16 v4, v17

    :cond_7
    cmpl-float v17, v16, v2

    if-lez v17, :cond_8

    move/from16 v2, v16

    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_9
    const/high16 v13, 0x42c80000    # 100.0f

    cmpl-float v0, v1, v13

    if-lez v0, :cond_a

    float-to-int v0, v1

    const/4 v1, 0x0

    invoke-virtual {v8, v1, v1, v0, v6}, Lz2/vl;->OooO00o(IIII)Lz2/vl;

    move-result-object v3

    add-int/lit8 v16, v10, 0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move v3, v2

    move-object/from16 v2, p2

    move/from16 v19, v3

    move-object/from16 v3, p3

    move/from16 v20, v4

    move/from16 v4, p4

    move v13, v5

    move v5, v9

    move v11, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lz2/up;->OooO00o(Lz2/vl;Ljava/util/Map;Ljava/util/List;III)V

    goto :goto_4

    :cond_a
    move/from16 v19, v2

    move/from16 v20, v4

    move v13, v5

    move v11, v6

    :goto_4
    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, v13, v0

    if-lez v0, :cond_b

    float-to-int v0, v13

    const/4 v1, 0x0

    invoke-virtual {v8, v1, v1, v15, v0}, Lz2/vl;->OooO00o(IIII)Lz2/vl;

    move-result-object v2

    add-int/lit8 v6, v10, 0x1

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move v5, v9

    invoke-direct/range {v0 .. v6}, Lz2/up;->OooO00o(Lz2/vl;Ljava/util/Map;Ljava/util/List;III)V

    :cond_b
    add-int/lit8 v0, v15, -0x64

    int-to-float v0, v0

    move/from16 v4, v20

    cmpg-float v0, v4, v0

    if-gez v0, :cond_c

    float-to-int v0, v4

    sub-int v1, v15, v0

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2, v1, v11}, Lz2/vl;->OooO00o(IIII)Lz2/vl;

    move-result-object v1

    add-int v4, v7, v0

    add-int/lit8 v6, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v5, v9

    invoke-direct/range {v0 .. v6}, Lz2/up;->OooO00o(Lz2/vl;Ljava/util/Map;Ljava/util/List;III)V

    :cond_c
    add-int/lit8 v6, v11, -0x64

    int-to-float v0, v6

    move/from16 v2, v19

    cmpg-float v0, v2, v0

    if-gez v0, :cond_d

    float-to-int v0, v2

    sub-int v6, v11, v0

    const/4 v1, 0x0

    invoke-virtual {v8, v1, v0, v15, v6}, Lz2/vl;->OooO00o(IIII)Lz2/vl;

    move-result-object v8

    add-int/2addr v9, v0

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :catch_0
    :cond_d
    :goto_5
    return-void
.end method

.method private static OooO0O0(Lz2/em;II)Lz2/em;
    .locals 10

    invoke-virtual {p0}, Lz2/em;->OooO0o()[Lz2/fm;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    array-length v1, v0

    new-array v6, v1, [Lz2/fm;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    new-instance v3, Lz2/fm;

    invoke-virtual {v2}, Lz2/fm;->OooO0OO()F

    move-result v4

    int-to-float v5, p1

    add-float/2addr v4, v5

    invoke-virtual {v2}, Lz2/fm;->OooO0Oo()F

    move-result v2

    int-to-float v5, p2

    add-float/2addr v2, v5

    invoke-direct {v3, v4, v2}, Lz2/fm;-><init>(FF)V

    aput-object v3, v6, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lz2/em;

    invoke-virtual {p0}, Lz2/em;->OooO0oO()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lz2/em;->OooO0Oo()[B

    move-result-object v4

    invoke-virtual {p0}, Lz2/em;->OooO0OO()I

    move-result v5

    invoke-virtual {p0}, Lz2/em;->OooO0O0()Lcom/google/zxing/BarcodeFormat;

    move-result-object v7

    invoke-virtual {p0}, Lz2/em;->OooO0oo()J

    move-result-wide v8

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lz2/em;-><init>(Ljava/lang/String;[BI[Lz2/fm;Lcom/google/zxing/BarcodeFormat;J)V

    invoke-virtual {p0}, Lz2/em;->OooO0o0()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1, p0}, Lz2/em;->OooO(Ljava/util/Map;)V

    return-object p1
.end method


# virtual methods
.method public final OooO0OO(Lz2/vl;)[Lz2/em;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz2/up;->OooO0Oo(Lz2/vl;Ljava/util/Map;)[Lz2/em;

    move-result-object p1

    return-object p1
.end method

.method public final OooO0Oo(Lz2/vl;Ljava/util/Map;)[Lz2/em;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/vl;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lz2/em;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Lz2/up;->OooO00o(Lz2/vl;Ljava/util/Map;Ljava/util/List;III)V

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lz2/em;

    invoke-interface {v7, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lz2/em;

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method
