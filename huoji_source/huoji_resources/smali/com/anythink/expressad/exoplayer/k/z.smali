.class public final Lcom/anythink/expressad/exoplayer/k/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/k/n;


# instance fields
.field private final a:Lcom/anythink/expressad/exoplayer/k/c;

.field private b:Z

.field private c:J

.field private d:J

.field private e:Lcom/anythink/expressad/exoplayer/v;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/k/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/k/z;->a:Lcom/anythink/expressad/exoplayer/k/c;

    sget-object p1, Lcom/anythink/expressad/exoplayer/v;->a:Lcom/anythink/expressad/exoplayer/v;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/k/z;->e:Lcom/anythink/expressad/exoplayer/v;

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/exoplayer/v;)Lcom/anythink/expressad/exoplayer/v;
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/k/z;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/z;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/anythink/expressad/exoplayer/k/z;->a(J)V

    :cond_0
    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/k/z;->e:Lcom/anythink/expressad/exoplayer/v;

    return-object p1
.end method

.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/k/z;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/z;->a:Lcom/anythink/expressad/exoplayer/k/c;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/k/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/k/z;->d:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/k/z;->b:Z

    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/k/z;->c:J

    iget-boolean p1, p0, Lcom/anythink/expressad/exoplayer/k/z;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k/z;->a:Lcom/anythink/expressad/exoplayer/k/c;

    invoke-interface {p1}, Lcom/anythink/expressad/exoplayer/k/c;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/k/z;->d:J

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/k/z;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/z;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/anythink/expressad/exoplayer/k/z;->a(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/k/z;->b:Z

    :cond_0
    return-void
.end method

.method public final d()J
    .locals 7

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/k/z;->c:J

    iget-boolean v2, p0, Lcom/anythink/expressad/exoplayer/k/z;->b:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/k/z;->a:Lcom/anythink/expressad/exoplayer/k/c;

    invoke-interface {v2}, Lcom/anythink/expressad/exoplayer/k/c;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/k/z;->d:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/k/z;->e:Lcom/anythink/expressad/exoplayer/v;

    iget v5, v4, Lcom/anythink/expressad/exoplayer/v;->b:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    invoke-static {v2, v3}, Lcom/anythink/expressad/exoplayer/b;->b(J)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v2, v3}, Lcom/anythink/expressad/exoplayer/v;->a(J)J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public final e()Lcom/anythink/expressad/exoplayer/v;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/z;->e:Lcom/anythink/expressad/exoplayer/v;

    return-object v0
.end method
