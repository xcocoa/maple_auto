.class public Lcn/haorui/sdk/core/loader/strategy/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/loader/strategy/a;


# instance fields
.field public a:Lcn/haorui/sdk/core/loader/b;

.field public b:Lcn/haorui/sdk/core/domain/HRAdInfo;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/loader/cache/a;",
            ">;"
        }
    .end annotation
.end field

.field public volatile d:I

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/loader/loadbean/a;",
            ">;>;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/loader/loadbean/a;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:Lcn/haorui/sdk/core/loader/concurrent/a;

.field public j:Landroid/os/Handler;

.field public k:J

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/loader/loadbean/a;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/loader/loadbean/a;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/loader/loadbean/a;",
            ">;"
        }
    .end annotation
.end field

.field public o:Z

.field public p:J

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/haorui/sdk/core/loader/d;",
            ">;"
        }
    .end annotation
.end field

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/loader/b;Lcn/haorui/sdk/core/domain/HRAdInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->d:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->j:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->l:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->m:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->n:Ljava/util/List;

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->p:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->q:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/core/loader/strategy/c;->a:Lcn/haorui/sdk/core/loader/b;

    iput-object p2, p0, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-boolean v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->n:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/loader/loadbean/a;

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/strategy/c;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCache()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCache()I

    move-result v1

    if-lez v1, :cond_3

    iget-boolean v1, p0, Lcn/haorui/sdk/core/loader/strategy/c;->o:Z

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcn/haorui/sdk/core/loader/strategy/c;->i:Lcn/haorui/sdk/core/loader/concurrent/a;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/haorui/sdk/core/loader/strategy/c;->s:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u56de\u8c03adReady,\u6210\u529f\u7684\u5e73\u53f0\u4e3a\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", readyAd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcn/haorui/sdk/core/loader/loadbean/a;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PriceFirstStrategy"

    invoke-static {v2, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/strategy/c;->i:Lcn/haorui/sdk/core/loader/concurrent/a;

    iget-object v0, v0, Lcn/haorui/sdk/core/loader/loadbean/a;->b:Ljava/lang/Object;

    invoke-interface {v1, v0}, Lcn/haorui/sdk/core/loader/concurrent/a;->onRenderSuccess(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final a(Lcn/haorui/sdk/core/loader/loadbean/a;Lcn/haorui/sdk/core/loader/AdPlatformError;)V
    .locals 1

    monitor-enter p1

    const/4 v0, 0x3

    :try_start_0
    iput v0, p1, Lcn/haorui/sdk/core/loader/loadbean/a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    iget-object v0, p1, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v0, p2}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->replaceErrorPst(Lcn/haorui/sdk/core/loader/AdPlatformError;)V

    iget-object p2, p0, Lcn/haorui/sdk/core/loader/strategy/c;->f:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcn/haorui/sdk/core/loader/strategy/c;->g()V

    invoke-virtual {p0}, Lcn/haorui/sdk/core/loader/strategy/c;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/core/loader/strategy/c;->f()V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method public final a(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/loader/loadbean/a;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x2710

    const-wide/16 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v4}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getAll_timeout()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    iget-object v4, p0, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v4}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getAll_timeout()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    move-wide v4, v0

    :goto_0
    :try_start_1
    iget-object v6, p0, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v6}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getOnce_timeout()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-lez v8, :cond_1

    iget-object v6, p0, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v6}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getOnce_timeout()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    move-wide v10, v4

    move-object v4, v6

    move-wide v5, v10

    goto :goto_1

    :catch_1
    move-exception v4

    move-wide v5, v0

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v4, v5

    :cond_1
    :goto_2
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcn/haorui/sdk/core/loader/strategy/c;->k:J

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    cmp-long v6, v4, v2

    if-gtz v6, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_3
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->j:Landroid/os/Handler;

    new-instance v1, Lcn/haorui/sdk/core/loader/strategy/b;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/core/loader/strategy/b;-><init>(Lcn/haorui/sdk/core/loader/strategy/c;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/haorui/sdk/core/loader/loadbean/a;

    iget-object v3, v2, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    iget-object v4, p0, Lcn/haorui/sdk/core/loader/strategy/c;->a:Lcn/haorui/sdk/core/loader/b;

    invoke-virtual {v4}, Lcn/haorui/sdk/core/loader/b;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcn/haorui/sdk/core/AdSdk;->initSdkIfNot(Landroid/content/Context;Lcn/haorui/sdk/core/domain/SdkAdInfo;)V

    iget-object v4, p0, Lcn/haorui/sdk/core/loader/strategy/c;->a:Lcn/haorui/sdk/core/loader/b;

    iget-object v5, p0, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v4, v3, v5}, Lcn/haorui/sdk/core/loader/b;->createDelegate(Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v5, p0, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v5}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCache()I

    move-result v5

    const/4 v6, 0x1

    if-gtz v5, :cond_4

    iget-object v5, p0, Lcn/haorui/sdk/core/loader/strategy/c;->l:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcn/haorui/sdk/core/loader/strategy/c;->l:Ljava/util/List;

    new-instance v7, Lcn/haorui/sdk/core/loader/strategy/f;

    invoke-direct {v7, p0}, Lcn/haorui/sdk/core/loader/strategy/f;-><init>(Lcn/haorui/sdk/core/loader/strategy/c;)V

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v5, p0, Lcn/haorui/sdk/core/loader/strategy/c;->l:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/haorui/sdk/core/loader/loadbean/a;

    iget v7, v5, Lcn/haorui/sdk/core/loader/loadbean/a;->e:I

    iget v8, v2, Lcn/haorui/sdk/core/loader/loadbean/a;->e:I

    if-le v7, v8, :cond_3

    goto :goto_6

    :cond_3
    invoke-virtual {v2}, Lcn/haorui/sdk/core/loader/loadbean/a;->a()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    invoke-virtual {v5}, Lcn/haorui/sdk/core/loader/loadbean/a;->a()I

    move-result v5

    invoke-virtual {v2}, Lcn/haorui/sdk/core/loader/loadbean/a;->a()I

    move-result v7

    if-lt v5, v7, :cond_4

    goto :goto_6

    :cond_4
    iget-object v5, v2, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v5}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_6
    const/4 v5, 0x1

    goto :goto_7

    :cond_5
    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_6

    goto :goto_8

    :cond_6
    iget-object v5, p0, Lcn/haorui/sdk/core/loader/strategy/c;->g:Ljava/util/Map;

    invoke-interface {v4, v5}, Lcn/haorui/sdk/core/loader/d;->setLocalParams(Ljava/util/Map;)V

    invoke-interface {v4, v1}, Lcn/haorui/sdk/core/loader/d;->setTag(I)V

    iget v5, p0, Lcn/haorui/sdk/core/loader/strategy/c;->d:I

    invoke-interface {v4, v5}, Lcn/haorui/sdk/core/loader/d;->setGroupIndex(I)V

    new-instance v5, Lcn/haorui/sdk/core/loader/strategy/c$a;

    invoke-direct {v5, p0, v4, v2}, Lcn/haorui/sdk/core/loader/strategy/c$a;-><init>(Lcn/haorui/sdk/core/loader/strategy/c;Lcn/haorui/sdk/core/loader/d;Lcn/haorui/sdk/core/loader/loadbean/a;)V

    invoke-interface {v4, v5}, Lcn/haorui/sdk/core/loader/d;->setConCurrentLoadListener(Lcn/haorui/sdk/core/loader/concurrent/IConCurrentLoadListener;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setLoadTime(J)V

    invoke-virtual {v3, v6}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setAlreadyLoaded(Z)V

    const/4 v3, 0x4

    monitor-enter v2

    :try_start_3
    iput v3, v2, Lcn/haorui/sdk/core/loader/loadbean/a;->c:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    invoke-interface {v4}, Lcn/haorui/sdk/core/loader/IAdLoader;->loadAd()V

    iget-object v2, p0, Lcn/haorui/sdk/core/loader/strategy/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_7
    :goto_8
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcn/haorui/sdk/core/loader/strategy/c;->a(Lcn/haorui/sdk/core/loader/loadbean/a;Lcn/haorui/sdk/core/loader/AdPlatformError;)V

    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_8
    return-void
.end method

.method public final a(Lcn/haorui/sdk/core/loader/loadbean/a;)Z
    .locals 7

    const-string v0, "__MS_ERRNO__"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p1, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getEcpm()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v4, "bidding"

    :try_start_1
    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-le v4, v3, :cond_1

    const/4 v4, 0x1

    :try_start_2
    iget-object v5, p1, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v5}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1027"

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v5, "__ERROR_CODE__"

    :try_start_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "__TIMEOUT__"

    :try_start_4
    iget p1, p1, Lcn/haorui/sdk/core/loader/loadbean/a;->d:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v0, "__P__"

    :try_start_5
    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v0, "__S__"

    :try_start_6
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->a:Lcn/haorui/sdk/core/loader/b;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v1}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v0, p1, v1}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v1, 0x1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return v1
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->t:Z

    iput-boolean v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->h:Z

    invoke-static {}, Lcn/haorui/sdk/core/utils/LocalThreadPools;->getInstance()Lcn/haorui/sdk/core/utils/LocalThreadPools;

    move-result-object v0

    new-instance v1, Lcn/haorui/sdk/core/loader/strategy/e;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/core/loader/strategy/e;-><init>(Lcn/haorui/sdk/core/loader/strategy/c;)V

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/LocalThreadPools;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final b(Lcn/haorui/sdk/core/loader/loadbean/a;)V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCache()I

    move-result v0

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->o:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCache()I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCache()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcn/haorui/sdk/core/loader/strategy/c;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_2

    iget-boolean v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->h:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcn/haorui/sdk/core/loader/strategy/c;->h:Z

    invoke-virtual {p0}, Lcn/haorui/sdk/core/loader/strategy/c;->b()V

    return-void

    :cond_2
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p0, Lcn/haorui/sdk/core/loader/strategy/c;->n:Ljava/util/List;

    new-instance v0, Lcn/haorui/sdk/core/loader/strategy/c$b;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/core/loader/strategy/c$b;-><init>(Lcn/haorui/sdk/core/loader/strategy/c;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    :cond_4
    :goto_1
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcn/haorui/sdk/core/loader/strategy/c;->d()V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->h:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->i:Lcn/haorui/sdk/core/loader/concurrent/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/concurrent/a;->onAllError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcn/haorui/sdk/core/loader/strategy/c;->g()V

    iget-boolean v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->n:Ljava/util/List;

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/strategy/c;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->n:Ljava/util/List;

    new-instance v1, Lcn/haorui/sdk/core/loader/strategy/f;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/core/loader/strategy/f;-><init>(Lcn/haorui/sdk/core/loader/strategy/c;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    invoke-virtual {p0}, Lcn/haorui/sdk/core/loader/strategy/c;->d()V

    invoke-virtual {p0}, Lcn/haorui/sdk/core/loader/strategy/c;->b()V

    return-void
.end method

.method public final c(Lcn/haorui/sdk/core/loader/loadbean/a;)Z
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/strategy/c;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/strategy/c;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/core/loader/loadbean/a;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->c:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcn/haorui/sdk/core/loader/strategy/c;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcn/haorui/sdk/core/loader/strategy/c;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    iget v2, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->e:I

    iget v3, p1, Lcn/haorui/sdk/core/loader/loadbean/a;->e:I

    const/4 v4, 0x0

    if-le v2, v3, :cond_2

    return v4

    :cond_2
    if-ne v2, v3, :cond_0

    iget-boolean v2, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->g:Z

    if-nez v2, :cond_3

    iget-object v2, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bidding"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcn/haorui/sdk/core/loader/loadbean/a;->a()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    return v4

    :cond_3
    invoke-virtual {v1}, Lcn/haorui/sdk/core/loader/loadbean/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/loadbean/a;->a()I

    move-result v2

    if-le v1, v2, :cond_0

    return v4

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public final d()V
    .locals 5

    iget-boolean v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->r:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "PriceFirstStrategy"

    const/4 v2, 0x1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->n:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/loader/loadbean/a;

    iget-object v3, p0, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCache()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCache()I

    move-result v3

    if-lez v3, :cond_4

    iget-boolean v3, p0, Lcn/haorui/sdk/core/loader/strategy/c;->o:Z

    if-nez v3, :cond_4

    :cond_0
    iget-object v3, p0, Lcn/haorui/sdk/core/loader/strategy/c;->i:Lcn/haorui/sdk/core/loader/concurrent/a;

    if-eqz v3, :cond_4

    iget-boolean v4, v0, Lcn/haorui/sdk/core/loader/loadbean/a;->g:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcn/haorui/sdk/core/loader/strategy/c;->h:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_4

    iput-boolean v2, p0, Lcn/haorui/sdk/core/loader/strategy/c;->r:Z

    invoke-interface {v3}, Lcn/haorui/sdk/core/loader/concurrent/a;->onAllError()V

    return-void

    :cond_1
    iget-object v3, p0, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCache()I

    move-result v3

    if-gtz v3, :cond_2

    iput-boolean v2, p0, Lcn/haorui/sdk/core/loader/strategy/c;->h:Z

    :cond_2
    iput-boolean v2, p0, Lcn/haorui/sdk/core/loader/strategy/c;->r:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u56de\u8c03onFinalAdLoaded,\u6210\u529f\u7684\u5e73\u53f0\u4e3a\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", loadedAd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcn/haorui/sdk/core/loader/loadbean/a;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/strategy/c;->i:Lcn/haorui/sdk/core/loader/concurrent/a;

    iget-object v2, v0, Lcn/haorui/sdk/core/loader/loadbean/a;->b:Ljava/lang/Object;

    iget-object v0, v0, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-interface {v1, v2, v0}, Lcn/haorui/sdk/core/loader/concurrent/a;->onFinalAdLoaded(Ljava/lang/Object;Lcn/haorui/sdk/core/domain/SdkAdInfo;)V

    invoke-virtual {p0}, Lcn/haorui/sdk/core/loader/strategy/c;->a()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->i:Lcn/haorui/sdk/core/loader/concurrent/a;

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcn/haorui/sdk/core/loader/strategy/c;->r:Z

    const-string v0, "\u65e0\u5e7f\u544a\u8fd4\u56de\uff0conAllError"

    invoke-static {v1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->i:Lcn/haorui/sdk/core/loader/concurrent/a;

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/concurrent/a;->onAllError()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final e()Z
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcn/haorui/sdk/core/loader/strategy/c;->d:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->e:Ljava/util/List;

    iget v1, p0, Lcn/haorui/sdk/core/loader/strategy/c;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/core/loader/loadbean/a;

    iget v1, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->c:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final f()V
    .locals 2

    iget-boolean v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->h:Z

    if-nez v0, :cond_2

    :try_start_0
    iget-boolean v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->u:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/core/loader/strategy/c;->c()V

    return-void

    :cond_0
    iget v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->d:I

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcn/haorui/sdk/core/loader/strategy/c;->d:I

    if-le v0, v1, :cond_1

    invoke-static {}, Lcn/haorui/sdk/core/utils/SdkHandler;->getInstance()Lcn/haorui/sdk/core/utils/SdkHandler;

    move-result-object v0

    new-instance v1, Lcn/haorui/sdk/core/loader/strategy/c$c;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/core/loader/strategy/c$c;-><init>(Lcn/haorui/sdk/core/loader/strategy/c;)V

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcn/haorui/sdk/core/loader/strategy/c;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/strategy/c;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/core/loader/loadbean/a;

    iget-boolean v2, p0, Lcn/haorui/sdk/core/loader/strategy/c;->h:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcn/haorui/sdk/core/loader/strategy/c;->c(Lcn/haorui/sdk/core/loader/loadbean/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcn/haorui/sdk/core/loader/strategy/c;->b(Lcn/haorui/sdk/core/loader/loadbean/a;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
