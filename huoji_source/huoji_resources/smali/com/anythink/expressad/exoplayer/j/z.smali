.class public final Lcom/anythink/expressad/exoplayer/j/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/j/h;


# instance fields
.field private final a:Lcom/anythink/expressad/exoplayer/j/h;

.field private final b:Lcom/anythink/expressad/exoplayer/j/g;

.field private c:Z

.field private d:J


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/j/h;Lcom/anythink/expressad/exoplayer/j/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/exoplayer/j/h;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j/z;->a:Lcom/anythink/expressad/exoplayer/j/h;

    invoke-static {p2}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/exoplayer/j/g;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j/z;->b:Lcom/anythink/expressad/exoplayer/j/g;

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 5

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/j/z;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/z;->a:Lcom/anythink/expressad/exoplayer/j/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/j/h;->a([BII)I

    move-result p3

    if-lez p3, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/z;->b:Lcom/anythink/expressad/exoplayer/j/g;

    invoke-interface {v0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/j/g;->a([BII)V

    iget-wide p1, p0, Lcom/anythink/expressad/exoplayer/j/z;->d:J

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    int-to-long v0, p3

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/j/z;->d:J

    :cond_1
    return p3
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/j/k;)J
    .locals 11

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/z;->a:Lcom/anythink/expressad/exoplayer/j/h;

    invoke-interface {v0, p1}, Lcom/anythink/expressad/exoplayer/j/h;->a(Lcom/anythink/expressad/exoplayer/j/k;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/anythink/expressad/exoplayer/j/z;->d:J

    const-wide/16 v0, 0x0

    cmp-long v2, v7, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    iget-wide v0, p1, Lcom/anythink/expressad/exoplayer/j/k;->g:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    cmp-long v0, v7, v2

    if-eqz v0, :cond_1

    new-instance v0, Lcom/anythink/expressad/exoplayer/j/k;

    iget-object v2, p1, Lcom/anythink/expressad/exoplayer/j/k;->c:Landroid/net/Uri;

    iget-wide v3, p1, Lcom/anythink/expressad/exoplayer/j/k;->e:J

    iget-wide v5, p1, Lcom/anythink/expressad/exoplayer/j/k;->f:J

    iget-object v9, p1, Lcom/anythink/expressad/exoplayer/j/k;->h:Ljava/lang/String;

    iget v10, p1, Lcom/anythink/expressad/exoplayer/j/k;->i:I

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/anythink/expressad/exoplayer/j/k;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    move-object p1, v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/z;->c:Z

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/z;->b:Lcom/anythink/expressad/exoplayer/j/g;

    invoke-interface {v0, p1}, Lcom/anythink/expressad/exoplayer/j/g;->a(Lcom/anythink/expressad/exoplayer/j/k;)V

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/j/z;->d:J

    return-wide v0
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/z;->a:Lcom/anythink/expressad/exoplayer/j/h;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/j/h;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/z;->a:Lcom/anythink/expressad/exoplayer/j/h;

    invoke-interface {v1}, Lcom/anythink/expressad/exoplayer/j/h;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lcom/anythink/expressad/exoplayer/j/z;->c:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/z;->c:Z

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/z;->b:Lcom/anythink/expressad/exoplayer/j/g;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/j/g;->a()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lcom/anythink/expressad/exoplayer/j/z;->c:Z

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/z;->c:Z

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/z;->b:Lcom/anythink/expressad/exoplayer/j/g;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/j/g;->a()V

    :cond_1
    throw v1
.end method
