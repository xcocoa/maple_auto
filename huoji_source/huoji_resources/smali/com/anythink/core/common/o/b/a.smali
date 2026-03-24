.class public Lcom/anythink/core/common/o/b/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/o/b/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "TaskBusinessThreads"


# instance fields
.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private volatile e:Ljava/util/concurrent/ExecutorService;

.field private volatile f:Ljava/util/concurrent/ExecutorService;

.field private final g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/o/b/a;->g:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lcom/anythink/core/common/o/b/c;

    invoke-direct {v8}, Lcom/anythink/core/common/o/b/c;-><init>()V

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x1e

    move-object v1, v0

    move-object v6, v10

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/anythink/core/common/o/b/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v3, v0, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "create limit thread pool: corePoolSize = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " maxPoolSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v7, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v8, Lcom/anythink/core/common/o/b/c;

    invoke-direct {v8}, Lcom/anythink/core/common/o/b/c;-><init>()V

    new-instance v9, Lcom/anythink/core/common/o/b/a$a;

    const/4 v11, 0x0

    invoke-direct {v9, p0, v11}, Lcom/anythink/core/common/o/b/a$a;-><init>(Lcom/anythink/core/common/o/b/a;B)V

    const-wide/16 v4, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/anythink/core/common/o/b/a;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/anythink/core/common/o/b/c;

    invoke-direct {v8}, Lcom/anythink/core/common/o/b/c;-><init>()V

    new-instance v9, Lcom/anythink/core/common/o/b/a$a;

    invoke-direct {v9, p0, v11}, Lcom/anythink/core/common/o/b/a$a;-><init>(Lcom/anythink/core/common/o/b/a;B)V

    const/4 v2, 0x0

    const/4 v3, 0x5

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/anythink/core/common/o/b/a;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/os/Handler;
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/core/common/o/b/a;->b(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic a(Lcom/anythink/core/common/o/b/a;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/o/b/a;->b:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method private static a()V
    .locals 0

    return-void
.end method

.method private a(Lcom/anythink/core/common/o/b/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/anythink/core/common/o/b/a;->b(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)Landroid/os/Handler;
    .locals 6

    iget-object v0, p0, Lcom/anythink/core/common/o/b/a;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-nez v0, :cond_0

    const-class v1, Lcom/anythink/core/common/o/b/a;

    monitor-enter v1

    :try_start_0
    new-instance v2, Landroid/os/HandlerThread;

    invoke-direct {v2, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/HandlerThread;->setPriority(I)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "create handler thread: curThreadId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " curThreadName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/o/b/a;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v3

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getHandler failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_0
    :goto_2
    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default_thread_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "single_pool_save_request_failed_info"

    goto :goto_0

    :pswitch_1
    const-string v0, "handler_shared_placement"

    goto :goto_0

    :pswitch_2
    const-string v0, "handler_application_lifecycle"

    goto :goto_0

    :pswitch_3
    const-string v0, "limit_pool_on_sub_thread"

    goto :goto_0

    :pswitch_4
    const-string v0, "handler_timeout"

    goto :goto_0

    :pswitch_5
    const-string v0, "handler_placement_statistics"

    goto :goto_0

    :pswitch_6
    const-string v0, "normal_pool_http_request"

    goto :goto_0

    :pswitch_7
    const-string v0, "handler_agent_tk"

    goto :goto_0

    :pswitch_8
    const-string v0, "handler_agent_event"

    goto :goto_0

    :pswitch_9
    const-string v0, "limit_pool_sdk_init"

    goto :goto_0

    :pswitch_a
    const-string v0, "normal_pool_network_request"

    goto :goto_0

    :pswitch_b
    const-string v0, "single_pool_preload_task"

    goto :goto_0

    :pswitch_c
    const-string v0, "image_poll"

    goto :goto_0

    :pswitch_d
    const-string v0, "handler_tcp_log"

    goto :goto_0

    :pswitch_e
    const-string v0, "normal_pool"

    goto :goto_0

    :pswitch_f
    const-string v0, "single_pool"

    :goto_0
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "anythink"

    aput-object v2, p0, v1

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "%s_type_%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/os/Handler;
    .locals 0

    invoke-static {p1}, Lcom/anythink/core/common/o/b/a;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anythink/core/common/o/b/a;->b(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/anythink/core/common/o/b/d;I)V
    .locals 9

    const-class v0, Lcom/anythink/core/common/o/b/a;

    invoke-static {p2}, Lcom/anythink/core/common/o/b/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/anythink/core/common/o/b/d;->a(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eq p2, v2, :cond_7

    const/16 v2, 0xd

    if-eq p2, v2, :cond_6

    const/16 v2, 0x10

    if-eq p2, v2, :cond_3

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    const/4 v2, 0x4

    if-eq p2, v2, :cond_0

    const/4 v2, 0x5

    if-eq p2, v2, :cond_7

    const/4 v0, 0x7

    if-eq p2, v0, :cond_6

    const/16 v0, 0x8

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lcom/anythink/core/common/o/b/a;->b:Ljava/util/concurrent/ExecutorService;

    :goto_0
    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/anythink/core/common/o/b/a;->d:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/anythink/core/common/o/b/a;->b(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :cond_3
    iget-object p2, p0, Lcom/anythink/core/common/o/b/a;->f:Ljava/util/concurrent/ExecutorService;

    if-nez p2, :cond_5

    monitor-enter v0

    :try_start_0
    iget-object p2, p0, Lcom/anythink/core/common/o/b/a;->f:Ljava/util/concurrent/ExecutorService;

    if-nez p2, :cond_4

    new-instance p2, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/anythink/core/common/o/b/c;

    invoke-direct {v8}, Lcom/anythink/core/common/o/b/c;-><init>()V

    move-object v1, p2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p2, p0, Lcom/anythink/core/common/o/b/a;->f:Ljava/util/concurrent/ExecutorService;

    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/anythink/core/common/o/b/a;->f:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :cond_6
    iget-object p2, p0, Lcom/anythink/core/common/o/b/a;->c:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :cond_7
    iget-object p2, p0, Lcom/anythink/core/common/o/b/a;->e:Ljava/util/concurrent/ExecutorService;

    if-nez p2, :cond_9

    monitor-enter v0

    :try_start_1
    iget-object p2, p0, Lcom/anythink/core/common/o/b/a;->e:Ljava/util/concurrent/ExecutorService;

    if-nez p2, :cond_8

    new-instance p2, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/anythink/core/common/o/b/c;

    invoke-direct {v8}, Lcom/anythink/core/common/o/b/c;-><init>()V

    move-object v1, p2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p2, p0, Lcom/anythink/core/common/o/b/a;->e:Ljava/util/concurrent/ExecutorService;

    :cond_8
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_9
    :goto_2
    iget-object p2, p0, Lcom/anythink/core/common/o/b/a;->e:Ljava/util/concurrent/ExecutorService;

    goto :goto_0
.end method
