.class public Lcn/haorui/sdk/core/loader/strategy/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/haorui/sdk/core/loader/strategy/c;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/loader/strategy/c;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/loader/strategy/e;->a:Lcn/haorui/sdk/core/loader/strategy/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/e;->a:Lcn/haorui/sdk/core/loader/strategy/c;

    iget-object v0, v0, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCache()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/e;->a:Lcn/haorui/sdk/core/loader/strategy/c;

    iget-object v0, v0, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/strategy/e;->a:Lcn/haorui/sdk/core/loader/strategy/c;

    iget-object v1, v1, Lcn/haorui/sdk/core/loader/strategy/c;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcn/haorui/sdk/core/loader/strategy/e;->a:Lcn/haorui/sdk/core/loader/strategy/c;

    iget-object v2, v2, Lcn/haorui/sdk/core/loader/strategy/c;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcn/haorui/sdk/core/loader/strategy/e;->a:Lcn/haorui/sdk/core/loader/strategy/c;

    iget-boolean v2, v2, Lcn/haorui/sdk/core/loader/strategy/c;->o:Z

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcn/haorui/sdk/core/loader/strategy/e;->a:Lcn/haorui/sdk/core/loader/strategy/c;

    iget-object v2, v2, Lcn/haorui/sdk/core/loader/strategy/c;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/haorui/sdk/core/loader/loadbean/a;

    iget-boolean v3, v2, Lcn/haorui/sdk/core/loader/loadbean/a;->g:Z

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcn/haorui/sdk/core/loader/strategy/e;->a:Lcn/haorui/sdk/core/loader/strategy/c;

    iget-object v2, v2, Lcn/haorui/sdk/core/loader/strategy/c;->i:Lcn/haorui/sdk/core/loader/concurrent/a;

    invoke-interface {v2}, Lcn/haorui/sdk/core/loader/concurrent/a;->cacheApi()V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcn/haorui/sdk/core/loader/strategy/e;->a:Lcn/haorui/sdk/core/loader/strategy/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    new-instance v5, Lcn/haorui/sdk/core/loader/cache/a;

    invoke-direct {v5}, Lcn/haorui/sdk/core/loader/cache/a;-><init>()V

    iget-object v6, v2, Lcn/haorui/sdk/core/loader/loadbean/a;->b:Ljava/lang/Object;

    iput-object v6, v5, Lcn/haorui/sdk/core/loader/cache/a;->d:Ljava/lang/Object;

    iget-object v6, v3, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    iput-object v6, v5, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setCache(Z)V

    iput-object v4, v5, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    iget-object v4, v3, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v4}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcn/haorui/sdk/core/loader/cache/a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/loader/loadbean/a;->a()I

    move-result v2

    iput v2, v5, Lcn/haorui/sdk/core/loader/cache/a;->c:I

    iget-object v2, v3, Lcn/haorui/sdk/core/loader/strategy/c;->c:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lcn/haorui/sdk/core/loader/cache/CacheManager;->INSTANCE:Lcn/haorui/sdk/core/loader/cache/CacheManager;

    iget-object v2, p0, Lcn/haorui/sdk/core/loader/strategy/e;->a:Lcn/haorui/sdk/core/loader/strategy/c;

    iget-object v3, v2, Lcn/haorui/sdk/core/loader/strategy/c;->c:Ljava/util/List;

    iget-object v2, v2, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCache()I

    move-result v2

    invoke-virtual {v1, v0, v3, v2}, Lcn/haorui/sdk/core/loader/cache/CacheManager;->handleCurrentList(Ljava/lang/String;Ljava/util/List;I)V

    :cond_3
    return-void
.end method
