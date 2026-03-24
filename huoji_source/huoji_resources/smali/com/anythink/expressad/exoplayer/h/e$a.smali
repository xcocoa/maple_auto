.class public final Lcom/anythink/expressad/exoplayer/h/e$a;
.super Lcom/anythink/expressad/exoplayer/h/p;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/h/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:Z


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/ae;JJ)V
    .locals 9

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/h/p;-><init>(Lcom/anythink/expressad/exoplayer/ae;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/ae;->c()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    new-instance v0, Lcom/anythink/expressad/exoplayer/ae$b;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/ae$b;-><init>()V

    invoke-virtual {p1, v2, v0, v2}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$b;Z)Lcom/anythink/expressad/exoplayer/ae$b;

    move-result-object p1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, p4, v5

    if-nez v0, :cond_0

    iget-wide p4, p1, Lcom/anythink/expressad/exoplayer/ae$b;->i:J

    goto :goto_0

    :cond_0
    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    :goto_0
    iget-wide v5, p1, Lcom/anythink/expressad/exoplayer/ae$b;->i:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v7

    if-eqz v0, :cond_5

    cmp-long v0, p4, v5

    if-lez v0, :cond_1

    move-wide p4, v5

    :cond_1
    cmp-long v0, p2, v3

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/anythink/expressad/exoplayer/ae$b;->d:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/anythink/expressad/exoplayer/h/e$b;

    invoke-direct {p1, v1}, Lcom/anythink/expressad/exoplayer/h/e$b;-><init>(I)V

    throw p1

    :cond_3
    :goto_1
    cmp-long v0, p2, p4

    if-gtz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/anythink/expressad/exoplayer/h/e$b;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcom/anythink/expressad/exoplayer/h/e$b;-><init>(I)V

    throw p1

    :cond_5
    :goto_2
    iput-wide p2, p0, Lcom/anythink/expressad/exoplayer/h/e$a;->c:J

    iput-wide p4, p0, Lcom/anythink/expressad/exoplayer/h/e$a;->d:J

    cmp-long v0, p4, v7

    if-nez v0, :cond_6

    move-wide p2, v7

    goto :goto_3

    :cond_6
    sub-long p2, p4, p2

    :goto_3
    iput-wide p2, p0, Lcom/anythink/expressad/exoplayer/h/e$a;->e:J

    iget-boolean p1, p1, Lcom/anythink/expressad/exoplayer/ae$b;->e:Z

    if-eqz p1, :cond_7

    if-eqz v0, :cond_8

    cmp-long p1, v5, v7

    if-eqz p1, :cond_7

    cmp-long p1, p4, v5

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_4
    iput-boolean v1, p0, Lcom/anythink/expressad/exoplayer/h/e$a;->f:Z

    return-void

    :cond_9
    new-instance p1, Lcom/anythink/expressad/exoplayer/h/e$b;

    invoke-direct {p1, v2}, Lcom/anythink/expressad/exoplayer/h/e$b;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public final a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;
    .locals 11

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/p;->b:Lcom/anythink/expressad/exoplayer/ae;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/ae$a;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/h/e$a;->c:J

    sub-long v9, v0, v2

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/e$a;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    move-wide v7, v2

    goto :goto_0

    :cond_0
    sub-long/2addr v0, v9

    move-wide v7, v0

    :goto_0
    iget-object v5, p2, Lcom/anythink/expressad/exoplayer/ae$a;->a:Ljava/lang/Object;

    iget-object v6, p2, Lcom/anythink/expressad/exoplayer/ae$a;->b:Ljava/lang/Object;

    move-object v4, p2

    invoke-virtual/range {v4 .. v10}, Lcom/anythink/expressad/exoplayer/ae$a;->a(Ljava/lang/Object;Ljava/lang/Object;JJ)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILcom/anythink/expressad/exoplayer/ae$b;ZJ)Lcom/anythink/expressad/exoplayer/ae$b;
    .locals 6

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/p;->b:Lcom/anythink/expressad/exoplayer/ae;

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$b;ZJ)Lcom/anythink/expressad/exoplayer/ae$b;

    iget-wide p3, p2, Lcom/anythink/expressad/exoplayer/ae$b;->j:J

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/e$a;->c:J

    add-long/2addr p3, v0

    iput-wide p3, p2, Lcom/anythink/expressad/exoplayer/ae$b;->j:J

    iget-wide p3, p0, Lcom/anythink/expressad/exoplayer/h/e$a;->e:J

    iput-wide p3, p2, Lcom/anythink/expressad/exoplayer/ae$b;->i:J

    iget-boolean p1, p0, Lcom/anythink/expressad/exoplayer/h/e$a;->f:Z

    iput-boolean p1, p2, Lcom/anythink/expressad/exoplayer/ae$b;->e:Z

    iget-wide p3, p2, Lcom/anythink/expressad/exoplayer/ae$b;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, v2

    if-eqz p1, :cond_1

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p2, Lcom/anythink/expressad/exoplayer/ae$b;->h:J

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/e$a;->d:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :goto_0
    iput-wide p3, p2, Lcom/anythink/expressad/exoplayer/ae$b;->h:J

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/e$a;->c:J

    sub-long/2addr p3, v0

    iput-wide p3, p2, Lcom/anythink/expressad/exoplayer/ae$b;->h:J

    :cond_1
    iget-wide p3, p0, Lcom/anythink/expressad/exoplayer/h/e$a;->c:J

    invoke-static {p3, p4}, Lcom/anythink/expressad/exoplayer/b;->a(J)J

    move-result-wide p3

    iget-wide v0, p2, Lcom/anythink/expressad/exoplayer/ae$b;->b:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    add-long/2addr v0, p3

    iput-wide v0, p2, Lcom/anythink/expressad/exoplayer/ae$b;->b:J

    :cond_2
    iget-wide v0, p2, Lcom/anythink/expressad/exoplayer/ae$b;->c:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    add-long/2addr v0, p3

    iput-wide v0, p2, Lcom/anythink/expressad/exoplayer/ae$b;->c:J

    :cond_3
    return-object p2
.end method
