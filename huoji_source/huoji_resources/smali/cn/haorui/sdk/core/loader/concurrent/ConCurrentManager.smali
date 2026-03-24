.class public Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/loader/concurrent/a;


# static fields
.field private static final TAG:Ljava/lang/String; = "ConCurrentManager"


# instance fields
.field private HRAdInfo:Lcn/haorui/sdk/core/domain/HRAdInfo;

.field private adDelegate:Lcn/haorui/sdk/core/loader/d;

.field private adLoader:Lcn/haorui/sdk/core/loader/b;

.field private allList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/loader/loadbean/a;",
            ">;"
        }
    .end annotation
.end field

.field private cacheList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/loader/cache/a;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private groupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/loader/loadbean/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private isAdError:Z

.field private isAdFinished:Z

.field private loadCacheSuccess:Z

.field private loadStrategy:Lcn/haorui/sdk/core/loader/strategy/a;

.field private localParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private startTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/haorui/sdk/core/loader/b;Lcn/haorui/sdk/core/domain/HRAdInfo;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/haorui/sdk/core/loader/b;",
            "Lcn/haorui/sdk/core/domain/HRAdInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->cacheList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->allList:Ljava/util/List;

    iput-object p1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->context:Landroid/content/Context;

    iput-object p3, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->HRAdInfo:Lcn/haorui/sdk/core/domain/HRAdInfo;

    iput-object p4, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->localParams:Ljava/util/Map;

    iput-object p2, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adLoader:Lcn/haorui/sdk/core/loader/b;

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/loader/b;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adLoader:Lcn/haorui/sdk/core/loader/b;

    return-object p0
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->handleSplashAd(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->handleLoadMeshu(Z)V

    return-void
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/domain/HRAdInfo;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->HRAdInfo:Lcn/haorui/sdk/core/domain/HRAdInfo;

    return-object p0
.end method

.method public static synthetic access$400(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->cacheList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$500(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->loadCacheSuccess:Z

    return p0
.end method

.method public static synthetic access$502(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->loadCacheSuccess:Z

    return p1
.end method

.method public static synthetic access$600(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/loader/strategy/a;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->loadStrategy:Lcn/haorui/sdk/core/loader/strategy/a;

    return-object p0
.end method

.method private generateRandom8Num()I
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    const-wide v2, 0x416312d000000000L    # 1.0E7

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private getCacheList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/loader/loadbean/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->HRAdInfo:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->HRAdInfo:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCache()I

    move-result v2

    if-lez v2, :cond_1

    sget-object v2, Lcn/haorui/sdk/core/loader/cache/CacheManager;->INSTANCE:Lcn/haorui/sdk/core/loader/cache/CacheManager;

    invoke-virtual {v2, v1}, Lcn/haorui/sdk/core/loader/cache/CacheManager;->getCacheListByKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/haorui/sdk/core/loader/cache/a;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/loader/cache/a;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcn/haorui/sdk/core/loader/loadbean/a;

    invoke-direct {v3}, Lcn/haorui/sdk/core/loader/loadbean/a;-><init>()V

    iget-object v4, v2, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    iput-object v4, v3, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    iget-object v4, v2, Lcn/haorui/sdk/core/loader/cache/a;->d:Ljava/lang/Object;

    iput-object v4, v3, Lcn/haorui/sdk/core/loader/loadbean/a;->b:Ljava/lang/Object;

    iget v4, v2, Lcn/haorui/sdk/core/loader/cache/a;->c:I

    iput v4, v3, Lcn/haorui/sdk/core/loader/loadbean/a;->f:I

    const/4 v4, 0x2

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput v4, v3, Lcn/haorui/sdk/core/loader/loadbean/a;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    iget-boolean v2, v2, Lcn/haorui/sdk/core/loader/cache/a;->e:Z

    iput-boolean v2, v3, Lcn/haorui/sdk/core/loader/loadbean/a;->g:Z

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcn/haorui/sdk/core/loader/loadbean/a;->h:Z

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method private getGroupList([Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcn/haorui/sdk/core/domain/SdkAdInfo;",
            "Lcn/haorui/sdk/core/domain/HRAdInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/loader/loadbean/a;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getSdk_monitor()Lcn/haorui/sdk/core/domain/SdkMonitor;

    move-result-object p2

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-direct {p0}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->generateRandom8Num()I

    move-result v4

    invoke-virtual {v3, v4}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setReq_uid(I)V

    if-eqz p2, :cond_0

    invoke-direct {p0, v3, p2}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->restoreMonitor(Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/SdkMonitor;)V

    :cond_0
    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setCache_req(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setCache_clk(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setCache_err(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getImp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setCache_imp(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getRsp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setCache_rsp(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->replaceUUid(Lcn/haorui/sdk/core/domain/SdkAdInfo;)V

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getRsp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setFinalRsp(Ljava/lang/String;)V

    new-instance v4, Lcn/haorui/sdk/core/loader/loadbean/a;

    invoke-direct {v4}, Lcn/haorui/sdk/core/loader/loadbean/a;-><init>()V

    iput-object v3, v4, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getPriority()I

    move-result v5

    rsub-int v5, v5, 0x3e8

    const v6, 0xf4240

    mul-int v5, v5, v6

    iput v5, v4, Lcn/haorui/sdk/core/loader/loadbean/a;->e:I

    iget-object v5, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->allList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "null_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object v0
.end method

.method private handleCache([Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Z
    .locals 7

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCache()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    sget-object v1, Lcn/haorui/sdk/core/loader/cache/CacheManager;->INSTANCE:Lcn/haorui/sdk/core/loader/cache/CacheManager;

    invoke-virtual {v1, v0}, Lcn/haorui/sdk/core/loader/cache/CacheManager;->getFirstEntity(Ljava/lang/String;)Lcn/haorui/sdk/core/loader/cache/a;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Lcn/haorui/sdk/core/loader/cache/CacheManager;->getFirstEntity(Ljava/lang/String;)Lcn/haorui/sdk/core/loader/cache/a;

    :cond_0
    sget-object v1, Lcn/haorui/sdk/core/loader/cache/CacheManager;->INSTANCE:Lcn/haorui/sdk/core/loader/cache/CacheManager;

    invoke-virtual {v1, v0}, Lcn/haorui/sdk/core/loader/cache/CacheManager;->getCacheListByKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v0}, Lcn/haorui/sdk/core/loader/cache/CacheManager;->getCacheListByKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v1, v0}, Lcn/haorui/sdk/core/loader/cache/CacheManager;->getFirstEntity(Ljava/lang/String;)Lcn/haorui/sdk/core/loader/cache/a;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcn/haorui/sdk/core/loader/cache/a;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adDelegate:Lcn/haorui/sdk/core/loader/d;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    iget v4, v3, Lcn/haorui/sdk/core/loader/cache/a;->c:I

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCacheScore()I

    move-result v6

    if-gt v4, v6, :cond_1

    iput-boolean v5, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->isAdFinished:Z

    invoke-virtual {p2, v5}, Lcn/haorui/sdk/core/domain/HRAdInfo;->setUsed(Z)V

    invoke-direct {p0, v2}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->handleLoadMeshu(Z)V

    return v5

    :cond_1
    invoke-virtual {v1, v0}, Lcn/haorui/sdk/core/loader/cache/CacheManager;->removeFirstEntity(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->loadCacheSuccess(Lcn/haorui/sdk/core/loader/cache/a;)V

    if-nez p1, :cond_3

    invoke-direct {p0, v5}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->handleLoadMeshu(Z)V

    return v5

    :cond_2
    sget-object p1, Lcn/haorui/sdk/core/loader/cache/CacheManager;->INSTANCE:Lcn/haorui/sdk/core/loader/cache/CacheManager;

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/loader/cache/CacheManager;->remove(Ljava/lang/String;)V

    :cond_3
    return v2
.end method

.method private handleLoadMeshu(Z)V
    .locals 8

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adDelegate:Lcn/haorui/sdk/core/loader/d;

    const-string v1, "ConCurrentManager"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->HRAdInfo:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getResponUrl()[Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    const-string v2, "send onAdLoaded"

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adLoader:Lcn/haorui/sdk/core/loader/b;

    iget-wide v6, v6, Lcn/haorui/sdk/core/loader/b;->startLoadTime:J

    sub-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceFinalLoadedMacros(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v5}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v4, v3, v5}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adDelegate:Lcn/haorui/sdk/core/loader/d;

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->localParams:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcn/haorui/sdk/core/loader/d;->setLocalParams(Ljava/util/Map;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adDelegate:Lcn/haorui/sdk/core/loader/d;

    new-instance v1, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;

    invoke-direct {v1, p0, p1}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;-><init>(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;Z)V

    invoke-interface {v0, v1}, Lcn/haorui/sdk/core/loader/d;->setConCurrentLoadListener(Lcn/haorui/sdk/core/loader/concurrent/IConCurrentLoadListener;)V

    iget-object p1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adDelegate:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {p1}, Lcn/haorui/sdk/core/loader/IAdLoader;->loadAd()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adLoader:Lcn/haorui/sdk/core/loader/b;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->isAdError:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->isAdError:Z

    const-string p1, "no HR ad,load error"

    invoke-static {v1, p1}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adLoader:Lcn/haorui/sdk/core/loader/b;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdError()V

    :cond_3
    :goto_1
    return-void
.end method

.method private handleSplashAd(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Lcn/haorui/sdk/core/ad/splash/SplashAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->localParams:Ljava/util/Map;

    const-string v1, "KEY_AUTO_SHOW"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adLoader:Lcn/haorui/sdk/core/loader/b;

    instance-of v1, v0, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;

    if-eqz v1, :cond_0

    check-cast p1, Lcn/haorui/sdk/core/ad/splash/SplashAd;

    check-cast v0, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/ad/splash/ISplashAd;->showAd(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method private handleTimeout()V
    .locals 5

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->HRAdInfo:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getAll_timeout()J

    move-result-wide v0

    iget-object v2, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adLoader:Lcn/haorui/sdk/core/loader/b;

    instance-of v3, v2, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;

    if-eqz v3, :cond_0

    check-cast v2, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;->getFetchDelay()I

    move-result v2

    if-ltz v2, :cond_0

    int-to-long v2, v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->HRAdInfo:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v0, v2, v3}, Lcn/haorui/sdk/core/domain/HRAdInfo;->setAll_timeout(J)V

    :cond_0
    return-void
.end method

.method private declared-synchronized loadBigGroup()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->groupList:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Lcn/haorui/sdk/core/loader/strategy/c;

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adLoader:Lcn/haorui/sdk/core/loader/b;

    iget-object v2, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->HRAdInfo:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-direct {v0, v1, v2}, Lcn/haorui/sdk/core/loader/strategy/c;-><init>(Lcn/haorui/sdk/core/loader/b;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    iput-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->loadStrategy:Lcn/haorui/sdk/core/loader/strategy/a;

    iget-boolean v1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->loadCacheSuccess:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iput-boolean v2, v0, Lcn/haorui/sdk/core/loader/strategy/c;->o:Z

    :cond_1
    iput-object p0, v0, Lcn/haorui/sdk/core/loader/strategy/c;->i:Lcn/haorui/sdk/core/loader/concurrent/a;

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->groupList:Ljava/util/List;

    iget-object v3, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->allList:Ljava/util/List;

    iget-object v4, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->localParams:Ljava/util/Map;

    iget-wide v5, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->startTime:J

    iput-object v3, v0, Lcn/haorui/sdk/core/loader/strategy/c;->f:Ljava/util/List;

    iput-object v4, v0, Lcn/haorui/sdk/core/loader/strategy/c;->g:Ljava/util/Map;

    iput-object v1, v0, Lcn/haorui/sdk/core/loader/strategy/c;->e:Ljava/util/List;

    iget-object v3, v0, Lcn/haorui/sdk/core/loader/strategy/c;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    iput v3, v0, Lcn/haorui/sdk/core/loader/strategy/c;->d:I

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, v0, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/HRAdInfo;->isHasAdSailAd()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/HRAdInfo;->isUsed()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lcn/haorui/sdk/core/loader/loadbean/a;

    invoke-direct {v3}, Lcn/haorui/sdk/core/loader/loadbean/a;-><init>()V

    iget-object v4, v0, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v4}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPriority()I

    move-result v4

    rsub-int v4, v4, 0x3e8

    const v7, 0xf4240

    mul-int v4, v4, v7

    iput v4, v3, Lcn/haorui/sdk/core/loader/loadbean/a;->e:I

    iget-object v4, v0, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v4}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCacheScore()I

    move-result v4

    iput v4, v3, Lcn/haorui/sdk/core/loader/loadbean/a;->f:I

    const/4 v4, 0x2

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput v4, v3, Lcn/haorui/sdk/core/loader/loadbean/a;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    iput-boolean v2, v3, Lcn/haorui/sdk/core/loader/loadbean/a;->g:Z

    iget-object v2, v0, Lcn/haorui/sdk/core/loader/strategy/c;->f:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    :goto_0
    iget v2, v0, Lcn/haorui/sdk/core/loader/strategy/c;->d:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-wide v5, v0, Lcn/haorui/sdk/core/loader/strategy/c;->k:J

    iget-object v2, v0, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getAll_timeout()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_4

    const-wide/16 v2, 0x2710

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getAll_timeout()J

    move-result-wide v2

    :goto_1
    iput-wide v2, v0, Lcn/haorui/sdk/core/loader/strategy/c;->p:J

    :cond_5
    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/loader/strategy/c;->a(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    :cond_7
    :goto_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadCacheSuccess(Lcn/haorui/sdk/core/loader/cache/a;)V
    .locals 13

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->isAdFinished:Z

    iput-boolean v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->loadCacheSuccess:Z

    iget-object v0, p1, Lcn/haorui/sdk/core/loader/cache/a;->d:Ljava/lang/Object;

    new-instance v1, Lcn/haorui/sdk/core/loader/cache/b;

    invoke-direct {v1}, Lcn/haorui/sdk/core/loader/cache/b;-><init>()V

    iget-object v2, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->HRAdInfo:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adLoader:Lcn/haorui/sdk/core/loader/b;

    iget-wide v4, v4, Lcn/haorui/sdk/core/loader/b;->startLoadTime:J

    iget-object v6, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->HRAdInfo:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v6}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getSdk_monitor()Lcn/haorui/sdk/core/domain/SdkMonitor;

    move-result-object v6

    :try_start_0
    iget-boolean v7, p1, Lcn/haorui/sdk/core/loader/cache/a;->e:Z

    if-eqz v7, :cond_2

    iget-object v6, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v6}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getResponUrl()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    array-length v7, v6

    if-lez v7, :cond_1

    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v10}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v3, v10}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceUUIDMacros(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-static {v9, v10, v11}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceFinalLoadedMacros(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v10}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v2, v9, v10}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getMonitorUrl()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcn/haorui/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getClickUrl()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcn/haorui/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDn_active()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcn/haorui/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDn_inst_start()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcn/haorui/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDn_inst_succ()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcn/haorui/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDn_start()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcn/haorui/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDn_succ()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcn/haorui/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getErrorUrl()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcn/haorui/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_complete()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcn/haorui/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_mute()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcn/haorui/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_one_half()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcn/haorui/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_one_quarter()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcn/haorui/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_pause()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcn/haorui/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_replay()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcn/haorui/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_resume()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcn/haorui/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_start()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcn/haorui/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_three_quarter()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcn/haorui/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_unmute()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcn/haorui/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDp_fail()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcn/haorui/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDp_start()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcn/haorui/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDp_succ()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcn/haorui/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getWx_fail()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcn/haorui/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getWx_start()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcn/haorui/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getWx_succ()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcn/haorui/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    goto/16 :goto_e

    :cond_2
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcn/haorui/sdk/core/domain/SdkMonitor;->getReq()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Lcn/haorui/sdk/core/domain/SdkMonitor;->getReq()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v1, v8, v7}, Lcn/haorui/sdk/core/loader/cache/b;->a(Lcn/haorui/sdk/core/domain/SdkAdInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v8}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v3, v8}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceUUIDMacros(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v8}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v7, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v7}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getCache_req()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v8}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v3, v8}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceUUIDMacros(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v8}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    :goto_2
    invoke-static {v2, v7, v8}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "__PST__"

    const-string v8, "__S__"

    const-string v9, "__PRICE__"

    if-eqz v6, :cond_6

    :try_start_1
    invoke-virtual {v6}, Lcn/haorui/sdk/core/domain/SdkMonitor;->getRsp()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Lcn/haorui/sdk/core/domain/SdkMonitor;->getRsp()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->get_price()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->get_s()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v1, v11, v10}, Lcn/haorui/sdk/core/loader/cache/b;->a(Lcn/haorui/sdk/core/domain/SdkAdInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->get_pst()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v12}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v3, v12}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceUUIDMacros(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v12}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v3, v12}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceUUIDMacros(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v11}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v12}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v2, v11, v12}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v4

    invoke-static {v10, v11, v12}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceFinalLoadedMacros(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v5}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    goto :goto_4

    :cond_6
    :goto_3
    iget-object v10, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v10}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getCache_rsp()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v3, v11}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceUUIDMacros(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v11}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v2, v10, v11}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    iget-object v10, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v10}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getFinalRsp()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v3, v11}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceUUIDMacros(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v4

    invoke-static {v10, v11, v12}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceFinalLoadedMacros(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v5}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    :goto_4
    invoke-static {v2, v4, v5}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "__PRE__"

    const/4 v4, 0x2

    const-string v5, "ssp"

    if-eqz v6, :cond_8

    :try_start_2
    invoke-virtual {v6}, Lcn/haorui/sdk/core/domain/SdkMonitor;->getImp()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v6}, Lcn/haorui/sdk/core/domain/SdkMonitor;->getImp()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v1, v11, v10}, Lcn/haorui/sdk/core/loader/cache/b;->a(Lcn/haorui/sdk/core/domain/SdkAdInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getEcpm()I

    move-result v11

    mul-int/lit8 v11, v11, 0xa

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-static {v11, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getPre()I

    move-result v11

    mul-int/lit8 v11, v11, 0xa

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-static {v11, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    :goto_5
    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :cond_8
    :goto_6
    iget-object v10, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v10}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getCache_imp()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    goto :goto_5

    :goto_7
    invoke-static {v10, v3, v11}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceUUIDMacros(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v11, v10}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setImp(Ljava/lang/String;)V

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcn/haorui/sdk/core/domain/SdkMonitor;->getClk()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    goto/16 :goto_9

    :cond_9
    invoke-virtual {v6}, Lcn/haorui/sdk/core/domain/SdkMonitor;->getClk()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->get_price()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->get_s()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->get_pst()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v11

    mul-int/lit8 v11, v11, 0xa

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-static {v11, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getPre()I

    move-result v11

    mul-int/lit8 v11, v11, 0xa

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v4}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceUUIDMacros(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v1, v4, v2}, Lcn/haorui/sdk/core/loader/cache/b;->a(Lcn/haorui/sdk/core/domain/SdkAdInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    :goto_8
    invoke-virtual {v4}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_a
    :goto_9
    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getCache_clk()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    goto :goto_8

    :goto_a
    invoke-static {v2, v3, v4}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceUUIDMacros(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v4, v2}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setClk(Ljava/lang/String;)V

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lcn/haorui/sdk/core/domain/SdkMonitor;->getErr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_c

    :cond_b
    invoke-virtual {v6}, Lcn/haorui/sdk/core/domain/SdkMonitor;->getErr()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v4}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->get_price()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v4}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->get_s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v4}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->get_err_pst()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v4}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->get_err_pst()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_c
    iget-object v4, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v1, v4, v2}, Lcn/haorui/sdk/core/loader/cache/b;->a(Lcn/haorui/sdk/core/domain/SdkAdInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    :goto_b
    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_d
    :goto_c
    iget-object v1, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getCache_err()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    goto :goto_b

    :goto_d
    invoke-static {v1, v3, v2}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceUUIDMacros(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v2, v1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setErr(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_e

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    iget-object v1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adLoader:Lcn/haorui/sdk/core/loader/b;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adLoader:Lcn/haorui/sdk/core/loader/b;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adLoader:Lcn/haorui/sdk/core/loader/b;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    instance-of v1, v0, Lcn/haorui/sdk/core/ad/BaseAd;

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Lcn/haorui/sdk/core/ad/BaseAd;

    new-instance v2, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$a;

    invoke-direct {v2, p0, p1}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$a;-><init>(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;Lcn/haorui/sdk/core/loader/cache/a;)V

    invoke-virtual {v1, v2}, Lcn/haorui/sdk/core/ad/BaseAd;->setCacheAdListener(Lcn/haorui/sdk/core/loader/cache/c;)V

    :cond_e
    iget-object p1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$b;

    invoke-direct {v1, p0, v0}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$b;-><init>(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_f
    return-void
.end method

.method private replaceMonitor(Lcn/haorui/sdk/core/domain/SdkAdInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "__ACCEPT_ID__"

    const-string v1, "__STRATEGY_DEALID__"

    const-string v2, "__ACCEPT_APPID__"

    const-string v3, "__ACCEPT_PID__"

    const-string v4, "__SDK__"

    const-string v5, "__GROUP_ID__"

    const-string v6, "__P__"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getAccept_id()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getAccept_id()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getStrategy_dealid()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getStrategy_dealid()Ljava/lang/String;

    move-result-object v4

    :goto_1
    aput-object v4, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getApp_id()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, v3

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getApp_id()Ljava/lang/String;

    move-result-object v4

    :goto_2
    aput-object v4, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v4, v3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    move-result-object v4

    :goto_3
    aput-object v4, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    move-object v4, v3

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v4

    :goto_4
    aput-object v4, v1, v2

    const/4 v2, 0x5

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getGroup_id()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getGroup_id()Ljava/lang/String;

    move-result-object v3

    :goto_5
    aput-object v3, v1, v2

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x6

    aput-object p1, v1, v2

    invoke-static {p2, v0, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private replaceUUid(Lcn/haorui/sdk/core/domain/SdkAdInfo;)V
    .locals 3

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->HRAdInfo:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__UUID__"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setReq(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getRsp()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->HRAdInfo:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setRsp(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->HRAdInfo:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setClk(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->HRAdInfo:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setErr(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getImp()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->HRAdInfo:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setImp(Ljava/lang/String;)V

    return-void
.end method

.method private restoreMonitor(Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/SdkMonitor;)V
    .locals 10

    const-string v0, "__PRICE__"

    const-string v1, "__PRE__"

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getAccept_id()Ljava/lang/String;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getStrategy_dealid()Ljava/lang/String;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/SdkMonitor;->getClk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/SdkMonitor;->getErr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/SdkMonitor;->getImp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/SdkMonitor;->getReq()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/SdkMonitor;->getRsp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x2

    const-string v8, "ssp"

    if-eqz v6, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getPre()I

    move-result v6

    mul-int/lit8 v6, v6, 0xa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-direct {p0, p1, v2}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->replaceMonitor(Lcn/haorui/sdk/core/domain/SdkAdInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setClk(Ljava/lang/String;)V

    invoke-direct {p0, p1, v3}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->replaceMonitor(Lcn/haorui/sdk/core/domain/SdkAdInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setErr(Ljava/lang/String;)V

    invoke-direct {p0, p1, v4}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->replaceMonitor(Lcn/haorui/sdk/core/domain/SdkAdInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setImp(Ljava/lang/String;)V

    invoke-direct {p0, p1, v5}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->replaceMonitor(Lcn/haorui/sdk/core/domain/SdkAdInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setReq(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->replaceMonitor(Lcn/haorui/sdk/core/domain/SdkAdInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setRsp(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public cacheApi()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$d;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$d;-><init>(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->loadStrategy:Lcn/haorui/sdk/core/loader/strategy/a;

    if-eqz v0, :cond_3

    check-cast v0, Lcn/haorui/sdk/core/loader/strategy/c;

    iget-object v1, v0, Lcn/haorui/sdk/core/loader/strategy/c;->j:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, v0, Lcn/haorui/sdk/core/loader/strategy/c;->q:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, v0, Lcn/haorui/sdk/core/loader/strategy/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/haorui/sdk/core/loader/d;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcn/haorui/sdk/core/loader/IAdLoader;->destroy()V

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcn/haorui/sdk/core/loader/strategy/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adDelegate:Lcn/haorui/sdk/core/loader/d;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/IAdLoader;->destroy()V

    :cond_4
    return-void
.end method

.method public declared-synchronized filterAd([Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->startTime:J

    invoke-direct {p0}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->handleTimeout()V

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->getGroupList([Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->groupList:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->handleCache([Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Z

    invoke-direct {p0}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->loadBigGroup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public loadMeshuAd()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->HRAdInfo:Lcn/haorui/sdk/core/domain/HRAdInfo;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->handleCache([Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->handleLoadMeshu(Z)V

    :cond_0
    return-void
.end method

.method public onAllError()V
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->isAdFinished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->isAdFinished:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->handleLoadMeshu(Z)V

    return-void
.end method

.method public onFinalAdLoaded(Ljava/lang/Object;Lcn/haorui/sdk/core/domain/SdkAdInfo;)V
    .locals 4

    iget-boolean v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->isAdFinished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->isAdFinished:Z

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getFinalRsp()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__TIMEOUT__"

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adLoader:Lcn/haorui/sdk/core/loader/b;

    iget-wide v2, v2, Lcn/haorui/sdk/core/loader/b;->startLoadTime:J

    sub-long/2addr v0, v2

    invoke-static {p2, v0, v1}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceFinalLoadedMacros(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adLoader:Lcn/haorui/sdk/core/loader/b;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v1}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v0, p2, v1}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    iget-object p2, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adLoader:Lcn/haorui/sdk/core/loader/b;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adLoader:Lcn/haorui/sdk/core/loader/b;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    :cond_1
    iget-boolean p2, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->loadCacheSuccess:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$c;

    invoke-direct {v0, p0, p1}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$c;-><init>(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public onRenderFail(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adLoader:Lcn/haorui/sdk/core/loader/b;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->loadCacheSuccess:Z

    if-nez v0, :cond_0

    const-string v0, "ConCurrentManager"

    const-string v1, "onRenderFail"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adLoader:Lcn/haorui/sdk/core/loader/b;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onRenderSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adLoader:Lcn/haorui/sdk/core/loader/b;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->loadCacheSuccess:Z

    if-nez v0, :cond_0

    const-string v0, "ConCurrentManager"

    const-string v1, "onAdReady"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adLoader:Lcn/haorui/sdk/core/loader/b;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setAdDelegate(Lcn/haorui/sdk/core/loader/d;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->adDelegate:Lcn/haorui/sdk/core/loader/d;

    return-void
.end method
