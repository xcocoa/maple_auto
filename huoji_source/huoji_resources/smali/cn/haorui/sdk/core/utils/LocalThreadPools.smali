.class public Lcn/haorui/sdk/core/utils/LocalThreadPools;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/core/utils/LocalThreadPools$c;,
        Lcn/haorui/sdk/core/utils/LocalThreadPools$b;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE_SECONDS:I = 0xa

.field private static final MAXIMUM_POOL_SIZE:I

.field private static THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcn/haorui/sdk/core/utils/LocalThreadPools;->CPU_COUNT:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lcn/haorui/sdk/core/utils/LocalThreadPools;->CORE_POOL_SIZE:I

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "HUAWEI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xf

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    :goto_0
    sput v0, Lcn/haorui/sdk/core/utils/LocalThreadPools;->MAXIMUM_POOL_SIZE:I

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcn/haorui/sdk/core/utils/LocalThreadPools;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcn/haorui/sdk/core/utils/LocalThreadPools;->initThreadPool()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/haorui/sdk/core/utils/LocalThreadPools$a;)V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/core/utils/LocalThreadPools;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/haorui/sdk/core/utils/LocalThreadPools;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/LocalThreadPools$c;->a:Lcn/haorui/sdk/core/utils/LocalThreadPools;

    return-object v0
.end method

.method private initThreadPool()V
    .locals 9

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Lcn/haorui/sdk/core/utils/LocalThreadPools;->CORE_POOL_SIZE:I

    sget v2, Lcn/haorui/sdk/core/utils/LocalThreadPools;->MAXIMUM_POOL_SIZE:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcn/haorui/sdk/core/utils/LocalThreadPools;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v7, Lcn/haorui/sdk/core/utils/LocalThreadPools$b;

    invoke-direct {v7, p0}, Lcn/haorui/sdk/core/utils/LocalThreadPools$b;-><init>(Lcn/haorui/sdk/core/utils/LocalThreadPools;)V

    const-wide/16 v3, 0xa

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sput-object v8, Lcn/haorui/sdk/core/utils/LocalThreadPools;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/LocalThreadPools;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
