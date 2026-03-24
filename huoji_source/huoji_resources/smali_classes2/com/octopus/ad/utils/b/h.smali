.class public Lcom/octopus/ad/utils/b/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile b:Lcom/octopus/ad/utils/b/h;

.field private static volatile c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile d:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile e:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile f:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/octopus/ad/utils/b/h;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/octopus/ad/utils/b/h;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/octopus/ad/utils/b/h;->a()V

    :cond_0
    return-void
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lcom/octopus/ad/utils/b/h;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/octopus/ad/utils/b/j;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    sput-object v1, Lcom/octopus/ad/utils/b/h;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {}, Lcom/octopus/ad/utils/b/j;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    sput-object v1, Lcom/octopus/ad/utils/b/h;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {}, Lcom/octopus/ad/utils/b/j;->c()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    sput-object v1, Lcom/octopus/ad/utils/b/h;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {}, Lcom/octopus/ad/utils/b/j;->d()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    sput-object v1, Lcom/octopus/ad/utils/b/h;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public static b()Lcom/octopus/ad/utils/b/h;
    .locals 2

    sget-object v0, Lcom/octopus/ad/utils/b/h;->b:Lcom/octopus/ad/utils/b/h;

    if-nez v0, :cond_1

    const-class v0, Lcom/octopus/ad/utils/b/h;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/octopus/ad/utils/b/h;->b:Lcom/octopus/ad/utils/b/h;

    if-nez v1, :cond_0

    new-instance v1, Lcom/octopus/ad/utils/b/h;

    invoke-direct {v1}, Lcom/octopus/ad/utils/b/h;-><init>()V

    sput-object v1, Lcom/octopus/ad/utils/b/h;->b:Lcom/octopus/ad/utils/b/h;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/octopus/ad/utils/b/h;->b:Lcom/octopus/ad/utils/b/h;

    return-object v0
.end method


# virtual methods
.method public c()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/octopus/ad/utils/b/h;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/octopus/ad/utils/b/j;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/octopus/ad/utils/b/h;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    sget-object v0, Lcom/octopus/ad/utils/b/h;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public d()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/octopus/ad/utils/b/h;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/octopus/ad/utils/b/j;->c()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/octopus/ad/utils/b/h;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    sget-object v0, Lcom/octopus/ad/utils/b/h;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public e()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/octopus/ad/utils/b/h;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/octopus/ad/utils/b/j;->d()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/octopus/ad/utils/b/h;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    sget-object v0, Lcom/octopus/ad/utils/b/h;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method
