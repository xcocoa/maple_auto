.class public abstract Lcom/anythink/expressad/exoplayer/c/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/anythink/expressad/exoplayer/c/e;",
        "O:",
        "Lcom/anythink/expressad/exoplayer/c/f;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/anythink/expressad/exoplayer/c/c<",
        "TI;TO;TE;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Thread;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final e:[Lcom/anythink/expressad/exoplayer/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field private final f:[Lcom/anythink/expressad/exoplayer/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:Lcom/anythink/expressad/exoplayer/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Z

.field private m:I


# direct methods
.method private constructor <init>([Lcom/anythink/expressad/exoplayer/c/e;[Lcom/anythink/expressad/exoplayer/c/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/c/g;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/c/g;->c:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/c/g;->d:Ljava/util/ArrayDeque;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/c/g;->e:[Lcom/anythink/expressad/exoplayer/c/e;

    array-length p1, p1

    iput p1, p0, Lcom/anythink/expressad/exoplayer/c/g;->g:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->g:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->e:[Lcom/anythink/expressad/exoplayer/c/e;

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/c/g;->h()Lcom/anythink/expressad/exoplayer/c/e;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/c/g;->f:[Lcom/anythink/expressad/exoplayer/c/f;

    array-length p2, p2

    iput p2, p0, Lcom/anythink/expressad/exoplayer/c/g;->h:I

    :goto_1
    iget p2, p0, Lcom/anythink/expressad/exoplayer/c/g;->h:I

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/c/g;->f:[Lcom/anythink/expressad/exoplayer/c/f;

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/c/g;->i()Lcom/anythink/expressad/exoplayer/c/f;

    move-result-object v0

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/anythink/expressad/exoplayer/c/g$1;

    invoke-direct {p1, p0}, Lcom/anythink/expressad/exoplayer/c/g$1;-><init>(Lcom/anythink/expressad/exoplayer/c/g;)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/c/g;->a:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(I)V
    .locals 4

    iget v0, p0, Lcom/anythink/expressad/exoplayer/c/g;->g:I

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->e:[Lcom/anythink/expressad/exoplayer/c/e;

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/c/g;->e:[Lcom/anythink/expressad/exoplayer/c/e;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/anythink/expressad/exoplayer/c/e;->d(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/c/g;)V
    .locals 1

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/c/g;->o()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private b(Lcom/anythink/expressad/exoplayer/c/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/c/e;->a()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/c/g;->e:[Lcom/anythink/expressad/exoplayer/c/e;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/c/g;->g:I

    aput-object p1, v0, v1

    return-void
.end method

.method private b(Lcom/anythink/expressad/exoplayer/c/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/c/a;->a()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/c/g;->f:[Lcom/anythink/expressad/exoplayer/c/f;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/c/g;->h:I

    aput-object p1, v0, v1

    return-void
.end method

.method private l()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/c/g;->j:Ljava/lang/Exception;

    if-nez v0, :cond_0

    return-void

    :cond_0
    throw v0
.end method

.method private m()V
    .locals 1

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/c/g;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/c/g;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 2

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/c/g;->o()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private o()Z
    .locals 6

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/c/g;->b:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->l:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/c/g;->p()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->l:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/c/e;

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/c/g;->f:[Lcom/anythink/expressad/exoplayer/c/f;

    iget v4, p0, Lcom/anythink/expressad/exoplayer/c/g;->h:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/anythink/expressad/exoplayer/c/g;->h:I

    aget-object v3, v3, v4

    iput-boolean v2, p0, Lcom/anythink/expressad/exoplayer/c/g;->k:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/c/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/anythink/expressad/exoplayer/c/a;->b(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, -0x80000000

    invoke-virtual {v3, v0}, Lcom/anythink/expressad/exoplayer/c/a;->b(I)V

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/c/g;->k()Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/c/g;->j:Ljava/lang/Exception;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/c/g;->j()Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/c/g;->j:Ljava/lang/Exception;

    :goto_1
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/c/g;->j:Ljava/lang/Exception;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/c/g;->b:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    return v2

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/c/g;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-boolean v4, p0, Lcom/anythink/expressad/exoplayer/c/g;->k:Z

    if-eqz v4, :cond_5

    :goto_3
    invoke-direct {p0, v3}, Lcom/anythink/expressad/exoplayer/c/g;->b(Lcom/anythink/expressad/exoplayer/c/f;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/c/a;->b()Z

    move-result v4

    if-eqz v4, :cond_6

    iget v2, p0, Lcom/anythink/expressad/exoplayer/c/g;->m:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/anythink/expressad/exoplayer/c/g;->m:I

    goto :goto_3

    :cond_6
    iget v4, p0, Lcom/anythink/expressad/exoplayer/c/g;->m:I

    iput v4, v3, Lcom/anythink/expressad/exoplayer/c/f;->b:I

    iput v2, p0, Lcom/anythink/expressad/exoplayer/c/g;->m:I

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/c/g;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :goto_4
    invoke-direct {p0, v1}, Lcom/anythink/expressad/exoplayer/c/g;->b(Lcom/anythink/expressad/exoplayer/c/e;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v5

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private p()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/c/g;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/anythink/expressad/exoplayer/c/g;->h:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/exoplayer/c/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V^TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/c/g;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/c/g;->l()V

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->i:Lcom/anythink/expressad/exoplayer/c/e;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/c/g;->m()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/c/g;->i:Lcom/anythink/expressad/exoplayer/c/e;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/c/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/c/g;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/c/g;->b(Lcom/anythink/expressad/exoplayer/c/f;)V

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/c/g;->m()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/anythink/expressad/exoplayer/c/e;

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/exoplayer/c/g;->a(Lcom/anythink/expressad/exoplayer/c/e;)V

    return-void
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/c/g;->f()Lcom/anythink/expressad/exoplayer/c/e;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/c/g;->g()Lcom/anythink/expressad/exoplayer/c/f;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/c/g;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->k:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->m:I

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->i:Lcom/anythink/expressad/exoplayer/c/e;

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/anythink/expressad/exoplayer/c/g;->b(Lcom/anythink/expressad/exoplayer/c/e;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->i:Lcom/anythink/expressad/exoplayer/c/e;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/c/e;

    invoke-direct {p0, v1}, Lcom/anythink/expressad/exoplayer/c/g;->b(Lcom/anythink/expressad/exoplayer/c/e;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/c/f;

    invoke-direct {p0, v1}, Lcom/anythink/expressad/exoplayer/c/g;->b(Lcom/anythink/expressad/exoplayer/c/f;)V

    goto :goto_1

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/c/g;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->l:Z

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/c/g;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final f()Lcom/anythink/expressad/exoplayer/c/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;^TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/c/g;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/c/g;->l()V

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->i:Lcom/anythink/expressad/exoplayer/c/e;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->g:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/c/g;->e:[Lcom/anythink/expressad/exoplayer/c/e;

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->g:I

    aget-object v1, v3, v1

    :goto_1
    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->i:Lcom/anythink/expressad/exoplayer/c/e;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final g()Lcom/anythink/expressad/exoplayer/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;^TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/c/g;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/c/g;->l()V

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/c/g;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/c/f;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public abstract h()Lcom/anythink/expressad/exoplayer/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation
.end method

.method public abstract i()Lcom/anythink/expressad/exoplayer/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation
.end method

.method public abstract j()Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public abstract k()Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method
