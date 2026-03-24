.class public Lcom/octopus/ad/utils/b/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/octopus/ad/utils/b/j;->a:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/octopus/ad/utils/b/j;->b:I

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/octopus/ad/utils/b/j;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/octopus/ad/utils/b/j;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/octopus/ad/utils/b/j;->e:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/octopus/ad/utils/b/j;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method public static a()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/octopus/ad/utils/b/j;->b:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/octopus/ad/utils/b/j;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v7, Lcom/octopus/ad/utils/b/i;

    const/4 v0, 0x5

    const-string v1, "Octopus-adsdk-adrequest-thread-"

    invoke-direct {v7, v0, v1}, Lcom/octopus/ad/utils/b/i;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/octopus/ad/utils/b/j;->e()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v8

    const/4 v1, 0x2

    const-wide/16 v3, 0x5

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v9
.end method

.method public static b()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/octopus/ad/utils/b/j;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v7, Lcom/octopus/ad/utils/b/i;

    const/4 v0, 0x5

    const-string v1, "Octopus-adsdk-heartbeat-thread-"

    invoke-direct {v7, v0, v1}, Lcom/octopus/ad/utils/b/i;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/octopus/ad/utils/b/j;->e()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v8

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-wide/16 v3, 0x5

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v9
.end method

.method public static c()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/octopus/ad/utils/b/j;->e:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v7, Lcom/octopus/ad/utils/b/i;

    const/4 v0, 0x5

    const-string v1, "Octopus-adsdk-file-log-upload-thread-"

    invoke-direct {v7, v0, v1}, Lcom/octopus/ad/utils/b/i;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/octopus/ad/utils/b/j;->e()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v8

    const/4 v1, 0x2

    const/4 v2, 0x6

    const-wide/16 v3, 0x14

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v9
.end method

.method public static d()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/octopus/ad/utils/b/j;->b:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/octopus/ad/utils/b/j;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v7, Lcom/octopus/ad/utils/b/i;

    const/4 v0, 0x5

    const-string v1, "afIt-"

    invoke-direct {v7, v0, v1}, Lcom/octopus/ad/utils/b/i;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/octopus/ad/utils/b/j;->e()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v8

    const/4 v1, 0x2

    const-wide/16 v3, 0x14

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v9
.end method

.method public static e()Ljava/util/concurrent/RejectedExecutionHandler;
    .locals 1

    new-instance v0, Lcom/octopus/ad/utils/b/j$1;

    invoke-direct {v0}, Lcom/octopus/ad/utils/b/j$1;-><init>()V

    return-object v0
.end method
