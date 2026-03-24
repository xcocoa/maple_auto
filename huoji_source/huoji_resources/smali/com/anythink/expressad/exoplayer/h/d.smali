.class public final Lcom/anythink/expressad/exoplayer/h/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/h/r;
.implements Lcom/anythink/expressad/exoplayer/h/r$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/h/d$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/anythink/expressad/exoplayer/h/r;

.field public b:J

.field public c:J

.field private d:Lcom/anythink/expressad/exoplayer/h/r$a;

.field private e:[Lcom/anythink/expressad/exoplayer/h/d$a;

.field private f:J


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/h/r;ZJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/d;->a:Lcom/anythink/expressad/exoplayer/h/r;

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/anythink/expressad/exoplayer/h/d$a;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/d;->e:[Lcom/anythink/expressad/exoplayer/h/d$a;

    if-eqz p2, :cond_0

    move-wide p1, p3

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/h/d;->f:J

    iput-wide p3, p0, Lcom/anythink/expressad/exoplayer/h/d;->b:J

    iput-wide p5, p0, Lcom/anythink/expressad/exoplayer/h/d;->c:J

    return-void
.end method

.method private static a(J[Lcom/anythink/expressad/exoplayer/i/f;)Z
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-eqz v3, :cond_1

    array-length p0, p2

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_1

    aget-object v1, p2, p1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/anythink/expressad/exoplayer/i/f;->h()Lcom/anythink/expressad/exoplayer/m;

    move-result-object v1

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/k/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private b(JLcom/anythink/expressad/exoplayer/ac;)Lcom/anythink/expressad/exoplayer/ac;
    .locals 9

    iget-wide v0, p3, Lcom/anythink/expressad/exoplayer/ac;->f:J

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/h/d;->b:J

    sub-long v2, p1, v2

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJ)J

    move-result-wide v0

    iget-wide v2, p3, Lcom/anythink/expressad/exoplayer/ac;->g:J

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/h/d;->c:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    sub-long p1, v4, p1

    :goto_0
    invoke-static {v2, v3, p1, p2}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJ)J

    move-result-wide p1

    iget-wide v2, p3, Lcom/anythink/expressad/exoplayer/ac;->f:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v2, p3, Lcom/anythink/expressad/exoplayer/ac;->g:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    return-object p3

    :cond_1
    new-instance p3, Lcom/anythink/expressad/exoplayer/ac;

    invoke-direct {p3, v0, v1, p1, p2}, Lcom/anythink/expressad/exoplayer/ac;-><init>(JJ)V

    return-object p3
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/d;->d:Lcom/anythink/expressad/exoplayer/h/r$a;

    invoke-interface {v0, p0}, Lcom/anythink/expressad/exoplayer/h/z$a;->a(Lcom/anythink/expressad/exoplayer/h/z;)V

    return-void
.end method


# virtual methods
.method public final a(JLcom/anythink/expressad/exoplayer/ac;)J
    .locals 9

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/d;->b:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    iget-wide v2, p3, Lcom/anythink/expressad/exoplayer/ac;->f:J

    sub-long v0, p1, v0

    invoke-static {v2, v3, v0, v1}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJ)J

    move-result-wide v0

    iget-wide v2, p3, Lcom/anythink/expressad/exoplayer/ac;->g:J

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/h/d;->c:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    sub-long/2addr v4, p1

    :goto_0
    invoke-static {v2, v3, v4, v5}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJ)J

    move-result-wide v2

    iget-wide v4, p3, Lcom/anythink/expressad/exoplayer/ac;->f:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    iget-wide v4, p3, Lcom/anythink/expressad/exoplayer/ac;->g:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance p3, Lcom/anythink/expressad/exoplayer/ac;

    invoke-direct {p3, v0, v1, v2, v3}, Lcom/anythink/expressad/exoplayer/ac;-><init>(JJ)V

    :goto_1
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/d;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/h/r;->a(JLcom/anythink/expressad/exoplayer/ac;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a([Lcom/anythink/expressad/exoplayer/i/f;[Z[Lcom/anythink/expressad/exoplayer/h/y;[ZJ)J
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    array-length v1, v9

    new-array v1, v1, [Lcom/anythink/expressad/exoplayer/h/d$a;

    iput-object v1, v0, Lcom/anythink/expressad/exoplayer/h/d;->e:[Lcom/anythink/expressad/exoplayer/h/d$a;

    array-length v1, v9

    new-array v10, v1, [Lcom/anythink/expressad/exoplayer/h/y;

    const/4 v11, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v9

    const/4 v12, 0x0

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/h/d;->e:[Lcom/anythink/expressad/exoplayer/h/d$a;

    aget-object v3, v9, v1

    check-cast v3, Lcom/anythink/expressad/exoplayer/h/d$a;

    aput-object v3, v2, v1

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    aget-object v2, v2, v1

    iget-object v12, v2, Lcom/anythink/expressad/exoplayer/h/d$a;->a:Lcom/anythink/expressad/exoplayer/h/y;

    :cond_0
    aput-object v12, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/d;->a:Lcom/anythink/expressad/exoplayer/h/r;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v10

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/anythink/expressad/exoplayer/h/r;->a([Lcom/anythink/expressad/exoplayer/i/f;[Z[Lcom/anythink/expressad/exoplayer/h/y;[ZJ)J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/h/d;->f()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    iget-wide v5, v0, Lcom/anythink/expressad/exoplayer/h/d;->b:J

    cmp-long v3, p5, v5

    if-nez v3, :cond_4

    const-wide/16 v13, 0x0

    cmp-long v3, v5, v13

    if-eqz v3, :cond_3

    array-length v3, v8

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_3

    aget-object v6, v8, v5

    if-eqz v6, :cond_2

    invoke-interface {v6}, Lcom/anythink/expressad/exoplayer/i/f;->h()Lcom/anythink/expressad/exoplayer/m;

    move-result-object v6

    iget-object v6, v6, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    invoke-static {v6}, Lcom/anythink/expressad/exoplayer/k/o;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    move-wide v5, v1

    goto :goto_3

    :cond_4
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    :goto_3
    iput-wide v5, v0, Lcom/anythink/expressad/exoplayer/h/d;->f:J

    cmp-long v3, v1, p5

    if-eqz v3, :cond_6

    iget-wide v5, v0, Lcom/anythink/expressad/exoplayer/h/d;->b:J

    cmp-long v3, v1, v5

    if-ltz v3, :cond_5

    iget-wide v5, v0, Lcom/anythink/expressad/exoplayer/h/d;->c:J

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v3, v5, v7

    if-eqz v3, :cond_6

    cmp-long v3, v1, v5

    if-gtz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_4
    invoke-static {v4}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    :goto_5
    array-length v3, v9

    if-ge v11, v3, :cond_a

    aget-object v3, v10, v11

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/h/d;->e:[Lcom/anythink/expressad/exoplayer/h/d$a;

    aput-object v12, v3, v11

    goto :goto_6

    :cond_7
    aget-object v3, v9, v11

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/h/d;->e:[Lcom/anythink/expressad/exoplayer/h/d$a;

    aget-object v3, v3, v11

    iget-object v3, v3, Lcom/anythink/expressad/exoplayer/h/d$a;->a:Lcom/anythink/expressad/exoplayer/h/y;

    aget-object v4, v10, v11

    if-eq v3, v4, :cond_9

    :cond_8
    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/h/d;->e:[Lcom/anythink/expressad/exoplayer/h/d$a;

    new-instance v4, Lcom/anythink/expressad/exoplayer/h/d$a;

    aget-object v5, v10, v11

    invoke-direct {v4, p0, v5}, Lcom/anythink/expressad/exoplayer/h/d$a;-><init>(Lcom/anythink/expressad/exoplayer/h/d;Lcom/anythink/expressad/exoplayer/h/y;)V

    aput-object v4, v3, v11

    :cond_9
    :goto_6
    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/h/d;->e:[Lcom/anythink/expressad/exoplayer/h/d$a;

    aget-object v3, v3, v11

    aput-object v3, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_a
    return-wide v1
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/d;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/h/r;->a()V

    return-void
.end method

.method public final a(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/h/d;->b:J

    iput-wide p3, p0, Lcom/anythink/expressad/exoplayer/h/d;->c:J

    return-void
.end method

.method public final a(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/d;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/h/r;->a(JZ)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/r$a;J)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/d;->d:Lcom/anythink/expressad/exoplayer/h/r$a;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/d;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {p1, p0, p2, p3}, Lcom/anythink/expressad/exoplayer/h/r;->a(Lcom/anythink/expressad/exoplayer/h/r$a;J)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/r;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/d;->d:Lcom/anythink/expressad/exoplayer/h/r$a;

    invoke-interface {p1, p0}, Lcom/anythink/expressad/exoplayer/h/r$a;->a(Lcom/anythink/expressad/exoplayer/h/r;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/anythink/expressad/exoplayer/h/z;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/d;->d:Lcom/anythink/expressad/exoplayer/h/r$a;

    invoke-interface {p1, p0}, Lcom/anythink/expressad/exoplayer/h/z$a;->a(Lcom/anythink/expressad/exoplayer/h/z;)V

    return-void
.end method

.method public final a_(J)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/d;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/r;->a_(J)V

    return-void
.end method

.method public final b(J)J
    .locals 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/d;->f:J

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/d;->e:[Lcom/anythink/expressad/exoplayer/h/d$a;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/anythink/expressad/exoplayer/h/d$a;->a()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/d;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/r;->b(J)J

    move-result-wide v0

    cmp-long v3, v0, p1

    if-eqz v3, :cond_2

    iget-wide p1, p0, Lcom/anythink/expressad/exoplayer/h/d;->b:J

    cmp-long v3, v0, p1

    if-ltz v3, :cond_3

    iget-wide p1, p0, Lcom/anythink/expressad/exoplayer/h/d;->c:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, p1, v3

    if-eqz v5, :cond_2

    cmp-long v3, v0, p1

    if-gtz v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    return-wide v0
.end method

.method public final b()Lcom/anythink/expressad/exoplayer/h/af;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/d;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/h/r;->b()Lcom/anythink/expressad/exoplayer/h/af;

    move-result-object v0

    return-object v0
.end method

.method public final c()J
    .locals 9

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/h/d;->f()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/anythink/expressad/exoplayer/h/d;->f:J

    iput-wide v1, p0, Lcom/anythink/expressad/exoplayer/h/d;->f:J

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/h/d;->c()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_0

    return-wide v5

    :cond_0
    return-wide v3

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/d;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/h/r;->c()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    return-wide v1

    :cond_2
    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/d;->b:J

    const/4 v2, 0x1

    const/4 v5, 0x0

    cmp-long v6, v3, v0

    if-ltz v6, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/d;->c:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v0, v6

    if-eqz v8, :cond_5

    cmp-long v6, v3, v0

    if-gtz v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_1
    invoke-static {v2}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    return-wide v3
.end method

.method public final c(J)Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/d;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/r;->c(J)Z

    move-result p1

    return p1
.end method

.method public final d()J
    .locals 7

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/d;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/h/r;->d()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/h/d;->c:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final e()J
    .locals 7

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/d;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/h/r;->e()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/h/d;->c:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final f()Z
    .locals 5

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/d;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
