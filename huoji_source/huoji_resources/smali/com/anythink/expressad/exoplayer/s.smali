.class public final Lcom/anythink/expressad/exoplayer/s;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:I = 0x64


# instance fields
.field private final b:Lcom/anythink/expressad/exoplayer/ae$a;

.field private final c:Lcom/anythink/expressad/exoplayer/ae$b;

.field private d:J

.field private e:Lcom/anythink/expressad/exoplayer/ae;

.field private f:I

.field private g:Z

.field private h:Lcom/anythink/expressad/exoplayer/q;

.field private i:Lcom/anythink/expressad/exoplayer/q;

.field private j:Lcom/anythink/expressad/exoplayer/q;

.field private k:I

.field private l:Ljava/lang/Object;

.field private m:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/ae$a;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    new-instance v0, Lcom/anythink/expressad/exoplayer/ae$b;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/ae$b;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->c:Lcom/anythink/expressad/exoplayer/ae$b;

    return-void
.end method

.method private a(IJJ)Lcom/anythink/expressad/exoplayer/h/s$a;
    .locals 7

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v0, p2, p3}, Lcom/anythink/expressad/exoplayer/ae$a;->a(J)I

    move-result v3

    const/4 p2, -0x1

    if-ne v3, p2, :cond_0

    new-instance p2, Lcom/anythink/expressad/exoplayer/h/s$a;

    invoke-direct {p2, p1, p4, p5}, Lcom/anythink/expressad/exoplayer/h/s$a;-><init>(IJ)V

    return-object p2

    :cond_0
    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {p2, v3}, Lcom/anythink/expressad/exoplayer/ae$a;->b(I)I

    move-result v4

    new-instance p2, Lcom/anythink/expressad/exoplayer/h/s$a;

    move-object v1, p2

    move v2, p1

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/anythink/expressad/exoplayer/h/s$a;-><init>(IIIJ)V

    return-object p2
.end method

.method private a(IIIJJ)Lcom/anythink/expressad/exoplayer/r;
    .locals 14

    move-object v0, p0

    new-instance v7, Lcom/anythink/expressad/exoplayer/h/s$a;

    move-object v1, v7

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/anythink/expressad/exoplayer/h/s$a;-><init>(IIIJ)V

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {p0, v7, v1, v2}, Lcom/anythink/expressad/exoplayer/s;->b(Lcom/anythink/expressad/exoplayer/h/s$a;J)Z

    move-result v11

    invoke-direct {p0, v7, v11}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/h/s$a;Z)Z

    move-result v12

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget v2, v7, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object v1

    iget v2, v7, Lcom/anythink/expressad/exoplayer/h/s$a;->b:I

    iget v3, v7, Lcom/anythink/expressad/exoplayer/h/s$a;->c:I

    invoke-virtual {v1, v2, v3}, Lcom/anythink/expressad/exoplayer/ae$a;->c(II)J

    move-result-wide v9

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/exoplayer/ae$a;->b(I)I

    move-result v1

    move/from16 v2, p3

    if-ne v2, v1, :cond_0

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/ae$a;->d()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    move-wide v3, v1

    new-instance v13, Lcom/anythink/expressad/exoplayer/r;

    const-wide/high16 v5, -0x8000000000000000L

    move-object v1, v13

    move-object v2, v7

    move-wide/from16 v7, p4

    invoke-direct/range {v1 .. v12}, Lcom/anythink/expressad/exoplayer/r;-><init>(Lcom/anythink/expressad/exoplayer/h/s$a;JJJJZZ)V

    return-object v13
.end method

