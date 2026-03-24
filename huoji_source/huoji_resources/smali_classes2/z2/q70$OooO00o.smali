.class public Lz2/q70$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/q70;->OooO0oo(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:J

.field public final synthetic OoooOoo:Lz2/q70;


# direct methods
.method public constructor <init>(Lz2/q70;J)V
    .locals 0

    iput-object p1, p0, Lz2/q70$OooO00o;->OoooOoo:Lz2/q70;

    iput-wide p2, p0, Lz2/q70$OooO00o;->OoooOoO:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lz2/q70$OooO00o$OooO00o;

    invoke-direct {v1, p0}, Lz2/q70$OooO00o$OooO00o;-><init>(Lz2/q70$OooO00o;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :try_start_0
    iget-wide v2, p0, Lz2/q70$OooO00o;->OoooOoO:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lz2/q70$OooO00o;->OoooOoo:Lz2/q70;

    invoke-virtual {v1, v0}, Lz2/q70;->OooO00o(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    iget-object v0, p0, Lz2/q70$OooO00o;->OoooOoo:Lz2/q70;

    new-instance v1, Lorg/junit/runners/model/TestTimedOutException;

    iget-wide v2, p0, Lz2/q70$OooO00o;->OoooOoO:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v2, v3, v4}, Lorg/junit/runners/model/TestTimedOutException;-><init>(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0, v1}, Lz2/q70;->OooO00o(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
