.class public final Lz2/am;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/hm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    invoke-virtual/range {v0 .. v5}, Lz2/am;->OooO0O0(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lz2/eo;

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

    sget-object v0, Lz2/am$OooO00o;->OooO00o:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "No encoder available for format "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance v0, Lz2/km;

    invoke-direct {v0}, Lz2/km;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lz2/xo;

    invoke-direct {v0}, Lz2/xo;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lz2/yp;

    invoke-direct {v0}, Lz2/yp;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lz2/ds;

    invoke-direct {v0}, Lz2/ds;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lz2/kq;

    invoke-direct {v0}, Lz2/kq;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/google/zxing/oned/Code128Writer;

    invoke-direct {v0}, Lcom/google/zxing/oned/Code128Writer;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lz2/dq;

    invoke-direct {v0}, Lz2/dq;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lz2/bq;

    invoke-direct {v0}, Lz2/bq;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lz2/zs;

    invoke-direct {v0}, Lz2/zs;-><init>()V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lz2/qq;

    invoke-direct {v0}, Lz2/qq;-><init>()V

    goto :goto_0

    :pswitch_a
    new-instance v0, Lz2/fq;

    invoke-direct {v0}, Lz2/fq;-><init>()V

    goto :goto_0

    :pswitch_b
    new-instance v0, Lz2/xq;

    invoke-direct {v0}, Lz2/xq;-><init>()V

    goto :goto_0

    :pswitch_c
    new-instance v0, Lz2/hq;

    invoke-direct {v0}, Lz2/hq;-><init>()V

    :goto_0
    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lz2/hm;->OooO0O0(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lz2/eo;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
