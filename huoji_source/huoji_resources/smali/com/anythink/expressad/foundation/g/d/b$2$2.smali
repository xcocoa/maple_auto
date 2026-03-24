.class public final Lcom/anythink/expressad/foundation/g/d/b$2$2;
.super Lcom/anythink/core/common/o/b/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/foundation/g/d/b$2;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/anythink/expressad/foundation/g/d/b$2;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/foundation/g/d/b$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/d/b$2$2;->c:Lcom/anythink/expressad/foundation/g/d/b$2;

    iput-object p2, p0, Lcom/anythink/expressad/foundation/g/d/b$2$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/expressad/foundation/g/d/b$2$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/anythink/core/common/o/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/d/b$2$2;->c:Lcom/anythink/expressad/foundation/g/d/b$2;

    iget-object v0, v0, Lcom/anythink/expressad/foundation/g/d/b$2;->b:Lcom/anythink/expressad/foundation/g/d/b;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Lcom/anythink/expressad/foundation/g/d/b;)Ljava/util/LinkedHashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/d/b$2$2;->c:Lcom/anythink/expressad/foundation/g/d/b$2;

    iget-object v1, v1, Lcom/anythink/expressad/foundation/g/d/b$2;->b:Lcom/anythink/expressad/foundation/g/d/b;

    invoke-static {v1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Lcom/anythink/expressad/foundation/g/d/b;)Ljava/util/LinkedHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/foundation/g/d/b$2$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/g/d/c;

    iget-object v3, p0, Lcom/anythink/expressad/foundation/g/d/b$2$2;->c:Lcom/anythink/expressad/foundation/g/d/b$2;

    iget-object v4, v3, Lcom/anythink/expressad/foundation/g/d/b$2;->b:Lcom/anythink/expressad/foundation/g/d/b;

    iget-object v3, v3, Lcom/anythink/expressad/foundation/g/d/b$2;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/anythink/expressad/foundation/g/d/b$2$2;->b:Ljava/lang/String;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v6

    new-instance v7, Lcom/anythink/expressad/foundation/g/d/b$4;

    invoke-direct {v7, v4, v2, v5, v3}, Lcom/anythink/expressad/foundation/g/d/b$4;-><init>(Lcom/anythink/expressad/foundation/g/d/b;Lcom/anythink/expressad/foundation/g/d/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
