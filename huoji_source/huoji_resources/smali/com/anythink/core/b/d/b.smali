.class public Lcom/anythink/core/b/d/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "b"

.field public static final b:Ljava/lang/String; = "${AUCTION_PRICE}"

.field public static final c:Ljava/lang/String; = "${AUCTION_LOSS}"

.field public static final d:Ljava/lang/String; = "${AUCTION_SEAT_ID}"

.field public static final e:Ljava/lang/String; = "${AUCTION_BID_TO_WIN}"

.field public static final f:Ljava/lang/String; = "${AUCTION_CURRENCY}"

.field public static final g:Ljava/lang/String; = "{__BIDDER__}"

.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I = 0x3

.field public static final k:I = 0x4

.field public static final l:Ljava/lang/String; = "102"

.field public static final m:Ljava/lang/String; = "103"

.field public static final n:Ljava/lang/String; = "2"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/anythink/core/common/f/q;D)D
    .locals 4

    iget-wide v0, p0, Lcom/anythink/core/common/f/q;->l:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    mul-double p1, p1, v0

    :cond_0
    return-wide p1
.end method

.method private static a(Lcom/anythink/core/common/f/q;)Lcom/anythink/core/common/f/av;
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/core/common/f/q;->f()Lcom/anythink/core/common/f/av;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static varargs a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/av;Lcom/anythink/core/common/f/h;[Lcom/anythink/core/api/BaseAd;)V
    .locals 3

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->M()Lcom/anythink/core/common/f/q;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_0

    array-length v1, p3

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v2, p3, v1

    if-eqz v2, :cond_0

    aget-object p0, p3, v1

    invoke-virtual {p0}, Lcom/anythink/core/api/BaseAd;->getNetworkInfoMap()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkInfoMap()Ljava/util/Map;

    move-result-object p0

    :goto_0
    new-instance p3, Lcom/anythink/core/common/f/bc;

    invoke-direct {p3}, Lcom/anythink/core/common/f/bc;-><init>()V

    invoke-virtual {p2}, Lcom/anythink/core/common/f/h;->V()Lcom/anythink/core/common/f/h;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/anythink/core/common/f/bc;->a(Lcom/anythink/core/common/f/h;)V

    invoke-virtual {p3, p0}, Lcom/anythink/core/common/f/bc;->a(Ljava/util/Map;)V

    invoke-virtual {p3, p1}, Lcom/anythink/core/common/f/bc;->a(Lcom/anythink/core/common/f/av;)V

    invoke-virtual {p3}, Lcom/anythink/core/common/f/bc;->c()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Lcom/anythink/core/common/f/bc;->c()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/anythink/core/common/f/av;->A(I)V

    :cond_1
    iput-object p3, v0, Lcom/anythink/core/common/f/q;->u:Lcom/anythink/core/common/f/bc;

    if-eqz p0, :cond_2

    const-string p3, "ws_action"

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p3, p0, Lcom/anythink/core/common/f/q$a;

    if-eqz p3, :cond_2

    check-cast p0, Lcom/anythink/core/common/f/q$a;

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/f/q;->a(Lcom/anythink/core/common/f/q$a;)V

    :cond_2
    invoke-virtual {p2}, Lcom/anythink/core/common/f/h;->P()I

    move-result p0

    const/16 p2, 0x42

    if-ne p0, p2, :cond_3

    invoke-virtual {v1}, Lcom/anythink/core/common/f/h;->X()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/anythink/core/basead/adx/a;

    invoke-direct {p0, v0, p1, v1}, Lcom/anythink/core/basead/adx/a;-><init>(Lcom/anythink/core/common/f/q;Lcom/anythink/core/common/f/av;Lcom/anythink/core/common/f/h;)V

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/f/q;->a(Lcom/anythink/core/basead/adx/api/IATAdxHandler;)V

    :cond_3
    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/common/f/b;Z)V

    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/b;Z)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/core/common/f/b;->h()Lcom/anythink/core/common/f/h;

    move-result-object p0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/av;->M()Lcom/anythink/core/common/f/q;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/anythink/core/common/f/y;

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-direct {v2, p1, v0, p0}, Lcom/anythink/core/common/f/y;-><init>(ILcom/anythink/core/common/f/av;Lcom/anythink/core/common/f/h;)V

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/common/f/q;Lcom/anythink/core/common/f/y;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private static a(Lcom/anythink/core/common/f/bc;)V
    .locals 0

    invoke-static {p0}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/bc;)V

    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/h;Ljava/util/List;JII)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/f/h;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;JII)V"
        }
    .end annotation

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v8, Lcom/anythink/core/b/d/b$1;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p2

    move v5, p4

    move-object v6, p1

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/anythink/core/b/d/b$1;-><init>(Lcom/anythink/core/common/f/h;JILjava/util/List;I)V

    invoke-virtual {v0, v8}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/q;Lcom/anythink/core/common/f/av;)V
    .locals 21

    move-object/from16 v7, p0

    if-eqz v7, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v8, v7, Lcom/anythink/core/common/f/q;->u:Lcom/anythink/core/common/f/bc;

    if-nez v8, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/core/common/f/q;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v9

    iget-wide v0, v7, Lcom/anythink/core/common/f/q;->q:D

    invoke-virtual {v8}, Lcom/anythink/core/common/f/bc;->a()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_3

    move-wide v11, v2

    goto :goto_0

    :cond_3
    move-wide v11, v0

    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/anythink/core/b/d/a;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v13

    move-wide v1, v9

    move-wide v3, v11

    move-wide v5, v13

    invoke-static/range {v1 .. v6}, Lcom/anythink/core/b/d/a;->a(DDD)D

    move-result-wide v0

    invoke-virtual {v8, v9, v10}, Lcom/anythink/core/common/f/bc;->a(D)V

    invoke-virtual {v8, v11, v12}, Lcom/anythink/core/common/f/bc;->b(D)V

    invoke-virtual {v8, v13, v14}, Lcom/anythink/core/common/f/bc;->c(D)V

    invoke-virtual {v8, v0, v1}, Lcom/anythink/core/common/f/bc;->d(D)V

    invoke-static {v7, v9, v10}, Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/common/f/q;D)D

    move-result-wide v16

    invoke-static {v7, v0, v1}, Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/common/f/q;D)D

    move-result-wide v9

    invoke-virtual {v8}, Lcom/anythink/core/common/f/bc;->w()Z

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/av;->Z()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/anythink/core/common/a/a;->a()Lcom/anythink/core/common/a/a;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/anythink/core/common/a/a;->a(Lcom/anythink/core/common/f/q;)V

    :cond_4
    if-eqz v0, :cond_8

    move-object/from16 v1, p0

    move-object v2, v8

    move-wide/from16 v3, v16

    move-wide v5, v9

    invoke-static/range {v1 .. v6}, Lcom/anythink/core/b/d/a;->a(Lcom/anythink/core/common/f/q;Lcom/anythink/core/common/f/bc;DD)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v8, :cond_6

    invoke-static {v0, v8}, Lcom/anythink/core/common/h/f;->a(Ljava/lang/String;Lcom/anythink/core/common/f/bc;)Lcom/anythink/core/common/h/f;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/h/a;->a(ILcom/anythink/core/common/h/k;)V

    goto :goto_1

    :cond_5
    invoke-static {v8}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/bc;)V

    :cond_6
    :goto_1
    iget-object v15, v7, Lcom/anythink/core/common/f/o;->biddingNotice:Lcom/anythink/core/api/ATBiddingNotice;

    if-eqz v15, :cond_7

    :try_start_0
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    move-wide/from16 v18, v9

    invoke-interface/range {v15 .. v20}, Lcom/anythink/core/api/ATBiddingNotice;->notifyBidWin(DDLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyBidWin: error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "anythink"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/core/common/f/q;->i()Lcom/anythink/core/common/f/q$a;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "${AUCTION_BID_TO_WIN}"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/anythink/core/common/f/bc;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{__BIDDER__}"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/f/q$a;->a(Ljava/util/Map;)V

    goto :goto_3

    :cond_8
    invoke-static {v8}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/bc;)V

    :cond_9
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/core/common/f/q;->g()V

    :cond_a
    :goto_4
    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/q;Lcom/anythink/core/common/f/y;Z)V
    .locals 22

    move-object/from16 v8, p0

    if-nez v8, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/anythink/core/b/f;->a()Lcom/anythink/core/b/f;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/y;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/anythink/core/b/f;->a(Ljava/lang/String;Lcom/anythink/core/common/f/q;)V

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/y;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/anythink/core/common/a/a;->a()Lcom/anythink/core/common/a/a;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v8, Lcom/anythink/core/common/f/o;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/a/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/core/common/f/q;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/anythink/core/b/d/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [return] sendLossNotice, win or loss has been sent, do anything!\n bid id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/anythink/core/common/f/o;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/core/common/f/o;->getSortPrice()D

    move-result-wide v0

    iget v2, v8, Lcom/anythink/core/common/f/q;->d:I

    const/4 v3, 0x0

    if-eqz v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/core/common/f/q;->f()Lcom/anythink/core/common/f/av;

    move-result-object v3

    :cond_3
    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-static {v3}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v0

    invoke-virtual {v3}, Lcom/anythink/core/common/f/av;->d()I

    move-result v2

    invoke-virtual {v3}, Lcom/anythink/core/common/f/av;->k()Z

    move-result v3

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/y;->e()D

    move-result-wide v5

    const-wide/16 v9, 0x0

    cmpl-double v7, v5, v9

    if-lez v7, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/y;->e()D

    move-result-wide v5

    cmpl-double v7, v5, v0

    if-lez v7, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/y;->e()D

    move-result-wide v0

    iget v2, v8, Lcom/anythink/core/common/f/q;->d:I

    goto :goto_1

    :cond_5
    move v4, v3

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/y;->a()D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/y;->c()Ljava/lang/String;

    move-result-object v3

    cmpl-double v7, v5, v9

    if-lez v7, :cond_6

    const/4 v0, -0x1

    const-string v1, "102"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, -0x1

    move-wide/from16 v20, v5

    move v5, v1

    move-wide/from16 v0, v20

    goto :goto_2

    :cond_6
    move v5, v4

    move v4, v2

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/y;->f()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/core/common/f/o;->getSortPrice()D

    move-result-wide v6

    iget v9, v8, Lcom/anythink/core/common/f/q;->d:I

    cmpg-double v10, v0, v6

    if-gtz v10, :cond_7

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v0, v6

    :cond_7
    move-wide v11, v0

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/y;->q()D

    move-result-wide v14

    invoke-static {v11, v12, v14, v15}, Lcom/anythink/core/b/d/a;->a(DD)D

    move-result-wide v0

    invoke-static {v5, v2, v9}, Lcom/anythink/core/b/d/a;->b(ZII)Ljava/lang/String;

    move-result-object v6

    move/from16 p2, v2

    if-eqz v3, :cond_8

    move-object v7, v3

    goto :goto_3

    :cond_8
    move-object v7, v6

    :goto_3
    iget-wide v2, v8, Lcom/anythink/core/common/f/o;->originPrice:D

    move-object/from16 v10, p1

    move-object v13, v7

    move-wide/from16 v16, v0

    move-wide/from16 v18, v2

    invoke-static/range {v10 .. v19}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/y;DLjava/lang/String;DDD)V

    invoke-static {v8, v0, v1}, Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/common/f/q;D)D

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/y;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/anythink/core/common/a/a;->a()Lcom/anythink/core/common/a/a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/anythink/core/common/a/a;->a(Lcom/anythink/core/common/f/q;)V

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/y;->t()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "-1"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    monitor-enter p0

    :try_start_0
    iget-object v0, v8, Lcom/anythink/core/common/f/o;->biddingNotice:Lcom/anythink/core/api/ATBiddingNotice;

    if-eqz v0, :cond_a

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "adn_id"

    invoke-static {v5, v4, v9}, Lcom/anythink/core/b/d/a;->a(ZII)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v2, p2

    :try_start_1
    invoke-static {v5, v2}, Lcom/anythink/core/b/d/a;->a(ZI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v10, v11, v1}, Lcom/anythink/core/api/ATBiddingNotice;->notifyBidLoss(Ljava/lang/String;DLjava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "anythink"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notifyBidLoss: error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v4

    move v4, v5

    move-wide v5, v10

    move-object v9, v7

    invoke-static/range {v1 .. v7}, Lcom/anythink/core/b/d/a;->a(Lcom/anythink/core/common/f/q;Lcom/anythink/core/common/f/y;IZDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {v0}, Lcom/anythink/core/b/d/b;->a(Ljava/lang/String;)V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/core/common/f/q;->i()Lcom/anythink/core/common/f/q$a;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "${AUCTION_PRICE}"

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "{__BIDDER__}"

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/y;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "${AUCTION_LOSS}"

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/f/q$a;->b(Ljava/util/Map;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_c
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/core/common/f/q;->e()V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/core/common/f/q;->g()V

    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/q;ZDZ)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/anythink/core/common/f/q;->l:D

    iget-object v2, p0, Lcom/anythink/core/common/f/q;->j:Ljava/lang/String;

    iget v3, p0, Lcom/anythink/core/common/f/q;->d:I

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-lez v6, :cond_1

    mul-double p2, p2, v0

    :cond_1
    if-eqz p1, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object v2, p0, Lcom/anythink/core/common/f/o;->displayNoticeUrl:Ljava/lang/String;

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_4

    const-string p4, "${AUCTION_PRICE}"

    invoke-static {p0, p2, p3}, Lcom/anythink/core/b/d/a;->a(Lcom/anythink/core/common/f/q;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/anythink/core/common/f/o;->displayNoticeUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x2

    invoke-static {p4, v1, v3}, Lcom/anythink/core/b/d/a;->b(ZII)Ljava/lang/String;

    move-result-object p4

    const-string v1, "${AUCTION_PRICE}"

    invoke-static {p0, p2, p3}, Lcom/anythink/core/b/d/a;->a(Lcom/anythink/core/common/f/q;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "${AUCTION_LOSS}"

    invoke-virtual {v0, v1, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    :goto_0
    invoke-static {p4}, Lcom/anythink/core/b/d/b;->a(Ljava/lang/String;)V

    :cond_4
    monitor-enter p0

    :try_start_0
    iget-object p4, p0, Lcom/anythink/core/common/f/o;->biddingNotice:Lcom/anythink/core/api/ATBiddingNotice;

    if-eqz p4, :cond_5

    invoke-interface {p4, p1, p2, p3}, Lcom/anythink/core/api/ATBiddingNotice;->notifyBidDisplay(ZD)V

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/anythink/core/common/f/q;->e()V

    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/anythink/core/common/h/f;->a(Ljava/lang/String;)Lcom/anythink/core/common/h/f;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/anythink/core/common/h/a;->a(ILcom/anythink/core/common/h/k;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/anythink/core/common/f/bc;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/anythink/core/common/h/f;->a(Ljava/lang/String;Lcom/anythink/core/common/f/bc;)Lcom/anythink/core/common/h/f;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/anythink/core/common/h/a;->a(ILcom/anythink/core/common/h/k;)V

    return-void
.end method
