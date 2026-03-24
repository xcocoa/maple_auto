.class public final Lcom/anythink/expressad/exoplayer/h/a/d;
.super Lcom/anythink/expressad/exoplayer/h/p;
.source ""


# instance fields
.field private final c:Lcom/anythink/expressad/exoplayer/h/a/a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/ae;Lcom/anythink/expressad/exoplayer/h/a/a;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/h/p;-><init>(Lcom/anythink/expressad/exoplayer/ae;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/ae;->c()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/ae;->b()I

    move-result p1

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/a/d;->c:Lcom/anythink/expressad/exoplayer/h/a/a;

    return-void
.end method


# virtual methods
.method public final a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;
    .locals 10

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/p;->b:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    iget-object v2, p2, Lcom/anythink/expressad/exoplayer/ae$a;->a:Ljava/lang/Object;

    iget-object v3, p2, Lcom/anythink/expressad/exoplayer/ae$a;->b:Ljava/lang/Object;

    iget v4, p2, Lcom/anythink/expressad/exoplayer/ae$a;->c:I

    iget-wide v5, p2, Lcom/anythink/expressad/exoplayer/ae$a;->d:J

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/ae$a;->b()J

    move-result-wide v7

    iget-object v9, p0, Lcom/anythink/expressad/exoplayer/h/a/d;->c:Lcom/anythink/expressad/exoplayer/h/a/a;

    move-object v1, p2

    invoke-virtual/range {v1 .. v9}, Lcom/anythink/expressad/exoplayer/ae$a;->a(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/anythink/expressad/exoplayer/h/a/a;)Lcom/anythink/expressad/exoplayer/ae$a;

    return-object p2
.end method

.method public final a(ILcom/anythink/expressad/exoplayer/ae$b;ZJ)Lcom/anythink/expressad/exoplayer/ae$b;
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/anythink/expressad/exoplayer/h/p;->a(ILcom/anythink/expressad/exoplayer/ae$b;ZJ)Lcom/anythink/expressad/exoplayer/ae$b;

    move-result-object p1

    iget-wide p2, p1, Lcom/anythink/expressad/exoplayer/ae$b;->i:J

    const-wide p4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, p4

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/a/d;->c:Lcom/anythink/expressad/exoplayer/h/a/a;

    iget-wide p2, p2, Lcom/anythink/expressad/exoplayer/h/a/a;->k:J

    iput-wide p2, p1, Lcom/anythink/expressad/exoplayer/ae$b;->i:J

    :cond_0
    return-object p1
.end method
