.class public final Lz2/o0OOO0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/o0OOO0$OooO0o;,
        Lz2/o0OOO0$OooO0OO;
    }
.end annotation


# instance fields
.field private final OooO00o:Z

.field private final OooO0O0:Ljava/util/concurrent/Executor;

.field public final OooO0OO:Ljava/util/Map;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lz2/o0O0O0Oo;",
            "Lz2/o0OOO0$OooO0o;",
            ">;"
        }
    .end annotation
.end field

.field private final OooO0Oo:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lz2/oO0000Oo<",
            "*>;>;"
        }
    .end annotation
.end field

.field private volatile OooO0o:Z

.field private OooO0o0:Lz2/oO0000Oo$OooO00o;

.field private volatile OooO0oO:Lz2/o0OOO0$OooO0OO;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    new-instance v0, Lz2/o0OOO0$OooO00o;

    invoke-direct {v0}, Lz2/o0OOO0$OooO00o;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lz2/o0OOO0;-><init>(ZLjava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/concurrent/Executor;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz2/o0OOO0;->OooO0OO:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lz2/o0OOO0;->OooO0Oo:Ljava/lang/ref/ReferenceQueue;

    iput-boolean p1, p0, Lz2/o0OOO0;->OooO00o:Z

    iput-object p2, p0, Lz2/o0OOO0;->OooO0O0:Ljava/util/concurrent/Executor;

    new-instance p1, Lz2/o0OOO0$OooO0O0;

    invoke-direct {p1, p0}, Lz2/o0OOO0$OooO0O0;-><init>(Lz2/o0OOO0;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized OooO00o(Lz2/o0O0O0Oo;Lz2/oO0000Oo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0O0Oo;",
            "Lz2/oO0000Oo<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lz2/o0OOO0$OooO0o;

    iget-object v1, p0, Lz2/o0OOO0;->OooO0Oo:Ljava/lang/ref/ReferenceQueue;

    iget-boolean v2, p0, Lz2/o0OOO0;->OooO00o:Z

    invoke-direct {v0, p1, p2, v1, v2}, Lz2/o0OOO0$OooO0o;-><init>(Lz2/o0O0O0Oo;Lz2/oO0000Oo;Ljava/lang/ref/ReferenceQueue;Z)V

    iget-object p2, p0, Lz2/o0OOO0;->OooO0OO:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o0OOO0$OooO0o;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lz2/o0OOO0$OooO0o;->OooO00o()V
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

.method public OooO0O0()V
    .locals 1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lz2/o0OOO0;->OooO0o:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lz2/o0OOO0;->OooO0Oo:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lz2/o0OOO0$OooO0o;

    invoke-virtual {p0, v0}, Lz2/o0OOO0;->OooO0OO(Lz2/o0OOO0$OooO0o;)V

    iget-object v0, p0, Lz2/o0OOO0;->OooO0oO:Lz2/o0OOO0$OooO0OO;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz2/o0OOO0$OooO0OO;->OooO00o()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public OooO0OO(Lz2/o0OOO0$OooO0o;)V
    .locals 5
    .param p1    # Lz2/o0OOO0$OooO0o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/o0OOO0;->OooO0o0:Lz2/oO0000Oo$OooO00o;

    monitor-enter v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lz2/o0OOO0;->OooO0OO:Ljava/util/Map;

    iget-object v2, p1, Lz2/o0OOO0$OooO0o;->OooO00o:Lz2/o0O0O0Oo;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p1, Lz2/o0OOO0$OooO0o;->OooO0O0:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lz2/o0OOO0$OooO0o;->OooO0OO:Lz2/oO0Ooooo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lz2/oO0000Oo;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lz2/oO0000Oo;-><init>(Lz2/oO0Ooooo;ZZ)V

    iget-object v1, p1, Lz2/o0OOO0$OooO0o;->OooO00o:Lz2/o0O0O0Oo;

    iget-object v3, p0, Lz2/o0OOO0;->OooO0o0:Lz2/oO0000Oo$OooO00o;

    invoke-virtual {v2, v1, v3}, Lz2/oO0000Oo;->OooO0o(Lz2/o0O0O0Oo;Lz2/oO0000Oo$OooO00o;)V

    iget-object v1, p0, Lz2/o0OOO0;->OooO0o0:Lz2/oO0000Oo$OooO00o;

    iget-object p1, p1, Lz2/o0OOO0$OooO0o;->OooO00o:Lz2/o0O0O0Oo;

    invoke-interface {v1, p1, v2}, Lz2/oO0000Oo$OooO00o;->OooO0Oo(Lz2/o0O0O0Oo;Lz2/oO0000Oo;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_1
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public declared-synchronized OooO0Oo(Lz2/o0O0O0Oo;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/o0OOO0;->OooO0OO:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o0OOO0$OooO0o;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lz2/o0OOO0$OooO0o;->OooO00o()V
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

.method public OooO0o(Lz2/o0OOO0$OooO0OO;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lz2/o0OOO0;->OooO0oO:Lz2/o0OOO0$OooO0OO;

    return-void
.end method

.method public declared-synchronized OooO0o0(Lz2/o0O0O0Oo;)Lz2/oO0000Oo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0O0Oo;",
            ")",
            "Lz2/oO0000Oo<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/o0OOO0;->OooO0OO:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o0OOO0$OooO0o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/oO0000Oo;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lz2/o0OOO0;->OooO0OO(Lz2/o0OOO0$OooO0o;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public OooO0oO(Lz2/oO0000Oo$OooO00o;)V
    .locals 1

    monitor-enter p1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object p1, p0, Lz2/o0OOO0;->OooO0o0:Lz2/oO0000Oo$OooO00o;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public OooO0oo()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/o0OOO0;->OooO0o:Z

    iget-object v0, p0, Lz2/o0OOO0;->OooO0O0:Ljava/util/concurrent/Executor;

    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lz2/l2;->OooO0OO(Ljava/util/concurrent/ExecutorService;)V

    :cond_0
    return-void
.end method
