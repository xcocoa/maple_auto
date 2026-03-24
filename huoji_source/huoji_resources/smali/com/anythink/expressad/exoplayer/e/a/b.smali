.class public final Lcom/anythink/expressad/exoplayer/e/a/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/e/a/b$e;,
        Lcom/anythink/expressad/exoplayer/e/a/b$d;,
        Lcom/anythink/expressad/exoplayer/e/a/b$b;,
        Lcom/anythink/expressad/exoplayer/e/a/b$c;,
        Lcom/anythink/expressad/exoplayer/e/a/b$f;,
        Lcom/anythink/expressad/exoplayer/e/a/b$a;,
        Lcom/anythink/expressad/exoplayer/e/a/b$g;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AtomParsers"

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:I = 0x3


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "vide"

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/af;->f(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/anythink/expressad/exoplayer/e/a/b;->b:I

    const-string v0, "soun"

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/af;->f(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/anythink/expressad/exoplayer/e/a/b;->c:I

    const-string v0, "text"

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/af;->f(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/anythink/expressad/exoplayer/e/a/b;->d:I

    const-string v0, "sbtl"

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/af;->f(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/anythink/expressad/exoplayer/e/a/b;->e:I

    const-string v0, "subt"

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/af;->f(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/anythink/expressad/exoplayer/e/a/b;->f:I

    const-string v0, "clcp"

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/af;->f(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/anythink/expressad/exoplayer/e/a/b;->g:I

    const-string v0, "meta"

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/af;->f(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/anythink/expressad/exoplayer/e/a/b;->h:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/k/s;II)I
    .locals 4

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->c()I

    move-result v0

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize should be positive"

    invoke-static {v2, v3}, Lcom/anythink/expressad/exoplayer/k/a;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v2

    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->O:I

    if-ne v2, v3, :cond_1

    return v0

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/k/s;)J
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v1

    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/e/a/a;->a(I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/e/a/a$a;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/exoplayer/e/a/a$a;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    if-eqz p0, :cond_5

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->V:I

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->d(I)Lcom/anythink/expressad/exoplayer/e/a/a$b;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v0

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/e/a/a;->a(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v1

    new-array v2, v1, [J

    new-array v3, v1, [J

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->n()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v6

    :goto_1
    aput-wide v6, v2, v4

    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->j()J

    move-result-wide v6

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v6

    int-to-long v6, v6

    :goto_2
    aput-wide v6, v3, v4

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->f()S

    move-result v6

    if-ne v6, v5, :cond_3

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_3
    const/4 p0, 0x0

    invoke-static {p0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/k/s;IILjava/lang/String;Lcom/anythink/expressad/exoplayer/d/e;Z)Lcom/anythink/expressad/exoplayer/e/a/b$c;
    .locals 46

    move-object/from16 v0, p0

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v14

    new-instance v15, Lcom/anythink/expressad/exoplayer/e/a/b$c;

    invoke-direct {v15, v14}, Lcom/anythink/expressad/exoplayer/e/a/b$c;-><init>(I)V

    const/4 v11, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v14, :cond_4e

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->c()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v8

    const/4 v7, 0x1

    if-lez v8, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const-string v6, "childAtomSize should be positive"

    invoke-static {v1, v6}, Lcom/anythink/expressad/exoplayer/k/a;->a(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v1

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->g:I

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/16 v3, 0x8

    if-eq v1, v2, :cond_31

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->h:I

    if-eq v1, v2, :cond_31

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->ae:I

    if-eq v1, v2, :cond_31

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->aq:I

    if-eq v1, v2, :cond_31

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->i:I

    if-eq v1, v2, :cond_31

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->j:I

    if-eq v1, v2, :cond_31

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->k:I

    if-eq v1, v2, :cond_31

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->aP:I

    if-eq v1, v2, :cond_31

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->aQ:I

    if-ne v1, v2, :cond_1

    goto/16 :goto_1f

    :cond_1
    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->n:I

    if-eq v1, v2, :cond_b

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->af:I

    if-eq v1, v2, :cond_b

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->s:I

    if-eq v1, v2, :cond_b

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->u:I

    if-eq v1, v2, :cond_b

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->w:I

    if-eq v1, v2, :cond_b

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->z:I

    if-eq v1, v2, :cond_b

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->x:I

    if-eq v1, v2, :cond_b

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->y:I

    if-eq v1, v2, :cond_b

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->aD:I

    if-eq v1, v2, :cond_b

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->aE:I

    if-eq v1, v2, :cond_b

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->q:I

    if-eq v1, v2, :cond_b

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->r:I

    if-eq v1, v2, :cond_b

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->o:I

    if-eq v1, v2, :cond_b

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->aT:I

    if-ne v1, v2, :cond_2

    goto/16 :goto_6

    :cond_2
    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->ao:I

    if-eq v1, v2, :cond_5

    sget v5, Lcom/anythink/expressad/exoplayer/e/a/a;->az:I

    if-eq v1, v5, :cond_5

    sget v5, Lcom/anythink/expressad/exoplayer/e/a/a;->aA:I

    if-eq v1, v5, :cond_5

    sget v5, Lcom/anythink/expressad/exoplayer/e/a/a;->aB:I

    if-eq v1, v5, :cond_5

    sget v5, Lcom/anythink/expressad/exoplayer/e/a/a;->aC:I

    if-ne v1, v5, :cond_3

    goto :goto_2

    :cond_3
    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->aS:I

    if-ne v1, v2, :cond_4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/x-camera-motion"

    invoke-static {v1, v2, v4, v4}, Lcom/anythink/expressad/exoplayer/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/exoplayer/d/e;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v1

    iput-object v1, v15, Lcom/anythink/expressad/exoplayer/e/a/b$c;->c:Lcom/anythink/expressad/exoplayer/m;

    :cond_4
    move/from16 v19, v9

    move v11, v10

    move/from16 v22, v14

    move v14, v8

    goto/16 :goto_30

    :cond_5
    :goto_2
    add-int/lit8 v5, v10, 0x8

    add-int/2addr v5, v3

    invoke-virtual {v0, v5}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    const-wide v5, 0x7fffffffffffffffL

    const-string v16, "application/ttml+xml"

    if-ne v1, v2, :cond_6

    move-object/from16 v18, v4

    move-object/from16 v2, v16

    :goto_3
    move-wide/from16 v16, v5

    goto :goto_5

    :cond_6
    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->az:I

    if-ne v1, v2, :cond_7

    add-int/lit8 v1, v8, -0x8

    sub-int/2addr v1, v3

    new-array v2, v1, [B

    invoke-virtual {v0, v2, v11, v1}, Lcom/anythink/expressad/exoplayer/k/s;->a([BII)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "application/x-quicktime-tx3g"

    move-object/from16 v18, v1

    goto :goto_3

    :cond_7
    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->aA:I

    if-ne v1, v2, :cond_8

    const-string v1, "application/x-mp4-vtt"

    :goto_4
    move-object v2, v1

    move-object/from16 v18, v4

    goto :goto_3

    :cond_8
    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->aB:I

    if-ne v1, v2, :cond_9

    const-wide/16 v1, 0x0

    move-object/from16 v18, v4

    move-wide/from16 v44, v1

    move-object/from16 v2, v16

    move-wide/from16 v16, v44

    goto :goto_5

    :cond_9
    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->aC:I

    if-ne v1, v2, :cond_a

    iput v7, v15, Lcom/anythink/expressad/exoplayer/e/a/b$c;->e:I

    const-string v1, "application/x-mp4-cea-608"

    goto :goto_4

    :goto_5
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/16 v19, 0x0

    move-object/from16 v6, p3

    move/from16 v20, v8

    move-object/from16 v8, v19

    move/from16 v19, v9

    move/from16 v21, v10

    move-wide/from16 v9, v16

    move/from16 v22, v14

    const/4 v14, 0x0

    move-object/from16 v11, v18

    invoke-static/range {v1 .. v11}, Lcom/anythink/expressad/exoplayer/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/anythink/expressad/exoplayer/d/e;JLjava/util/List;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v1

    iput-object v1, v15, Lcom/anythink/expressad/exoplayer/e/a/b$c;->c:Lcom/anythink/expressad/exoplayer/m;

    move/from16 v14, v20

    move/from16 v11, v21

    goto/16 :goto_30

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_b
    :goto_6
    move/from16 v20, v8

    move/from16 v19, v9

    move/from16 v21, v10

    move/from16 v22, v14

    const/4 v14, 0x0

    move/from16 v11, v21

    add-int/lit8 v10, v11, 0x8

    add-int/2addr v10, v3

    invoke-virtual {v0, v10}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    const/4 v2, 0x6

    if-eqz p5, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->e()I

    move-result v3

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    goto :goto_7

    :cond_c
    invoke-virtual {v0, v3}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_f

    if-ne v3, v7, :cond_d

    goto :goto_8

    :cond_d
    if-ne v3, v5, :cond_e

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->j()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v2

    const/16 v8, 0x14

    invoke-virtual {v0, v8}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    goto :goto_9

    :cond_e
    move/from16 v14, v20

    goto/16 :goto_30

    :cond_f
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->e()I

    move-result v8

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->k()I

    move-result v2

    if-ne v3, v7, :cond_10

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    :cond_10
    move v3, v2

    move v2, v8

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->c()I

    move-result v8

    sget v9, Lcom/anythink/expressad/exoplayer/e/a/a;->af:I

    move/from16 v10, v20

    if-ne v1, v9, :cond_13

    invoke-static {v0, v11, v10}, Lcom/anythink/expressad/exoplayer/e/a/b;->b(Lcom/anythink/expressad/exoplayer/k/s;II)Landroid/util/Pair;

    move-result-object v9

    if-eqz v9, :cond_12

    iget-object v1, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v13, :cond_11

    goto :goto_a

    :cond_11
    iget-object v4, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/anythink/expressad/exoplayer/e/a/k;

    iget-object v4, v4, Lcom/anythink/expressad/exoplayer/e/a/k;->b:Ljava/lang/String;

    invoke-virtual {v13, v4}, Lcom/anythink/expressad/exoplayer/d/e;->a(Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/d/e;

    move-result-object v4

    :goto_a
    iget-object v5, v15, Lcom/anythink/expressad/exoplayer/e/a/b$c;->b:[Lcom/anythink/expressad/exoplayer/e/a/k;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/anythink/expressad/exoplayer/e/a/k;

    aput-object v9, v5, v19

    goto :goto_b

    :cond_12
    move-object v4, v13

    :goto_b
    invoke-virtual {v0, v8}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    move-object v9, v4

    goto :goto_c

    :cond_13
    move-object v9, v13

    :goto_c
    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->s:I

    const-string v5, "audio/raw"

    if-ne v1, v4, :cond_14

    const-string v1, "audio/ac3"

    goto :goto_f

    :cond_14
    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->u:I

    if-ne v1, v4, :cond_15

    const-string v1, "audio/eac3"

    goto :goto_f

    :cond_15
    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->w:I

    if-ne v1, v4, :cond_16

    const-string v1, "audio/vnd.dts"

    goto :goto_f

    :cond_16
    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->x:I

    if-eq v1, v4, :cond_1f

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->y:I

    if-ne v1, v4, :cond_17

    goto :goto_e

    :cond_17
    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->z:I

    if-ne v1, v4, :cond_18

    const-string v1, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_f

    :cond_18
    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->aD:I

    if-ne v1, v4, :cond_19

    const-string v1, "audio/3gpp"

    goto :goto_f

    :cond_19
    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->aE:I

    if-ne v1, v4, :cond_1a

    const-string v1, "audio/amr-wb"

    goto :goto_f

    :cond_1a
    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->q:I

    if-eq v1, v4, :cond_1e

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->r:I

    if-ne v1, v4, :cond_1b

    goto :goto_d

    :cond_1b
    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->o:I

    if-ne v1, v4, :cond_1c

    const-string v1, "audio/mpeg"

    goto :goto_f

    :cond_1c
    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->aT:I

    if-ne v1, v4, :cond_1d

    const-string v1, "audio/alac"

    goto :goto_f

    :cond_1d
    const/4 v1, 0x0

    goto :goto_f

    :cond_1e
    :goto_d
    move-object v1, v5

    goto :goto_f

    :cond_1f
    :goto_e
    const-string v1, "audio/vnd.dts.hd"

    :goto_f
    move/from16 v20, v2

    move/from16 v21, v3

    move v4, v8

    const/16 v23, 0x0

    move-object v8, v1

    :goto_10
    sub-int v1, v4, v11

    if-ge v1, v10, :cond_2d

    invoke-virtual {v0, v4}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v3

    if-lez v3, :cond_20

    const/4 v1, 0x1

    goto :goto_11

    :cond_20
    const/4 v1, 0x0

    :goto_11
    invoke-static {v1, v6}, Lcom/anythink/expressad/exoplayer/k/a;->a(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v1

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->O:I

    if-eq v1, v2, :cond_26

    if-eqz p5, :cond_21

    sget v7, Lcom/anythink/expressad/exoplayer/e/a/a;->p:I

    if-ne v1, v7, :cond_21

    goto/16 :goto_15

    :cond_21
    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->t:I

    if-ne v1, v2, :cond_22

    add-int/lit8 v1, v4, 0x8

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v12, v9}, Lcom/anythink/expressad/exoplayer/b/a;->a(Lcom/anythink/expressad/exoplayer/k/s;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/exoplayer/d/e;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v1

    :goto_12
    iput-object v1, v15, Lcom/anythink/expressad/exoplayer/e/a/b$c;->c:Lcom/anythink/expressad/exoplayer/m;

    move v14, v3

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move-object/from16 v29, v8

    move-object/from16 v17, v9

    const/4 v9, 0x0

    const/16 v16, 0x0

    move v8, v4

    goto/16 :goto_14

    :cond_22
    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->v:I

    if-ne v1, v2, :cond_23

    add-int/lit8 v1, v4, 0x8

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v12, v9}, Lcom/anythink/expressad/exoplayer/b/a;->b(Lcom/anythink/expressad/exoplayer/k/s;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/exoplayer/d/e;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v1

    goto :goto_12

    :cond_23
    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->A:I

    if-ne v1, v2, :cond_24

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x0

    move-object v2, v8

    move v14, v3

    move-object v3, v7

    move/from16 v26, v4

    const/4 v7, -0x1

    const/16 v16, 0x0

    move/from16 v4, v24

    move-object/from16 v27, v5

    move/from16 v5, v20

    move-object/from16 v28, v6

    move/from16 v6, v21

    move-object/from16 v7, v25

    move-object/from16 v29, v8

    move-object v8, v9

    move-object/from16 v17, v9

    move-object/from16 v9, p3

    invoke-static/range {v1 .. v9}, Lcom/anythink/expressad/exoplayer/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v1

    iput-object v1, v15, Lcom/anythink/expressad/exoplayer/e/a/b$c;->c:Lcom/anythink/expressad/exoplayer/m;

    goto :goto_13

    :cond_24
    move v14, v3

    move/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move-object/from16 v29, v8

    move-object/from16 v17, v9

    const/16 v16, 0x0

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->aT:I

    if-ne v1, v2, :cond_25

    new-array v1, v14, [B

    move/from16 v8, v26

    invoke-virtual {v0, v8}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9, v14}, Lcom/anythink/expressad/exoplayer/k/s;->a([BII)V

    move-object/from16 v23, v1

    goto :goto_14

    :cond_25
    :goto_13
    move/from16 v8, v26

    const/4 v9, 0x0

    :goto_14
    move-object/from16 v5, v28

    const/4 v2, -0x1

    goto/16 :goto_1b

    :cond_26
    :goto_15
    move v14, v3

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move-object/from16 v29, v8

    move-object/from16 v17, v9

    const/4 v9, 0x0

    const/16 v16, 0x0

    move v8, v4

    if-ne v1, v2, :cond_27

    move v4, v8

    move-object/from16 v5, v28

    :goto_16
    const/4 v2, -0x1

    goto :goto_19

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->c()I

    move-result v1

    move v4, v1

    :goto_17
    sub-int v1, v4, v8

    if-ge v1, v14, :cond_2a

    invoke-virtual {v0, v4}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v1

    move-object/from16 v5, v28

    if-lez v1, :cond_28

    const/4 v2, 0x1

    goto :goto_18

    :cond_28
    const/4 v2, 0x0

    :goto_18
    invoke-static {v2, v5}, Lcom/anythink/expressad/exoplayer/k/a;->a(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v2

    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->O:I

    if-ne v2, v3, :cond_29

    goto :goto_16

    :cond_29
    add-int/2addr v4, v1

    move-object/from16 v28, v5

    goto :goto_17

    :cond_2a
    move-object/from16 v5, v28

    const/4 v2, -0x1

    const/4 v4, -0x1

    :goto_19
    if-eq v4, v2, :cond_2b

    invoke-static {v0, v4}, Lcom/anythink/expressad/exoplayer/e/a/b;->d(Lcom/anythink/expressad/exoplayer/k/s;I)Landroid/util/Pair;

    move-result-object v1

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v23, v1

    check-cast v23, [B

    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static/range {v23 .. v23}, Lcom/anythink/expressad/exoplayer/k/d;->a([B)Landroid/util/Pair;

    move-result-object v1

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v20, v1

    move/from16 v21, v4

    goto :goto_1a

    :cond_2b
    move-object/from16 v3, v29

    :cond_2c
    :goto_1a
    move-object/from16 v29, v3

    :goto_1b
    add-int v4, v8, v14

    move-object v6, v5

    move-object/from16 v9, v17

    move-object/from16 v5, v27

    move-object/from16 v8, v29

    const/4 v7, 0x1

    const/4 v14, 0x0

    goto/16 :goto_10

    :cond_2d
    move-object/from16 v27, v5

    move-object/from16 v29, v8

    move-object/from16 v17, v9

    const/4 v2, -0x1

    const/4 v9, 0x0

    const/16 v16, 0x0

    iget-object v1, v15, Lcom/anythink/expressad/exoplayer/e/a/b$c;->c:Lcom/anythink/expressad/exoplayer/m;

    if-nez v1, :cond_30

    move-object/from16 v3, v29

    if-eqz v3, :cond_30

    move-object/from16 v1, v27

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v7, 0x2

    goto :goto_1c

    :cond_2e
    const/4 v7, -0x1

    :goto_1c
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-nez v23, :cond_2f

    move-object/from16 v8, v16

    goto :goto_1d

    :cond_2f
    invoke-static/range {v23 .. v23}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v8, v2

    :goto_1d
    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move/from16 v5, v20

    move/from16 v6, v21

    const/4 v14, 0x0

    move-object/from16 v9, v17

    move v14, v10

    move-object/from16 v10, p3

    invoke-static/range {v1 .. v10}, Lcom/anythink/expressad/exoplayer/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v1

    :goto_1e
    iput-object v1, v15, Lcom/anythink/expressad/exoplayer/e/a/b$c;->c:Lcom/anythink/expressad/exoplayer/m;

    goto/16 :goto_30

    :cond_30
    move v14, v10

    goto/16 :goto_30

    :cond_31
    :goto_1f
    move-object/from16 v16, v4

    move-object v5, v6

    move/from16 v19, v9

    move v11, v10

    move/from16 v22, v14

    const/4 v2, -0x1

    move v14, v8

    add-int/lit8 v10, v11, 0x8

    add-int/2addr v10, v3

    invoke-virtual {v0, v10}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->e()I

    move-result v34

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->e()I

    move-result v35

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x32

    invoke-virtual {v0, v4}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->c()I

    move-result v4

    sget v6, Lcom/anythink/expressad/exoplayer/e/a/a;->ae:I

    if-ne v1, v6, :cond_34

    invoke-static {v0, v11, v14}, Lcom/anythink/expressad/exoplayer/e/a/b;->b(Lcom/anythink/expressad/exoplayer/k/s;II)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_33

    iget-object v1, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v13, :cond_32

    move-object/from16 v7, v16

    goto :goto_20

    :cond_32
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/anythink/expressad/exoplayer/e/a/k;

    iget-object v7, v7, Lcom/anythink/expressad/exoplayer/e/a/k;->b:Ljava/lang/String;

    invoke-virtual {v13, v7}, Lcom/anythink/expressad/exoplayer/d/e;->a(Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/d/e;

    move-result-object v7

    :goto_20
    iget-object v8, v15, Lcom/anythink/expressad/exoplayer/e/a/b$c;->b:[Lcom/anythink/expressad/exoplayer/e/a/k;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/anythink/expressad/exoplayer/e/a/k;

    aput-object v6, v8, v19

    goto :goto_21

    :cond_33
    move-object v7, v13

    :goto_21
    invoke-virtual {v0, v4}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    move-object/from16 v43, v7

    goto :goto_22

    :cond_34
    move-object/from16 v43, v13

    :goto_22
    move-object/from16 v30, v16

    move-object/from16 v37, v30

    move-object/from16 v40, v37

    const/4 v2, 0x0

    const/high16 v39, 0x3f800000    # 1.0f

    const/16 v41, -0x1

    :goto_23
    sub-int v3, v4, v11

    if-ge v3, v14, :cond_4c

    invoke-virtual {v0, v4}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->c()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v6

    if-nez v6, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->c()I

    move-result v7

    sub-int/2addr v7, v11

    if-eq v7, v14, :cond_4c

    :cond_35
    if-lez v6, :cond_36

    const/4 v7, 0x1

    goto :goto_24

    :cond_36
    const/4 v7, 0x0

    :goto_24
    invoke-static {v7, v5}, Lcom/anythink/expressad/exoplayer/k/a;->a(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v7

    sget v8, Lcom/anythink/expressad/exoplayer/e/a/a;->M:I

    const/4 v9, 0x3

    if-ne v7, v8, :cond_39

    if-nez v30, :cond_37

    const/4 v7, 0x1

    goto :goto_25

    :cond_37
    const/4 v7, 0x0

    :goto_25
    invoke-static {v7}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-static/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/l/a;->a(Lcom/anythink/expressad/exoplayer/k/s;)Lcom/anythink/expressad/exoplayer/l/a;

    move-result-object v3

    iget-object v7, v3, Lcom/anythink/expressad/exoplayer/l/a;->a:Ljava/util/List;

    iget v8, v3, Lcom/anythink/expressad/exoplayer/l/a;->b:I

    iput v8, v15, Lcom/anythink/expressad/exoplayer/e/a/b$c;->d:I

    if-nez v2, :cond_38

    iget v3, v3, Lcom/anythink/expressad/exoplayer/l/a;->e:F

    move/from16 v39, v3

    :cond_38
    const-string v3, "video/avc"

    goto :goto_27

    :cond_39
    sget v8, Lcom/anythink/expressad/exoplayer/e/a/a;->N:I

    if-ne v7, v8, :cond_3c

    if-nez v30, :cond_3a

    const/4 v7, 0x1

    goto :goto_26

    :cond_3a
    const/4 v7, 0x0

    :goto_26
    invoke-static {v7}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-static/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/l/d;->a(Lcom/anythink/expressad/exoplayer/k/s;)Lcom/anythink/expressad/exoplayer/l/d;

    move-result-object v3

    iget-object v7, v3, Lcom/anythink/expressad/exoplayer/l/d;->a:Ljava/util/List;

    iget v3, v3, Lcom/anythink/expressad/exoplayer/l/d;->b:I

    iput v3, v15, Lcom/anythink/expressad/exoplayer/e/a/b$c;->d:I

    const-string v3, "video/hevc"

    :goto_27
    move-object/from16 v30, v3

    move-object/from16 v37, v7

    :cond_3b
    :goto_28
    const/4 v7, 0x1

    const/4 v8, 0x2

    goto/16 :goto_2f

    :cond_3c
    sget v8, Lcom/anythink/expressad/exoplayer/e/a/a;->aR:I

    if-ne v7, v8, :cond_3f

    if-nez v30, :cond_3d

    const/4 v3, 0x1

    goto :goto_29

    :cond_3d
    const/4 v3, 0x0

    :goto_29
    invoke-static {v3}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->aP:I

    if-ne v1, v3, :cond_3e

    const-string v3, "video/x-vnd.on2.vp8"

    goto :goto_2b

    :cond_3e
    const-string v3, "video/x-vnd.on2.vp9"

    goto :goto_2b

    :cond_3f
    sget v8, Lcom/anythink/expressad/exoplayer/e/a/a;->l:I

    if-ne v7, v8, :cond_41

    if-nez v30, :cond_40

    const/4 v3, 0x1

    goto :goto_2a

    :cond_40
    const/4 v3, 0x0

    :goto_2a
    invoke-static {v3}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    const-string v3, "video/3gpp"

    :goto_2b
    move-object/from16 v30, v3

    goto :goto_28

    :cond_41
    sget v8, Lcom/anythink/expressad/exoplayer/e/a/a;->O:I

    if-ne v7, v8, :cond_43

    if-nez v30, :cond_42

    const/4 v7, 0x1

    goto :goto_2c

    :cond_42
    const/4 v7, 0x0

    :goto_2c
    invoke-static {v7}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    invoke-static {v0, v3}, Lcom/anythink/expressad/exoplayer/e/a/b;->d(Lcom/anythink/expressad/exoplayer/k/s;I)Landroid/util/Pair;

    move-result-object v3

    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [B

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v37, v3

    move-object/from16 v30, v7

    goto :goto_28

    :cond_43
    sget v8, Lcom/anythink/expressad/exoplayer/e/a/a;->an:I

    if-ne v7, v8, :cond_44

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v3

    int-to-float v2, v2

    int-to-float v3, v3

    div-float v39, v2, v3

    const/4 v2, 0x1

    goto :goto_28

    :cond_44
    sget v8, Lcom/anythink/expressad/exoplayer/e/a/a;->aN:I

    if-ne v7, v8, :cond_47

    add-int/lit8 v7, v3, 0x8

    :goto_2d
    sub-int v8, v7, v3

    if-ge v8, v6, :cond_46

    invoke-virtual {v0, v7}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v9

    sget v10, Lcom/anythink/expressad/exoplayer/e/a/a;->aO:I

    if-ne v9, v10, :cond_45

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    add-int/2addr v8, v7

    invoke-static {v3, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    goto :goto_2e

    :cond_45
    add-int/2addr v7, v8

    goto :goto_2d

    :cond_46
    move-object/from16 v3, v16

    :goto_2e
    move-object/from16 v40, v3

    goto/16 :goto_28

    :cond_47
    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->aM:I

    if-ne v7, v3, :cond_3b

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->d()I

    move-result v3

    invoke-virtual {v0, v9}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    if-nez v3, :cond_3b

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->d()I

    move-result v3

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v3, :cond_4b

    if-eq v3, v7, :cond_4a

    if-eq v3, v8, :cond_49

    if-eq v3, v9, :cond_48

    goto :goto_2f

    :cond_48
    const/16 v41, 0x3

    goto :goto_2f

    :cond_49
    const/16 v41, 0x2

    goto :goto_2f

    :cond_4a
    const/16 v41, 0x1

    goto :goto_2f

    :cond_4b
    const/16 v41, 0x0

    :goto_2f
    add-int/2addr v4, v6

    goto/16 :goto_23

    :cond_4c
    if-eqz v30, :cond_4d

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v31, 0x0

    const/16 v32, -0x1

    const/16 v33, -0x1

    const/high16 v36, -0x40800000    # -1.0f

    const/16 v42, 0x0

    move/from16 v38, p2

    invoke-static/range {v29 .. v43}, Lcom/anythink/expressad/exoplayer/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/anythink/expressad/exoplayer/l/b;Lcom/anythink/expressad/exoplayer/d/e;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v1

    goto/16 :goto_1e

    :cond_4d
    :goto_30
    add-int v10, v11, v14

    invoke-virtual {v0, v10}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    add-int/lit8 v9, v19, 0x1

    move/from16 v14, v22

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_4e
    return-object v15
.end method

.method public static a(Lcom/anythink/expressad/exoplayer/e/a/a$a;Lcom/anythink/expressad/exoplayer/e/a/a$b;JLcom/anythink/expressad/exoplayer/d/e;ZZ)Lcom/anythink/expressad/exoplayer/e/a/j;
    .locals 25

    move-object/from16 v0, p0

    sget v1, Lcom/anythink/expressad/exoplayer/e/a/a;->J:I

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->e(I)Lcom/anythink/expressad/exoplayer/e/a/a$a;

    move-result-object v1

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->X:I

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->d(I)Lcom/anythink/expressad/exoplayer/e/a/a$b;

    move-result-object v2

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v2

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/b;->c:I

    const/4 v5, -0x1

    const/4 v7, 0x4

    if-ne v2, v4, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    sget v4, Lcom/anythink/expressad/exoplayer/e/a/b;->b:I

    if-ne v2, v4, :cond_1

    const/4 v2, 0x2

    const/4 v10, 0x2

    goto :goto_1

    :cond_1
    sget v4, Lcom/anythink/expressad/exoplayer/e/a/b;->d:I

    if-eq v2, v4, :cond_4

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/b;->e:I

    if-eq v2, v4, :cond_4

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/b;->f:I

    if-eq v2, v4, :cond_4

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/b;->g:I

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    sget v4, Lcom/anythink/expressad/exoplayer/e/a/b;->h:I

    if-ne v2, v4, :cond_3

    const/4 v10, 0x4

    goto :goto_1

    :cond_3
    const/4 v10, -0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x3

    const/4 v10, 0x3

    :goto_1
    const/4 v2, 0x0

    if-ne v10, v5, :cond_5

    return-object v2

    :cond_5
    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->T:I

    invoke-virtual {v0, v4}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->d(I)Lcom/anythink/expressad/exoplayer/e/a/a$b;

    move-result-object v4

    iget-object v4, v4, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {v4}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v9

    invoke-static {v9}, Lcom/anythink/expressad/exoplayer/e/a/a;->a(I)I

    move-result v9

    if-nez v9, :cond_6

    const/16 v11, 0x8

    goto :goto_2

    :cond_6
    const/16 v11, 0x10

    :goto_2
    invoke-virtual {v4, v11}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual {v4}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v11

    invoke-virtual {v4, v7}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual {v4}, Lcom/anythink/expressad/exoplayer/k/s;->c()I

    move-result v12

    if-nez v9, :cond_7

    const/4 v13, 0x4

    goto :goto_3

    :cond_7
    const/16 v13, 0x8

    :goto_3
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v13, :cond_9

    iget-object v6, v4, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    add-int v17, v12, v15

    aget-byte v6, v6, v17

    if-eq v6, v5, :cond_8

    const/4 v6, 0x0

    goto :goto_5

    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_9
    const/4 v6, 0x1

    :goto_5
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v6, :cond_a

    invoke-virtual {v4, v13}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    :goto_6
    move-wide v5, v15

    goto :goto_8

    :cond_a
    if-nez v9, :cond_b

    invoke-virtual {v4}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v5

    goto :goto_7

    :cond_b
    invoke-virtual {v4}, Lcom/anythink/expressad/exoplayer/k/s;->n()J

    move-result-wide v5

    :goto_7
    const-wide/16 v12, 0x0

    cmp-long v9, v5, v12

    if-nez v9, :cond_c

    goto :goto_6

    :cond_c
    :goto_8
    invoke-virtual {v4, v3}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual {v4}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v9

    invoke-virtual {v4}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v12

    invoke-virtual {v4, v7}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual {v4}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v13

    invoke-virtual {v4}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v4

    const/high16 v3, 0x10000

    const/high16 v7, -0x10000

    if-nez v9, :cond_d

    if-ne v12, v3, :cond_d

    if-ne v13, v7, :cond_d

    if-nez v4, :cond_d

    const/16 v14, 0x5a

    goto :goto_9

    :cond_d
    if-nez v9, :cond_e

    if-ne v12, v7, :cond_e

    if-ne v13, v3, :cond_e

    if-nez v4, :cond_e

    const/16 v14, 0x10e

    goto :goto_9

    :cond_e
    if-ne v9, v7, :cond_f

    if-nez v12, :cond_f

    if-nez v13, :cond_f

    if-ne v4, v7, :cond_f

    const/16 v14, 0xb4

    :cond_f
    :goto_9
    new-instance v3, Lcom/anythink/expressad/exoplayer/e/a/b$f;

    invoke-direct {v3, v11, v5, v6, v14}, Lcom/anythink/expressad/exoplayer/e/a/b$f;-><init>(IJI)V

    cmp-long v4, p2, v15

    if-nez v4, :cond_10

    invoke-static {v3}, Lcom/anythink/expressad/exoplayer/e/a/b$f;->a(Lcom/anythink/expressad/exoplayer/e/a/b$f;)J

    move-result-wide v4

    move-wide/from16 v19, v4

    move-object/from16 v4, p1

    goto :goto_a

    :cond_10
    move-object/from16 v4, p1

    move-wide/from16 v19, p2

    :goto_a
    iget-object v4, v4, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v4, v8}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {v4}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v5

    invoke-static {v5}, Lcom/anythink/expressad/exoplayer/e/a/a;->a(I)I

    move-result v5

    if-nez v5, :cond_11

    const/16 v5, 0x8

    goto :goto_b

    :cond_11
    const/16 v5, 0x10

    :goto_b
    invoke-virtual {v4, v5}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual {v4}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v13

    cmp-long v4, v19, v15

    if-nez v4, :cond_12

    goto :goto_c

    :cond_12
    const-wide/32 v21, 0xf4240

    move-wide/from16 v23, v13

    invoke-static/range {v19 .. v24}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v4

    move-wide v15, v4

    :goto_c
    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->K:I

    invoke-virtual {v1, v4}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->e(I)Lcom/anythink/expressad/exoplayer/e/a/a$a;

    move-result-object v4

    sget v5, Lcom/anythink/expressad/exoplayer/e/a/a;->L:I

    invoke-virtual {v4, v5}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->e(I)Lcom/anythink/expressad/exoplayer/e/a/a$a;

    move-result-object v4

    sget v5, Lcom/anythink/expressad/exoplayer/e/a/a;->W:I

    invoke-virtual {v1, v5}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->d(I)Lcom/anythink/expressad/exoplayer/e/a/a$b;

    move-result-object v1

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v1, v8}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v5

    invoke-static {v5}, Lcom/anythink/expressad/exoplayer/e/a/a;->a(I)I

    move-result v5

    if-nez v5, :cond_13

    const/16 v6, 0x8

    goto :goto_d

    :cond_13
    const/16 v6, 0x10

    :goto_d
    invoke-virtual {v1, v6}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v6

    if-nez v5, :cond_14

    const/4 v8, 0x4

    :cond_14
    invoke-virtual {v1, v8}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->e()I

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v8, v1, 0xa

    and-int/lit8 v8, v8, 0x1f

    add-int/lit8 v8, v8, 0x60

    int-to-char v8, v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v8, v1, 0x5

    and-int/lit8 v8, v8, 0x1f

    add-int/lit8 v8, v8, 0x60

    int-to-char v8, v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget v5, Lcom/anythink/expressad/exoplayer/e/a/a;->Y:I

    invoke-virtual {v4, v5}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->d(I)Lcom/anythink/expressad/exoplayer/e/a/a$b;

    move-result-object v4

    iget-object v4, v4, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-static {v3}, Lcom/anythink/expressad/exoplayer/e/a/b$f;->b(Lcom/anythink/expressad/exoplayer/e/a/b$f;)I

    move-result v18

    invoke-static {v3}, Lcom/anythink/expressad/exoplayer/e/a/b$f;->c(Lcom/anythink/expressad/exoplayer/e/a/b$f;)I

    move-result v19

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v20, v5

    check-cast v20, Ljava/lang/String;

    move-object/from16 v17, v4

    move-object/from16 v21, p4

    move/from16 v22, p6

    invoke-static/range {v17 .. v22}, Lcom/anythink/expressad/exoplayer/e/a/b;->a(Lcom/anythink/expressad/exoplayer/k/s;IILjava/lang/String;Lcom/anythink/expressad/exoplayer/d/e;Z)Lcom/anythink/expressad/exoplayer/e/a/b$c;

    move-result-object v4

    if-nez p5, :cond_15

    sget v5, Lcom/anythink/expressad/exoplayer/e/a/a;->U:I

    invoke-virtual {v0, v5}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->e(I)Lcom/anythink/expressad/exoplayer/e/a/a$a;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/e/a/b;->a(Lcom/anythink/expressad/exoplayer/e/a/a$a;)Landroid/util/Pair;

    move-result-object v0

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, [J

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v22, v0

    move-object/from16 v21, v5

    goto :goto_e

    :cond_15
    move-object/from16 v21, v2

    move-object/from16 v22, v21

    :goto_e
    iget-object v0, v4, Lcom/anythink/expressad/exoplayer/e/a/b$c;->c:Lcom/anythink/expressad/exoplayer/m;

    if-nez v0, :cond_16

    return-object v2

    :cond_16
    new-instance v0, Lcom/anythink/expressad/exoplayer/e/a/j;

    invoke-static {v3}, Lcom/anythink/expressad/exoplayer/e/a/b$f;->b(Lcom/anythink/expressad/exoplayer/e/a/b$f;)I

    move-result v9

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v1, v4, Lcom/anythink/expressad/exoplayer/e/a/b$c;->c:Lcom/anythink/expressad/exoplayer/m;

    iget v2, v4, Lcom/anythink/expressad/exoplayer/e/a/b$c;->e:I

    iget-object v3, v4, Lcom/anythink/expressad/exoplayer/e/a/b$c;->b:[Lcom/anythink/expressad/exoplayer/e/a/k;

    iget v4, v4, Lcom/anythink/expressad/exoplayer/e/a/b$c;->d:I

    move-object v8, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v20, v4

    invoke-direct/range {v8 .. v22}, Lcom/anythink/expressad/exoplayer/e/a/j;-><init>(IIJJJLcom/anythink/expressad/exoplayer/m;I[Lcom/anythink/expressad/exoplayer/e/a/k;I[J[J)V

    return-object v0
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/k/s;IILjava/lang/String;)Lcom/anythink/expressad/exoplayer/e/a/k;
    .locals 11

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    const/4 v2, 0x0

    if-ge v1, p2, :cond_4

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v1

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v3

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->ad:I

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result p1

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/e/a/a;->a(I)I

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->d()I

    move-result p1

    and-int/lit16 v1, p1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 p1, p1, 0xf

    move v9, p1

    move v8, v1

    :goto_1
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->d()I

    move-result p1

    if-ne p1, p2, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->d()I

    move-result v6

    const/16 p1, 0x10

    new-array v7, p1, [B

    invoke-virtual {p0, v7, v0, p1}, Lcom/anythink/expressad/exoplayer/k/s;->a([BII)V

    if-eqz v4, :cond_2

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->d()I

    move-result p1

    new-array v2, p1, [B

    invoke-virtual {p0, v2, v0, p1}, Lcom/anythink/expressad/exoplayer/k/s;->a([BII)V

    :cond_2
    move-object v10, v2

    new-instance p0, Lcom/anythink/expressad/exoplayer/e/a/k;

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v3 .. v10}, Lcom/anythink/expressad/exoplayer/e/a/k;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object p0

    :cond_3
    add-int/2addr v0, v1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public static a(Lcom/anythink/expressad/exoplayer/e/a/j;Lcom/anythink/expressad/exoplayer/e/a/a$a;Lcom/anythink/expressad/exoplayer/e/i;)Lcom/anythink/expressad/exoplayer/e/a/m;
    .locals 42

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->av:I

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->d(I)Lcom/anythink/expressad/exoplayer/e/a/a$b;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/anythink/expressad/exoplayer/e/a/b$d;

    invoke-direct {v4, v3}, Lcom/anythink/expressad/exoplayer/e/a/b$d;-><init>(Lcom/anythink/expressad/exoplayer/e/a/a$b;)V

    goto :goto_0

    :cond_0
    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->aw:I

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->d(I)Lcom/anythink/expressad/exoplayer/e/a/a$b;

    move-result-object v3

    if-eqz v3, :cond_31

    new-instance v4, Lcom/anythink/expressad/exoplayer/e/a/b$e;

    invoke-direct {v4, v3}, Lcom/anythink/expressad/exoplayer/e/a/b$e;-><init>(Lcom/anythink/expressad/exoplayer/e/a/a$b;)V

    :goto_0
    invoke-interface {v4}, Lcom/anythink/expressad/exoplayer/e/a/b$b;->a()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    new-instance v9, Lcom/anythink/expressad/exoplayer/e/a/m;

    new-array v2, v5, [J

    new-array v3, v5, [I

    const/4 v4, 0x0

    new-array v6, v5, [J

    new-array v7, v5, [I

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/anythink/expressad/exoplayer/e/a/m;-><init>(Lcom/anythink/expressad/exoplayer/e/a/j;[J[II[J[IJ)V

    return-object v9

    :cond_1
    sget v6, Lcom/anythink/expressad/exoplayer/e/a/a;->ax:I

    invoke-virtual {v0, v6}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->d(I)Lcom/anythink/expressad/exoplayer/e/a/a$b;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_2

    sget v6, Lcom/anythink/expressad/exoplayer/e/a/a;->ay:I

    invoke-virtual {v0, v6}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->d(I)Lcom/anythink/expressad/exoplayer/e/a/a$b;

    move-result-object v6

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    iget-object v6, v6, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    sget v9, Lcom/anythink/expressad/exoplayer/e/a/a;->au:I

    invoke-virtual {v0, v9}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->d(I)Lcom/anythink/expressad/exoplayer/e/a/a$b;

    move-result-object v9

    iget-object v9, v9, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    sget v10, Lcom/anythink/expressad/exoplayer/e/a/a;->ar:I

    invoke-virtual {v0, v10}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->d(I)Lcom/anythink/expressad/exoplayer/e/a/a$b;

    move-result-object v10

    iget-object v10, v10, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    sget v11, Lcom/anythink/expressad/exoplayer/e/a/a;->as:I

    invoke-virtual {v0, v11}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->d(I)Lcom/anythink/expressad/exoplayer/e/a/a$b;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_3

    iget-object v11, v11, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    goto :goto_2

    :cond_3
    move-object v11, v12

    :goto_2
    sget v13, Lcom/anythink/expressad/exoplayer/e/a/a;->at:I

    invoke-virtual {v0, v13}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->d(I)Lcom/anythink/expressad/exoplayer/e/a/a$b;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    goto :goto_3

    :cond_4
    move-object v0, v12

    :goto_3
    new-instance v13, Lcom/anythink/expressad/exoplayer/e/a/b$a;

    invoke-direct {v13, v9, v6, v8}, Lcom/anythink/expressad/exoplayer/e/a/b$a;-><init>(Lcom/anythink/expressad/exoplayer/k/s;Lcom/anythink/expressad/exoplayer/k/s;Z)V

    const/16 v6, 0xc

    invoke-virtual {v10, v6}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {v10}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual {v10}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v9

    invoke-virtual {v10}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v14

    if-eqz v0, :cond_5

    invoke-virtual {v0, v6}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v15

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    const/16 v16, -0x1

    if-eqz v11, :cond_6

    invoke-virtual {v11, v6}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {v11}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v6

    if-lez v6, :cond_7

    invoke-virtual {v11}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v12

    add-int/lit8 v16, v12, -0x1

    move-object v12, v11

    goto :goto_5

    :cond_6
    move-object v12, v11

    const/4 v6, 0x0

    :cond_7
    :goto_5
    invoke-interface {v4}, Lcom/anythink/expressad/exoplayer/e/a/b$b;->c()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, v1, Lcom/anythink/expressad/exoplayer/e/a/j;->h:Lcom/anythink/expressad/exoplayer/m;

    iget-object v11, v11, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    const-string v5, "audio/raw"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v8, :cond_8

    if-nez v15, :cond_8

    if-nez v6, :cond_8

    const/4 v5, 0x1

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    :goto_6
    const-string v11, "AtomParsers"

    const-wide/16 v18, 0x0

    if-nez v5, :cond_17

    new-array v5, v3, [J

    new-array v7, v3, [I

    move/from16 p1, v6

    new-array v6, v3, [J

    move/from16 v21, v8

    new-array v8, v3, [I

    move-object/from16 v24, v10

    move v2, v14

    move-wide/from16 v25, v18

    move-wide/from16 v27, v25

    move/from16 v14, v21

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v41, v9

    move/from16 v9, p1

    move-object/from16 p1, v11

    move/from16 v11, v16

    move/from16 v16, v15

    move/from16 v15, v41

    :goto_7
    if-ge v1, v3, :cond_10

    :goto_8
    if-nez v23, :cond_9

    invoke-virtual {v13}, Lcom/anythink/expressad/exoplayer/e/a/b$a;->a()Z

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    move/from16 v29, v14

    move/from16 v30, v15

    iget-wide v14, v13, Lcom/anythink/expressad/exoplayer/e/a/b$a;->d:J

    move-wide/from16 v27, v14

    iget v14, v13, Lcom/anythink/expressad/exoplayer/e/a/b$a;->c:I

    move/from16 v23, v14

    move/from16 v14, v29

    move/from16 v15, v30

    goto :goto_8

    :cond_9
    move/from16 v29, v14

    move/from16 v30, v15

    if-eqz v0, :cond_b

    :goto_9
    if-nez v21, :cond_a

    if-lez v16, :cond_a

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v21

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v22

    add-int/lit8 v16, v16, -0x1

    goto :goto_9

    :cond_a
    add-int/lit8 v21, v21, -0x1

    :cond_b
    move/from16 v14, v22

    aput-wide v27, v5, v1

    invoke-interface {v4}, Lcom/anythink/expressad/exoplayer/e/a/b$b;->b()I

    move-result v15

    aput v15, v7, v1

    aget v15, v7, v1

    if-le v15, v10, :cond_c

    aget v10, v7, v1

    :cond_c
    move-object v15, v4

    move-object/from16 v22, v5

    int-to-long v4, v14

    add-long v4, v25, v4

    aput-wide v4, v6, v1

    if-nez v12, :cond_d

    const/4 v4, 0x1

    goto :goto_a

    :cond_d
    const/4 v4, 0x0

    :goto_a
    aput v4, v8, v1

    if-ne v1, v11, :cond_e

    const/4 v4, 0x1

    aput v4, v8, v1

    add-int/lit8 v9, v9, -0x1

    if-lez v9, :cond_e

    invoke-virtual {v12}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v5

    sub-int/2addr v5, v4

    move v11, v5

    :cond_e
    int-to-long v4, v2

    add-long v25, v25, v4

    add-int/lit8 v4, v30, -0x1

    if-nez v4, :cond_f

    if-lez v29, :cond_f

    invoke-virtual/range {v24 .. v24}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v2

    invoke-virtual/range {v24 .. v24}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v4

    add-int/lit8 v5, v29, -0x1

    move/from16 v29, v5

    move/from16 v41, v4

    move v4, v2

    move/from16 v2, v41

    :cond_f
    aget v5, v7, v1

    move/from16 v30, v4

    int-to-long v4, v5

    add-long v27, v27, v4

    add-int/lit8 v23, v23, -0x1

    add-int/lit8 v1, v1, 0x1

    move-object v4, v15

    move-object/from16 v5, v22

    move/from16 v15, v30

    move/from16 v22, v14

    move/from16 v14, v29

    goto/16 :goto_7

    :cond_10
    move/from16 v29, v14

    move/from16 v30, v15

    move/from16 v14, v22

    move-object/from16 v22, v5

    int-to-long v1, v14

    add-long v25, v25, v1

    if-nez v21, :cond_11

    const/4 v1, 0x1

    goto :goto_b

    :cond_11
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    :goto_c
    if-lez v16, :cond_13

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_d

    :cond_12
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    add-int/lit8 v16, v16, -0x1

    goto :goto_c

    :cond_13
    if-nez v9, :cond_15

    if-nez v30, :cond_15

    move/from16 v0, v23

    if-nez v0, :cond_16

    if-eqz v29, :cond_14

    goto :goto_e

    :cond_14
    move-object/from16 v2, p0

    move-object/from16 v1, p1

    goto :goto_f

    :cond_15
    move/from16 v0, v23

    :cond_16
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistent stbl box for track "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p0

    iget v4, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->c:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": remainingSynchronizationSamples "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v30

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", remainingSamplesInChunk "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingTimestampDeltaChanges "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    move-object v5, v7

    move-object/from16 v4, v22

    move-object v7, v6

    move v6, v10

    goto :goto_11

    :cond_17
    move-object v2, v1

    move-object v1, v11

    iget v0, v13, Lcom/anythink/expressad/exoplayer/e/a/b$a;->a:I

    new-array v4, v0, [J

    new-array v0, v0, [I

    :goto_10
    invoke-virtual {v13}, Lcom/anythink/expressad/exoplayer/e/a/b$a;->a()Z

    move-result v5

    if-eqz v5, :cond_18

    iget v5, v13, Lcom/anythink/expressad/exoplayer/e/a/b$a;->b:I

    iget-wide v6, v13, Lcom/anythink/expressad/exoplayer/e/a/b$a;->d:J

    aput-wide v6, v4, v5

    iget v6, v13, Lcom/anythink/expressad/exoplayer/e/a/b$a;->c:I

    aput v6, v0, v5

    goto :goto_10

    :cond_18
    iget-object v5, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->h:Lcom/anythink/expressad/exoplayer/m;

    iget v6, v5, Lcom/anythink/expressad/exoplayer/m;->w:I

    iget v5, v5, Lcom/anythink/expressad/exoplayer/m;->u:I

    invoke-static {v6, v5}, Lcom/anythink/expressad/exoplayer/k/af;->b(II)I

    move-result v5

    int-to-long v6, v14

    invoke-static {v5, v4, v0, v6, v7}, Lcom/anythink/expressad/exoplayer/e/a/d;->a(I[J[IJ)Lcom/anythink/expressad/exoplayer/e/a/d$a;

    move-result-object v0

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/e/a/d$a;->a:[J

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/e/a/d$a;->b:[I

    iget v6, v0, Lcom/anythink/expressad/exoplayer/e/a/d$a;->c:I

    iget-object v7, v0, Lcom/anythink/expressad/exoplayer/e/a/d$a;->d:[J

    iget-object v8, v0, Lcom/anythink/expressad/exoplayer/e/a/d$a;->e:[I

    iget-wide v9, v0, Lcom/anythink/expressad/exoplayer/e/a/d$a;->f:J

    move-wide/from16 v25, v9

    :goto_11
    const-wide/32 v11, 0xf4240

    iget-wide v13, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->e:J

    move-wide/from16 v9, v25

    invoke-static/range {v9 .. v14}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v9

    iget-object v0, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->j:[J

    if-eqz v0, :cond_30

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/expressad/exoplayer/e/i;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    goto/16 :goto_20

    :cond_19
    iget-object v0, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->j:[J

    array-length v11, v0

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1c

    iget v11, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->d:I

    if-ne v11, v12, :cond_1c

    array-length v11, v7

    const/4 v12, 0x2

    if-lt v11, v12, :cond_1c

    iget-object v11, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->k:[J

    const/4 v12, 0x0

    aget-wide v13, v11, v12

    aget-wide v27, v0, v12

    move-wide v15, v13

    iget-wide v12, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->e:J

    move-object/from16 p1, v1

    iget-wide v0, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->f:J

    move-wide/from16 v29, v12

    move-wide/from16 v31, v0

    invoke-static/range {v27 .. v32}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v0

    add-long v13, v15, v0

    array-length v0, v7

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v1, 0x3

    const/4 v11, 0x0

    invoke-static {v1, v11, v0}, Lcom/anythink/expressad/exoplayer/k/af;->a(III)I

    move-result v12

    move/from16 v21, v3

    array-length v3, v7

    sub-int/2addr v3, v1

    invoke-static {v3, v11, v0}, Lcom/anythink/expressad/exoplayer/k/af;->a(III)I

    move-result v0

    aget-wide v22, v7, v11

    cmp-long v1, v22, v15

    if-gtz v1, :cond_1a

    aget-wide v11, v7, v12

    cmp-long v1, v15, v11

    if-gez v1, :cond_1a

    aget-wide v0, v7, v0

    cmp-long v3, v0, v13

    if-gez v3, :cond_1a

    cmp-long v0, v13, v25

    if-gtz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_12

    :cond_1a
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_1d

    sub-long v27, v25, v13

    const/4 v0, 0x0

    aget-wide v11, v7, v0

    sub-long v29, v15, v11

    iget-object v0, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->h:Lcom/anythink/expressad/exoplayer/m;

    iget v0, v0, Lcom/anythink/expressad/exoplayer/m;->v:I

    int-to-long v0, v0

    iget-wide v11, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->e:J

    move-wide/from16 v31, v0

    move-wide/from16 v33, v11

    invoke-static/range {v29 .. v34}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v0

    iget-object v3, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->h:Lcom/anythink/expressad/exoplayer/m;

    iget v3, v3, Lcom/anythink/expressad/exoplayer/m;->v:I

    int-to-long v11, v3

    iget-wide v13, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->e:J

    move-wide/from16 v29, v11

    move-wide/from16 v31, v13

    invoke-static/range {v27 .. v32}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v11

    cmp-long v3, v0, v18

    if-nez v3, :cond_1b

    cmp-long v3, v11, v18

    if-eqz v3, :cond_1d

    :cond_1b
    const-wide/32 v13, 0x7fffffff

    cmp-long v3, v0, v13

    if-gtz v3, :cond_1d

    cmp-long v3, v11, v13

    if-gtz v3, :cond_1d

    long-to-int v1, v0

    move-object/from16 v0, p2

    iput v1, v0, Lcom/anythink/expressad/exoplayer/e/i;->b:I

    long-to-int v1, v11

    iput v1, v0, Lcom/anythink/expressad/exoplayer/e/i;->c:I

    iget-wide v0, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->e:J

    invoke-static {v7, v0, v1}, Lcom/anythink/expressad/exoplayer/k/af;->a([JJ)V

    new-instance v11, Lcom/anythink/expressad/exoplayer/e/a/m;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v5

    move v4, v6

    move-object v5, v7

    move-object v6, v8

    move-wide v7, v9

    invoke-direct/range {v0 .. v8}, Lcom/anythink/expressad/exoplayer/e/a/m;-><init>(Lcom/anythink/expressad/exoplayer/e/a/j;[J[II[J[IJ)V

    return-object v11

    :cond_1c
    move-object/from16 p1, v1

    move/from16 v21, v3

    :cond_1d
    iget-object v0, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->j:[J

    array-length v1, v0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1f

    const/4 v1, 0x0

    aget-wide v9, v0, v1

    cmp-long v0, v9, v18

    if-nez v0, :cond_1f

    iget-object v0, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->k:[J

    aget-wide v9, v0, v1

    const/4 v0, 0x0

    :goto_13
    array-length v1, v7

    if-ge v0, v1, :cond_1e

    aget-wide v11, v7, v0

    sub-long v13, v11, v9

    const-wide/32 v15, 0xf4240

    iget-wide v11, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->e:J

    move-wide/from16 v17, v11

    invoke-static/range {v13 .. v18}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v11

    aput-wide v11, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_1e
    sub-long v11, v25, v9

    const-wide/32 v13, 0xf4240

    iget-wide v0, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->e:J

    move-wide v15, v0

    invoke-static/range {v11 .. v16}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v9

    new-instance v11, Lcom/anythink/expressad/exoplayer/e/a/m;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v5

    move v4, v6

    move-object v5, v7

    move-object v6, v8

    move-wide v7, v9

    invoke-direct/range {v0 .. v8}, Lcom/anythink/expressad/exoplayer/e/a/m;-><init>(Lcom/anythink/expressad/exoplayer/e/a/j;[J[II[J[IJ)V

    return-object v11

    :cond_1f
    iget v0, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    const/4 v0, 0x1

    goto :goto_14

    :cond_20
    const/4 v0, 0x0

    :goto_14
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_15
    iget-object v10, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->j:[J

    array-length v11, v10

    const-wide/16 v13, -0x1

    if-ge v12, v11, :cond_23

    iget-object v11, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->k:[J

    move-object v15, v5

    move/from16 v16, v6

    aget-wide v5, v11, v12

    cmp-long v11, v5, v13

    if-eqz v11, :cond_22

    aget-wide v22, v10, v12

    iget-wide v10, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->e:J

    iget-wide v13, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->f:J

    move-wide/from16 v24, v10

    move-wide/from16 v26, v13

    invoke-static/range {v22 .. v27}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v10

    const/4 v13, 0x1

    invoke-static {v7, v5, v6, v13, v13}, Lcom/anythink/expressad/exoplayer/k/af;->a([JJZZ)I

    move-result v14

    add-long/2addr v5, v10

    const/4 v10, 0x0

    invoke-static {v7, v5, v6, v0, v10}, Lcom/anythink/expressad/exoplayer/k/af;->a([JJZZ)I

    move-result v5

    sub-int v6, v5, v14

    add-int/2addr v3, v6

    if-eq v9, v14, :cond_21

    const/4 v6, 0x1

    goto :goto_16

    :cond_21
    const/4 v6, 0x0

    :goto_16
    or-int/2addr v1, v6

    move v9, v5

    :cond_22
    add-int/lit8 v12, v12, 0x1

    move-object v5, v15

    move/from16 v6, v16

    goto :goto_15

    :cond_23
    move-object v15, v5

    move/from16 v16, v6

    move/from16 v5, v21

    if-eq v3, v5, :cond_24

    const/4 v5, 0x1

    goto :goto_17

    :cond_24
    const/4 v5, 0x0

    :goto_17
    or-int/2addr v1, v5

    if-eqz v1, :cond_25

    new-array v5, v3, [J

    goto :goto_18

    :cond_25
    move-object v5, v4

    :goto_18
    if-eqz v1, :cond_26

    new-array v6, v3, [I

    goto :goto_19

    :cond_26
    move-object v6, v15

    :goto_19
    if-eqz v1, :cond_27

    const/16 v16, 0x0

    :cond_27
    if-eqz v1, :cond_28

    new-array v9, v3, [I

    goto :goto_1a

    :cond_28
    move-object v9, v8

    :goto_1a
    new-array v10, v3, [J

    const/4 v3, 0x0

    const/4 v12, 0x0

    :goto_1b
    iget-object v11, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->j:[J

    array-length v13, v11

    if-ge v12, v13, :cond_2f

    iget-object v13, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->k:[J

    move-object/from16 p2, v15

    aget-wide v14, v13, v12

    aget-wide v29, v11, v12

    const-wide/16 v27, -0x1

    cmp-long v11, v14, v27

    if-eqz v11, :cond_2e

    move v13, v12

    iget-wide v11, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->e:J

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    iget-wide v8, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->f:J

    move-wide/from16 v21, v29

    move-wide/from16 v23, v11

    move-wide/from16 v25, v8

    invoke-static/range {v21 .. v26}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v8

    add-long/2addr v8, v14

    const/4 v11, 0x1

    invoke-static {v7, v14, v15, v11, v11}, Lcom/anythink/expressad/exoplayer/k/af;->a([JJZZ)I

    move-result v12

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v0, v11}, Lcom/anythink/expressad/exoplayer/k/af;->a([JJZZ)I

    move-result v8

    if-eqz v1, :cond_29

    sub-int v9, v8, v12

    invoke-static {v4, v12, v5, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v11, p2

    invoke-static {v11, v12, v6, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v33, v4

    move-object/from16 v4, v31

    move-object/from16 v31, v5

    move-object/from16 v5, v32

    invoke-static {v4, v12, v5, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1c

    :cond_29
    move-object/from16 v11, p2

    move-object/from16 v33, v4

    move-object/from16 v4, v31

    move-object/from16 v31, v5

    move-object/from16 v5, v32

    :goto_1c
    if-ge v12, v8, :cond_2b

    aget v9, v5, v3

    const/16 v20, 0x1

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_2a

    move-object/from16 v9, p1

    goto :goto_1d

    :cond_2a
    const-string v0, "Ignoring edit list: edit does not start with a sync sample."

    move-object/from16 v9, p1

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/anythink/expressad/exoplayer/e/a/b$g;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/e/a/b$g;-><init>()V

    throw v0

    :cond_2b
    move-object/from16 v9, p1

    const/16 v20, 0x1

    :goto_1d
    move/from16 v32, v0

    move/from16 v0, v16

    :goto_1e
    if-ge v12, v8, :cond_2d

    const-wide/32 v23, 0xf4240

    move-object/from16 v34, v4

    move-object/from16 p1, v5

    iget-wide v4, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->f:J

    move-wide/from16 v21, v18

    move-wide/from16 v25, v4

    invoke-static/range {v21 .. v26}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v4

    aget-wide v21, v7, v12

    sub-long v35, v21, v14

    const-wide/32 v37, 0xf4240

    move/from16 p2, v8

    move-object/from16 v21, v9

    iget-wide v8, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->e:J

    move-wide/from16 v39, v8

    invoke-static/range {v35 .. v40}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v8

    add-long/2addr v4, v8

    aput-wide v4, v10, v3

    if-eqz v1, :cond_2c

    aget v4, v6, v3

    if-le v4, v0, :cond_2c

    aget v0, v11, v12

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, p1

    move/from16 v8, p2

    move-object/from16 v9, v21

    move-object/from16 v4, v34

    goto :goto_1e

    :cond_2d
    move-object/from16 v34, v4

    move-object/from16 p1, v5

    move-object/from16 v21, v9

    move/from16 v16, v0

    goto :goto_1f

    :cond_2e
    move-object/from16 v21, p1

    move-object/from16 v11, p2

    move/from16 v32, v0

    move-object/from16 v33, v4

    move-object/from16 v31, v5

    move-object/from16 v34, v8

    move-object/from16 p1, v9

    move v13, v12

    const/16 v20, 0x1

    :goto_1f
    add-long v18, v18, v29

    add-int/lit8 v12, v13, 0x1

    move-object/from16 v9, p1

    move-object v15, v11

    move-object/from16 p1, v21

    move-wide/from16 v13, v27

    move-object/from16 v5, v31

    move/from16 v0, v32

    move-object/from16 v4, v33

    move-object/from16 v8, v34

    goto/16 :goto_1b

    :cond_2f
    move-object/from16 v31, v5

    move-object/from16 p1, v9

    const-wide/32 v23, 0xf4240

    iget-wide v0, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->e:J

    move-wide/from16 v21, v18

    move-wide/from16 v25, v0

    invoke-static/range {v21 .. v26}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v7

    new-instance v9, Lcom/anythink/expressad/exoplayer/e/a/m;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    move-object v3, v6

    move/from16 v4, v16

    move-object/from16 v6, p1

    move-object v5, v10

    invoke-direct/range {v0 .. v8}, Lcom/anythink/expressad/exoplayer/e/a/m;-><init>(Lcom/anythink/expressad/exoplayer/e/a/j;[J[II[J[IJ)V

    return-object v9

    :cond_30
    :goto_20
    move-object/from16 v33, v4

    move-object v11, v5

    move/from16 v16, v6

    move-object/from16 v34, v8

    iget-wide v0, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->e:J

    invoke-static {v7, v0, v1}, Lcom/anythink/expressad/exoplayer/k/af;->a([JJ)V

    new-instance v12, Lcom/anythink/expressad/exoplayer/e/a/m;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, v33

    move-object v3, v11

    move-object/from16 v8, v34

    move/from16 v4, v16

    move-object v5, v7

    move-object v6, v8

    move-wide v7, v9

    invoke-direct/range {v0 .. v8}, Lcom/anythink/expressad/exoplayer/e/a/m;-><init>(Lcom/anythink/expressad/exoplayer/e/a/j;[J[II[J[IJ)V

    return-object v12

    :cond_31
    new-instance v0, Lcom/anythink/expressad/exoplayer/t;

    const-string v1, "Track has no sample table size information"

    invoke-direct {v0, v1}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/anythink/expressad/exoplayer/e/a/a$b;Z)Lcom/anythink/expressad/exoplayer/g/a;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->a()I

    move-result v1

    if-lt v1, p1, :cond_6

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->c()I

    move-result v1

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v2

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v3

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->aG:I

    if-ne v3, v4, :cond_5

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    add-int/2addr v1, v2

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->c()I

    move-result v2

    if-ge v2, v1, :cond_4

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->c()I

    move-result v2

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v3

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v4

    sget v5, Lcom/anythink/expressad/exoplayer/e/a/a;->aH:I

    if-ne v4, v5, :cond_3

    invoke-virtual {p0, v2}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    add-int/2addr v2, v3

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->c()I

    move-result v1

    if-ge v1, v2, :cond_2

    invoke-static {p0}, Lcom/anythink/expressad/exoplayer/e/a/f;->a(Lcom/anythink/expressad/exoplayer/k/s;)Lcom/anythink/expressad/exoplayer/g/a$a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    new-instance p0, Lcom/anythink/expressad/exoplayer/g/a;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/g/a;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_3
    add-int/lit8 v3, v3, -0x8

    invoke-virtual {p0, v3}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    goto :goto_1

    :cond_4
    return-object v0

    :cond_5
    add-int/lit8 v2, v2, -0x8

    invoke-virtual {p0, v2}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/k/s;I)Lcom/anythink/expressad/exoplayer/g/a;
    .locals 5

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->c()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p1, :cond_4

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v2

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v3

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->aH:I

    if-ne v3, v4, :cond_3

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    add-int/2addr v0, v2

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->c()I

    move-result v2

    if-ge v2, v0, :cond_1

    invoke-static {p0}, Lcom/anythink/expressad/exoplayer/e/a/f;->a(Lcom/anythink/expressad/exoplayer/k/s;)Lcom/anythink/expressad/exoplayer/g/a$a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v1

    :cond_2
    new-instance p0, Lcom/anythink/expressad/exoplayer/g/a;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/g/a;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_3
    add-int/lit8 v2, v2, -0x8

    invoke-virtual {p0, v2}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/k/s;IIIIILcom/anythink/expressad/exoplayer/d/e;Lcom/anythink/expressad/exoplayer/e/a/b$c;I)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    add-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v0, v5}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->e()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->e()I

    move-result v12

    const/16 v5, 0x32

    invoke-virtual {v0, v5}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->c()I

    move-result v5

    sget v6, Lcom/anythink/expressad/exoplayer/e/a/a;->ae:I

    move/from16 v8, p1

    if-ne v8, v6, :cond_2

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/exoplayer/e/a/b;->b(Lcom/anythink/expressad/exoplayer/k/s;II)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/anythink/expressad/exoplayer/e/a/k;

    iget-object v9, v9, Lcom/anythink/expressad/exoplayer/e/a/k;->b:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/anythink/expressad/exoplayer/d/e;->a(Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/d/e;

    move-result-object v3

    :goto_0
    iget-object v9, v4, Lcom/anythink/expressad/exoplayer/e/a/b$c;->b:[Lcom/anythink/expressad/exoplayer/e/a/k;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/anythink/expressad/exoplayer/e/a/k;

    aput-object v6, v9, p8

    :cond_1
    invoke-virtual {v0, v5}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    :cond_2
    move-object/from16 v20, v3

    const/4 v3, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, -0x1

    :goto_1
    sub-int v10, v5, v1

    if-ge v10, v2, :cond_1a

    invoke-virtual {v0, v5}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->c()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->c()I

    move-result v15

    sub-int/2addr v15, v1

    if-eq v15, v2, :cond_1a

    :cond_3
    if-lez v13, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    const-string v7, "childAtomSize should be positive"

    invoke-static {v6, v7}, Lcom/anythink/expressad/exoplayer/k/a;->a(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v6

    sget v7, Lcom/anythink/expressad/exoplayer/e/a/a;->M:I

    const/4 v15, 0x3

    if-ne v6, v7, :cond_7

    if-nez v3, :cond_5

    const/4 v15, 0x1

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    :goto_3
    invoke-static {v15}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    add-int/lit8 v10, v10, 0x8

    invoke-virtual {v0, v10}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-static/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/l/a;->a(Lcom/anythink/expressad/exoplayer/k/s;)Lcom/anythink/expressad/exoplayer/l/a;

    move-result-object v3

    iget-object v14, v3, Lcom/anythink/expressad/exoplayer/l/a;->a:Ljava/util/List;

    iget v6, v3, Lcom/anythink/expressad/exoplayer/l/a;->b:I

    iput v6, v4, Lcom/anythink/expressad/exoplayer/e/a/b$c;->d:I

    if-nez v9, :cond_6

    iget v3, v3, Lcom/anythink/expressad/exoplayer/l/a;->e:F

    move/from16 v16, v3

    :cond_6
    const-string v3, "video/avc"

    goto/16 :goto_9

    :cond_7
    sget v7, Lcom/anythink/expressad/exoplayer/e/a/a;->N:I

    if-ne v6, v7, :cond_9

    if-nez v3, :cond_8

    const/4 v15, 0x1

    goto :goto_4

    :cond_8
    const/4 v15, 0x0

    :goto_4
    invoke-static {v15}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    add-int/lit8 v10, v10, 0x8

    invoke-virtual {v0, v10}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-static/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/l/d;->a(Lcom/anythink/expressad/exoplayer/k/s;)Lcom/anythink/expressad/exoplayer/l/d;

    move-result-object v3

    iget-object v14, v3, Lcom/anythink/expressad/exoplayer/l/d;->a:Ljava/util/List;

    iget v3, v3, Lcom/anythink/expressad/exoplayer/l/d;->b:I

    iput v3, v4, Lcom/anythink/expressad/exoplayer/e/a/b$c;->d:I

    const-string v3, "video/hevc"

    goto/16 :goto_9

    :cond_9
    sget v7, Lcom/anythink/expressad/exoplayer/e/a/a;->aR:I

    if-ne v6, v7, :cond_c

    if-nez v3, :cond_a

    const/4 v15, 0x1

    goto :goto_5

    :cond_a
    const/4 v15, 0x0

    :goto_5
    invoke-static {v15}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->aP:I

    if-ne v8, v3, :cond_b

    const-string v3, "video/x-vnd.on2.vp8"

    goto/16 :goto_9

    :cond_b
    const-string v3, "video/x-vnd.on2.vp9"

    goto/16 :goto_9

    :cond_c
    sget v7, Lcom/anythink/expressad/exoplayer/e/a/a;->l:I

    if-ne v6, v7, :cond_e

    if-nez v3, :cond_d

    const/4 v15, 0x1

    goto :goto_6

    :cond_d
    const/4 v15, 0x0

    :goto_6
    invoke-static {v15}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    const-string v3, "video/3gpp"

    goto/16 :goto_9

    :cond_e
    sget v7, Lcom/anythink/expressad/exoplayer/e/a/a;->O:I

    if-ne v6, v7, :cond_10

    if-nez v3, :cond_f

    const/4 v15, 0x1

    goto :goto_7

    :cond_f
    const/4 v15, 0x0

    :goto_7
    invoke-static {v15}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    invoke-static {v0, v10}, Lcom/anythink/expressad/exoplayer/e/a/b;->d(Lcom/anythink/expressad/exoplayer/k/s;I)Landroid/util/Pair;

    move-result-object v3

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [B

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    move-object v3, v6

    goto/16 :goto_9

    :cond_10
    sget v7, Lcom/anythink/expressad/exoplayer/e/a/a;->an:I

    if-ne v6, v7, :cond_11

    add-int/lit8 v10, v10, 0x8

    invoke-virtual {v0, v10}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v7

    int-to-float v6, v6

    int-to-float v7, v7

    div-float v16, v6, v7

    const/4 v9, 0x1

    goto :goto_9

    :cond_11
    sget v7, Lcom/anythink/expressad/exoplayer/e/a/a;->aN:I

    if-ne v6, v7, :cond_14

    add-int/lit8 v6, v10, 0x8

    :goto_8
    sub-int v7, v6, v10

    if-ge v7, v13, :cond_13

    invoke-virtual {v0, v6}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v15

    sget v1, Lcom/anythink/expressad/exoplayer/e/a/a;->aO:I

    if-ne v15, v1, :cond_12

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    add-int/2addr v7, v6

    invoke-static {v1, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    move-object/from16 v17, v1

    goto :goto_9

    :cond_12
    add-int/2addr v6, v7

    move/from16 v1, p2

    goto :goto_8

    :cond_13
    const/16 v17, 0x0

    goto :goto_9

    :cond_14
    sget v1, Lcom/anythink/expressad/exoplayer/e/a/a;->aM:I

    if-ne v6, v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->d()I

    move-result v1

    invoke-virtual {v0, v15}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    if-nez v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->d()I

    move-result v1

    if-eqz v1, :cond_18

    const/4 v6, 0x1

    if-eq v1, v6, :cond_17

    const/4 v7, 0x2

    if-eq v1, v7, :cond_16

    if-eq v1, v15, :cond_15

    goto :goto_9

    :cond_15
    const/16 v18, 0x3

    goto :goto_9

    :cond_16
    const/16 v18, 0x2

    goto :goto_9

    :cond_17
    const/16 v18, 0x1

    goto :goto_9

    :cond_18
    const/16 v18, 0x0

    :cond_19
    :goto_9
    add-int/2addr v5, v13

    move/from16 v1, p2

    goto/16 :goto_1

    :cond_1a
    if-nez v3, :cond_1b

    return-void

    :cond_1b
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v19, 0x0

    move-object v7, v3

    move/from16 v15, p5

    invoke-static/range {v6 .. v20}, Lcom/anythink/expressad/exoplayer/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/anythink/expressad/exoplayer/l/b;Lcom/anythink/expressad/exoplayer/d/e;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v0

    iput-object v0, v4, Lcom/anythink/expressad/exoplayer/e/a/b$c;->c:Lcom/anythink/expressad/exoplayer/m;

    return-void
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/k/s;IIIILjava/lang/String;Lcom/anythink/expressad/exoplayer/e/a/b$c;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    add-int/lit8 v3, p2, 0x8

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->ao:I

    const-string v4, "application/ttml+xml"

    const/4 v5, 0x0

    const-wide v6, 0x7fffffffffffffffL

    if-ne v1, v3, :cond_0

    :goto_0
    move-object v9, v4

    move-object/from16 v18, v5

    move-wide/from16 v16, v6

    goto :goto_1

    :cond_0
    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->az:I

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, p3, -0x8

    add-int/lit8 v1, v1, -0x8

    new-array v3, v1, [B

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1}, Lcom/anythink/expressad/exoplayer/k/s;->a([BII)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v4, "application/x-quicktime-tx3g"

    goto :goto_0

    :cond_1
    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->aA:I

    if-ne v1, v0, :cond_2

    const-string v4, "application/x-mp4-vtt"

    goto :goto_0

    :cond_2
    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->aB:I

    if-ne v1, v0, :cond_3

    const-wide/16 v6, 0x0

    goto :goto_0

    :cond_3
    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->aC:I

    if-ne v1, v0, :cond_4

    const/4 v0, 0x1

    iput v0, v2, Lcom/anythink/expressad/exoplayer/e/a/b$c;->e:I

    const-string v4, "application/x-mp4-cea-608"

    goto :goto_0

    :goto_1
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object/from16 v13, p5

    invoke-static/range {v8 .. v18}, Lcom/anythink/expressad/exoplayer/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/anythink/expressad/exoplayer/d/e;JLjava/util/List;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v0

    iput-object v0, v2, Lcom/anythink/expressad/exoplayer/e/a/b$c;->c:Lcom/anythink/expressad/exoplayer/m;

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/k/s;IIIILjava/lang/String;ZLcom/anythink/expressad/exoplayer/d/e;Lcom/anythink/expressad/exoplayer/e/a/b$c;I)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v12, p5

    move-object/from16 v3, p7

    move-object/from16 v13, p8

    add-int/lit8 v4, v1, 0x8

    const/16 v5, 0x8

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    const/4 v4, 0x6

    if-eqz p6, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->e()I

    move-result v5

    invoke-virtual {v0, v4}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v5}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    const/4 v5, 0x0

    :goto_0
    const/4 v15, 0x2

    const/16 v6, 0x10

    const/4 v11, 0x1

    if-eqz v5, :cond_3

    if-ne v5, v11, :cond_1

    goto :goto_1

    :cond_1
    if-ne v5, v15, :cond_2

    invoke-virtual {v0, v6}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->j()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v4

    const/16 v6, 0x14

    invoke-virtual {v0, v6}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->e()I

    move-result v7

    invoke-virtual {v0, v4}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->k()I

    move-result v4

    if-ne v5, v11, :cond_4

    invoke-virtual {v0, v6}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    :cond_4
    move v5, v4

    move v4, v7

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->c()I

    move-result v6

    sget v7, Lcom/anythink/expressad/exoplayer/e/a/a;->af:I

    const/16 v16, 0x0

    move/from16 v8, p1

    if-ne v8, v7, :cond_7

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/exoplayer/e/a/b;->b(Lcom/anythink/expressad/exoplayer/k/s;II)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v3, :cond_5

    move-object/from16 v3, v16

    goto :goto_3

    :cond_5
    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/anythink/expressad/exoplayer/e/a/k;

    iget-object v9, v9, Lcom/anythink/expressad/exoplayer/e/a/k;->b:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/anythink/expressad/exoplayer/d/e;->a(Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/d/e;

    move-result-object v3

    :goto_3
    iget-object v9, v13, Lcom/anythink/expressad/exoplayer/e/a/b$c;->b:[Lcom/anythink/expressad/exoplayer/e/a/k;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/anythink/expressad/exoplayer/e/a/k;

    aput-object v7, v9, p9

    :cond_6
    invoke-virtual {v0, v6}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    :cond_7
    move-object v10, v3

    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->s:I

    const-string v9, "audio/raw"

    if-ne v8, v3, :cond_8

    const-string v3, "audio/ac3"

    goto :goto_6

    :cond_8
    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->u:I

    if-ne v8, v3, :cond_9

    const-string v3, "audio/eac3"

    goto :goto_6

    :cond_9
    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->w:I

    if-ne v8, v3, :cond_a

    const-string v3, "audio/vnd.dts"

    goto :goto_6

    :cond_a
    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->x:I

    if-eq v8, v3, :cond_13

    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->y:I

    if-ne v8, v3, :cond_b

    goto :goto_5

    :cond_b
    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->z:I

    if-ne v8, v3, :cond_c

    const-string v3, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_6

    :cond_c
    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->aD:I

    if-ne v8, v3, :cond_d

    const-string v3, "audio/3gpp"

    goto :goto_6

    :cond_d
    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->aE:I

    if-ne v8, v3, :cond_e

    const-string v3, "audio/amr-wb"

    goto :goto_6

    :cond_e
    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->q:I

    if-eq v8, v3, :cond_12

    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->r:I

    if-ne v8, v3, :cond_f

    goto :goto_4

    :cond_f
    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->o:I

    if-ne v8, v3, :cond_10

    const-string v3, "audio/mpeg"

    goto :goto_6

    :cond_10
    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->aT:I

    if-ne v8, v3, :cond_11

    const-string v3, "audio/alac"

    goto :goto_6

    :cond_11
    move-object/from16 v3, v16

    goto :goto_6

    :cond_12
    :goto_4
    move-object v3, v9

    goto :goto_6

    :cond_13
    :goto_5
    const-string v3, "audio/vnd.dts.hd"

    :goto_6
    move-object v8, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move v7, v6

    move-object/from16 v19, v16

    :goto_7
    sub-int v3, v7, v1

    const/4 v4, -0x1

    if-ge v3, v2, :cond_21

    invoke-virtual {v0, v7}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v6

    if-lez v6, :cond_14

    const/4 v3, 0x1

    goto :goto_8

    :cond_14
    const/4 v3, 0x0

    :goto_8
    const-string v5, "childAtomSize should be positive"

    invoke-static {v3, v5}, Lcom/anythink/expressad/exoplayer/k/a;->a(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v3

    sget v11, Lcom/anythink/expressad/exoplayer/e/a/a;->O:I

    if-eq v3, v11, :cond_1b

    if-eqz p6, :cond_15

    sget v15, Lcom/anythink/expressad/exoplayer/e/a/a;->p:I

    if-ne v3, v15, :cond_15

    goto/16 :goto_c

    :cond_15
    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->t:I

    if-ne v3, v4, :cond_16

    add-int/lit8 v3, v7, 0x8

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v12, v10}, Lcom/anythink/expressad/exoplayer/b/a;->a(Lcom/anythink/expressad/exoplayer/k/s;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/exoplayer/d/e;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v3

    :goto_9
    iput-object v3, v13, Lcom/anythink/expressad/exoplayer/e/a/b$c;->c:Lcom/anythink/expressad/exoplayer/m;

    move v14, v6

    move v1, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object v15, v10

    const/4 v6, 0x0

    const/16 v20, 0x1

    goto :goto_b

    :cond_16
    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->v:I

    if-ne v3, v4, :cond_17

    add-int/lit8 v3, v7, 0x8

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v12, v10}, Lcom/anythink/expressad/exoplayer/b/a;->b(Lcom/anythink/expressad/exoplayer/k/s;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/exoplayer/d/e;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v3

    goto :goto_9

    :cond_17
    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->A:I

    if-ne v3, v4, :cond_18

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v11, -0x1

    const/4 v15, 0x0

    move-object v4, v8

    move v14, v6

    move v6, v11

    move v11, v7

    move/from16 v7, v17

    move-object/from16 v21, v8

    move/from16 v8, v18

    move-object/from16 v22, v9

    move-object v9, v15

    move-object v15, v10

    move v1, v11

    const/16 v20, 0x1

    move-object/from16 v11, p5

    invoke-static/range {v3 .. v11}, Lcom/anythink/expressad/exoplayer/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v3

    iput-object v3, v13, Lcom/anythink/expressad/exoplayer/e/a/b$c;->c:Lcom/anythink/expressad/exoplayer/m;

    goto :goto_a

    :cond_18
    move v14, v6

    move v1, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object v15, v10

    const/16 v20, 0x1

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->aT:I

    if-ne v3, v4, :cond_19

    new-array v3, v14, [B

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6, v14}, Lcom/anythink/expressad/exoplayer/k/s;->a([BII)V

    move-object/from16 v19, v3

    goto :goto_b

    :cond_19
    :goto_a
    const/4 v6, 0x0

    :cond_1a
    :goto_b
    move-object/from16 v8, v21

    goto/16 :goto_10

    :cond_1b
    :goto_c
    move v14, v6

    move v1, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object v15, v10

    const/4 v6, 0x0

    const/16 v20, 0x1

    if-ne v3, v11, :cond_1c

    move v7, v1

    goto :goto_f

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->c()I

    move-result v3

    move v7, v3

    :goto_d
    sub-int v3, v7, v1

    if-ge v3, v14, :cond_1f

    invoke-virtual {v0, v7}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v3

    if-lez v3, :cond_1d

    const/4 v11, 0x1

    goto :goto_e

    :cond_1d
    const/4 v11, 0x0

    :goto_e
    invoke-static {v11, v5}, Lcom/anythink/expressad/exoplayer/k/a;->a(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v8

    sget v9, Lcom/anythink/expressad/exoplayer/e/a/a;->O:I

    if-ne v8, v9, :cond_1e

    goto :goto_f

    :cond_1e
    add-int/2addr v7, v3

    goto :goto_d

    :cond_1f
    const/4 v7, -0x1

    :goto_f
    if-eq v7, v4, :cond_1a

    invoke-static {v0, v7}, Lcom/anythink/expressad/exoplayer/e/a/b;->d(Lcom/anythink/expressad/exoplayer/k/s;I)Landroid/util/Pair;

    move-result-object v3

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [B

    const-string v5, "audio/mp4a-latm"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-static {v3}, Lcom/anythink/expressad/exoplayer/k/d;->a([B)Landroid/util/Pair;

    move-result-object v5

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v19, v3

    move-object v8, v4

    move/from16 v17, v5

    move/from16 v18, v7

    goto :goto_10

    :cond_20
    move-object/from16 v19, v3

    move-object v8, v4

    :goto_10
    add-int v7, v1, v14

    move/from16 v1, p2

    move-object v10, v15

    move-object/from16 v9, v22

    const/4 v11, 0x1

    const/4 v15, 0x2

    goto/16 :goto_7

    :cond_21
    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object v15, v10

    iget-object v0, v13, Lcom/anythink/expressad/exoplayer/e/a/b$c;->c:Lcom/anythink/expressad/exoplayer/m;

    if-nez v0, :cond_24

    move-object/from16 v8, v21

    if-eqz v8, :cond_24

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v6, 0x2

    goto :goto_11

    :cond_22
    const/4 v6, -0x1

    :goto_11
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v19, :cond_23

    move-object/from16 v7, v16

    goto :goto_12

    :cond_23
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v7, v1

    :goto_12
    move-object v1, v8

    move/from16 v4, v17

    move/from16 v5, v18

    move-object v8, v15

    move-object/from16 v9, p5

    invoke-static/range {v0 .. v9}, Lcom/anythink/expressad/exoplayer/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v0

    iput-object v0, v13, Lcom/anythink/expressad/exoplayer/e/a/b$c;->c:Lcom/anythink/expressad/exoplayer/m;

    :cond_24
    return-void
.end method

.method private static a([JJJJ)Z
    .locals 7

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/anythink/expressad/exoplayer/k/af;->a(III)I

    move-result v4

    array-length v5, p0

    sub-int/2addr v5, v2

    invoke-static {v5, v3, v0}, Lcom/anythink/expressad/exoplayer/k/af;->a(III)I

    move-result v0

    aget-wide v5, p0, v3

    cmp-long v2, v5, p3

    if-gtz v2, :cond_0

    aget-wide v4, p0, v4

    cmp-long v2, p3, v4

    if-gez v2, :cond_0

    aget-wide p3, p0, v0

    cmp-long p0, p3, p5

    if-gez p0, :cond_0

    cmp-long p0, p5, p1

    if-gtz p0, :cond_0

    return v1

    :cond_0
    return v3
.end method

.method private static b(Lcom/anythink/expressad/exoplayer/k/s;II)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/exoplayer/k/s;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/anythink/expressad/exoplayer/e/a/k;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->c()I

    move-result v0

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize should be positive"

    invoke-static {v2, v3}, Lcom/anythink/expressad/exoplayer/k/a;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v2

    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->aa:I

    if-ne v2, v3, :cond_1

    invoke-static {p0, v0, v1}, Lcom/anythink/expressad/exoplayer/e/a/b;->c(Lcom/anythink/expressad/exoplayer/k/s;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Lcom/anythink/expressad/exoplayer/k/s;)Lcom/anythink/expressad/exoplayer/e/a/b$f;
    .locals 11

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v1

    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/e/a/a;->a(I)I

    move-result v1

    const/16 v2, 0x10

    if-nez v1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    :goto_0
    invoke-virtual {p0, v3}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->c()I

    move-result v5

    if-nez v1, :cond_1

    const/4 v0, 0x4

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_3

    iget-object v8, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    add-int v9, v5, v7

    aget-byte v8, v8, v9

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    :goto_2
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v5, :cond_4

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    goto :goto_4

    :cond_4
    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v0

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->n()J

    move-result-wide v0

    :goto_3
    const-wide/16 v9, 0x0

    cmp-long v5, v0, v9

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    move-wide v7, v0

    :goto_4
    invoke-virtual {p0, v2}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v0

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v2

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result p0

    const/high16 v4, 0x10000

    const/high16 v5, -0x10000

    if-nez v0, :cond_7

    if-ne v1, v4, :cond_7

    if-ne v2, v5, :cond_7

    if-nez p0, :cond_7

    const/16 v6, 0x5a

    goto :goto_5

    :cond_7
    if-nez v0, :cond_8

    if-ne v1, v5, :cond_8

    if-ne v2, v4, :cond_8

    if-nez p0, :cond_8

    const/16 v6, 0x10e

    goto :goto_5

    :cond_8
    if-ne v0, v5, :cond_9

    if-nez v1, :cond_9

    if-nez v2, :cond_9

    if-ne p0, v5, :cond_9

    const/16 v6, 0xb4

    :cond_9
    :goto_5
    new-instance p0, Lcom/anythink/expressad/exoplayer/e/a/b$f;

    invoke-direct {p0, v3, v7, v8, v6}, Lcom/anythink/expressad/exoplayer/e/a/b$f;-><init>(IJI)V

    return-object p0
.end method

.method private static b(Lcom/anythink/expressad/exoplayer/k/s;I)Lcom/anythink/expressad/exoplayer/g/a;
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->c()I

    move-result v1

    if-ge v1, p1, :cond_1

    invoke-static {p0}, Lcom/anythink/expressad/exoplayer/e/a/f;->a(Lcom/anythink/expressad/exoplayer/k/s;)Lcom/anythink/expressad/exoplayer/g/a$a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Lcom/anythink/expressad/exoplayer/g/a;

    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/g/a;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private static c(Lcom/anythink/expressad/exoplayer/k/s;I)F
    .locals 0

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result p1

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private static c(Lcom/anythink/expressad/exoplayer/k/s;)I
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result p0

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/b;->c:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget v0, Lcom/anythink/expressad/exoplayer/e/a/b;->b:I

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    sget v0, Lcom/anythink/expressad/exoplayer/e/a/b;->d:I

    if-eq p0, v0, :cond_4

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/b;->e:I

    if-eq p0, v0, :cond_4

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/b;->f:I

    if-eq p0, v0, :cond_4

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/b;->g:I

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    sget v0, Lcom/anythink/expressad/exoplayer/e/a/b;->h:I

    if-ne p0, v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method private static c(Lcom/anythink/expressad/exoplayer/k/s;II)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/exoplayer/k/s;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/anythink/expressad/exoplayer/e/a/k;",
            ">;"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move-object v6, v4

    const/4 v5, -0x1

    const/4 v7, 0x0

    :goto_0
    sub-int v8, v0, p1

    if-ge v8, p2, :cond_3

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v8

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v9

    sget v10, Lcom/anythink/expressad/exoplayer/e/a/a;->ag:I

    if-ne v9, v10, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_0
    sget v10, Lcom/anythink/expressad/exoplayer/e/a/a;->ab:I

    if-ne v9, v10, :cond_1

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->o()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    sget v10, Lcom/anythink/expressad/exoplayer/e/a/a;->ac:I

    if-ne v9, v10, :cond_2

    move v5, v0

    move v7, v8

    :cond_2
    :goto_1
    add-int/2addr v0, v8

    goto :goto_0

    :cond_3
    const-string p1, "cenc"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cbc1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cens"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cbcs"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return-object v2

    :cond_5
    :goto_2
    const/4 p1, 0x1

    if-eqz v6, :cond_6

    const/4 p2, 0x1

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    :goto_3
    const-string v0, "frma atom is mandatory"

    invoke-static {p2, v0}, Lcom/anythink/expressad/exoplayer/k/a;->a(ZLjava/lang/Object;)V

    if-eq v5, v1, :cond_7

    const/4 p2, 0x1

    goto :goto_4

    :cond_7
    const/4 p2, 0x0

    :goto_4
    const-string v0, "schi atom is mandatory"

    invoke-static {p2, v0}, Lcom/anythink/expressad/exoplayer/k/a;->a(ZLjava/lang/Object;)V

    invoke-static {p0, v5, v7, v4}, Lcom/anythink/expressad/exoplayer/e/a/b;->a(Lcom/anythink/expressad/exoplayer/k/s;IILjava/lang/String;)Lcom/anythink/expressad/exoplayer/e/a/k;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 v3, 0x1

    :cond_8
    const-string p1, "tenc atom is mandatory"

    invoke-static {v3, p1}, Lcom/anythink/expressad/exoplayer/k/a;->a(ZLjava/lang/Object;)V

    invoke-static {v6, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/anythink/expressad/exoplayer/k/s;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/exoplayer/k/s;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v1

    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/e/a/a;->a(I)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    :goto_0
    invoke-virtual {p0, v2}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v2

    if-nez v1, :cond_1

    const/4 v0, 0x4

    :cond_1
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->e()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p0, 0xa

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, 0x60

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/anythink/expressad/exoplayer/k/s;I)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/exoplayer/k/s;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-static {p0}, Lcom/anythink/expressad/exoplayer/e/a/b;->e(Lcom/anythink/expressad/exoplayer/k/s;)I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->d()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->e()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-static {p0}, Lcom/anythink/expressad/exoplayer/e/a/b;->e(Lcom/anythink/expressad/exoplayer/k/s;)I

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->d()I

    move-result v0

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/o;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/mpeg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts.hd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-static {p0}, Lcom/anythink/expressad/exoplayer/e/a/b;->e(Lcom/anythink/expressad/exoplayer/k/s;)I

    move-result p1

    new-array v1, p1, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lcom/anythink/expressad/exoplayer/k/s;->a([BII)V

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/anythink/expressad/exoplayer/k/s;II)[B
    .locals 4

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v1

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v2

    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->aO:I

    if-ne v2, v3, :cond_0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    add-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(Lcom/anythink/expressad/exoplayer/k/s;)I
    .locals 3

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->d()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->d()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method
