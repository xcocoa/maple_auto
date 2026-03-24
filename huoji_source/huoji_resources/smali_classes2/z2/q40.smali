.class public abstract Lz2/q40;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/jdeferred/Promise;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jdeferred/Promise<",
        "TD;TF;TP;>;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lorg/slf4j/Logger;

.field public volatile OooO0O0:Lorg/jdeferred/Promise$State;

.field public final OooO0OO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/y30<",
            "TD;>;>;"
        }
    .end annotation
.end field

.field public final OooO0Oo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/b40<",
            "TF;>;>;"
        }
    .end annotation
.end field

.field public final OooO0o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/t30<",
            "TD;TF;>;>;"
        }
    .end annotation
.end field

.field public final OooO0o0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/e40<",
            "TP;>;>;"
        }
    .end annotation
.end field

.field public OooO0oO:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field public OooO0oo:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lz2/q40;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lz2/q40;->OooO00o:Lorg/slf4j/Logger;

    sget-object v0, Lorg/jdeferred/Promise$State;->PENDING:Lorg/jdeferred/Promise$State;

    iput-object v0, p0, Lz2/q40;->OooO0O0:Lorg/jdeferred/Promise$State;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lz2/q40;->OooO0OO:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lz2/q40;->OooO0Oo:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lz2/q40;->OooO0o0:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lz2/q40;->OooO0o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public OooO(Lz2/z30;)Lorg/jdeferred/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D_OUT:",
            "Ljava/lang/Object;",
            "F_OUT:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/z30<",
            "TD;TD_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    new-instance v0, Lz2/u40;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lz2/u40;-><init>(Lorg/jdeferred/Promise;Lz2/z30;Lz2/c40;Lz2/f40;)V

    return-object v0
.end method

