.class public Lz2/o00Ooo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/o00Ooo$OooO0O0;,
        Lz2/o00Ooo$OooO0OO;
    }
.end annotation


# static fields
.field private static final OooOO0o:I = 0x4


# instance fields
.field private OooO:[Lz2/o00O0O;

.field private OooO00o:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final OooO0O0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Queue<",
            "Lcom/android/volley/Request<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final OooO0OO:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final OooO0Oo:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final OooO0o:Lz2/OooOo;

.field private final OooO0o0:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final OooO0oO:Lz2/o0OoOo0;

.field private final OooO0oo:Lz2/o00oO0o;

.field private OooOO0:Lz2/Oooo000;

.field private OooOO0O:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/o00Ooo$OooO0OO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/OooOo;Lz2/o0OoOo0;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lz2/o00Ooo;-><init>(Lz2/OooOo;Lz2/o0OoOo0;I)V

    return-void
.end method

.method public constructor <init>(Lz2/OooOo;Lz2/o0OoOo0;I)V
    .locals 3

    new-instance v0, Lz2/o000oOoO;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lz2/o000oOoO;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lz2/o00Ooo;-><init>(Lz2/OooOo;Lz2/o0OoOo0;ILz2/o00oO0o;)V

    return-void
.end method

.method public constructor <init>(Lz2/OooOo;Lz2/o0OoOo0;ILz2/o00oO0o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lz2/o00Ooo;->OooO00o:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz2/o00Ooo;->OooO0O0:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lz2/o00Ooo;->OooO0OO:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lz2/o00Ooo;->OooO0Oo:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lz2/o00Ooo;->OooO0o0:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/o00Ooo;->OooOO0O:Ljava/util/List;

    iput-object p1, p0, Lz2/o00Ooo;->OooO0o:Lz2/OooOo;

    iput-object p2, p0, Lz2/o00Ooo;->OooO0oO:Lz2/o0OoOo0;

    new-array p1, p3, [Lz2/o00O0O;

    iput-object p1, p0, Lz2/o00Ooo;->OooO:[Lz2/o00O0O;

    iput-object p4, p0, Lz2/o00Ooo;->OooO0oo:Lz2/o00oO0o;

    return-void
.end method


# virtual methods
.method public OooO()V
    .locals 6

    invoke-virtual {p0}, Lz2/o00Ooo;->OooOO0()V

    new-instance v0, Lz2/Oooo000;

    iget-object v1, p0, Lz2/o00Ooo;->OooO0Oo:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lz2/o00Ooo;->OooO0o0:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lz2/o00Ooo;->OooO0o:Lz2/OooOo;

    iget-object v4, p0, Lz2/o00Ooo;->OooO0oo:Lz2/o00oO0o;

    invoke-direct {v0, v1, v2, v3, v4}, Lz2/Oooo000;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lz2/OooOo;Lz2/o00oO0o;)V

    iput-object v0, p0, Lz2/o00Ooo;->OooOO0:Lz2/Oooo000;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lz2/o00Ooo;->OooO:[Lz2/o00O0O;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    new-instance v1, Lz2/o00O0O;

    iget-object v2, p0, Lz2/o00Ooo;->OooO0o0:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lz2/o00Ooo;->OooO0oO:Lz2/o0OoOo0;

    iget-object v4, p0, Lz2/o00Ooo;->OooO0o:Lz2/OooOo;

    iget-object v5, p0, Lz2/o00Ooo;->OooO0oo:Lz2/o00oO0o;

    invoke-direct {v1, v2, v3, v4, v5}, Lz2/o00O0O;-><init>(Ljava/util/concurrent/BlockingQueue;Lz2/o0OoOo0;Lz2/OooOo;Lz2/o00oO0o;)V

    iget-object v2, p0, Lz2/o00Ooo;->OooO:[Lz2/o00O0O;

    aput-object v1, v2, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooO00o(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)",
            "Lcom/android/volley/Request<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->Oooo0O0(Lz2/o00Ooo;)Lcom/android/volley/Request;

    iget-object v0, p0, Lz2/o00Ooo;->OooO0OO:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/o00Ooo;->OooO0OO:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p0}, Lz2/o00Ooo;->OooO0oO()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->Oooo0o0(I)Lcom/android/volley/Request;

    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->OooO0O0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/volley/Request;->Oooo0oo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/o00Ooo;->OooO0o0:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_0
    iget-object v1, p0, Lz2/o00Ooo;->OooO0O0:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    invoke-virtual {p1}, Lcom/android/volley/Request;->OooOOO0()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lz2/o00Ooo;->OooO0O0:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lz2/o00Ooo;->OooO0O0:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :cond_1
    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lz2/o00Ooo;->OooO0O0:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lz2/o0OOO0o;->OooO0O0:Z

    if-eqz v2, :cond_3

    const-string v2, "Request for cacheKey=%s is in flight, putting on hold."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lz2/o0OOO0o;->OooO0o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lz2/o00Ooo;->OooO0O0:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lz2/o00Ooo;->OooO0Oo:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public OooO0O0(Lz2/o00Ooo$OooO0OO;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/o00Ooo$OooO0OO<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/o00Ooo;->OooOO0O:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/o00Ooo;->OooOO0O:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooO0OO(Lz2/o00Ooo$OooO0O0;)V
    .locals 4

    iget-object v0, p0, Lz2/o00Ooo;->OooO0OO:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/o00Ooo;->OooO0OO:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/Request;

    invoke-interface {p1, v2}, Lz2/o00Ooo$OooO0O0;->OooO00o(Lcom/android/volley/Request;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/volley/Request;->OooO0OO()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooO0Oo(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lz2/o00Ooo$OooO00o;

    invoke-direct {v0, p0, p1}, Lz2/o00Ooo$OooO00o;-><init>(Lz2/o00Ooo;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lz2/o00Ooo;->OooO0OO(Lz2/o00Ooo$OooO0O0;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot cancelAll with a null tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooO0o()Lz2/OooOo;
    .locals 1

    iget-object v0, p0, Lz2/o00Ooo;->OooO0o:Lz2/OooOo;

    return-object v0
.end method

.method public OooO0o0(Lcom/android/volley/Request;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/o00Ooo;->OooO0OO:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/o00Ooo;->OooO0OO:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v1, p0, Lz2/o00Ooo;->OooOO0O:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lz2/o00Ooo;->OooOO0O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2/o00Ooo$OooO0OO;

    invoke-interface {v2, p1}, Lz2/o00Ooo$OooO0OO;->OooO00o(Lcom/android/volley/Request;)V

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p1}, Lcom/android/volley/Request;->Oooo0oo()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lz2/o00Ooo;->OooO0O0:Ljava/util/Map;

    monitor-enter v0

    :try_start_2
    invoke-virtual {p1}, Lcom/android/volley/Request;->OooOOO0()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lz2/o00Ooo;->OooO0O0:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    if-eqz v1, :cond_2

    sget-boolean v2, Lz2/o0OOO0o;->OooO0O0:Z

    if-eqz v2, :cond_1

    const-string v2, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lz2/o0OOO0o;->OooO0o(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lz2/o00Ooo;->OooO0Oo:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z

    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public OooO0oO()I
    .locals 1

    iget-object v0, p0, Lz2/o00Ooo;->OooO00o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public OooO0oo(Lz2/o00Ooo$OooO0OO;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/o00Ooo$OooO0OO<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/o00Ooo;->OooOO0O:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/o00Ooo;->OooOO0O:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooOO0()V
    .locals 3

    iget-object v0, p0, Lz2/o00Ooo;->OooOO0:Lz2/Oooo000;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/Oooo000;->OooO0O0()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lz2/o00Ooo;->OooO:[Lz2/o00O0O;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lz2/o00O0O;->OooO0OO()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
