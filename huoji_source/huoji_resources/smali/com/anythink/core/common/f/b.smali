.class public Lcom/anythink/core/common/f/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/anythink/core/common/f/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private d:Lcom/anythink/core/api/ATBaseAdAdapter;

.field private e:Lcom/anythink/core/api/BaseAd;

.field private f:I

.field private g:J

.field private h:I

.field private i:J

.field private j:Z

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/b;->a:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/anythink/core/common/f/b;->k:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/f/b;)I
    .locals 0

    iget p0, p0, Lcom/anythink/core/common/f/b;->f:I

    return p0
.end method

.method public static synthetic b(Lcom/anythink/core/common/f/b;)Lcom/anythink/core/api/ATBaseAdAdapter;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/f/b;->d:Lcom/anythink/core/api/ATBaseAdAdapter;

    return-object p0
.end method

.method public static synthetic c(Lcom/anythink/core/common/f/b;)Lcom/anythink/core/api/BaseAd;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/f/b;->e:Lcom/anythink/core/api/BaseAd;

    return-object p0
.end method

.method private d(Lcom/anythink/core/common/f/b;)I
    .locals 9

    iget-object v0, p0, Lcom/anythink/core/common/f/b;->d:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object v0

    iget-object v1, p1, Lcom/anythink/core/common/f/b;->d:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v1}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object v1

    invoke-static {v0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v2

    invoke-static {v1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v4

    const/4 v6, -0x1

    cmpl-double v7, v2, v4

    if-lez v7, :cond_0

    return v6

    :cond_0
    invoke-static {v0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v2

    invoke-static {v1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v4

    const/4 v7, 0x1

    cmpl-double v8, v2, v4

    if-eqz v8, :cond_1

    return v7

    :cond_1
    iget v0, v0, Lcom/anythink/core/common/f/av;->n:I

    iget v1, v1, Lcom/anythink/core/common/f/av;->n:I

    if-ge v0, v1, :cond_2

    return v6

    :cond_2
    if-eq v0, v1, :cond_3

    return v7

    :cond_3
    invoke-virtual {p0}, Lcom/anythink/core/common/f/b;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/anythink/core/common/f/b;->b()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_4

    return v6

    :cond_4
    invoke-virtual {p0}, Lcom/anythink/core/common/f/b;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/anythink/core/common/f/b;->b()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_5

    return v7

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method private o()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/b;->g:J

    return-wide v0
.end method

.method private p()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f/b;->c:J

    return-wide v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/b;->f:I

    if-lez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/core/common/f/b;->h:I

    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/b;->i:J

    return-void
.end method

.method public final a(Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/b;->d:Lcom/anythink/core/api/ATBaseAdAdapter;

    return-void
.end method

.method public final a(Lcom/anythink/core/api/BaseAd;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/b;->e:Lcom/anythink/core/api/BaseAd;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/b;->k:Ljava/lang/String;

    return-void
.end method

.method public final a()Z
    .locals 6

    iget v0, p0, Lcom/anythink/core/common/f/b;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/anythink/core/common/f/b;->c:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/anythink/core/common/f/b;->i:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()J
    .locals 4

    iget-wide v0, p0, Lcom/anythink/core/common/f/b;->c:J

    iget-wide v2, p0, Lcom/anythink/core/common/f/b;->i:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/f/b;->g:J

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/b;->f:I

    return v0
.end method

.method public final c(J)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/core/common/f/b;->h:I

    iput-wide p1, p0, Lcom/anythink/core/common/f/b;->c:J

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 9

    check-cast p1, Lcom/anythink/core/common/f/b;

    iget-object v0, p0, Lcom/anythink/core/common/f/b;->d:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object v0

    iget-object v1, p1, Lcom/anythink/core/common/f/b;->d:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v1}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object v1

    invoke-static {v0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v2

    invoke-static {v1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v4

    const/4 v6, -0x1

    cmpl-double v7, v2, v4

    if-lez v7, :cond_0

    return v6

    :cond_0
    invoke-static {v0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v2

    invoke-static {v1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v4

    const/4 v7, 0x1

    cmpl-double v8, v2, v4

    if-eqz v8, :cond_1

    return v7

    :cond_1
    iget v0, v0, Lcom/anythink/core/common/f/av;->n:I

    iget v1, v1, Lcom/anythink/core/common/f/av;->n:I

    if-ge v0, v1, :cond_2

    return v6

    :cond_2
    if-eq v0, v1, :cond_3

    return v7

    :cond_3
    invoke-virtual {p0}, Lcom/anythink/core/common/f/b;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/anythink/core/common/f/b;->b()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_4

    return v6

    :cond_4
    invoke-virtual {p0}, Lcom/anythink/core/common/f/b;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/anythink/core/common/f/b;->b()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_5

    return v7

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public final d()Lcom/anythink/core/api/ATBaseAdAdapter;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/b;->d:Lcom/anythink/core/api/ATBaseAdAdapter;

    return-object v0
.end method

.method public final e()Lcom/anythink/core/api/BaseAd;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/b;->e:Lcom/anythink/core/api/BaseAd;

    return-object v0
.end method

.method public final f()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/anythink/core/common/f/b;->j:Z

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/anythink/core/common/f/b;->f:I

    if-lez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/anythink/core/common/f/b;->d:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/anythink/core/common/f/b;->e:Lcom/anythink/core/api/BaseAd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/anythink/core/common/f/b;->d:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->internalIsAdReady()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isNetworkAdReady()  >>> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdCacheInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/core/common/f/b;->j:Z

    return v0
.end method

.method public final h()Lcom/anythink/core/common/f/h;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/b;->e:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getDetail()Lcom/anythink/core/common/f/h;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/f/b;->d:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .locals 5

    iget-wide v0, p0, Lcom/anythink/core/common/f/b;->c:J

    iget-wide v2, p0, Lcom/anythink/core/common/f/b;->g:J

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 1

    invoke-virtual {p0}, Lcom/anythink/core/common/f/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/core/common/f/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized l()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/core/common/f/b;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/anythink/core/common/f/b;->j:Z

    iget v0, p0, Lcom/anythink/core/common/f/b;->f:I

    if-gtz v0, :cond_1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/f/b$1;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/f/b$1;-><init>(Lcom/anythink/core/common/f/b;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final m()D
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/common/f/b;->d:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final n()Lcom/anythink/core/api/ATAdInfo;
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/common/f/b;->e:Lcom/anythink/core/api/BaseAd;

    iget-object v1, p0, Lcom/anythink/core/common/f/b;->d:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/api/ATBaseAdAdapter;)Lcom/anythink/core/common/b/j;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdCacheInfo{UnitGroupInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/f/b;->d:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v1}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/f/av;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", showTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/core/common/f/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cacheTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/anythink/core/common/f/b;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", upStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/core/common/f/b;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", upStatusOutDateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/anythink/core/common/f/b;->c:J

    iget-wide v3, p0, Lcom/anythink/core/common/f/b;->i:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", hasDestroy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/anythink/core/common/f/b;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
