.class public Lcom/anythink/nativead/a/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "a"

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/nativead/a/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/anythink/core/common/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/anythink/nativead/a/a;->e:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/nativead/a/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/anythink/nativead/a/a;->c:Ljava/lang/String;

    const-string v0, "0"

    invoke-static {p1, p2, v0}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/nativead/a/a;->d:Lcom/anythink/core/common/f;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/nativead/a/a;
    .locals 2

    sget-object v0, Lcom/anythink/nativead/a/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/nativead/a/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/anythink/nativead/a/a;

    monitor-enter v1

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/anythink/nativead/a/a;

    invoke-direct {v0, p0, p1}, Lcom/anythink/nativead/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcom/anythink/nativead/a/a;->e:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/util/Map;)Lcom/anythink/core/api/ATAdStatusInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/anythink/core/api/ATAdStatusInfo;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/nativead/a/a;->d:Lcom/anythink/core/common/f;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/util/Map;)Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)Lcom/anythink/core/common/f/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/anythink/core/common/f/b;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/nativead/a/a;->d:Lcom/anythink/core/common/f;

    iget-object v1, p0, Lcom/anythink/nativead/a/a;->b:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;ZZLjava/util/Map;)Lcom/anythink/core/common/f/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/b;->e()Lcom/anythink/core/api/BaseAd;

    move-result-object v1

    instance-of v1, v1, Lcom/anythink/nativead/unitgroup/a;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/b;->e()Lcom/anythink/core/api/BaseAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/api/BaseAd;->getDetail()Lcom/anythink/core/common/f/h;

    move-result-object v1

    iput-object p1, v1, Lcom/anythink/core/common/f/h;->B:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/b;->c()I

    move-result p1

    add-int/2addr p1, v3

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/b;->a(I)V

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object p1

    new-instance v2, Lcom/anythink/nativead/a/a$1;

    invoke-direct {v2, p0, v0}, Lcom/anythink/nativead/a/a$1;-><init>(Lcom/anythink/nativead/a/a;Lcom/anythink/core/common/f/b;)V

    invoke-virtual {p1, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    invoke-static {p2, v1}, Lcom/anythink/core/common/o/v;->a(Ljava/util/Map;Lcom/anythink/core/common/f/h;)V

    iget-object p1, p0, Lcom/anythink/nativead/a/a;->c:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/anythink/core/common/o/v;->a(Ljava/lang/String;Lcom/anythink/core/common/f/h;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/api/ATAdInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/nativead/a/a;->d:Lcom/anythink/core/common/f;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Lcom/anythink/core/common/b/a;Lcom/anythink/core/common/b/b;Ljava/util/Map;Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/anythink/core/common/b/a;",
            "Lcom/anythink/core/common/b/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;",
            ")V"
        }
    .end annotation

    new-instance v4, Lcom/anythink/core/common/f/v;

    invoke-direct {v4}, Lcom/anythink/core/common/f/v;-><init>()V

    invoke-virtual {v4, p1}, Lcom/anythink/core/common/f/v;->a(Landroid/content/Context;)V

    iput-object p3, v4, Lcom/anythink/core/common/f/v;->e:Lcom/anythink/core/common/b/b;

    const/4 p1, 0x0

    iput p1, v4, Lcom/anythink/core/common/f/v;->d:I

    if-eqz p4, :cond_0

    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, v4, Lcom/anythink/core/common/f/v;->g:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    iput-object p5, v4, Lcom/anythink/core/common/f/v;->l:Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;

    iget-object v0, p0, Lcom/anythink/nativead/a/a;->d:Lcom/anythink/core/common/f;

    iget-object v1, p0, Lcom/anythink/nativead/a/a;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/anythink/nativead/a/a;->c:Ljava/lang/String;

    const-string v2, "0"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/core/common/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/b/a;)V

    return-void
.end method