.method private a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/r;
    .locals 8

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget v1, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p4, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    iget p5, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->b:I

    iget v0, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->c:I

    invoke-virtual {p4, p5, v0}, Lcom/anythink/expressad/exoplayer/ae$a;->b(II)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v1, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget v2, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->b:I

    iget v3, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->c:I

    iget-wide v6, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->d:J

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/anythink/expressad/exoplayer/s;->a(IIIJJ)Lcom/anythink/expressad/exoplayer/r;

    move-result-object p1

    return-object p1

    :cond_1
    iget v1, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-wide v4, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->d:J

    move-object v0, p0

    move-wide v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/s;->b(IJJ)Lcom/anythink/expressad/exoplayer/r;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/anythink/expressad/exoplayer/q;J)Lcom/anythink/expressad/exoplayer/r;
    .locals 17
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-boolean v2, v1, Lcom/anythink/expressad/exoplayer/r;->f:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    iget-object v9, v8, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget v10, v2, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-object v11, v8, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    iget-object v12, v8, Lcom/anythink/expressad/exoplayer/s;->c:Lcom/anythink/expressad/exoplayer/ae$b;

    iget v13, v8, Lcom/anythink/expressad/exoplayer/s;->f:I

    iget-boolean v14, v8, Lcom/anythink/expressad/exoplayer/s;->g:Z

    invoke-virtual/range {v9 .. v14}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Lcom/anythink/expressad/exoplayer/ae$b;IZ)I

    move-result v2

    if-ne v2, v5, :cond_0

    return-object v6

    :cond_0
    iget-object v5, v8, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v7, v8, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v5, v2, v7, v3}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object v3

    iget v12, v3, Lcom/anythink/expressad/exoplayer/ae$a;->c:I

    iget-object v3, v8, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    iget-object v3, v3, Lcom/anythink/expressad/exoplayer/ae$a;->b:Ljava/lang/Object;

    iget-object v5, v1, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-wide v9, v5, Lcom/anythink/expressad/exoplayer/h/s$a;->d:J

    iget-object v5, v8, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v7, v8, Lcom/anythink/expressad/exoplayer/s;->c:Lcom/anythink/expressad/exoplayer/ae$b;

    invoke-virtual {v5, v12, v7, v4}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$b;Z)Lcom/anythink/expressad/exoplayer/ae$b;

    move-result-object v4

    iget v4, v4, Lcom/anythink/expressad/exoplayer/ae$b;->f:I

    const-wide/16 v13, 0x0

    if-ne v4, v2, :cond_3

    iget-wide v4, v0, Lcom/anythink/expressad/exoplayer/q;->e:J

    iget-wide v1, v1, Lcom/anythink/expressad/exoplayer/r;->e:J

    add-long/2addr v4, v1

    sub-long v4, v4, p2

    iget-object v9, v8, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v10, v8, Lcom/anythink/expressad/exoplayer/s;->c:Lcom/anythink/expressad/exoplayer/ae$b;

    iget-object v11, v8, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v15

    move-wide v13, v1

    invoke-virtual/range {v9 .. v16}, Lcom/anythink/expressad/exoplayer/ae;->a(Lcom/anythink/expressad/exoplayer/ae$b;Lcom/anythink/expressad/exoplayer/ae$a;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v6

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/q;->b:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-wide v0, v0, Lcom/anythink/expressad/exoplayer/h/s$a;->d:J

    goto :goto_0

    :cond_2
    iget-wide v0, v8, Lcom/anythink/expressad/exoplayer/s;->d:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    iput-wide v6, v8, Lcom/anythink/expressad/exoplayer/s;->d:J

    :goto_0
    move-wide v13, v4

    move-wide v4, v0

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v2

    move-wide v4, v9

    :goto_1
    move-object/from16 v0, p0

    move-wide v2, v13

    invoke-direct/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/s;->a(IJJ)Lcom/anythink/expressad/exoplayer/h/s$a;

    move-result-object v1

    move-wide v4, v13

    invoke-direct/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/r;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, v1, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-object v2, v8, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget v7, v0, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-object v9, v8, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v2, v7, v9, v4}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, v0, Lcom/anythink/expressad/exoplayer/h/s$a;->b:I

    iget-object v3, v8, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v3, v2}, Lcom/anythink/expressad/exoplayer/ae$a;->d(I)I

    move-result v3

    if-ne v3, v5, :cond_5

    return-object v6

    :cond_5
    iget-object v4, v8, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    iget v5, v0, Lcom/anythink/expressad/exoplayer/h/s$a;->c:I

    invoke-virtual {v4, v2, v5}, Lcom/anythink/expressad/exoplayer/ae$a;->a(II)I

    move-result v4

    if-ge v4, v3, :cond_7

    iget-object v3, v8, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v3, v2, v4}, Lcom/anythink/expressad/exoplayer/ae$a;->b(II)Z

    move-result v3

    if-nez v3, :cond_6

    return-object v6

    :cond_6
    iget v3, v0, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-wide v5, v1, Lcom/anythink/expressad/exoplayer/r;->d:J

    iget-wide v9, v0, Lcom/anythink/expressad/exoplayer/h/s$a;->d:J

    move-object/from16 v0, p0

    move v1, v3

    move v3, v4

    move-wide v4, v5

    move-wide v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/anythink/expressad/exoplayer/s;->a(IIIJJ)Lcom/anythink/expressad/exoplayer/r;

    move-result-object v0

    return-object v0

    :cond_7
    iget v2, v0, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-wide v3, v1, Lcom/anythink/expressad/exoplayer/r;->d:J

    iget-wide v5, v0, Lcom/anythink/expressad/exoplayer/h/s$a;->d:J

    move-object/from16 v0, p0

    move v1, v2

    move-wide v2, v3

    move-wide v4, v5

    invoke-direct/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/s;->b(IJJ)Lcom/anythink/expressad/exoplayer/r;

    move-result-object v0

    return-object v0

    :cond_8
    iget-wide v9, v1, Lcom/anythink/expressad/exoplayer/r;->c:J

    const-wide/high16 v11, -0x8000000000000000L

    cmp-long v2, v9, v11

    if-eqz v2, :cond_b

    iget-object v2, v8, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v2, v9, v10}, Lcom/anythink/expressad/exoplayer/ae$a;->a(J)I

    move-result v2

    if-ne v2, v5, :cond_9

    iget v2, v0, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-wide v3, v1, Lcom/anythink/expressad/exoplayer/r;->c:J

    iget-wide v5, v0, Lcom/anythink/expressad/exoplayer/h/s$a;->d:J

    move-object/from16 v0, p0

    move v1, v2

    move-wide v2, v3

    move-wide v4, v5

    invoke-direct/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/s;->b(IJJ)Lcom/anythink/expressad/exoplayer/r;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v3, v8, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v3, v2}, Lcom/anythink/expressad/exoplayer/ae$a;->b(I)I

    move-result v3

    iget-object v4, v8, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v4, v2, v3}, Lcom/anythink/expressad/exoplayer/ae$a;->b(II)Z

    move-result v4

    if-nez v4, :cond_a

    return-object v6

    :cond_a
    iget v4, v0, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-wide v5, v1, Lcom/anythink/expressad/exoplayer/r;->c:J

    iget-wide v9, v0, Lcom/anythink/expressad/exoplayer/h/s$a;->d:J

    move-object/from16 v0, p0

    move v1, v4

    move-wide v4, v5

    move-wide v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/anythink/expressad/exoplayer/s;->a(IIIJJ)Lcom/anythink/expressad/exoplayer/r;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v1, v8, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/ae$a;->c()I

    move-result v1

    if-nez v1, :cond_c

    return-object v6

    :cond_c
    add-int/lit8 v2, v1, -0x1

    iget-object v1, v8, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/exoplayer/ae$a;->a(I)J

    move-result-wide v3

    cmp-long v1, v3, v11

    if-nez v1, :cond_f

    iget-object v1, v8, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/exoplayer/ae$a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_2

    :cond_d
    iget-object v1, v8, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/exoplayer/ae$a;->b(I)I

    move-result v3

    iget-object v1, v8, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v1, v2, v3}, Lcom/anythink/expressad/exoplayer/ae$a;->b(II)Z

    move-result v1

    if-nez v1, :cond_e

    return-object v6

    :cond_e
    iget-object v1, v8, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    iget-wide v4, v1, Lcom/anythink/expressad/exoplayer/ae$a;->d:J

    iget v1, v0, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-wide v6, v0, Lcom/anythink/expressad/exoplayer/h/s$a;->d:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/anythink/expressad/exoplayer/s;->a(IIIJJ)Lcom/anythink/expressad/exoplayer/r;

    move-result-object v0

    return-object v0

    :cond_f
    :goto_2
    return-object v6
