.class public Lcom/anythink/core/common/t;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile c:Lcom/anythink/core/common/t;


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/anythink/core/common/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/t;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/core/common/t;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static a()Lcom/anythink/core/common/t;
    .locals 2

    sget-object v0, Lcom/anythink/core/common/t;->c:Lcom/anythink/core/common/t;

    if-nez v0, :cond_1

    const-class v0, Lcom/anythink/core/common/t;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/core/common/t;->c:Lcom/anythink/core/common/t;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/core/common/t;

    invoke-direct {v1}, Lcom/anythink/core/common/t;-><init>()V

    sput-object v1, Lcom/anythink/core/common/t;->c:Lcom/anythink/core/common/t;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/anythink/core/common/t;->c:Lcom/anythink/core/common/t;

    return-object v0
.end method

.method public static synthetic a(Lcom/anythink/core/common/t;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/t;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v8, Lcom/anythink/core/common/t$1;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/anythink/core/common/t$1;-><init>(Lcom/anythink/core/common/t;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x10

    const/4 p2, 0x1

    invoke-virtual {v0, v8, p1, p2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/t;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_3

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/c/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/c/g;->a(Lcom/anythink/core/common/c/b;)Lcom/anythink/core/common/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/c/g;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/anythink/core/common/t;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "need to send request count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/core/common/t;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/f/u;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/anythink/core/common/f/u;->f:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x240c8400

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    iget-object v2, p0, Lcom/anythink/core/common/t;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/c/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/c/c;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/c/g;->a(Lcom/anythink/core/common/c/b;)Lcom/anythink/core/common/c/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/anythink/core/common/c/g;->b(Lcom/anythink/core/common/f/u;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_0
    const/16 v2, 0x3e8

    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, v1, Lcom/anythink/core/common/f/u;->g:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "business_type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    iget v3, v1, Lcom/anythink/core/common/f/u;->b:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    new-instance v3, Lcom/anythink/core/common/h/a/b;

    iget-object v4, v1, Lcom/anythink/core/common/f/u;->e:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/anythink/core/common/h/a/b;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/anythink/core/common/t$2;

    invoke-direct {v2, p0, v1}, Lcom/anythink/core/common/t$2;-><init>(Lcom/anythink/core/common/t;Lcom/anythink/core/common/f/u;)V

    invoke-virtual {v3, v2}, Lcom/anythink/core/common/h/a/c;->a(Lcom/anythink/core/common/h/a/c$a;)V

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/anythink/core/common/h/n;

    invoke-direct {v3, v1}, Lcom/anythink/core/common/h/n;-><init>(Lcom/anythink/core/common/f/u;)V

    const/16 v4, 0x3e9

    if-ne v2, v4, :cond_2

    invoke-virtual {v3}, Lcom/anythink/core/common/h/n;->p()V

    :cond_2
    const/4 v2, 0x0

    new-instance v4, Lcom/anythink/core/common/t$3;

    invoke-direct {v4, p0, v1, v3}, Lcom/anythink/core/common/t$3;-><init>(Lcom/anythink/core/common/t;Lcom/anythink/core/common/f/u;Lcom/anythink/core/common/h/n;)V

    invoke-virtual {v3, v2, v4}, Lcom/anythink/core/common/h/a;->a(ILcom/anythink/core/common/h/k;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
