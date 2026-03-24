.class public Lcom/anythink/expressad/mbbanner/a/d/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "a"

.field private static volatile h:Lcom/anythink/expressad/mbbanner/a/d/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/anythink/expressad/mbbanner/a/e/a;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/expressad/mbbanner/a/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->b:Landroid/content/Context;

    new-instance v0, Lcom/anythink/expressad/mbbanner/a/e/a;

    invoke-direct {v0}, Lcom/anythink/expressad/mbbanner/a/e/a;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->c:Lcom/anythink/expressad/mbbanner/a/e/a;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->g:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/anythink/expressad/mbbanner/a/d/a;
    .locals 2

    sget-object v0, Lcom/anythink/expressad/mbbanner/a/d/a;->h:Lcom/anythink/expressad/mbbanner/a/d/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/anythink/expressad/mbbanner/a/d/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/expressad/mbbanner/a/d/a;->h:Lcom/anythink/expressad/mbbanner/a/d/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/expressad/mbbanner/a/d/a;

    invoke-direct {v1}, Lcom/anythink/expressad/mbbanner/a/d/a;-><init>()V

    sput-object v1, Lcom/anythink/expressad/mbbanner/a/d/a;->h:Lcom/anythink/expressad/mbbanner/a/d/a;

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
    sget-object v0, Lcom/anythink/expressad/mbbanner/a/d/a;->h:Lcom/anythink/expressad/mbbanner/a/d/a;

    return-object v0
.end method

.method public static synthetic a(Lcom/anythink/expressad/mbbanner/a/d/a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->e:Ljava/util/Map;

    return-object p0
.end method

.method private a(Ljava/lang/String;Lcom/anythink/expressad/mbbanner/a/b/d;Lcom/anythink/expressad/mbbanner/a/c/b;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->c:Lcom/anythink/expressad/mbbanner/a/e/a;

    const-string v0, "Banner Context == null!"

    invoke-virtual {p2, p3, v0, p1}, Lcom/anythink/expressad/mbbanner/a/e/a;->a(Lcom/anythink/expressad/mbbanner/a/c/b;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->e:Ljava/util/Map;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->e:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->c:Lcom/anythink/expressad/mbbanner/a/e/a;

    const-string v0, "Current unit is loading!"

    invoke-virtual {p2, p3, v0, p1}, Lcom/anythink/expressad/mbbanner/a/e/a;->a(Lcom/anythink/expressad/mbbanner/a/c/b;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->e:Ljava/util/Map;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/mbbanner/a/d/a;->b(Ljava/lang/String;)Lcom/anythink/expressad/mbbanner/a/b/e;

    move-result-object p1

    new-instance p2, Lcom/anythink/expressad/mbbanner/a/d/b;

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->c:Lcom/anythink/expressad/mbbanner/a/e/a;

    invoke-direct {p2, v0, p1, p3, v1}, Lcom/anythink/expressad/mbbanner/a/d/b;-><init>(Landroid/content/Context;Lcom/anythink/expressad/mbbanner/a/b/e;Lcom/anythink/expressad/mbbanner/a/c/b;Lcom/anythink/expressad/mbbanner/a/e/a;)V

    return-void

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->c:Lcom/anythink/expressad/mbbanner/a/e/a;

    const-string v0, "Banner request parameters or callback empty!"

    invoke-virtual {p2, p3, v0, p1}, Lcom/anythink/expressad/mbbanner/a/e/a;->a(Lcom/anythink/expressad/mbbanner/a/c/b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/anythink/expressad/mbbanner/a/b/e;
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/mbbanner/a/b/e;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {v0, p1}, Lcom/anythink/expressad/d/b;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/anythink/expressad/d/c;->c(Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->t()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1

    new-instance v1, Lcom/anythink/expressad/mbbanner/a/b/e;

    const-string v2, ""

    invoke-direct {v1, p1, v2, v0}, Lcom/anythink/expressad/mbbanner/a/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->g:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->g:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_9

    const/4 v4, 0x2

    if-eq p1, v4, :cond_6

    const/4 v5, 0x3

    const/4 v6, 0x4

    if-eq p1, v5, :cond_4

    if-eq p1, v6, :cond_1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->g:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    if-eq v0, v4, :cond_5

    if-ne v0, v6, :cond_8

    :cond_5
    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->g:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_1
    return-void

    :cond_9
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_a
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/d;Lcom/anythink/expressad/mbbanner/a/c/b;)V
    .locals 5

    invoke-static {}, Lcom/anythink/expressad/mbbanner/a/d/a;->a()Lcom/anythink/expressad/mbbanner/a/d/a;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->e:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->c:Lcom/anythink/expressad/mbbanner/a/e/a;

    const-string v1, "Current unit is loading!"

    invoke-virtual {p2, p3, v1, p1}, Lcom/anythink/expressad/mbbanner/a/e/a;->a(Lcom/anythink/expressad/mbbanner/a/c/b;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->e:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/mbbanner/a/d/a;->b(Ljava/lang/String;)Lcom/anythink/expressad/mbbanner/a/b/e;

    move-result-object v1

    new-instance v2, Lcom/anythink/expressad/mbbanner/a/d/b;

    iget-object v3, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->c:Lcom/anythink/expressad/mbbanner/a/e/a;

    invoke-direct {v2, v3, v1, p3, v4}, Lcom/anythink/expressad/mbbanner/a/d/b;-><init>(Landroid/content/Context;Lcom/anythink/expressad/mbbanner/a/b/e;Lcom/anythink/expressad/mbbanner/a/c/b;Lcom/anythink/expressad/mbbanner/a/e/a;)V

    new-instance p3, Lcom/anythink/expressad/mbbanner/a/d/a$1;

    invoke-direct {p3, p0}, Lcom/anythink/expressad/mbbanner/a/d/a$1;-><init>(Lcom/anythink/expressad/mbbanner/a/d/a;)V

    invoke-virtual {v2, p1, p2, p3}, Lcom/anythink/expressad/mbbanner/a/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/d;Lcom/anythink/expressad/mbbanner/a/c/d;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->e:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->f:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/a;->g:Ljava/util/Map;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_5
    return-void
.end method
