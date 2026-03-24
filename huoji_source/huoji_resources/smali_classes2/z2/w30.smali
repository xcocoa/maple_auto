.class public Lz2/w30;
.super Ljava/util/concurrent/FutureTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TD;>;"
    }
.end annotation


# instance fields
.field public final OoooOoO:Lz2/u30;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/u30<",
            "TD;",
            "Ljava/lang/Throwable;",
            "TP;>;"
        }
    .end annotation
.end field

.field public final OoooOoo:Lorg/jdeferred/DeferredManager$StartPolicy;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    new-instance p1, Lz2/s40;

    invoke-direct {p1}, Lz2/s40;-><init>()V

    iput-object p1, p0, Lz2/w30;->OoooOoO:Lz2/u30;

    sget-object p1, Lorg/jdeferred/DeferredManager$StartPolicy;->DEFAULT:Lorg/jdeferred/DeferredManager$StartPolicy;

    iput-object p1, p0, Lz2/w30;->OoooOoo:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TD;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p1, Lz2/s40;

    invoke-direct {p1}, Lz2/s40;-><init>()V

    iput-object p1, p0, Lz2/w30;->OoooOoO:Lz2/u30;

    sget-object p1, Lorg/jdeferred/DeferredManager$StartPolicy;->DEFAULT:Lorg/jdeferred/DeferredManager$StartPolicy;

    iput-object p1, p0, Lz2/w30;->OoooOoo:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-void
.end method

.method public constructor <init>(Lz2/v30;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/v30<",
            "TD;TP;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {p1}, Lz2/v30;->OooO00o()Lz2/u30;

    move-result-object v0

    iput-object v0, p0, Lz2/w30;->OoooOoO:Lz2/u30;

    invoke-virtual {p1}, Lz2/v30;->OooO0O0()Lorg/jdeferred/DeferredManager$StartPolicy;

    move-result-object p1

    iput-object p1, p0, Lz2/w30;->OoooOoo:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-void
.end method

.method public constructor <init>(Lz2/x30;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/x30<",
            "TP;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lz2/x30;->OooO00o()Lz2/u30;

    move-result-object v0

    iput-object v0, p0, Lz2/w30;->OoooOoO:Lz2/u30;

    invoke-virtual {p1}, Lz2/x30;->OooO0O0()Lorg/jdeferred/DeferredManager$StartPolicy;

    move-result-object p1

    iput-object p1, p0, Lz2/w30;->OoooOoo:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-void
.end method


# virtual methods
.method public OooO00o()Lorg/jdeferred/DeferredManager$StartPolicy;
    .locals 1

    iget-object v0, p0, Lz2/w30;->OoooOoo:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-object v0
.end method

.method public OooO0O0()Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jdeferred/Promise<",
            "TD;",
            "Ljava/lang/Throwable;",
            "TP;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/w30;->OoooOoO:Lz2/u30;

    invoke-interface {v0}, Lz2/u30;->OooOO0o()Lorg/jdeferred/Promise;

    move-result-object v0

    return-object v0
.end method

.method public done()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/w30;->OoooOoO:Lz2/u30;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-interface {v0, v1}, Lz2/u30;->OooOo0o(Ljava/lang/Object;)Lz2/u30;

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lz2/w30;->OoooOoO:Lz2/u30;

    invoke-interface {v1, v0}, Lz2/u30;->OooOo0O(Ljava/lang/Object;)Lz2/u30;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lz2/w30;->OoooOoO:Lz2/u30;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lz2/u30;->OooOo0o(Ljava/lang/Object;)Lz2/u30;

    :catch_1
    :goto_0
    return-void
.end method
