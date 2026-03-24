.class public Lz2/n50$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/v90;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/n50;->OooO0o(Lz2/b90;)Lz2/b90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field private final OooO00o:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lz2/n50$OooO00o;->OooO00o:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lz2/n50$OooO00o;->OooO00o:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public OooO0O0()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lz2/n50$OooO00o;->OooO00o:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v0, p0, Lz2/n50$OooO00o;->OooO00o:Ljava/util/concurrent/ExecutorService;

    const-wide v1, 0x7fffffffffffffffL

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/InterruptedException;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_0
    return-void
.end method