.end method

.method private a(Lcom/anythink/expressad/exoplayer/r;Lcom/anythink/expressad/exoplayer/h/s$a;)Lcom/anythink/expressad/exoplayer/r;
    .locals 13

    iget-wide v2, p1, Lcom/anythink/expressad/exoplayer/r;->b:J

    iget-wide v4, p1, Lcom/anythink/expressad/exoplayer/r;->c:J

    invoke-direct {p0, p2, v4, v5}, Lcom/anythink/expressad/exoplayer/s;->b(Lcom/anythink/expressad/exoplayer/h/s$a;J)Z

    move-result v10

    invoke-direct {p0, p2, v10}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/h/s$a;Z)Z

    move-result v11

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget v1, p2, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v6, v7}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    iget v1, p2, Lcom/anythink/expressad/exoplayer/h/s$a;->b:I

    iget v6, p2, Lcom/anythink/expressad/exoplayer/h/s$a;->c:I

    invoke-virtual {v0, v1, v6}, Lcom/anythink/expressad/exoplayer/ae$a;->c(II)J

    move-result-wide v0

    :goto_0
    move-wide v8, v0

    goto :goto_1

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v6, v4, v0

    if-nez v6, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    iget-wide v0, v0, Lcom/anythink/expressad/exoplayer/ae$a;->d:J

    goto :goto_0

    :cond_1
    move-wide v8, v4

    :goto_1
    new-instance v12, Lcom/anythink/expressad/exoplayer/r;

    iget-wide v6, p1, Lcom/anythink/expressad/exoplayer/r;->d:J

    move-object v0, v12

    move-object v1, p2

    invoke-direct/range {v0 .. v11}, Lcom/anythink/expressad/exoplayer/r;-><init>(Lcom/anythink/expressad/exoplayer/h/s$a;JJJJZZ)V

    return-object v12
