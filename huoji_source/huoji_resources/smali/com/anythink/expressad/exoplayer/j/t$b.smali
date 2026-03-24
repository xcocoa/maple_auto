.class public final Lcom/anythink/expressad/exoplayer/j/t$b;
.super Landroid/os/Handler;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/j/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/anythink/expressad/exoplayer/j/t$c;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "LoadTask"

.field private static final d:I = 0x0

.field private static final e:I = 0x1

.field private static final f:I = 0x2

.field private static final g:I = 0x3

.field private static final h:I = 0x4


# instance fields
.field public final a:I

.field public final synthetic b:Lcom/anythink/expressad/exoplayer/j/t;

.field private final i:Lcom/anythink/expressad/exoplayer/j/t$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final j:J

.field private k:Lcom/anythink/expressad/exoplayer/j/t$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/anythink/expressad/exoplayer/j/t$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private l:Ljava/io/IOException;

.field private m:I

.field private volatile n:Ljava/lang/Thread;

.field private volatile o:Z

.field private volatile p:Z


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/j/t;Landroid/os/Looper;Lcom/anythink/expressad/exoplayer/j/t$c;Lcom/anythink/expressad/exoplayer/j/t$a;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lcom/anythink/expressad/exoplayer/j/t$a<",
            "TT;>;IJ)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->b:Lcom/anythink/expressad/exoplayer/j/t;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->i:Lcom/anythink/expressad/exoplayer/j/t$c;

    iput-object p4, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->k:Lcom/anythink/expressad/exoplayer/j/t$a;

    iput p5, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->a:I

    iput-wide p6, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->j:J

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->l:Ljava/io/IOException;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->b:Lcom/anythink/expressad/exoplayer/j/t;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/j/t;->b(Lcom/anythink/expressad/exoplayer/j/t;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->b:Lcom/anythink/expressad/exoplayer/j/t;

    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/j/t;->a(Lcom/anythink/expressad/exoplayer/j/t;)Lcom/anythink/expressad/exoplayer/j/t$b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->b:Lcom/anythink/expressad/exoplayer/j/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anythink/expressad/exoplayer/j/t;->a(Lcom/anythink/expressad/exoplayer/j/t;Lcom/anythink/expressad/exoplayer/j/t$b;)Lcom/anythink/expressad/exoplayer/j/t$b;

    return-void
.end method

.method private c()J
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->m:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->l:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->m:I

    if-gt v1, p1, :cond_0

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(J)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->b:Lcom/anythink/expressad/exoplayer/j/t;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/j/t;->a(Lcom/anythink/expressad/exoplayer/j/t;)Lcom/anythink/expressad/exoplayer/j/t$b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->b:Lcom/anythink/expressad/exoplayer/j/t;

    invoke-static {v0, p0}, Lcom/anythink/expressad/exoplayer/j/t;->a(Lcom/anythink/expressad/exoplayer/j/t;Lcom/anythink/expressad/exoplayer/j/t$b;)Lcom/anythink/expressad/exoplayer/j/t$b;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j/t$b;->a()V

    return-void
.end method

.method public final a(Z)V
    .locals 9

    iput-boolean p1, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->p:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->l:Ljava/io/IOException;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_1

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->o:Z

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->i:Lcom/anythink/expressad/exoplayer/j/t$c;

    invoke-interface {v1}, Lcom/anythink/expressad/exoplayer/j/t$c;->a()V

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->n:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->n:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j/t$b;->b()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->k:Lcom/anythink/expressad/exoplayer/j/t$a;

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->i:Lcom/anythink/expressad/exoplayer/j/t$c;

    iget-wide v6, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->j:J

    sub-long v6, v4, v6

    const/4 v8, 0x1

    invoke-interface/range {v2 .. v8}, Lcom/anythink/expressad/exoplayer/j/t$a;->a(Lcom/anythink/expressad/exoplayer/j/t$c;JJZ)V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->k:Lcom/anythink/expressad/exoplayer/j/t$a;

    :cond_2
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j/t$b;->a()V

    return-void

    :cond_1
    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j/t$b;->b()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->j:J

    sub-long v6, v4, v0

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->o:Z

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->k:Lcom/anythink/expressad/exoplayer/j/t$a;

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->i:Lcom/anythink/expressad/exoplayer/j/t$c;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/anythink/expressad/exoplayer/j/t$a;->a(Lcom/anythink/expressad/exoplayer/j/t$c;JJZ)V

    return-void

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v9, 0x2

    if-eq v0, v9, :cond_7

    const/4 v10, 0x3

    if-eq v0, v10, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/io/IOException;

    iput-object v8, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->l:Ljava/io/IOException;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->k:Lcom/anythink/expressad/exoplayer/j/t$a;

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->i:Lcom/anythink/expressad/exoplayer/j/t$c;

    invoke-interface/range {v2 .. v8}, Lcom/anythink/expressad/exoplayer/j/t$a;->a(Lcom/anythink/expressad/exoplayer/j/t$c;JJLjava/io/IOException;)I

    move-result p1

    if-ne p1, v10, :cond_4

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->b:Lcom/anythink/expressad/exoplayer/j/t;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->l:Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/anythink/expressad/exoplayer/j/t;->a(Lcom/anythink/expressad/exoplayer/j/t;Ljava/io/IOException;)Ljava/io/IOException;

    return-void

    :cond_4
    if-eq p1, v9, :cond_6

    if-ne p1, v1, :cond_5

    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    iget p1, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->m:I

    add-int/2addr p1, v1

    :goto_0
    iput p1, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->m:I

    sub-int/2addr p1, v1

    mul-int/lit16 p1, p1, 0x3e8

    const/16 v0, 0x1388

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/anythink/expressad/exoplayer/j/t$b;->a(J)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    :try_start_0
    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->k:Lcom/anythink/expressad/exoplayer/j/t$a;

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->i:Lcom/anythink/expressad/exoplayer/j/t$c;

    invoke-interface/range {v2 .. v7}, Lcom/anythink/expressad/exoplayer/j/t$a;->a(Lcom/anythink/expressad/exoplayer/j/t$c;JJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "LoadTask"

    const-string v1, "Unexpected exception handling load completed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->b:Lcom/anythink/expressad/exoplayer/j/t;

    new-instance v1, Lcom/anythink/expressad/exoplayer/j/t$g;

    invoke-direct {v1, p1}, Lcom/anythink/expressad/exoplayer/j/t$g;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/anythink/expressad/exoplayer/j/t;->a(Lcom/anythink/expressad/exoplayer/j/t;Ljava/io/IOException;)Ljava/io/IOException;

    return-void

    :cond_8
    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->k:Lcom/anythink/expressad/exoplayer/j/t$a;

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->i:Lcom/anythink/expressad/exoplayer/j/t$c;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/anythink/expressad/exoplayer/j/t$a;->a(Lcom/anythink/expressad/exoplayer/j/t$c;JJZ)V

    return-void

    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public final run()V
    .locals 5

    const-string v0, "LoadTask"

    const/4 v1, 0x2

    const/4 v2, 0x3

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->n:Ljava/lang/Thread;

    iget-boolean v3, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->o:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->i:Lcom/anythink/expressad/exoplayer/j/t$c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/anythink/expressad/exoplayer/k/ad;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->i:Lcom/anythink/expressad/exoplayer/j/t$c;

    invoke-interface {v3}, Lcom/anythink/expressad/exoplayer/j/t$c;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/anythink/expressad/exoplayer/k/ad;->a()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/anythink/expressad/exoplayer/k/ad;->a()V

    throw v3

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->p:Z

    if-nez v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    const-string v2, "Unexpected error loading stream"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->p:Z

    if-nez v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    throw v1

    :catch_1
    move-exception v1

    const-string v3, "OutOfMemory error loading stream"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->p:Z

    if-nez v0, :cond_3

    new-instance v0, Lcom/anythink/expressad/exoplayer/j/t$g;

    invoke-direct {v0, v1}, Lcom/anythink/expressad/exoplayer/j/t$g;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    return-void

    :catch_2
    move-exception v1

    const-string v3, "Unexpected exception loading stream"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->p:Z

    if-nez v0, :cond_4

    new-instance v0, Lcom/anythink/expressad/exoplayer/j/t$g;

    invoke-direct {v0, v1}, Lcom/anythink/expressad/exoplayer/j/t$g;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    return-void

    :catch_3
    nop

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->o:Z

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->p:Z

    if-nez v0, :cond_5

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    return-void

    :catch_4
    move-exception v0

    iget-boolean v1, p0, Lcom/anythink/expressad/exoplayer/j/t$b;->p:Z

    if-nez v1, :cond_6

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_6
    return-void
.end method
