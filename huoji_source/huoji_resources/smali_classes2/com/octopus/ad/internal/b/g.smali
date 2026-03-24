.class public final Lcom/octopus/ad/internal/b/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/b/g$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/lang/String;

.field private volatile c:Lcom/octopus/ad/internal/b/e;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/octopus/ad/internal/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/octopus/ad/internal/b/b;

.field private final f:Lcom/octopus/ad/internal/b/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/octopus/ad/internal/b/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/octopus/ad/internal/b/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/octopus/ad/internal/b/g;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/octopus/ad/internal/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/octopus/ad/internal/b/g;->b:Ljava/lang/String;

    invoke-static {p2}, Lcom/octopus/ad/internal/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/octopus/ad/internal/b/c;

    iput-object p2, p0, Lcom/octopus/ad/internal/b/g;->f:Lcom/octopus/ad/internal/b/c;

    new-instance p2, Lcom/octopus/ad/internal/b/g$a;

    invoke-direct {p2, p1, v0}, Lcom/octopus/ad/internal/b/g$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object p2, p0, Lcom/octopus/ad/internal/b/g;->e:Lcom/octopus/ad/internal/b/b;

    return-void
.end method

.method private declared-synchronized b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/octopus/ad/internal/b/m;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/g;->c:Lcom/octopus/ad/internal/b/e;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/octopus/ad/internal/b/g;->d()Lcom/octopus/ad/internal/b/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/g;->c:Lcom/octopus/ad/internal/b/e;

    :goto_0
    iput-object v0, p0, Lcom/octopus/ad/internal/b/g;->c:Lcom/octopus/ad/internal/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/b/g;->c:Lcom/octopus/ad/internal/b/e;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/l;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/internal/b/g;->c:Lcom/octopus/ad/internal/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()Lcom/octopus/ad/internal/b/e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/octopus/ad/internal/b/m;
        }
    .end annotation

    new-instance v0, Lcom/octopus/ad/internal/b/h;

    iget-object v1, p0, Lcom/octopus/ad/internal/b/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/octopus/ad/internal/b/g;->f:Lcom/octopus/ad/internal/b/c;

    iget-object v2, v2, Lcom/octopus/ad/internal/b/c;->d:Lcom/octopus/ad/internal/b/b/c;

    invoke-direct {v0, v1, v2}, Lcom/octopus/ad/internal/b/h;-><init>(Ljava/lang/String;Lcom/octopus/ad/internal/b/b/c;)V

    new-instance v1, Lcom/octopus/ad/internal/b/a/b;

    iget-object v2, p0, Lcom/octopus/ad/internal/b/g;->f:Lcom/octopus/ad/internal/b/c;

    iget-object v3, p0, Lcom/octopus/ad/internal/b/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/octopus/ad/internal/b/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/octopus/ad/internal/b/g;->f:Lcom/octopus/ad/internal/b/c;

    iget-object v3, v3, Lcom/octopus/ad/internal/b/c;->c:Lcom/octopus/ad/internal/b/a/a;

    invoke-direct {v1, v2, v3}, Lcom/octopus/ad/internal/b/a/b;-><init>(Ljava/io/File;Lcom/octopus/ad/internal/b/a/a;)V

    new-instance v2, Lcom/octopus/ad/internal/b/e;

    invoke-direct {v2, v0, v1}, Lcom/octopus/ad/internal/b/e;-><init>(Lcom/octopus/ad/internal/b/h;Lcom/octopus/ad/internal/b/a/b;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/b/g;->e:Lcom/octopus/ad/internal/b/b;

    invoke-virtual {v2, v0}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/b;)V

    return-object v2
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/b/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public a(Lcom/octopus/ad/internal/b/d;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/octopus/ad/internal/b/m;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/octopus/ad/internal/b/g;->b()V

    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/octopus/ad/internal/b/g;->c:Lcom/octopus/ad/internal/b/e;

    invoke-virtual {v0, p1, p2}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/d;Ljava/net/Socket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/octopus/ad/internal/b/g;->c()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/octopus/ad/internal/b/g;->c()V

    throw p1
.end method
