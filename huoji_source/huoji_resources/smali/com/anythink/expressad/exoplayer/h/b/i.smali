.class public abstract Lcom/anythink/expressad/exoplayer/h/b/i;
.super Lcom/anythink/expressad/exoplayer/h/b/c;
.source ""


# instance fields
.field public final j:J


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/j/h;Lcom/anythink/expressad/exoplayer/j/k;Lcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJJ)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/anythink/expressad/exoplayer/h/b/c;-><init>(Lcom/anythink/expressad/exoplayer/j/h;Lcom/anythink/expressad/exoplayer/j/k;Lcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJ)V

    invoke-static {p3}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-wide p10, p0, Lcom/anythink/expressad/exoplayer/h/b/i;->j:J

    return-void
.end method


# virtual methods
.method public e()J
    .locals 5

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/b/i;->j:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public abstract f()Z
.end method
