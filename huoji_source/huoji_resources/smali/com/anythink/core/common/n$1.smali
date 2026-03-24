.class public final Lcom/anythink/core/common/n$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/n;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/n;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/n$1;->a:Lcom/anythink/core/common/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdLoadFail(Lcom/anythink/core/api/AdError;)V
    .locals 9

    iget-object v0, p0, Lcom/anythink/core/common/n$1;->a:Lcom/anythink/core/common/n;

    invoke-static {v0}, Lcom/anythink/core/common/n;->a(Lcom/anythink/core/common/n;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/n$1;->a:Lcom/anythink/core/common/n;

    invoke-static {v1}, Lcom/anythink/core/common/n;->b(Lcom/anythink/core/common/n;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/b/a;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/anythink/core/common/n$1;->a:Lcom/anythink/core/common/n;

    iget-object v4, v3, Lcom/anythink/core/common/n;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/anythink/core/common/n;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/anythink/core/common/b/h$n;->D:Ljava/lang/String;

    sget-object v6, Lcom/anythink/core/common/b/h$n;->m:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "returned no eligible ads from any mediated networks. [listener:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v3, v5, v6, v7}, Lcom/anythink/core/common/o/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, p1}, Lcom/anythink/core/common/b/a;->onAdLoadFail(Lcom/anythink/core/api/AdError;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final onAdLoaded()V
    .locals 9

    iget-object v0, p0, Lcom/anythink/core/common/n$1;->a:Lcom/anythink/core/common/n;

    invoke-static {v0}, Lcom/anythink/core/common/n;->a(Lcom/anythink/core/common/n;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/n$1;->a:Lcom/anythink/core/common/n;

    invoke-static {v1}, Lcom/anythink/core/common/n;->b(Lcom/anythink/core/common/n;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/anythink/core/common/n$1;->a:Lcom/anythink/core/common/n;

    invoke-static {v1}, Lcom/anythink/core/common/n;->b(Lcom/anythink/core/common/n;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/b/a;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/anythink/core/common/n$1;->a:Lcom/anythink/core/common/n;

    iget-object v4, v3, Lcom/anythink/core/common/n;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/anythink/core/common/n;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/anythink/core/common/b/h$n;->D:Ljava/lang/String;

    sget-object v6, Lcom/anythink/core/common/b/h$n;->l:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[listener:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v3, v5, v6, v7}, Lcom/anythink/core/common/o/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/anythink/core/common/b/a;->onAdLoaded()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