.end method

.method private a(Lcom/anythink/expressad/exoplayer/u;)Lcom/anythink/expressad/exoplayer/r;
    .locals 6

    iget-object v1, p1, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-wide v2, p1, Lcom/anythink/expressad/exoplayer/u;->e:J

    iget-wide v4, p1, Lcom/anythink/expressad/exoplayer/u;->d:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/r;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/anythink/expressad/exoplayer/h/s$a;Z)Z
    .locals 10

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget v1, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object v0

    iget v0, v0, Lcom/anythink/expressad/exoplayer/ae$a;->c:I

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/s;->c:Lcom/anythink/expressad/exoplayer/ae$b;

    invoke-virtual {v1, v0, v2, v3}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$b;Z)Lcom/anythink/expressad/exoplayer/ae$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/anythink/expressad/exoplayer/ae$b;->e:Z

    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget v5, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    iget-object v7, p0, Lcom/anythink/expressad/exoplayer/s;->c:Lcom/anythink/expressad/exoplayer/ae$b;

    iget v8, p0, Lcom/anythink/expressad/exoplayer/s;->f:I

    iget-boolean v9, p0, Lcom/anythink/expressad/exoplayer/s;->g:Z

    invoke-virtual/range {v4 .. v9}, Lcom/anythink/expressad/exoplayer/ae;->b(ILcom/anythink/expressad/exoplayer/ae$a;Lcom/anythink/expressad/exoplayer/ae$b;IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v3
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/q;Lcom/anythink/expressad/exoplayer/r;)Z
    .locals 5

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/r;->b:J

    iget-wide v2, p1, Lcom/anythink/expressad/exoplayer/r;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/r;->c:J

    iget-wide v2, p1, Lcom/anythink/expressad/exoplayer/r;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/exoplayer/h/s$a;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(I)J
    .locals 6

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object p1

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/ae$a;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    iget v0, v0, Lcom/anythink/expressad/exoplayer/ae$a;->c:I

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/s;->l:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {v4, v1}, Lcom/anythink/expressad/exoplayer/ae;->a(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v3, :cond_0

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v4, v1, v5, v2}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object v1

    iget v1, v1, Lcom/anythink/expressad/exoplayer/ae$a;->c:I

    if-ne v1, v0, :cond_0

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/s;->m:J

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/s;->e()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/anythink/expressad/exoplayer/q;->b:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p1, v1, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-wide v0, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->d:J

    return-wide v0

    :cond_1
    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/s;->e()Lcom/anythink/expressad/exoplayer/q;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v4, p1, Lcom/anythink/expressad/exoplayer/q;->b:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lcom/anythink/expressad/exoplayer/ae;->a(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v3, :cond_3

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v4, v1, v5, v2}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object v1

    iget v1, v1, Lcom/anythink/expressad/exoplayer/ae$a;->c:I

    if-ne v1, v0, :cond_3

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-wide v0, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->d:J

    return-wide v0

    :cond_3
    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    goto :goto_1

    :cond_4
    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/s;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/anythink/expressad/exoplayer/s;->d:J

    return-wide v0
