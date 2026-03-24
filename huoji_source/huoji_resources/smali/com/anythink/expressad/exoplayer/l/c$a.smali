.class public final Lcom/anythink/expressad/exoplayer/l/c$a;
.super Landroid/os/HandlerThread;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2


# instance fields
.field private c:Lcom/anythink/expressad/exoplayer/k/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljava/lang/Error;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/RuntimeException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/anythink/expressad/exoplayer/l/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "dummySurface"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->c:Lcom/anythink/expressad/exoplayer/k/g;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->c:Lcom/anythink/expressad/exoplayer/k/g;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k/g;->a()V

    return-void
.end method

.method private b(I)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->c:Lcom/anythink/expressad/exoplayer/k/g;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->c:Lcom/anythink/expressad/exoplayer/k/g;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/k/g;->a(I)V

    new-instance v0, Lcom/anythink/expressad/exoplayer/l/c;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->c:Lcom/anythink/expressad/exoplayer/k/g;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/g;->b()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v0, p0, v1, p1, v2}, Lcom/anythink/expressad/exoplayer/l/c;-><init>(Lcom/anythink/expressad/exoplayer/l/c$a;Landroid/graphics/SurfaceTexture;ZB)V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->g:Lcom/anythink/expressad/exoplayer/l/c;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/anythink/expressad/exoplayer/l/c;
    .locals 3

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->d:Landroid/os/Handler;

    new-instance v0, Lcom/anythink/expressad/exoplayer/k/g;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->d:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/anythink/expressad/exoplayer/k/g;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->c:Lcom/anythink/expressad/exoplayer/k/g;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->g:Lcom/anythink/expressad/exoplayer/l/c;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->f:Ljava/lang/RuntimeException;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->e:Ljava/lang/Error;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->f:Ljava/lang/RuntimeException;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->e:Ljava/lang/Error;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->g:Lcom/anythink/expressad/exoplayer/l/c;

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/exoplayer/l/c;

    return-object p1

    :cond_2
    throw p1

    :cond_3
    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->d:Landroid/os/Handler;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->d:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->c:Lcom/anythink/expressad/exoplayer/k/g;

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->c:Lcom/anythink/expressad/exoplayer/k/g;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/k/g;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    const-string v0, "DummySurface"

    const-string v2, "Failed to release dummy surface"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return v1

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    throw p1

    :cond_1
    :try_start_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->c:Lcom/anythink/expressad/exoplayer/k/g;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->c:Lcom/anythink/expressad/exoplayer/k/g;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/k/g;->a(I)V

    new-instance v0, Lcom/anythink/expressad/exoplayer/l/c;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->c:Lcom/anythink/expressad/exoplayer/k/g;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/g;->b()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-direct {v0, p0, v2, p1, v3}, Lcom/anythink/expressad/exoplayer/l/c;-><init>(Lcom/anythink/expressad/exoplayer/l/c$a;Landroid/graphics/SurfaceTexture;ZB)V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->g:Lcom/anythink/expressad/exoplayer/l/c;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    :catchall_3
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_4
    const-string v0, "DummySurface"

    const-string v2, "Failed to initialize dummy surface"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->e:Ljava/lang/Error;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-enter p0

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_1
    move-exception p1

    :try_start_6
    const-string v0, "DummySurface"

    const-string v2, "Failed to initialize dummy surface"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/l/c$a;->f:Ljava/lang/RuntimeException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-enter p0

    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :goto_3
    return v1

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1

    :goto_4
    monitor-enter p0

    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    throw p1

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method
