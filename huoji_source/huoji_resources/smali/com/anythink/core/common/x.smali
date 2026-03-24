.class public Lcom/anythink/core/common/x;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final c:Ljava/lang/String; = "x"

.field private static volatile d:Lcom/anythink/core/common/x;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/f/az;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/x;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/anythink/core/common/x;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/core/common/x;
    .locals 2

    sget-object v0, Lcom/anythink/core/common/x;->d:Lcom/anythink/core/common/x;

    if-nez v0, :cond_1

    const-class v0, Lcom/anythink/core/common/x;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/core/common/x;->d:Lcom/anythink/core/common/x;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/core/common/x;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/x;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anythink/core/common/x;->d:Lcom/anythink/core/common/x;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/anythink/core/common/x;->d:Lcom/anythink/core/common/x;

    return-object p0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/core/common/x;->a:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/core/common/x;->a:Ljava/util/Map;

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/x;->b:Landroid/content/Context;

    const-string v1, "anythink_wt_cache_info"

    invoke-static {v0, v1}, Lcom/anythink/core/common/o/s;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/anythink/core/common/f/az;->a(Ljava/lang/String;)Lcom/anythink/core/common/f/az;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/core/common/x;->a:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/anythink/core/common/f/az;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/x;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/f/az;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static b()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/common/x;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f/az;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/core/common/f/az;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/x;->b:Landroid/content/Context;

    const-string v2, "anythink_wt_cache_info"

    invoke-static {v1, v2, p1, v0}, Lcom/anythink/core/common/o/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/az$a;Lcom/anythink/core/common/f/az$a;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/common/x;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f/az;

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/x;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f/az;

    if-nez v0, :cond_1

    new-instance v0, Lcom/anythink/core/common/f/az;

    invoke-direct {v0}, Lcom/anythink/core/common/f/az;-><init>()V

    invoke-virtual {v0, p2}, Lcom/anythink/core/common/f/az;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/x;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/anythink/core/common/f/az;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {v0, p3}, Lcom/anythink/core/common/f/az;->a(Lcom/anythink/core/common/f/az$a;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/f/az;->a(J)V

    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {v0, p4}, Lcom/anythink/core/common/f/az;->b(Lcom/anythink/core/common/f/az$a;)V

    :cond_5
    return-void
.end method