.end method

.method private b(IJJ)Lcom/anythink/expressad/exoplayer/r;
    .locals 16

    move-object/from16 v0, p0

    new-instance v2, Lcom/anythink/expressad/exoplayer/h/s$a;

    move/from16 v1, p1

    move-wide/from16 v3, p4

    invoke-direct {v2, v1, v3, v4}, Lcom/anythink/expressad/exoplayer/h/s$a;-><init>(IJ)V

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget v3, v2, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    move-wide/from16 v3, p2

    invoke-virtual {v1, v3, v4}, Lcom/anythink/expressad/exoplayer/ae$a;->b(J)I

    move-result v1

    const-wide/high16 v5, -0x8000000000000000L

    const/4 v7, -0x1

    if-ne v1, v7, :cond_0

    move-wide v7, v5

    goto :goto_0

    :cond_0
    iget-object v7, v0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v7, v1}, Lcom/anythink/expressad/exoplayer/ae$a;->a(I)J

    move-result-wide v7

    :goto_0
    invoke-direct {v0, v2, v7, v8}, Lcom/anythink/expressad/exoplayer/s;->b(Lcom/anythink/expressad/exoplayer/h/s$a;J)Z

    move-result v11

    invoke-direct {v0, v2, v11}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/h/s$a;Z)Z

    move-result v12

    cmp-long v1, v7, v5

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    iget-wide v5, v1, Lcom/anythink/expressad/exoplayer/ae$a;->d:J

    move-wide v9, v5

    goto :goto_1

    :cond_1
    move-wide v9, v7

    :goto_1
    new-instance v13, Lcom/anythink/expressad/exoplayer/r;

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, v13

    move-wide/from16 v3, p2

    move-wide v5, v7

    move-wide v7, v14

    invoke-direct/range {v1 .. v12}, Lcom/anythink/expressad/exoplayer/r;-><init>(Lcom/anythink/expressad/exoplayer/h/s$a;JJJJZZ)V

    return-object v13
.end method

.method private b(Lcom/anythink/expressad/exoplayer/h/s$a;J)Z
    .locals 9

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget v1, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ae$a;->c()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result v2

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v4, v0}, Lcom/anythink/expressad/exoplayer/ae$a;->a(I)J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    if-nez v2, :cond_1

    cmp-long p1, p2, v6

    if-nez p1, :cond_1

    return v1

    :cond_1
    return v3

    :cond_2
    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {p2, v0}, Lcom/anythink/expressad/exoplayer/ae$a;->d(I)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_3

    return v3

    :cond_3
    if-eqz v2, :cond_4

    iget p3, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->b:I

    if-ne p3, v0, :cond_4

    iget p1, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->c:I

    add-int/lit8 p3, p2, -0x1

    if-ne p1, p3, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_6

    if-nez v2, :cond_5

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/exoplayer/ae$a;->b(I)I

    move-result p1

    if-ne p1, p2, :cond_5

    goto :goto_1

    :cond_5
    return v3

    :cond_6
    :goto_1
    return v1
.end method

.method private i()Z
    .locals 8

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/s;->e()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-object v3, v3, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget v3, v3, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/s;->c:Lcom/anythink/expressad/exoplayer/ae$b;

    iget v6, p0, Lcom/anythink/expressad/exoplayer/s;->f:I

    iget-boolean v7, p0, Lcom/anythink/expressad/exoplayer/s;->g:Z

    invoke-virtual/range {v2 .. v7}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Lcom/anythink/expressad/exoplayer/ae$b;IZ)I

    move-result v2

    :goto_1
    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    if-eqz v3, :cond_1

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-boolean v4, v4, Lcom/anythink/expressad/exoplayer/r;->f:Z

    if-nez v4, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-object v4, v4, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget v4, v4, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    if-ne v4, v2, :cond_2

    move-object v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/q;)Z

    move-result v2

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-object v4, v3, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    invoke-direct {p0, v3, v4}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/r;Lcom/anythink/expressad/exoplayer/h/s$a;)Lcom/anythink/expressad/exoplayer/r;

    move-result-object v3

    iput-object v3, v0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/s;->f()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_2
    return v1
