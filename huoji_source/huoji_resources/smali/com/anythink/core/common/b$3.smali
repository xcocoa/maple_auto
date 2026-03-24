.class public final Lcom/anythink/core/common/b$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b;->a(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/anythink/core/common/b;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/b;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/b$3;->c:Lcom/anythink/core/common/b;

    iput-object p2, p0, Lcom/anythink/core/common/b$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/common/b$3;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/core/common/b$3;->c:Lcom/anythink/core/common/b;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/b$3;->c:Lcom/anythink/core/common/b;

    iget-object v1, v1, Lcom/anythink/core/common/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/anythink/core/common/b$3;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/b$a;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/anythink/core/common/b$3;->b:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/anythink/core/common/b$a;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
