.class public Lz2/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/engine/DecodeJob$OooO0O0;
.implements Lz2/v2$OooOO0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/o$OooO0OO;,
        Lz2/o$OooO0o;,
        Lz2/o$OooO;,
        Lz2/o$OooO0O0;,
        Lz2/o$OooO00o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/DecodeJob$OooO0O0<",
        "TR;>;",
        "Lz2/v2$OooOO0;"
    }
.end annotation


# static fields
.field private static final o0ooOoO:Lz2/o$OooO0OO;


# instance fields
.field public final OoooOoO:Lz2/o$OooO;

.field private final OoooOoo:Lz2/x2;

.field private final Ooooo00:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lz2/o<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final Ooooo0o:Lz2/o$OooO0OO;

.field private final OooooO0:Lz2/oO00000;

.field private final OooooOO:Lz2/oO0;

.field private final OooooOo:Lz2/oO0;

.field private final Oooooo:Lz2/oO0;

.field private final Oooooo0:Lz2/oO0;

.field private final OoooooO:Ljava/util/concurrent/atomic/AtomicInteger;

.field private Ooooooo:Lz2/o0O0O0Oo;

.field private o00O0O:Z

.field private o00Oo0:Z

.field private o00Ooo:Lz2/oO0Ooooo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oO0Ooooo<",
            "*>;"
        }
    .end annotation
.end field

.field public o00o0O:Lcom/bumptech/glide/load/DataSource;

.field public o00oO0O:Lz2/oO0000Oo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oO0000Oo<",
            "*>;"
        }
    .end annotation
.end field

.field private o00oO0o:Z

.field private o00ooo:Z

.field private o0OoOo0:Z

.field private o0ooOO0:Lcom/bumptech/glide/load/engine/DecodeJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "TR;>;"
        }
    .end annotation
.end field

.field private volatile o0ooOOo:Z

.field public oo000o:Lcom/bumptech/glide/load/engine/GlideException;

.field private ooOO:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/o$OooO0OO;

    invoke-direct {v0}, Lz2/o$OooO0OO;-><init>()V

    sput-object v0, Lz2/o;->o0ooOoO:Lz2/o$OooO0OO;

    return-void
.end method

.method public constructor <init>(Lz2/oO0;Lz2/oO0;Lz2/oO0;Lz2/oO0;Lz2/oO00000;Landroidx/core/util/Pools$Pool;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0;",
            "Lz2/oO0;",
            "Lz2/oO0;",
            "Lz2/oO0;",
            "Lz2/oO00000;",
            "Landroidx/core/util/Pools$Pool<",
            "Lz2/o<",
            "*>;>;)V"
        }
    .end annotation

    sget-object v7, Lz2/o;->o0ooOoO:Lz2/o$OooO0OO;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lz2/o;-><init>(Lz2/oO0;Lz2/oO0;Lz2/oO0;Lz2/oO0;Lz2/oO00000;Landroidx/core/util/Pools$Pool;Lz2/o$OooO0OO;)V

    return-void
.end method