.end method


# virtual methods
.method public final a([Lcom/anythink/expressad/exoplayer/z;Lcom/anythink/expressad/exoplayer/i/h;Lcom/anythink/expressad/exoplayer/j/b;Lcom/anythink/expressad/exoplayer/h/s;Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/r;)Lcom/anythink/expressad/exoplayer/h/r;
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/s;->j:Lcom/anythink/expressad/exoplayer/q;

    move-object/from16 v10, p6

    if-nez v1, :cond_0

    iget-wide v1, v10, Lcom/anythink/expressad/exoplayer/r;->b:J

    move-wide v4, v1

    goto :goto_0

    :cond_0
    iget-wide v2, v1, Lcom/anythink/expressad/exoplayer/q;->e:J

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-wide v4, v1, Lcom/anythink/expressad/exoplayer/r;->e:J

    add-long/2addr v2, v4

    move-wide v4, v2

    :goto_0
    new-instance v1, Lcom/anythink/expressad/exoplayer/q;

    move-object v2, v1

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lcom/anythink/expressad/exoplayer/q;-><init>([Lcom/anythink/expressad/exoplayer/z;JLcom/anythink/expressad/exoplayer/i/h;Lcom/anythink/expressad/exoplayer/j/b;Lcom/anythink/expressad/exoplayer/h/s;Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/r;)V

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/s;->j:Lcom/anythink/expressad/exoplayer/q;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/s;->f()Z

    move-result v2

    invoke-static {v2}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/s;->j:Lcom/anythink/expressad/exoplayer/q;

    iput-object v1, v2, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    :cond_1
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/anythink/expressad/exoplayer/s;->l:Ljava/lang/Object;

    iput-object v1, v0, Lcom/anythink/expressad/exoplayer/s;->j:Lcom/anythink/expressad/exoplayer/q;

    iget v2, v0, Lcom/anythink/expressad/exoplayer/s;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/anythink/expressad/exoplayer/s;->k:I

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    return-object v1
.end method

.method public final a(IJ)Lcom/anythink/expressad/exoplayer/h/s$a;
    .locals 10

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object v0

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/ae$a;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    iget v1, v1, Lcom/anythink/expressad/exoplayer/ae$a;->c:I

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/s;->l:Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {v5, v2}, Lcom/anythink/expressad/exoplayer/ae;->a(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, v4, :cond_0

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v5, v2, v6, v3}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object v2

    iget v2, v2, Lcom/anythink/expressad/exoplayer/ae$a;->c:I

    if-ne v2, v1, :cond_0

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/s;->m:J

    :goto_0
    move-wide v8, v0

    goto :goto_4

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/s;->e()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_2

    iget-object v5, v2, Lcom/anythink/expressad/exoplayer/q;->b:Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v0, v2, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    :goto_2
    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-wide v0, v0, Lcom/anythink/expressad/exoplayer/h/s$a;->d:J

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/s;->e()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/q;->b:Ljava/lang/Object;

    invoke-virtual {v2, v5}, Lcom/anythink/expressad/exoplayer/ae;->a(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, v4, :cond_3

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v5, v2, v6, v3}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object v2

    iget v2, v2, Lcom/anythink/expressad/exoplayer/ae$a;->c:I

    if-ne v2, v1, :cond_3

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    goto :goto_2

    :cond_3
    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    goto :goto_3

    :cond_4
    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/s;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/anythink/expressad/exoplayer/s;->d:J

    goto :goto_0

    :goto_4
    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/anythink/expressad/exoplayer/s;->a(IJJ)Lcom/anythink/expressad/exoplayer/h/s$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(JLcom/anythink/expressad/exoplayer/u;)Lcom/anythink/expressad/exoplayer/r;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->j:Lcom/anythink/expressad/exoplayer/q;

    if-nez v0, :cond_0

    iget-object v2, p3, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-wide v3, p3, Lcom/anythink/expressad/exoplayer/u;->e:J

    iget-wide v5, p3, Lcom/anythink/expressad/exoplayer/u;->d:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/r;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/q;J)Lcom/anythink/expressad/exoplayer/r;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/r;I)Lcom/anythink/expressad/exoplayer/r;
    .locals 1

    iget-object v0, p1, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    invoke-virtual {v0, p2}, Lcom/anythink/expressad/exoplayer/h/s$a;->a(I)Lcom/anythink/expressad/exoplayer/h/s$a;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/r;Lcom/anythink/expressad/exoplayer/h/s$a;)Lcom/anythink/expressad/exoplayer/r;

    move-result-object p1

    return-object p1
