.class public Lz2/xu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private OoooOoO:Lz2/uu;

.field private OoooOoo:I

.field private Ooooo00:I

.field private Ooooo0o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private OooooO0:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "[B>;"
        }
    .end annotation
.end field

.field private OooooOO:Z


# direct methods
.method public constructor <init>(Lz2/uu;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/xu;->OoooOoO:Lz2/uu;

    iput p2, p0, Lz2/xu;->OoooOoo:I

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lz2/xu;->OooooO0:Ljava/util/Queue;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lz2/xu;->Ooooo0o:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean p2, p0, Lz2/xu;->OooooOO:Z

    return-void
.end method


# virtual methods
.method public OooOO0([B)V
    .locals 2

    iget-object v0, p0, Lz2/xu;->OooooO0:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/xu;->OooooO0:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lz2/xu;->OooooO0:Ljava/util/Queue;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooooOo()Z
    .locals 1

    iget-boolean v0, p0, Lz2/xu;->OooooOO:Z

    return v0
.end method

.method public Oooooo()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/xu;->OooooO0:Ljava/util/Queue;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lz2/xu;->OooooOO:Z

    if-nez v2, :cond_0

    iget-object v1, p0, Lz2/xu;->OooooO0:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_0

    iget-object v2, p0, Lz2/xu;->OooooO0:Ljava/util/Queue;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lz2/xu;->OooooOO:Z

    if-nez v2, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public Oooooo0()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/xu;->OooooOO:Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lz2/xu;->OooooO0:Ljava/util/Queue;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lz2/xu;->OooooO0:Ljava/util/Queue;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public OoooooO()V
    .locals 2

    iget-object v0, p0, Lz2/xu;->Ooooo0o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public Ooooooo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lz2/xu;->OoooOoo:I

    iget v1, p0, Lz2/xu;->Ooooo00:I

    invoke-static {v0, v1}, Lz2/wu;->OooO0o(II)[B

    move-result-object v0

    iget-object v1, p0, Lz2/xu;->OoooOoO:Lz2/uu;

    iget-object v1, v1, Lz2/uu;->Ooooo0o:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lz2/xu;->OoooOoO:Lz2/uu;

    iget-object v0, v0, Lz2/uu;->Ooooo0o:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lz2/xu;->OooooOO:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    invoke-virtual {p0}, Lz2/xu;->Oooooo0()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lz2/xu;->OoooOoo:I

    iget v1, p0, Lz2/xu;->Ooooo00:I

    invoke-static {v0, v1}, Lz2/wu;->OooO0O0(II)[B

    move-result-object v0

    iget-object v1, p0, Lz2/xu;->OoooOoO:Lz2/uu;

    iget-object v1, v1, Lz2/uu;->Ooooo0o:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lz2/xu;->OoooOoO:Lz2/uu;

    iget-object v0, v0, Lz2/uu;->Ooooo0o:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public o00O0O([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lz2/xu;->o00Oo0([BZ)V

    return-void
.end method

.method public o00Oo0([BZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lz2/xu;->OooooOO:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/xu;->Ooooo0o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lz2/xu;->OooooOO:Z

    if-nez v0, :cond_2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lz2/xu;->OoooOoo:I

    iget v1, p0, Lz2/xu;->Ooooo00:I

    invoke-static {v0, v1, p1}, Lz2/wu;->OooO0oO(II[B)[B

    move-result-object p1

    iget-object v0, p0, Lz2/xu;->OoooOoO:Lz2/uu;

    iget-object v0, v0, Lz2/uu;->Ooooo0o:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lz2/xu;->OoooOoO:Lz2/uu;

    iget-object p1, p1, Lz2/uu;->Ooooo0o:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public o0OoOo0(I)V
    .locals 0

    iput p1, p0, Lz2/xu;->Ooooo00:I

    return-void
.end method

.method public ooOO(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz2/xu;->o00Oo0([BZ)V

    const/4 p1, 0x1

    new-array v1, p1, [B

    aput-byte v0, v1, v0

    invoke-virtual {p0, v1, p1}, Lz2/xu;->o00Oo0([BZ)V

    return-void
.end method
