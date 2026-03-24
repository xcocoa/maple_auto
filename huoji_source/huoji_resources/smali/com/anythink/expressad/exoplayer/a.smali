.class public abstract Lcom/anythink/expressad/exoplayer/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/y;
.implements Lcom/anythink/expressad/exoplayer/z;


# instance fields
.field private final n:I

.field private o:Lcom/anythink/expressad/exoplayer/aa;

.field private p:I

.field private q:I

.field private r:Lcom/anythink/expressad/exoplayer/h/y;

.field private s:[Lcom/anythink/expressad/exoplayer/m;

.field private t:J

.field private u:Z

.field private v:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/anythink/expressad/exoplayer/a;->n:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/expressad/exoplayer/a;->u:Z

    return-void
.end method

.method public static a(Lcom/anythink/expressad/exoplayer/d/g;Lcom/anythink/expressad/exoplayer/d/e;)Z
    .locals 0
    .param p0    # Lcom/anythink/expressad/exoplayer/d/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/anythink/expressad/exoplayer/d/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/exoplayer/d/g<",
            "*>;",
            "Lcom/anythink/expressad/exoplayer/d/e;",
            ")Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {p0, p1}, Lcom/anythink/expressad/exoplayer/d/g;->a(Lcom/anythink/expressad/exoplayer/d/e;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/a;->n:I

    return v0
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/n;Lcom/anythink/expressad/exoplayer/c/e;Z)I
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/a;->r:Lcom/anythink/expressad/exoplayer/h/y;

    invoke-interface {v0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/h/y;->a(Lcom/anythink/expressad/exoplayer/n;Lcom/anythink/expressad/exoplayer/c/e;Z)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/c/a;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/expressad/exoplayer/a;->u:Z

    iget-boolean p1, p0, Lcom/anythink/expressad/exoplayer/a;->v:Z

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x3

    return p1

    :cond_1
    iget-wide v0, p2, Lcom/anythink/expressad/exoplayer/c/e;->f:J

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/a;->t:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/anythink/expressad/exoplayer/c/e;->f:J

    goto :goto_0

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    iget-object p2, p1, Lcom/anythink/expressad/exoplayer/n;->a:Lcom/anythink/expressad/exoplayer/m;

    iget-wide v0, p2, Lcom/anythink/expressad/exoplayer/m;->l:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/a;->t:J

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/anythink/expressad/exoplayer/m;->a(J)Lcom/anythink/expressad/exoplayer/m;

    move-result-object p2

    iput-object p2, p1, Lcom/anythink/expressad/exoplayer/n;->a:Lcom/anythink/expressad/exoplayer/m;

    :cond_3
    :goto_0
    return p3
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/exoplayer/a;->p:I

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final a(J)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/a;->v:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/a;->u:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/anythink/expressad/exoplayer/a;->a(JZ)V

    return-void
.end method

.method public a(JZ)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/aa;[Lcom/anythink/expressad/exoplayer/m;Lcom/anythink/expressad/exoplayer/h/y;JZJ)V
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/exoplayer/a;->q:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/a;->o:Lcom/anythink/expressad/exoplayer/aa;

    iput v1, p0, Lcom/anythink/expressad/exoplayer/a;->q:I

    invoke-virtual {p0, p6}, Lcom/anythink/expressad/exoplayer/a;->a(Z)V

    invoke-virtual {p0, p2, p3, p7, p8}, Lcom/anythink/expressad/exoplayer/a;->a([Lcom/anythink/expressad/exoplayer/m;Lcom/anythink/expressad/exoplayer/h/y;J)V

    invoke-virtual {p0, p4, p5, p6}, Lcom/anythink/expressad/exoplayer/a;->a(JZ)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a([Lcom/anythink/expressad/exoplayer/m;J)V
    .locals 0

    return-void
.end method

.method public final a([Lcom/anythink/expressad/exoplayer/m;Lcom/anythink/expressad/exoplayer/h/y;J)V
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/a;->v:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/a;->r:Lcom/anythink/expressad/exoplayer/h/y;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/anythink/expressad/exoplayer/a;->u:Z

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/a;->s:[Lcom/anythink/expressad/exoplayer/m;

    iput-wide p3, p0, Lcom/anythink/expressad/exoplayer/a;->t:J

    invoke-virtual {p0, p1, p3, p4}, Lcom/anythink/expressad/exoplayer/a;->a([Lcom/anythink/expressad/exoplayer/m;J)V

    return-void
.end method

.method public final a_()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/a;->q:I

    return v0
.end method

.method public final b(J)I
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/a;->r:Lcom/anythink/expressad/exoplayer/h/y;

    iget-wide v1, p0, Lcom/anythink/expressad/exoplayer/a;->t:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/y;->a(J)I

    move-result p1

    return p1
.end method

.method public final b()Lcom/anythink/expressad/exoplayer/z;
    .locals 0

    return-object p0
.end method

.method public final b_()V
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/exoplayer/a;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/anythink/expressad/exoplayer/a;->q:I

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/a;->n()V

    return-void
.end method

.method public c()Lcom/anythink/expressad/exoplayer/k/n;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()Lcom/anythink/expressad/exoplayer/h/y;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/a;->r:Lcom/anythink/expressad/exoplayer/h/y;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/a;->u:Z

    return v0
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/a;->v:Z

    return-void
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/a;->v:Z

    return v0
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/a;->r:Lcom/anythink/expressad/exoplayer/h/y;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/h/y;->c()V

    return-void
.end method

.method public final k()V
    .locals 3

    iget v0, p0, Lcom/anythink/expressad/exoplayer/a;->q:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iput v1, p0, Lcom/anythink/expressad/exoplayer/a;->q:I

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/a;->o()V

    return-void
.end method

.method public final l()V
    .locals 3

    iget v0, p0, Lcom/anythink/expressad/exoplayer/a;->q:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iput v2, p0, Lcom/anythink/expressad/exoplayer/a;->q:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/a;->r:Lcom/anythink/expressad/exoplayer/h/y;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/a;->s:[Lcom/anythink/expressad/exoplayer/m;

    iput-boolean v2, p0, Lcom/anythink/expressad/exoplayer/a;->v:Z

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/a;->p()V

    return-void
.end method

.method public m()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public final q()[Lcom/anythink/expressad/exoplayer/m;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/a;->s:[Lcom/anythink/expressad/exoplayer/m;

    return-object v0
.end method

.method public final r()Lcom/anythink/expressad/exoplayer/aa;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/a;->o:Lcom/anythink/expressad/exoplayer/aa;

    return-object v0
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/a;->p:I

    return v0
.end method

.method public final t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/a;->u:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/a;->v:Z

    return v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/a;->r:Lcom/anythink/expressad/exoplayer/h/y;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/h/y;->b()Z

    move-result v0

    return v0
.end method
