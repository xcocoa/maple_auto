.class public final Lcom/anythink/expressad/exoplayer/j/a/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/j/a/f$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x20000


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/j/k;JJLcom/anythink/expressad/exoplayer/j/h;[BLcom/anythink/expressad/exoplayer/k/v;Lcom/anythink/expressad/exoplayer/j/a/f$a;)J
    .locals 16

    move-object/from16 v1, p5

    move-object/from16 v0, p6

    move-object/from16 v2, p8

    move-object/from16 v3, p0

    :goto_0
    if-eqz p7, :cond_0

    invoke-virtual/range {p7 .. p7}, Lcom/anythink/expressad/exoplayer/k/v;->b()V

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Lcom/anythink/expressad/exoplayer/j/k;

    iget-object v6, v3, Lcom/anythink/expressad/exoplayer/j/k;->c:Landroid/net/Uri;

    iget-object v7, v3, Lcom/anythink/expressad/exoplayer/j/k;->d:[B

    iget-wide v8, v3, Lcom/anythink/expressad/exoplayer/j/k;->f:J

    add-long v8, v8, p1

    iget-wide v10, v3, Lcom/anythink/expressad/exoplayer/j/k;->e:J

    sub-long v10, v8, v10

    const-wide/16 v12, -0x1

    iget-object v14, v3, Lcom/anythink/expressad/exoplayer/j/k;->h:Ljava/lang/String;

    iget v5, v3, Lcom/anythink/expressad/exoplayer/j/k;->i:I

    or-int/lit8 v15, v5, 0x2

    move-object v5, v4

    move-wide/from16 v8, p1

    invoke-direct/range {v5 .. v15}, Lcom/anythink/expressad/exoplayer/j/k;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V
    :try_end_0
    .catch Lcom/anythink/expressad/exoplayer/k/v$a; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1, v4}, Lcom/anythink/expressad/exoplayer/j/h;->a(Lcom/anythink/expressad/exoplayer/j/k;)J

    move-result-wide v5

    iget-wide v7, v2, Lcom/anythink/expressad/exoplayer/j/a/f$a;->c:J

    const-wide/16 v9, -0x1

    cmp-long v3, v7, v9

    if-nez v3, :cond_1

    cmp-long v3, v5, v9

    if-eqz v3, :cond_1

    iget-wide v7, v4, Lcom/anythink/expressad/exoplayer/j/k;->e:J

    add-long/2addr v7, v5

    iput-wide v7, v2, Lcom/anythink/expressad/exoplayer/j/a/f$a;->c:J

    :cond_1
    const-wide/16 v5, 0x0

    :goto_1
    cmp-long v3, v5, p3

    if-eqz v3, :cond_5

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    cmp-long v7, p3, v9

    if-eqz v7, :cond_2

    array-length v7, v0

    int-to-long v7, v7

    sub-long v11, p3, v5

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v8, v7

    goto :goto_2

    :cond_2
    array-length v8, v0

    :goto_2
    invoke-interface {v1, v0, v3, v8}, Lcom/anythink/expressad/exoplayer/j/h;->a([BII)I

    move-result v3

    const/4 v7, -0x1

    if-ne v3, v7, :cond_3

    iget-wide v7, v2, Lcom/anythink/expressad/exoplayer/j/a/f$a;->c:J

    cmp-long v3, v7, v9

    if-nez v3, :cond_5

    iget-wide v7, v4, Lcom/anythink/expressad/exoplayer/j/k;->e:J

    add-long/2addr v7, v5

    iput-wide v7, v2, Lcom/anythink/expressad/exoplayer/j/a/f$a;->c:J

    goto :goto_3

    :cond_3
    int-to-long v7, v3

    add-long/2addr v5, v7

    iget-wide v11, v2, Lcom/anythink/expressad/exoplayer/j/a/f$a;->b:J

    add-long/2addr v11, v7

    iput-wide v11, v2, Lcom/anythink/expressad/exoplayer/j/a/f$a;->b:J

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3
    :try_end_1
    .catch Lcom/anythink/expressad/exoplayer/k/v$a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_3
    invoke-static/range {p5 .. p5}, Lcom/anythink/expressad/exoplayer/k/af;->a(Lcom/anythink/expressad/exoplayer/j/h;)V

    return-wide v5

    :catch_0
    move-object v3, v4

    goto :goto_4

    :cond_6
    :try_start_2
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4
    :try_end_2
    .catch Lcom/anythink/expressad/exoplayer/k/v$a; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static/range {p5 .. p5}, Lcom/anythink/expressad/exoplayer/k/af;->a(Lcom/anythink/expressad/exoplayer/j/h;)V

    throw v0

    :catch_1
    :goto_4
    invoke-static/range {p5 .. p5}, Lcom/anythink/expressad/exoplayer/k/af;->a(Lcom/anythink/expressad/exoplayer/j/h;)V

    goto/16 :goto_0
.end method

.method private static a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/anythink/expressad/exoplayer/j/k;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/k;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/j/k;->c:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/j/a/a;Ljava/lang/String;)V
    .locals 1

    invoke-interface {p0, p1}, Lcom/anythink/expressad/exoplayer/j/a/a;->a(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/j/a/e;

    :try_start_0
    invoke-interface {p0, v0}, Lcom/anythink/expressad/exoplayer/j/a/a;->b(Lcom/anythink/expressad/exoplayer/j/a/e;)V
    :try_end_0
    .catch Lcom/anythink/expressad/exoplayer/j/a/a$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/j/k;Lcom/anythink/expressad/exoplayer/j/a/a;Lcom/anythink/expressad/exoplayer/j/a/c;[BLcom/anythink/expressad/exoplayer/k/v;Lcom/anythink/expressad/exoplayer/j/a/f$a;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 26
    .param p5    # Lcom/anythink/expressad/exoplayer/j/a/f$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/concurrent/atomic/AtomicBoolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v6, p5

    invoke-static/range {p2 .. p2}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v11, 0x7fffffffffffffffL

    const-wide/16 v13, -0x1

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/j/a/f;->a(Lcom/anythink/expressad/exoplayer/j/k;)Ljava/lang/String;

    move-result-object v15

    iget-wide v0, v9, Lcom/anythink/expressad/exoplayer/j/k;->e:J

    iget-wide v2, v9, Lcom/anythink/expressad/exoplayer/j/k;->g:J

    cmp-long v4, v2, v13

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v10, v15}, Lcom/anythink/expressad/exoplayer/j/a/a;->b(Ljava/lang/String;)J

    move-result-wide v2

    :goto_0
    iput-wide v2, v6, Lcom/anythink/expressad/exoplayer/j/a/f$a;->c:J

    iput-wide v7, v6, Lcom/anythink/expressad/exoplayer/j/a/f$a;->a:J

    iput-wide v7, v6, Lcom/anythink/expressad/exoplayer/j/a/f$a;->b:J

    move-wide/from16 v16, v0

    move-wide/from16 v18, v2

    :goto_1
    cmp-long v0, v18, v7

    if-eqz v0, :cond_4

    cmp-long v20, v18, v13

    if-eqz v20, :cond_1

    move-wide/from16 v4, v18

    goto :goto_2

    :cond_1
    move-wide v4, v11

    :goto_2
    move-object/from16 v0, p1

    move-object v1, v15

    move-wide/from16 v2, v16

    invoke-interface/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/j/a/a;->b(Ljava/lang/String;JJ)J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-lez v2, :cond_2

    iget-wide v2, v6, Lcom/anythink/expressad/exoplayer/j/a/f$a;->a:J

    add-long/2addr v2, v0

    iput-wide v2, v6, Lcom/anythink/expressad/exoplayer/j/a/f$a;->a:J

    goto :goto_3

    :cond_2
    neg-long v0, v0

    cmp-long v2, v0, v11

    if-eqz v2, :cond_4

    :goto_3
    add-long v16, v16, v0

    if-nez v20, :cond_3

    move-wide v0, v7

    :cond_3
    sub-long v18, v18, v0

    goto :goto_1

    :cond_4
    move-object v15, v6

    goto :goto_4

    :cond_5
    new-instance v0, Lcom/anythink/expressad/exoplayer/j/a/f$a;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/j/a/f$a;-><init>()V

    move-object v15, v0

    :goto_4
    invoke-static/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/j/a/f;->a(Lcom/anythink/expressad/exoplayer/j/k;)Ljava/lang/String;

    move-result-object v6

    iget-wide v0, v9, Lcom/anythink/expressad/exoplayer/j/k;->e:J

    iget-wide v2, v9, Lcom/anythink/expressad/exoplayer/j/k;->g:J

    cmp-long v4, v2, v13

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {v10, v6}, Lcom/anythink/expressad/exoplayer/j/a/a;->b(Ljava/lang/String;)J

    move-result-wide v2

    :goto_5
    move-wide/from16 v16, v0

    move-wide/from16 v18, v2

    :goto_6
    cmp-long v0, v18, v7

    if-eqz v0, :cond_c

    if-eqz p6, :cond_8

    invoke-virtual/range {p6 .. p6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_7

    :cond_7
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_8
    :goto_7
    cmp-long v20, v18, v13

    if-eqz v20, :cond_9

    move-wide/from16 v4, v18

    goto :goto_8

    :cond_9
    move-wide v4, v11

    :goto_8
    move-object/from16 v0, p1

    move-object v1, v6

    move-wide/from16 v2, v16

    invoke-interface/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/j/a/a;->b(Ljava/lang/String;JJ)J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-gtz v2, :cond_a

    neg-long v3, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-wide/from16 v21, v3

    move-object/from16 v5, p2

    move-object/from16 v23, v6

    move-object/from16 v6, p3

    move-wide/from16 v24, v7

    move-object/from16 v7, p4

    move-object v8, v15

    invoke-static/range {v0 .. v8}, Lcom/anythink/expressad/exoplayer/j/a/f;->a(Lcom/anythink/expressad/exoplayer/j/k;JJLcom/anythink/expressad/exoplayer/j/h;[BLcom/anythink/expressad/exoplayer/k/v;Lcom/anythink/expressad/exoplayer/j/a/f$a;)J

    move-result-wide v0

    cmp-long v2, v0, v21

    if-ltz v2, :cond_c

    move-wide/from16 v7, v21

    goto :goto_9

    :cond_a
    move-object/from16 v23, v6

    move-wide/from16 v24, v7

    move-wide v7, v0

    :goto_9
    add-long v16, v16, v7

    if-nez v20, :cond_b

    move-wide/from16 v7, v24

    :cond_b
    sub-long v18, v18, v7

    move-object/from16 v6, v23

    move-wide/from16 v7, v24

    goto :goto_6

    :cond_c
    return-void
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/j/k;Lcom/anythink/expressad/exoplayer/j/a/a;Lcom/anythink/expressad/exoplayer/j/a/f$a;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/j/a/f;->a(Lcom/anythink/expressad/exoplayer/j/k;)Ljava/lang/String;

    move-result-object v8

    iget-wide v2, v0, Lcom/anythink/expressad/exoplayer/j/k;->e:J

    iget-wide v4, v0, Lcom/anythink/expressad/exoplayer/j/k;->g:J

    const-wide/16 v9, -0x1

    cmp-long v0, v4, v9

    if-eqz v0, :cond_0

    move-object/from16 v0, p1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/anythink/expressad/exoplayer/j/a/a;->b(Ljava/lang/String;)J

    move-result-wide v4

    :goto_0
    iput-wide v4, v1, Lcom/anythink/expressad/exoplayer/j/a/f$a;->c:J

    const-wide/16 v11, 0x0

    iput-wide v11, v1, Lcom/anythink/expressad/exoplayer/j/a/f$a;->a:J

    iput-wide v11, v1, Lcom/anythink/expressad/exoplayer/j/a/f$a;->b:J

    move-wide v13, v2

    move-wide v15, v4

    :goto_1
    cmp-long v2, v15, v11

    if-eqz v2, :cond_5

    const-wide v17, 0x7fffffffffffffffL

    cmp-long v19, v15, v9

    if-eqz v19, :cond_1

    move-wide v6, v15

    goto :goto_2

    :cond_1
    move-wide/from16 v6, v17

    :goto_2
    move-object/from16 v2, p1

    move-object v3, v8

    move-wide v4, v13

    invoke-interface/range {v2 .. v7}, Lcom/anythink/expressad/exoplayer/j/a/a;->b(Ljava/lang/String;JJ)J

    move-result-wide v2

    cmp-long v4, v2, v11

    if-lez v4, :cond_2

    iget-wide v4, v1, Lcom/anythink/expressad/exoplayer/j/a/f$a;->a:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/anythink/expressad/exoplayer/j/a/f$a;->a:J

    goto :goto_3

    :cond_2
    neg-long v2, v2

    cmp-long v4, v2, v17

    if-nez v4, :cond_3

    return-void

    :cond_3
    :goto_3
    add-long/2addr v13, v2

    if-nez v19, :cond_4

    move-wide v2, v11

    :cond_4
    sub-long/2addr v15, v2

    goto :goto_1

    :cond_5
    return-void
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/j/k;Lcom/anythink/expressad/exoplayer/j/a/a;Lcom/anythink/expressad/exoplayer/j/h;Lcom/anythink/expressad/exoplayer/j/a/f$a;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 29
    .param p3    # Lcom/anythink/expressad/exoplayer/j/a/f$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/atomic/AtomicBoolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v6, p3

    new-instance v11, Lcom/anythink/expressad/exoplayer/j/a/c;

    move-object/from16 v0, p2

    invoke-direct {v11, v10, v0}, Lcom/anythink/expressad/exoplayer/j/a/c;-><init>(Lcom/anythink/expressad/exoplayer/j/a/a;Lcom/anythink/expressad/exoplayer/j/h;)V

    const/high16 v0, 0x20000

    new-array v12, v0, [B

    invoke-static {v11}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v13, 0x7fffffffffffffffL

    const-wide/16 v15, -0x1

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/j/a/f;->a(Lcom/anythink/expressad/exoplayer/j/k;)Ljava/lang/String;

    move-result-object v4

    iget-wide v0, v9, Lcom/anythink/expressad/exoplayer/j/k;->e:J

    iget-wide v2, v9, Lcom/anythink/expressad/exoplayer/j/k;->g:J

    cmp-long v5, v2, v15

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v10, v4}, Lcom/anythink/expressad/exoplayer/j/a/a;->b(Ljava/lang/String;)J

    move-result-wide v2

    :goto_0
    iput-wide v2, v6, Lcom/anythink/expressad/exoplayer/j/a/f$a;->c:J

    iput-wide v7, v6, Lcom/anythink/expressad/exoplayer/j/a/f$a;->a:J

    iput-wide v7, v6, Lcom/anythink/expressad/exoplayer/j/a/f$a;->b:J

    move-wide/from16 v17, v0

    move-wide/from16 v19, v2

    :goto_1
    cmp-long v0, v19, v7

    if-eqz v0, :cond_4

    cmp-long v21, v19, v15

    if-eqz v21, :cond_1

    move-wide/from16 v22, v19

    goto :goto_2

    :cond_1
    move-wide/from16 v22, v13

    :goto_2
    move-object/from16 v0, p1

    move-object v1, v4

    move-wide/from16 v2, v17

    move-object/from16 v24, v4

    move-wide/from16 v4, v22

    invoke-interface/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/j/a/a;->b(Ljava/lang/String;JJ)J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-lez v2, :cond_2

    iget-wide v2, v6, Lcom/anythink/expressad/exoplayer/j/a/f$a;->a:J

    add-long/2addr v2, v0

    iput-wide v2, v6, Lcom/anythink/expressad/exoplayer/j/a/f$a;->a:J

    goto :goto_3

    :cond_2
    neg-long v0, v0

    cmp-long v2, v0, v13

    if-eqz v2, :cond_4

    :goto_3
    add-long v17, v17, v0

    if-nez v21, :cond_3

    move-wide v0, v7

    :cond_3
    sub-long v19, v19, v0

    move-object/from16 v4, v24

    goto :goto_1

    :cond_4
    move-object/from16 v17, v6

    goto :goto_4

    :cond_5
    new-instance v0, Lcom/anythink/expressad/exoplayer/j/a/f$a;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/j/a/f$a;-><init>()V

    move-object/from16 v17, v0

    :goto_4
    invoke-static/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/j/a/f;->a(Lcom/anythink/expressad/exoplayer/j/k;)Ljava/lang/String;

    move-result-object v6

    iget-wide v0, v9, Lcom/anythink/expressad/exoplayer/j/k;->e:J

    iget-wide v2, v9, Lcom/anythink/expressad/exoplayer/j/k;->g:J

    cmp-long v4, v2, v15

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {v10, v6}, Lcom/anythink/expressad/exoplayer/j/a/a;->b(Ljava/lang/String;)J

    move-result-wide v2

    :goto_5
    move-wide/from16 v18, v0

    move-wide/from16 v20, v2

    :goto_6
    cmp-long v0, v20, v7

    if-eqz v0, :cond_c

    if-eqz p4, :cond_8

    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_7

    :cond_7
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_8
    :goto_7
    cmp-long v22, v20, v15

    if-eqz v22, :cond_9

    move-wide/from16 v4, v20

    goto :goto_8

    :cond_9
    move-wide v4, v13

    :goto_8
    move-object/from16 v0, p1

    move-object v1, v6

    move-wide/from16 v2, v18

    invoke-interface/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/j/a/a;->b(Ljava/lang/String;JJ)J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-gtz v2, :cond_a

    neg-long v3, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v24, v3

    move-object v5, v11

    move-object/from16 v26, v6

    move-object v6, v12

    move-wide/from16 v27, v7

    move-object/from16 v7, v23

    move-object/from16 v8, v17

    invoke-static/range {v0 .. v8}, Lcom/anythink/expressad/exoplayer/j/a/f;->a(Lcom/anythink/expressad/exoplayer/j/k;JJLcom/anythink/expressad/exoplayer/j/h;[BLcom/anythink/expressad/exoplayer/k/v;Lcom/anythink/expressad/exoplayer/j/a/f$a;)J

    move-result-wide v0

    cmp-long v2, v0, v24

    if-ltz v2, :cond_c

    move-wide/from16 v7, v24

    goto :goto_9

    :cond_a
    move-object/from16 v26, v6

    move-wide/from16 v27, v7

    move-wide v7, v0

    :goto_9
    add-long v18, v18, v7

    if-nez v22, :cond_b

    move-wide/from16 v7, v27

    :cond_b
    sub-long v20, v20, v7

    move-object/from16 v6, v26

    move-wide/from16 v7, v27

    goto :goto_6

    :cond_c
    return-void
.end method
