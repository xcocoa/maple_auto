.class public final Lcom/anythink/expressad/exoplayer/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/k/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/e$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/anythink/expressad/exoplayer/k/z;

.field private final b:Lcom/anythink/expressad/exoplayer/e$a;

.field private c:Lcom/anythink/expressad/exoplayer/y;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/anythink/expressad/exoplayer/k/n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/e$a;Lcom/anythink/expressad/exoplayer/k/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e;->b:Lcom/anythink/expressad/exoplayer/e$a;

    new-instance p1, Lcom/anythink/expressad/exoplayer/k/z;

    invoke-direct {p1, p2}, Lcom/anythink/expressad/exoplayer/k/z;-><init>(Lcom/anythink/expressad/exoplayer/k/c;)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e;->a:Lcom/anythink/expressad/exoplayer/k/z;

    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e;->d:Lcom/anythink/expressad/exoplayer/k/n;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/k/n;->d()J

    move-result-wide v0

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/e;->a:Lcom/anythink/expressad/exoplayer/k/z;

    invoke-virtual {v2, v0, v1}, Lcom/anythink/expressad/exoplayer/k/z;->a(J)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e;->d:Lcom/anythink/expressad/exoplayer/k/n;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/k/n;->e()Lcom/anythink/expressad/exoplayer/v;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/e;->a:Lcom/anythink/expressad/exoplayer/k/z;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/z;->e()Lcom/anythink/expressad/exoplayer/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/v;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/e;->a:Lcom/anythink/expressad/exoplayer/k/z;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/exoplayer/k/z;->a(Lcom/anythink/expressad/exoplayer/v;)Lcom/anythink/expressad/exoplayer/v;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/e;->b:Lcom/anythink/expressad/exoplayer/e$a;

    invoke-interface {v1, v0}, Lcom/anythink/expressad/exoplayer/e$a;->a(Lcom/anythink/expressad/exoplayer/v;)V

    :cond_0
    return-void
.end method

.method private g()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e;->c:Lcom/anythink/expressad/exoplayer/y;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/y;->v()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e;->c:Lcom/anythink/expressad/exoplayer/y;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/y;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e;->c:Lcom/anythink/expressad/exoplayer/y;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/y;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/exoplayer/v;)Lcom/anythink/expressad/exoplayer/v;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e;->d:Lcom/anythink/expressad/exoplayer/k/n;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/exoplayer/k/n;->a(Lcom/anythink/expressad/exoplayer/v;)Lcom/anythink/expressad/exoplayer/v;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e;->a:Lcom/anythink/expressad/exoplayer/k/z;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/k/z;->a(Lcom/anythink/expressad/exoplayer/v;)Lcom/anythink/expressad/exoplayer/v;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e;->b:Lcom/anythink/expressad/exoplayer/e$a;

    invoke-interface {v0, p1}, Lcom/anythink/expressad/exoplayer/e$a;->a(Lcom/anythink/expressad/exoplayer/v;)V

    return-object p1
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e;->a:Lcom/anythink/expressad/exoplayer/k/z;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k/z;->a()V

    return-void
.end method

.method public final a(J)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e;->a:Lcom/anythink/expressad/exoplayer/k/z;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/k/z;->a(J)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/y;)V
    .locals 2

    invoke-interface {p1}, Lcom/anythink/expressad/exoplayer/y;->c()Lcom/anythink/expressad/exoplayer/k/n;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/e;->d:Lcom/anythink/expressad/exoplayer/k/n;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/e;->d:Lcom/anythink/expressad/exoplayer/k/n;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e;->c:Lcom/anythink/expressad/exoplayer/y;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/e;->a:Lcom/anythink/expressad/exoplayer/k/z;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/k/z;->e()Lcom/anythink/expressad/exoplayer/v;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/anythink/expressad/exoplayer/k/n;->a(Lcom/anythink/expressad/exoplayer/v;)Lcom/anythink/expressad/exoplayer/v;

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/e;->f()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/g;->a(Ljava/lang/RuntimeException;)Lcom/anythink/expressad/exoplayer/g;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e;->a:Lcom/anythink/expressad/exoplayer/k/z;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k/z;->b()V

    return-void
.end method

.method public final b(Lcom/anythink/expressad/exoplayer/y;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e;->c:Lcom/anythink/expressad/exoplayer/y;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e;->d:Lcom/anythink/expressad/exoplayer/k/n;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e;->c:Lcom/anythink/expressad/exoplayer/y;

    :cond_0
    return-void
.end method

.method public final c()J
    .locals 2

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/e;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/e;->f()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e;->d:Lcom/anythink/expressad/exoplayer/k/n;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/k/n;->d()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e;->a:Lcom/anythink/expressad/exoplayer/k/z;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k/z;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()J
    .locals 2

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/e;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e;->d:Lcom/anythink/expressad/exoplayer/k/n;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/k/n;->d()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e;->a:Lcom/anythink/expressad/exoplayer/k/z;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k/z;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()Lcom/anythink/expressad/exoplayer/v;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e;->d:Lcom/anythink/expressad/exoplayer/k/n;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/k/n;->e()Lcom/anythink/expressad/exoplayer/v;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e;->a:Lcom/anythink/expressad/exoplayer/k/z;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k/z;->e()Lcom/anythink/expressad/exoplayer/v;

    move-result-object v0

    return-object v0
.end method
