.class public Lcom/anythink/core/b/b/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/api/ATBiddingListenerExt;


# static fields
.field private static final a:Ljava/lang/String; = "a"


# instance fields
.field private final b:Lcom/anythink/core/common/f/h;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/anythink/core/api/ATBiddingListener;

.field private volatile f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/api/ATBiddingListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/f/h;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATBiddingListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/b/b/a;->f:Z

    iput-object p1, p0, Lcom/anythink/core/b/b/a;->b:Lcom/anythink/core/common/f/h;

    iput-object p2, p0, Lcom/anythink/core/b/b/a;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/b/b/a;->d:Ljava/util/Map;

    iput-object p4, p0, Lcom/anythink/core/b/b/a;->e:Lcom/anythink/core/api/ATBiddingListener;

    return-void
.end method

.method private a()Z
    .locals 4

    iget-object v0, p0, Lcom/anythink/core/b/b/a;->d:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v2, "ad_s_reqf_mode"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isSupportDoubleCallback() >>> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return v1
.end method


# virtual methods
.method public onC2SBidResult(Lcom/anythink/core/api/ATBiddingResult;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/b/b/a;->e:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBidResult(Lcom/anythink/core/api/ATBiddingResult;)V

    :cond_0
    return-void
.end method

.method public onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onC2SBiddingResultWithCache() >>> adSourceId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/b/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isCallbacked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/anythink/core/b/b/a;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/anythink/core/b/b/a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/b/b/a;->f:Z

    iget-object v0, p0, Lcom/anythink/core/b/b/a;->e:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    :cond_1
    return-void
.end method

.method public onC2SBiddingResultWithData(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onC2SBiddingResultWithData() >>> adSourceId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/b/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/core/b/b/a;->b:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/f/h;->i(J)V

    :cond_0
    invoke-direct {p0}, Lcom/anythink/core/b/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/core/b/b/a;->b:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->c()V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/anythink/core/b/b/a;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    :cond_2
    return-void
.end method
