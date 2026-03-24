.class public final Lcom/anythink/basead/a/b/g$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/a/b/g$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/ExecutorService;

.field public final synthetic b:Lcom/anythink/basead/a/b/g$1;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/a/b/g$1;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/a/b/g$1$1;->b:Lcom/anythink/basead/a/b/g$1;

    iput-object p2, p0, Lcom/anythink/basead/a/b/g$1$1;->a:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/d;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/d;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/anythink/basead/a/b/g$1$1;->b:Lcom/anythink/basead/a/b/g$1;

    iget-object v2, v2, Lcom/anythink/basead/a/b/g$1;->a:Lcom/anythink/core/common/f/l;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->B()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/o/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/res/d;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/basead/a/b/g;->a(Ljava/lang/String;)Lcom/anythink/basead/a/b/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/basead/a/b/g$1$1;->b:Lcom/anythink/basead/a/b/g$1;

    iget-object v1, v1, Lcom/anythink/basead/a/b/g$1;->a:Lcom/anythink/core/common/f/l;

    iget v2, v0, Lcom/anythink/basead/a/b/g$a;->a:I

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/l;->j(I)V

    iget-object v1, p0, Lcom/anythink/basead/a/b/g$1$1;->b:Lcom/anythink/basead/a/b/g$1;

    iget-object v1, v1, Lcom/anythink/basead/a/b/g$1;->a:Lcom/anythink/core/common/f/l;

    iget v0, v0, Lcom/anythink/basead/a/b/g$a;->b:I

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/f/l;->k(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/basead/a/b/g$1$1;->a:Ljava/util/concurrent/ExecutorService;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, p0, Lcom/anythink/basead/a/b/g$1$1;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    return-void
.end method