.method public constructor <init>(Lz2/oO0;Lz2/oO0;Lz2/oO0;Lz2/oO0;Lz2/oO00000;Landroidx/core/util/Pools$Pool;Lz2/o$OooO0OO;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0;",
            "Lz2/oO0;",
            "Lz2/oO0;",
            "Lz2/oO0;",
            "Lz2/oO00000;",
            "Landroidx/core/util/Pools$Pool<",
            "Lz2/o<",
            "*>;>;",
            "Lz2/o$OooO0OO;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/o$OooO;

    invoke-direct {v0}, Lz2/o$OooO;-><init>()V

    iput-object v0, p0, Lz2/o;->OoooOoO:Lz2/o$OooO;

    invoke-static {}, Lz2/x2;->OooO00o()Lz2/x2;

    move-result-object v0

    iput-object v0, p0, Lz2/o;->OoooOoo:Lz2/x2;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lz2/o;->OoooooO:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lz2/o;->OooooOO:Lz2/oO0;

    iput-object p2, p0, Lz2/o;->OooooOo:Lz2/oO0;

    iput-object p3, p0, Lz2/o;->Oooooo0:Lz2/oO0;

    iput-object p4, p0, Lz2/o;->Oooooo:Lz2/oO0;

    iput-object p5, p0, Lz2/o;->OooooO0:Lz2/oO00000;

    iput-object p6, p0, Lz2/o;->Ooooo00:Landroidx/core/util/Pools$Pool;

    iput-object p7, p0, Lz2/o;->Ooooo0o:Lz2/o$OooO0OO;

    return-void
.end method

.method private OooOO0()Lz2/oO0;
    .locals 1

    iget-boolean v0, p0, Lz2/o;->ooOO:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/o;->Oooooo0:Lz2/oO0;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lz2/o;->o00O0O:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/o;->Oooooo:Lz2/oO0;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz2/o;->OooooOo:Lz2/oO0;

    :goto_0
    return-object v0
.end method

.method private OooOOO()Z
    .locals 1

    iget-boolean v0, p0, Lz2/o;->o00oO0o:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lz2/o;->o00ooo:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lz2/o;->o0ooOOo:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private declared-synchronized OooOOo()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/o;->Ooooooo:Lz2/o0O0O0Oo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/o;->OoooOoO:Lz2/o$OooO;

    invoke-virtual {v0}, Lz2/o$OooO;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/o;->Ooooooo:Lz2/o0O0O0Oo;

    iput-object v0, p0, Lz2/o;->o00oO0O:Lz2/oO0000Oo;

    iput-object v0, p0, Lz2/o;->o00Ooo:Lz2/oO0Ooooo;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lz2/o;->o00oO0o:Z

    iput-boolean v1, p0, Lz2/o;->o0ooOOo:Z

    iput-boolean v1, p0, Lz2/o;->o00ooo:Z

    iget-object v2, p0, Lz2/o;->o0ooOO0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOo0o(Z)V

    iput-object v0, p0, Lz2/o;->o0ooOO0:Lcom/bumptech/glide/load/engine/DecodeJob;

    iput-object v0, p0, Lz2/o;->oo000o:Lcom/bumptech/glide/load/engine/GlideException;

    iput-object v0, p0, Lz2/o;->o00o0O:Lcom/bumptech/glide/load/DataSource;

    iget-object v0, p0, Lz2/o;->Ooooo00:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized OooO()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/o;->OoooOoo:Lz2/x2;

    invoke-virtual {v0}, Lz2/x2;->OooO0OO()V

    invoke-direct {p0}, Lz2/o;->OooOOO()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Lz2/r2;->OooO00o(ZLjava/lang/String;)V

    iget-object v0, p0, Lz2/o;->OoooooO:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Can\'t decrement below 0"

    invoke-static {v1, v2}, Lz2/r2;->OooO00o(ZLjava/lang/String;)V

    if-nez v0, :cond_2

    iget-object v0, p0, Lz2/o;->o00oO0O:Lz2/oO0000Oo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lz2/oO0000Oo;->OooO0o0()V

    :cond_1
    invoke-direct {p0}, Lz2/o;->OooOOo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public OooO00o(Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lz2/o;->oo000o:Lcom/bumptech/glide/load/engine/GlideException;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lz2/o;->OooOOOO()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public OooO0O0(Lz2/oO0Ooooo;Lcom/bumptech/glide/load/DataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0Ooooo<",
            "TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lz2/o;->o00Ooo:Lz2/oO0Ooooo;

    iput-object p2, p0, Lz2/o;->o00o0O:Lcom/bumptech/glide/load/DataSource;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lz2/o;->OooOOOo()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public OooO0OO(Lcom/bumptech/glide/load/engine/DecodeJob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lz2/o;->OooOO0()Lz2/oO0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/oO0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized OooO0Oo(Lz2/q1;Ljava/util/concurrent/Executor;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/o;->OoooOoo:Lz2/x2;

    invoke-virtual {v0}, Lz2/x2;->OooO0OO()V

    iget-object v0, p0, Lz2/o;->OoooOoO:Lz2/o$OooO;

    invoke-virtual {v0, p1, p2}, Lz2/o$OooO;->OooO00o(Lz2/q1;Ljava/util/concurrent/Executor;)V

    iget-boolean v0, p0, Lz2/o;->o00ooo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lz2/o;->OooOO0O(I)V

    new-instance v0, Lz2/o$OooO0O0;

    invoke-direct {v0, p0, p1}, Lz2/o$OooO0O0;-><init>(Lz2/o;Lz2/q1;)V

    :goto_0
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lz2/o;->o00oO0o:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lz2/o;->OooOO0O(I)V

    new-instance v0, Lz2/o$OooO00o;

    invoke-direct {v0, p0, p1}, Lz2/o$OooO00o;-><init>(Lz2/o;Lz2/q1;)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lz2/o;->o0ooOOo:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string p1, "Cannot add callbacks to a cancelled EngineJob"

    invoke-static {v1, p1}, Lz2/r2;->OooO00o(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized OooO0o(Lz2/q1;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/o;->o00oO0O:Lz2/oO0000Oo;

    iget-object v1, p0, Lz2/o;->o00o0O:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {p1, v0, v1}, Lz2/q1;->OooO0O0(Lz2/oO0Ooooo;Lcom/bumptech/glide/load/DataSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    new-instance v0, Lcom/bumptech/glide/load/engine/CallbackException;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/CallbackException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized OooO0o0(Lz2/q1;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/o;->oo000o:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-interface {p1, v0}, Lz2/q1;->OooO00o(Lcom/bumptech/glide/load/engine/GlideException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    new-instance v0, Lcom/bumptech/glide/load/engine/CallbackException;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/CallbackException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public OooO0oO()Lz2/x2;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/o;->OoooOoo:Lz2/x2;

    return-object v0
.end method

.method public OooO0oo()V
    .locals 2

    invoke-direct {p0}, Lz2/o;->OooOOO()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/o;->o0ooOOo:Z

    iget-object v0, p0, Lz2/o;->o0ooOO0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooO0O0()V

    iget-object v0, p0, Lz2/o;->OooooO0:Lz2/oO00000;

    iget-object v1, p0, Lz2/o;->Ooooooo:Lz2/o0O0O0Oo;

    invoke-interface {v0, p0, v1}, Lz2/oO00000;->OooO0OO(Lz2/o;Lz2/o0O0O0Oo;)V

    return-void
.end method

.method public declared-synchronized OooOO0O(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lz2/o;->OooOOO()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Lz2/r2;->OooO00o(ZLjava/lang/String;)V

    iget-object v0, p0, Lz2/o;->OoooooO:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lz2/o;->o00oO0O:Lz2/oO0000Oo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lz2/oO0000Oo;->OooO00o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized OooOO0o(Lz2/o0O0O0Oo;ZZZZ)Lz2/o;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0O0Oo;",
            "ZZZZ)",
            "Lz2/o<",
            "TR;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lz2/o;->Ooooooo:Lz2/o0O0O0Oo;

    iput-boolean p2, p0, Lz2/o;->o0OoOo0:Z

    iput-boolean p3, p0, Lz2/o;->ooOO:Z

    iput-boolean p4, p0, Lz2/o;->o00O0O:Z

    iput-boolean p5, p0, Lz2/o;->o00Oo0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized OooOOO0()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lz2/o;->o0ooOOo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public OooOOOO()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/o;->OoooOoo:Lz2/x2;

    invoke-virtual {v0}, Lz2/x2;->OooO0OO()V

    iget-boolean v0, p0, Lz2/o;->o0ooOOo:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lz2/o;->OooOOo()V

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lz2/o;->OoooOoO:Lz2/o$OooO;

    invoke-virtual {v0}, Lz2/o$OooO;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lz2/o;->o00oO0o:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/o;->o00oO0o:Z

    iget-object v1, p0, Lz2/o;->Ooooooo:Lz2/o0O0O0Oo;

    iget-object v2, p0, Lz2/o;->OoooOoO:Lz2/o$OooO;

    invoke-virtual {v2}, Lz2/o$OooO;->OooO0OO()Lz2/o$OooO;

    move-result-object v2

    invoke-virtual {v2}, Lz2/o$OooO;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lz2/o;->OooOO0O(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lz2/o;->OooooO0:Lz2/oO00000;

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v3}, Lz2/oO00000;->OooO0O0(Lz2/o;Lz2/o0O0O0Oo;Lz2/oO0000Oo;)V

    invoke-virtual {v2}, Lz2/o$OooO;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/o$OooO0o;

    iget-object v2, v1, Lz2/o$OooO0o;->OooO0O0:Ljava/util/concurrent/Executor;

    new-instance v3, Lz2/o$OooO00o;

    iget-object v1, v1, Lz2/o$OooO0o;->OooO00o:Lz2/q1;

    invoke-direct {v3, p0, v1}, Lz2/o$OooO00o;-><init>(Lz2/o;Lz2/q1;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lz2/o;->OooO()V

    return-void

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already failed once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public OooOOOo()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/o;->OoooOoo:Lz2/x2;

    invoke-virtual {v0}, Lz2/x2;->OooO0OO()V

    iget-boolean v0, p0, Lz2/o;->o0ooOOo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/o;->o00Ooo:Lz2/oO0Ooooo;

    invoke-interface {v0}, Lz2/oO0Ooooo;->recycle()V

    invoke-direct {p0}, Lz2/o;->OooOOo()V

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lz2/o;->OoooOoO:Lz2/o$OooO;

    invoke-virtual {v0}, Lz2/o$OooO;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lz2/o;->o00ooo:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lz2/o;->Ooooo0o:Lz2/o$OooO0OO;

    iget-object v1, p0, Lz2/o;->o00Ooo:Lz2/oO0Ooooo;

    iget-boolean v2, p0, Lz2/o;->o0OoOo0:Z

    invoke-virtual {v0, v1, v2}, Lz2/o$OooO0OO;->OooO00o(Lz2/oO0Ooooo;Z)Lz2/oO0000Oo;

    move-result-object v0

    iput-object v0, p0, Lz2/o;->o00oO0O:Lz2/oO0000Oo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/o;->o00ooo:Z

    iget-object v1, p0, Lz2/o;->OoooOoO:Lz2/o$OooO;

    invoke-virtual {v1}, Lz2/o$OooO;->OooO0OO()Lz2/o$OooO;

    move-result-object v1

    invoke-virtual {v1}, Lz2/o$OooO;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lz2/o;->OooOO0O(I)V

    iget-object v0, p0, Lz2/o;->Ooooooo:Lz2/o0O0O0Oo;

    iget-object v2, p0, Lz2/o;->o00oO0O:Lz2/oO0000Oo;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lz2/o;->OooooO0:Lz2/oO00000;

    invoke-interface {v3, p0, v0, v2}, Lz2/oO00000;->OooO0O0(Lz2/o;Lz2/o0O0O0Oo;Lz2/oO0000Oo;)V

    invoke-virtual {v1}, Lz2/o$OooO;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/o$OooO0o;

    iget-object v2, v1, Lz2/o$OooO0o;->OooO0O0:Ljava/util/concurrent/Executor;

    new-instance v3, Lz2/o$OooO0O0;

    iget-object v1, v1, Lz2/o$OooO0o;->OooO00o:Lz2/q1;

    invoke-direct {v3, p0, v1}, Lz2/o$OooO0O0;-><init>(Lz2/o;Lz2/q1;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lz2/o;->OooO()V

    return-void

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public OooOOo0()Z
    .locals 1

    iget-boolean v0, p0, Lz2/o;->o00Oo0:Z

    return v0
.end method

.method public declared-synchronized OooOOoo(Lz2/q1;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/o;->OoooOoo:Lz2/x2;

    invoke-virtual {v0}, Lz2/x2;->OooO0OO()V

    iget-object v0, p0, Lz2/o;->OoooOoO:Lz2/o$OooO;

    invoke-virtual {v0, p1}, Lz2/o$OooO;->OooO0o0(Lz2/q1;)V

    iget-object p1, p0, Lz2/o;->OoooOoO:Lz2/o$OooO;

    invoke-virtual {p1}, Lz2/o$OooO;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lz2/o;->OooO0oo()V

    iget-boolean p1, p0, Lz2/o;->o00ooo:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lz2/o;->o00oO0o:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lz2/o;->OoooooO:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lz2/o;->OooOOo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized OooOo00(Lcom/bumptech/glide/load/engine/DecodeJob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "TR;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lz2/o;->o0ooOO0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOoo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/o;->OooooOO:Lz2/oO0;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lz2/o;->OooOO0()Lz2/oO0;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1}, Lz2/oO0;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