.method public OooO00o(Lz2/e40;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/e40<",
            "TP;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/q40;->OooO0o0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public OooO0O0(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    monitor-enter p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lz2/q40;->OooOo00()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-gtz v4, :cond_1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sub-long v2, p1, v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v4, :cond_0

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    cmp-long v4, v2, p1

    if-ltz v4, :cond_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    throw p1

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public OooO0OO(Lz2/a40;Lz2/d40;Lz2/g40;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D_OUT:",
            "Ljava/lang/Object;",
            "F_OUT:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/a40<",
            "TD;TD_OUT;TF_OUT;TP_OUT;>;",
            "Lz2/d40<",
            "TF;TD_OUT;TF_OUT;TP_OUT;>;",
            "Lz2/g40<",
            "TP;TD_OUT;TF_OUT;TP_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    new-instance v0, Lz2/w40;

    invoke-direct {v0, p0, p1, p2, p3}, Lz2/w40;-><init>(Lorg/jdeferred/Promise;Lz2/a40;Lz2/d40;Lz2/g40;)V

    return-object v0
.end method

.method public OooO0Oo(Lz2/a40;Lz2/d40;)Lorg/jdeferred/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D_OUT:",
            "Ljava/lang/Object;",
            "F_OUT:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/a40<",
            "TD;TD_OUT;TF_OUT;TP_OUT;>;",
            "Lz2/d40<",
            "TF;TD_OUT;TF_OUT;TP_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    new-instance v0, Lz2/w40;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lz2/w40;-><init>(Lorg/jdeferred/Promise;Lz2/a40;Lz2/d40;Lz2/g40;)V

    return-object v0
.end method

.method public OooO0o()Lorg/jdeferred/Promise$State;
    .locals 1

    iget-object v0, p0, Lz2/q40;->OooO0O0:Lorg/jdeferred/Promise$State;

    return-object v0
.end method

.method public OooO0o0(Lz2/a40;)Lorg/jdeferred/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D_OUT:",
            "Ljava/lang/Object;",
            "F_OUT:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/a40<",
            "TD;TD_OUT;TF_OUT;TP_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    new-instance v0, Lz2/w40;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lz2/w40;-><init>(Lorg/jdeferred/Promise;Lz2/a40;Lz2/d40;Lz2/g40;)V

    return-object v0
.end method

.method public OooO0oO(Lz2/t30;)Lorg/jdeferred/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/t30<",
            "TD;TF;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lz2/q40;->OooOo00()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/q40;->OooO0o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/q40;->OooO0O0:Lorg/jdeferred/Promise$State;

    iget-object v1, p0, Lz2/q40;->OooO0oO:Ljava/lang/Object;

    iget-object v2, p0, Lz2/q40;->OooO0oo:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1, v2}, Lz2/q40;->OooOo(Lz2/t30;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooO0oo(Lz2/y30;)Lorg/jdeferred/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/y30<",
            "TD;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/q40;->OooOOO(Lz2/y30;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public OooOO0(Lz2/b40;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/b40<",
            "TF;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lz2/q40;->OooOOO0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/q40;->OooO0oo:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lz2/q40;->OooOoo(Lz2/b40;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/q40;->OooO0Oo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooOOO(Lz2/y30;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/y30<",
            "TD;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lz2/q40;->OooOOo0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/q40;->OooO0oO:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lz2/q40;->OooOoOO(Lz2/y30;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/q40;->OooO0OO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooOOO0()Z
    .locals 2

    iget-object v0, p0, Lz2/q40;->OooO0O0:Lorg/jdeferred/Promise$State;

    sget-object v1, Lorg/jdeferred/Promise$State;->REJECTED:Lorg/jdeferred/Promise$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooOOOO()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lz2/q40;->OooO0O0(J)V

    return-void
.end method

.method public OooOOOo(Lz2/y30;Lz2/b40;)Lorg/jdeferred/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/y30<",
            "TD;>;",
            "Lz2/b40<",
            "TF;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/q40;->OooOOO(Lz2/y30;)Lorg/jdeferred/Promise;

    invoke-virtual {p0, p2}, Lz2/q40;->OooOO0(Lz2/b40;)Lorg/jdeferred/Promise;

    return-object p0
.end method

.method public OooOOo(Lz2/z30;Lz2/c40;Lz2/f40;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D_OUT:",
            "Ljava/lang/Object;",
            "F_OUT:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/z30<",
            "TD;TD_OUT;>;",
            "Lz2/c40<",
            "TF;TF_OUT;>;",
            "Lz2/f40<",
            "TP;TP_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    new-instance v0, Lz2/u40;

    invoke-direct {v0, p0, p1, p2, p3}, Lz2/u40;-><init>(Lorg/jdeferred/Promise;Lz2/z30;Lz2/c40;Lz2/f40;)V

    return-object v0
.end method

.method public OooOOo0()Z
    .locals 2

    iget-object v0, p0, Lz2/q40;->OooO0O0:Lorg/jdeferred/Promise$State;

    sget-object v1, Lorg/jdeferred/Promise$State;->RESOLVED:Lorg/jdeferred/Promise$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooOOoo(Lz2/y30;Lz2/b40;Lz2/e40;)Lorg/jdeferred/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/y30<",
            "TD;>;",
            "Lz2/b40<",
            "TF;>;",
            "Lz2/e40<",
            "TP;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/q40;->OooOOO(Lz2/y30;)Lorg/jdeferred/Promise;

    invoke-virtual {p0, p2}, Lz2/q40;->OooOO0(Lz2/b40;)Lorg/jdeferred/Promise;

    invoke-virtual {p0, p3}, Lz2/q40;->OooO00o(Lz2/e40;)Lorg/jdeferred/Promise;

    return-object p0
.end method

.method public OooOo(Lz2/t30;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/t30<",
            "TD;TF;>;",
            "Lorg/jdeferred/Promise$State;",
            "TD;TF;)V"
        }
    .end annotation

    invoke-interface {p1, p2, p3, p4}, Lz2/t30;->OooO0O0(Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public OooOo0(Lz2/z30;Lz2/c40;)Lorg/jdeferred/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D_OUT:",
            "Ljava/lang/Object;",
            "F_OUT:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/z30<",
            "TD;TD_OUT;>;",
            "Lz2/c40<",
            "TF;TF_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    new-instance v0, Lz2/u40;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lz2/u40;-><init>(Lorg/jdeferred/Promise;Lz2/z30;Lz2/c40;Lz2/f40;)V

    return-object v0
.end method

.method public OooOo00()Z
    .locals 2

    iget-object v0, p0, Lz2/q40;->OooO0O0:Lorg/jdeferred/Promise$State;

    sget-object v1, Lorg/jdeferred/Promise$State;->PENDING:Lorg/jdeferred/Promise$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooOoO(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/q40;->OooO0OO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/y30;

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lz2/q40;->OooOoOO(Lz2/y30;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lz2/q40;->OooO00o:Lorg/slf4j/Logger;

    const-string v3, "an uncaught exception occured in a DoneCallback"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/q40;->OooO0OO:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public OooOoO0(Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/Promise$State;",
            "TD;TF;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/q40;->OooO0o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/t30;

    :try_start_0
    invoke-virtual {p0, v1, p1, p2, p3}, Lz2/q40;->OooOo(Lz2/t30;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lz2/q40;->OooO00o:Lorg/slf4j/Logger;

    const-string v3, "an uncaught exception occured in a AlwaysCallback"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/q40;->OooO0o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public OooOoOO(Lz2/y30;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/y30<",
            "TD;>;TD;)V"
        }
    .end annotation

    invoke-interface {p1, p2}, Lz2/y30;->OooO0O0(Ljava/lang/Object;)V

    return-void
.end method

.method public OooOoo(Lz2/b40;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/b40<",
            "TF;>;TF;)V"
        }
    .end annotation

    invoke-interface {p1, p2}, Lz2/b40;->OooO0O0(Ljava/lang/Object;)V

    return-void
.end method

.method public OooOoo0(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/q40;->OooO0Oo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/b40;

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lz2/q40;->OooOoo(Lz2/b40;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lz2/q40;->OooO00o:Lorg/slf4j/Logger;

    const-string v3, "an uncaught exception occured in a FailCallback"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/q40;->OooO0Oo:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public OooOooO(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/q40;->OooO0o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/e40;

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lz2/q40;->OooOooo(Lz2/e40;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lz2/q40;->OooO00o:Lorg/slf4j/Logger;

    const-string v3, "an uncaught exception occured in a ProgressCallback"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooOooo(Lz2/e40;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/e40<",
            "TP;>;TP;)V"
        }
    .end annotation

    invoke-interface {p1, p2}, Lz2/e40;->OooO0O0(Ljava/lang/Object;)V

    return-void
.end method
