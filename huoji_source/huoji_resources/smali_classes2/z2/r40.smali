.class public Lz2/r40;
.super Lz2/p40;
.source ""


# static fields
.field public static final OooO0Oo:Z = true


# instance fields
.field private final OooO0O0:Ljava/util/concurrent/ExecutorService;

.field private OooO0OO:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lz2/p40;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/r40;->OooO0OO:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lz2/r40;->OooO0O0:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    invoke-direct {p0}, Lz2/p40;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/r40;->OooO0OO:Z

    iput-object p1, p0, Lz2/r40;->OooO0O0:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public OooOOOo()Z
    .locals 1

    iget-boolean v0, p0, Lz2/r40;->OooO0OO:Z

    return v0
.end method

.method public OooOOo(Ljava/util/concurrent/Callable;)V
    .locals 1

    iget-object v0, p0, Lz2/r40;->OooO0O0:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public OooOOo0(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lz2/r40;->OooO0O0:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public OooOOoo(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lz2/r40;->OooO0O0:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public OooOo()V
    .locals 1

    iget-object v0, p0, Lz2/r40;->OooO0O0:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public OooOo0()Z
    .locals 1

    iget-object v0, p0, Lz2/r40;->OooO0O0:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public OooOo00()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lz2/r40;->OooO0O0:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public OooOo0O()Z
    .locals 1

    iget-object v0, p0, Lz2/r40;->OooO0O0:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public OooOo0o(Z)V
    .locals 0

    iput-boolean p1, p0, Lz2/r40;->OooO0OO:Z

    return-void
.end method

.method public OooOoO0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/r40;->OooO0O0:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