.end method

.method public final a(J)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->j:Lcom/anythink/expressad/exoplayer/q;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/anythink/expressad/exoplayer/q;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    iget-wide v2, v0, Lcom/anythink/expressad/exoplayer/q;->e:J

    sub-long/2addr p1, v2

    invoke-interface {v1, p1, p2}, Lcom/anythink/expressad/exoplayer/h/r;->a_(J)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    return-void
.end method

.method public final a()Z
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->j:Lcom/anythink/expressad/exoplayer/q;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-boolean v1, v1, Lcom/anythink/expressad/exoplayer/r;->g:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->j:Lcom/anythink/expressad/exoplayer/q;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-wide v0, v0, Lcom/anythink/expressad/exoplayer/r;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget v0, p0, Lcom/anythink/expressad/exoplayer/s;->k:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final a(I)Z
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/exoplayer/s;->f:I

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/s;->i()Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/r;)Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->j:Lcom/anythink/expressad/exoplayer/q;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/s$a;J)Z
    .locals 11

    iget p1, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/s;->e()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v0

    const/4 v1, 0x0

    move v3, p1

    :goto_0
    const/4 p1, 0x1

    if-eqz v0, :cond_a

    if-nez v1, :cond_0

    iget-object p1, v0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    invoke-virtual {p0, p1, v3}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/r;I)Lcom/anythink/expressad/exoplayer/r;

    move-result-object p1

    iput-object p1, v0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    goto :goto_2

    :cond_0
    const/4 v2, -0x1

    const/4 v4, 0x0

    if-eq v3, v2, :cond_8

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/q;->b:Ljava/lang/Object;

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v5, v3, v6, p1}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object v5

    iget-object v5, v5, Lcom/anythink/expressad/exoplayer/ae$a;->b:Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    invoke-direct {p0, v1, p2, p3}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/q;J)Lcom/anythink/expressad/exoplayer/r;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/q;)Z

    move-result p2

    if-nez p2, :cond_2

    return p1

    :cond_2
    return v4

    :cond_3
    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    invoke-virtual {p0, v5, v3}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/r;I)Lcom/anythink/expressad/exoplayer/r;

    move-result-object v5

    iput-object v5, v0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-wide v6, v5, Lcom/anythink/expressad/exoplayer/r;->b:J

    iget-wide v8, v2, Lcom/anythink/expressad/exoplayer/r;->b:J

    cmp-long v10, v6, v8

    if-nez v10, :cond_4

    iget-wide v6, v5, Lcom/anythink/expressad/exoplayer/r;->c:J

    iget-wide v8, v2, Lcom/anythink/expressad/exoplayer/r;->c:J

    cmp-long v10, v6, v8

    if-nez v10, :cond_4

    iget-object v5, v5, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    invoke-virtual {v5, v2}, Lcom/anythink/expressad/exoplayer/h/s$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_6

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/q;)Z

    move-result p2

    if-nez p2, :cond_5

    return p1

    :cond_5
    return v4

    :cond_6
    :goto_2
    iget-object p1, v0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-boolean p1, p1, Lcom/anythink/expressad/exoplayer/r;->f:Z

    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/s;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/s;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/s;->c:Lcom/anythink/expressad/exoplayer/ae$b;

    iget v6, p0, Lcom/anythink/expressad/exoplayer/s;->f:I

    iget-boolean v7, p0, Lcom/anythink/expressad/exoplayer/s;->g:Z

    invoke-virtual/range {v2 .. v7}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Lcom/anythink/expressad/exoplayer/ae$b;IZ)I

    move-result p1

    move v3, p1

    :cond_7
    iget-object p1, v0, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    move-object v1, v0

    move-object v0, p1

    goto :goto_0

    :cond_8
    :goto_3
    invoke-virtual {p0, v1}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/q;)Z

    move-result p2

    if-nez p2, :cond_9

    return p1

    :cond_9
    return v4

    :cond_a
    return p1
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/q;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/s;->j:Lcom/anythink/expressad/exoplayer/q;

    :goto_1
    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/s;->i:Lcom/anythink/expressad/exoplayer/q;

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->h:Lcom/anythink/expressad/exoplayer/q;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->i:Lcom/anythink/expressad/exoplayer/q;

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/q;->c()V

    iget v2, p0, Lcom/anythink/expressad/exoplayer/s;->k:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/s;->k:I

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/s;->j:Lcom/anythink/expressad/exoplayer/q;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    return v0
.end method

