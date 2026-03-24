.class public final Lz2/k10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final OoooOoO:Lz2/q10;

.field private final OoooOoo:Lz2/l10;

.field private volatile Ooooo00:Z


# direct methods
.method public constructor <init>(Lz2/l10;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/k10;->OoooOoo:Lz2/l10;

    new-instance p1, Lz2/q10;

    invoke-direct {p1}, Lz2/q10;-><init>()V

    iput-object p1, p0, Lz2/k10;->OoooOoO:Lz2/q10;

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/v10;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Lz2/p10;->OooO00o(Lz2/v10;Ljava/lang/Object;)Lz2/p10;

    move-result-object p1

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lz2/k10;->OoooOoO:Lz2/q10;

    invoke-virtual {p2, p1}, Lz2/q10;->OooO00o(Lz2/p10;)V

    iget-boolean p1, p0, Lz2/k10;->Ooooo00:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lz2/k10;->Ooooo00:Z

    iget-object p1, p0, Lz2/k10;->OoooOoo:Lz2/l10;

    invoke-virtual {p1}, Lz2/l10;->OooO0oO()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 5

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lz2/k10;->OoooOoO:Lz2/q10;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lz2/q10;->OooO0OO(I)Lz2/p10;

    move-result-object v1

    if-nez v1, :cond_1

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lz2/k10;->OoooOoO:Lz2/q10;

    invoke-virtual {v1}, Lz2/q10;->OooO0O0()Lz2/p10;

    move-result-object v1

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lz2/k10;->Ooooo00:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v0, p0, Lz2/k10;->Ooooo00:Z

    return-void

    :cond_0
    :try_start_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    :cond_1
    :goto_1
    iget-object v2, p0, Lz2/k10;->OoooOoo:Lz2/l10;

    invoke-virtual {v2, v1}, Lz2/l10;->OooOO0O(Lz2/p10;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_4
    const-string v2, "Event"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " was interruppted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iput-boolean v0, p0, Lz2/k10;->Ooooo00:Z

    return-void

    :goto_2
    iput-boolean v0, p0, Lz2/k10;->Ooooo00:Z

    throw v1
.end method
