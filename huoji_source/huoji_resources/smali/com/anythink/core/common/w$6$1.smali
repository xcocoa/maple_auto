.class public final Lcom/anythink/core/common/w$6$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/l/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/w$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/w$6;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/w$6;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/w$6$1;->a:Lcom/anythink/core/common/w$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/anythink/core/common/l/e;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/common/w$6$1;->a:Lcom/anythink/core/common/w$6;

    iget-object v0, v0, Lcom/anythink/core/common/w$6;->d:Lcom/anythink/core/common/w;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/w$6$1;->a:Lcom/anythink/core/common/w$6;

    iget-object v1, v1, Lcom/anythink/core/common/w$6;->d:Lcom/anythink/core/common/w;

    invoke-static {v1}, Lcom/anythink/core/common/w;->j(Lcom/anythink/core/common/w;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/anythink/core/common/w$6$1$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/anythink/core/common/w$6$1$1;-><init>(Lcom/anythink/core/common/w$6$1;Ljava/lang/String;Lcom/anythink/core/common/l/e;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/common/l/e;Lcom/anythink/core/api/AdError;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/common/w$6$1;->a:Lcom/anythink/core/common/w$6;

    iget-object v0, v0, Lcom/anythink/core/common/w$6;->d:Lcom/anythink/core/common/w;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/w$6$1;->a:Lcom/anythink/core/common/w$6;

    iget-object v1, v1, Lcom/anythink/core/common/w$6;->d:Lcom/anythink/core/common/w;

    invoke-static {v1}, Lcom/anythink/core/common/w;->j(Lcom/anythink/core/common/w;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/anythink/core/common/w$6$1$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/anythink/core/common/w$6$1$2;-><init>(Lcom/anythink/core/common/w$6$1;Ljava/lang/String;Lcom/anythink/core/common/l/e;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final b(Ljava/lang/String;Lcom/anythink/core/common/l/e;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/common/w$6$1;->a:Lcom/anythink/core/common/w$6;

    iget-object v0, v0, Lcom/anythink/core/common/w$6;->d:Lcom/anythink/core/common/w;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/w$6$1;->a:Lcom/anythink/core/common/w$6;

    iget-object v1, v1, Lcom/anythink/core/common/w$6;->d:Lcom/anythink/core/common/w;

    invoke-static {v1}, Lcom/anythink/core/common/w;->j(Lcom/anythink/core/common/w;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/anythink/core/common/w$6$1$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/anythink/core/common/w$6$1$3;-><init>(Lcom/anythink/core/common/w$6$1;Ljava/lang/String;Lcom/anythink/core/common/l/e;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
