.class public final Lcom/anythink/core/b/e$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/h/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/e;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/anythink/core/b/e;


# direct methods
.method public constructor <init>(Lcom/anythink/core/b/e;JLjava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/b/e$3;->c:Lcom/anythink/core/b/e;

    iput-wide p2, p0, Lcom/anythink/core/b/e$3;->a:J

    iput-object p4, p0, Lcom/anythink/core/b/e$3;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadCanceled(I)V
    .locals 10

    iget-object p1, p0, Lcom/anythink/core/b/e$3;->c:Lcom/anythink/core/b/e;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/e$3;->c:Lcom/anythink/core/b/e;

    iget-object v0, v0, Lcom/anythink/core/b/e;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/anythink/core/b/e$3;->c:Lcom/anythink/core/b/e;

    invoke-virtual {v0}, Lcom/anythink/core/b/e;->d()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/core/b/e$3;->a:J

    sub-long v6, v0, v2

    iget-object v4, p0, Lcom/anythink/core/b/e$3;->c:Lcom/anythink/core/b/e;

    const/4 v5, 0x0

    const-string v8, "onLoadCanceled."

    iget-object v9, p0, Lcom/anythink/core/b/e$3;->b:Ljava/util/Map;

    invoke-static/range {v4 .. v9}, Lcom/anythink/core/b/e;->a(Lcom/anythink/core/b/e;Ljava/util/List;JLjava/lang/String;Ljava/util/Map;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public final onLoadError(ILjava/lang/String;Lcom/anythink/core/api/AdError;)V
    .locals 10

    iget-object p1, p0, Lcom/anythink/core/b/e$3;->c:Lcom/anythink/core/b/e;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/anythink/core/b/e$3;->c:Lcom/anythink/core/b/e;

    iget-object p2, p2, Lcom/anythink/core/b/e;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p2, p0, Lcom/anythink/core/b/e$3;->c:Lcom/anythink/core/b/e;

    invoke-virtual {p2}, Lcom/anythink/core/b/e;->d()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/core/b/e$3;->a:J

    sub-long v6, v0, v2

    iget-object v4, p0, Lcom/anythink/core/b/e$3;->c:Lcom/anythink/core/b/e;

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/anythink/core/api/AdError;->getPlatformMSG()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    move-object v8, p2

    iget-object v9, p0, Lcom/anythink/core/b/e$3;->b:Ljava/util/Map;

    invoke-static/range {v4 .. v9}, Lcom/anythink/core/b/e;->a(Lcom/anythink/core/b/e;Ljava/util/List;JLjava/lang/String;Ljava/util/Map;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method public final onLoadFinish(ILjava/lang/Object;)V
    .locals 12

    iget-object p1, p0, Lcom/anythink/core/b/e$3;->c:Lcom/anythink/core/b/e;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/e$3;->c:Lcom/anythink/core/b/e;

    iget-object v0, v0, Lcom/anythink/core/b/e;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/anythink/core/b/e$3;->a:J

    sub-long v8, v2, v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/json/JSONObject;

    const-string v0, "data"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/f/q;->a(Ljava/lang/String;)Lcom/anythink/core/common/f/q;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/anythink/core/b/e$3;->c:Lcom/anythink/core/b/e;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/anythink/core/b/e$3;->b:Ljava/util/Map;

    invoke-static/range {v6 .. v11}, Lcom/anythink/core/b/e;->a(Lcom/anythink/core/b/e;Ljava/util/List;JLjava/lang/String;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/anythink/core/b/e$3;->c:Lcom/anythink/core/b/e;

    invoke-virtual {p2}, Lcom/anythink/core/b/e;->d()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method public final onLoadStart(I)V
    .locals 0

    return-void
.end method