.method public final a(Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/exoplayer/s;->g:Z

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/s;->i()Z

    move-result p1

    return p1
.end method

.method public final b()Lcom/anythink/expressad/exoplayer/q;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->j:Lcom/anythink/expressad/exoplayer/q;

    return-object v0
.end method

.method public final b(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/s;->e()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/anythink/expressad/exoplayer/q;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/s;->l:Ljava/lang/Object;

    iget-object p1, v0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-wide v2, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->d:J

    iput-wide v2, p0, Lcom/anythink/expressad/exoplayer/s;->m:J

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/q;->c()V

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/q;)Z

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/s;->l:Ljava/lang/Object;

    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/s;->h:Lcom/anythink/expressad/exoplayer/q;

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/s;->j:Lcom/anythink/expressad/exoplayer/q;

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/s;->i:Lcom/anythink/expressad/exoplayer/q;

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/expressad/exoplayer/s;->k:I

    return-void
.end method

.method public final c()Lcom/anythink/expressad/exoplayer/q;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->h:Lcom/anythink/expressad/exoplayer/q;

    return-object v0
.end method

.method public final d()Lcom/anythink/expressad/exoplayer/q;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->i:Lcom/anythink/expressad/exoplayer/q;

    return-object v0
.end method

.method public final e()Lcom/anythink/expressad/exoplayer/q;
    .locals 1

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/s;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->h:Lcom/anythink/expressad/exoplayer/q;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->j:Lcom/anythink/expressad/exoplayer/q;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->h:Lcom/anythink/expressad/exoplayer/q;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Lcom/anythink/expressad/exoplayer/q;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->i:Lcom/anythink/expressad/exoplayer/q;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->i:Lcom/anythink/expressad/exoplayer/q;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->i:Lcom/anythink/expressad/exoplayer/q;

    return-object v0
.end method

.method public final h()Lcom/anythink/expressad/exoplayer/q;
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->h:Lcom/anythink/expressad/exoplayer/q;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/s;->i:Lcom/anythink/expressad/exoplayer/q;

    if-ne v0, v1, :cond_0

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/s;->i:Lcom/anythink/expressad/exoplayer/q;

    :cond_0
    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/q;->c()V

    iget v0, p0, Lcom/anythink/expressad/exoplayer/s;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/anythink/expressad/exoplayer/s;->k:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->j:Lcom/anythink/expressad/exoplayer/q;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->h:Lcom/anythink/expressad/exoplayer/q;

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/q;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/s;->l:Ljava/lang/Object;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-wide v0, v0, Lcom/anythink/expressad/exoplayer/h/s$a;->d:J

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/s;->m:J

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->h:Lcom/anythink/expressad/exoplayer/q;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->h:Lcom/anythink/expressad/exoplayer/q;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->j:Lcom/anythink/expressad/exoplayer/q;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->h:Lcom/anythink/expressad/exoplayer/q;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->i:Lcom/anythink/expressad/exoplayer/q;

    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/s;->h:Lcom/anythink/expressad/exoplayer/q;

    return-object v0
.end method
