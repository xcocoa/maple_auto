.class public final Lcom/anythink/expressad/exoplayer/h/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/h/r;
.implements Lcom/anythink/expressad/exoplayer/h/r$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/h/l$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/anythink/expressad/exoplayer/h/s;

.field public final b:Lcom/anythink/expressad/exoplayer/h/s$a;

.field private final c:Lcom/anythink/expressad/exoplayer/j/b;

.field private d:Lcom/anythink/expressad/exoplayer/h/r;

.field private e:Lcom/anythink/expressad/exoplayer/h/r$a;

.field private f:J

.field private g:Lcom/anythink/expressad/exoplayer/h/l$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Z

.field private i:J


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/h/s;Lcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/j/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/l;->b:Lcom/anythink/expressad/exoplayer/h/s$a;

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/h/l;->c:Lcom/anythink/expressad/exoplayer/j/b;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/l;->a:Lcom/anythink/expressad/exoplayer/h/s;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/h/l;->i:J

    return-void
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/l;->e:Lcom/anythink/expressad/exoplayer/h/r$a;

    invoke-interface {v0, p0}, Lcom/anythink/expressad/exoplayer/h/z$a;->a(Lcom/anythink/expressad/exoplayer/h/z;)V

    return-void
.end method


# virtual methods
.method public final a(JLcom/anythink/expressad/exoplayer/ac;)J
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/l;->d:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/h/r;->a(JLcom/anythink/expressad/exoplayer/ac;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a([Lcom/anythink/expressad/exoplayer/i/f;[Z[Lcom/anythink/expressad/exoplayer/h/y;[ZJ)J
    .locals 15

    move-object v0, p0

    iget-wide v1, v0, Lcom/anythink/expressad/exoplayer/h/l;->i:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const-wide/16 v5, 0x0

    cmp-long v7, p5, v5

    if-nez v7, :cond_0

    iput-wide v3, v0, Lcom/anythink/expressad/exoplayer/h/l;->i:J

    move-wide v13, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v13, p5

    :goto_0
    iget-object v8, v0, Lcom/anythink/expressad/exoplayer/h/l;->d:Lcom/anythink/expressad/exoplayer/h/r;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-interface/range {v8 .. v14}, Lcom/anythink/expressad/exoplayer/h/r;->a([Lcom/anythink/expressad/exoplayer/i/f;[Z[Lcom/anythink/expressad/exoplayer/h/y;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public final a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/l;->d:Lcom/anythink/expressad/exoplayer/h/r;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/h/r;->a()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/l;->a:Lcom/anythink/expressad/exoplayer/h/s;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/h/s;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/l;->g:Lcom/anythink/expressad/exoplayer/h/l$a;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/anythink/expressad/exoplayer/h/l;->h:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/anythink/expressad/exoplayer/h/l;->h:Z

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/l;->b:Lcom/anythink/expressad/exoplayer/h/s$a;

    invoke-interface {v1, v2, v0}, Lcom/anythink/expressad/exoplayer/h/l$a;->a(Lcom/anythink/expressad/exoplayer/h/s$a;Ljava/io/IOException;)V

    :cond_1
    return-void

    :cond_2
    throw v0
.end method

.method public final a(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/l;->d:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/h/r;->a(JZ)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/l$a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/l;->g:Lcom/anythink/expressad/exoplayer/h/l$a;

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/r$a;J)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/l;->e:Lcom/anythink/expressad/exoplayer/h/r$a;

    iput-wide p2, p0, Lcom/anythink/expressad/exoplayer/h/l;->f:J

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/l;->d:Lcom/anythink/expressad/exoplayer/h/r;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2, p3}, Lcom/anythink/expressad/exoplayer/h/r;->a(Lcom/anythink/expressad/exoplayer/h/r$a;J)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/r;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/l;->e:Lcom/anythink/expressad/exoplayer/h/r$a;

    invoke-interface {p1, p0}, Lcom/anythink/expressad/exoplayer/h/r$a;->a(Lcom/anythink/expressad/exoplayer/h/r;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/anythink/expressad/exoplayer/h/z;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/l;->e:Lcom/anythink/expressad/exoplayer/h/r$a;

    invoke-interface {p1, p0}, Lcom/anythink/expressad/exoplayer/h/z$a;->a(Lcom/anythink/expressad/exoplayer/h/z;)V

    return-void
.end method

.method public final a_(J)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/l;->d:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/r;->a_(J)V

    return-void
.end method

.method public final b(J)J
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/l;->d:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/r;->b(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final b()Lcom/anythink/expressad/exoplayer/h/af;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/l;->d:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/h/r;->b()Lcom/anythink/expressad/exoplayer/h/af;

    move-result-object v0

    return-object v0
.end method

.method public final c()J
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/l;->d:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/h/r;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(J)Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/l;->d:Lcom/anythink/expressad/exoplayer/h/r;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/r;->c(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()J
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/l;->d:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/h/r;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(J)V
    .locals 5

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/l;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/h/l;->i:J

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/h/l;->f:J

    :cond_0
    return-void
.end method

.method public final e()J
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/l;->d:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/h/r;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/l;->a:Lcom/anythink/expressad/exoplayer/h/s;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/l;->b:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/l;->c:Lcom/anythink/expressad/exoplayer/j/b;

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/exoplayer/h/s;->a(Lcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/j/b;)Lcom/anythink/expressad/exoplayer/h/r;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/l;->d:Lcom/anythink/expressad/exoplayer/h/r;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/l;->e:Lcom/anythink/expressad/exoplayer/h/r$a;

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/anythink/expressad/exoplayer/h/l;->f:J

    invoke-interface {v0, p0, v1, v2}, Lcom/anythink/expressad/exoplayer/h/r;->a(Lcom/anythink/expressad/exoplayer/h/r$a;J)V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/l;->d:Lcom/anythink/expressad/exoplayer/h/r;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/l;->a:Lcom/anythink/expressad/exoplayer/h/s;

    invoke-interface {v1, v0}, Lcom/anythink/expressad/exoplayer/h/s;->a(Lcom/anythink/expressad/exoplayer/h/r;)V

    :cond_0
    return-void
.end method
