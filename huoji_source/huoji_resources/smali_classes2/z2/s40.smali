.class public Lz2/s40;
.super Lz2/q40;
.source ""

# interfaces
.implements Lz2/u30;


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
        "Lz2/q40<",
        "TD;TF;TP;>;",
        "Lz2/u30<",
        "TD;TF;TP;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/q40;-><init>()V

    return-void
.end method


# virtual methods
.method public OooOO0O(Ljava/lang/Object;)Lz2/u30;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)",
            "Lz2/u30<",
            "TD;TF;TP;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lz2/q40;->OooOo00()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lz2/q40;->OooOooO(Ljava/lang/Object;)V

    monitor-exit p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Deferred object already finished, cannot notify progress"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooOO0o()Lorg/jdeferred/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    return-object p0
.end method

.method public OooOo0O(Ljava/lang/Object;)Lz2/u30;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lz2/u30<",
            "TD;TF;TP;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lz2/q40;->OooOo00()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jdeferred/Promise$State;->RESOLVED:Lorg/jdeferred/Promise$State;

    iput-object v0, p0, Lz2/q40;->OooO0O0:Lorg/jdeferred/Promise$State;

    iput-object p1, p0, Lz2/q40;->OooO0oO:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lz2/q40;->OooOoO(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lz2/q40;->OooO0O0:Lorg/jdeferred/Promise$State;

    invoke-virtual {p0, v1, p1, v0}, Lz2/q40;->OooOoO0(Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lz2/q40;->OooO0O0:Lorg/jdeferred/Promise$State;

    invoke-virtual {p0, v2, p1, v0}, Lz2/q40;->OooOoO0(Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Deferred object already finished, cannot resolve again"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public OooOo0o(Ljava/lang/Object;)Lz2/u30;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Lz2/u30<",
            "TD;TF;TP;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lz2/q40;->OooOo00()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jdeferred/Promise$State;->REJECTED:Lorg/jdeferred/Promise$State;

    iput-object v0, p0, Lz2/q40;->OooO0O0:Lorg/jdeferred/Promise$State;

    iput-object p1, p0, Lz2/q40;->OooO0oo:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lz2/q40;->OooOoo0(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lz2/q40;->OooO0O0:Lorg/jdeferred/Promise$State;

    invoke-virtual {p0, v1, v0, p1}, Lz2/q40;->OooOoO0(Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lz2/q40;->OooO0O0:Lorg/jdeferred/Promise$State;

    invoke-virtual {p0, v2, v0, p1}, Lz2/q40;->OooOoO0(Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Deferred object already finished, cannot reject again"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
