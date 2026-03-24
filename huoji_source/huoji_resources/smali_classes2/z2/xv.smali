.class public Lz2/xv;
.super Lz2/lw;
.source ""


# instance fields
.field private volatile OooO0OO:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/lw;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lz2/hw;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lz2/lw;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lz2/hw;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lz2/lw;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/lw;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public OooO0O0(Lz2/kw;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lz2/xv;->OooO0OO:I

    invoke-super {p0, p1}, Lz2/lw;->OooO0O0(Lz2/kw;)V

    invoke-virtual {p0}, Lz2/xv;->OooOo0()V

    return-void
.end method

.method public OooOOO0(Lz2/gw;Lz2/kw;)V
    .locals 1

    new-instance v0, Lz2/xv$OooO00o;

    invoke-direct {v0, p0, p1, p2}, Lz2/xv$OooO00o;-><init>(Lz2/xv;Lz2/gw;Lz2/kw;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public declared-synchronized OooOo0()V
    .locals 2

    monitor-enter p0

    :goto_0
    :try_start_0
    iget v0, p0, Lz2/xv;->OooO0OO:I

    invoke-virtual {p0}, Lz2/lw;->OooOOo0()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized OooOo00()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lz2/xv;->OooO0OO:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz2/xv;->OooO0OO:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
