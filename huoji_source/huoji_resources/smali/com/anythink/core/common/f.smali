.class public final Lcom/anythink/core/common/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/g;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Lcom/anythink/core/common/n;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/ax;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/anythink/core/common/j/c;

.field public j:Lcom/anythink/core/common/j/e;

.field public k:Lcom/anythink/core/common/j/d;

.field private final l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:J

.field private p:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/anythink/core/common/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/core/common/f;->m:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/common/f;->p:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/core/common/f;->f:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/anythink/core/common/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/f;->h:Ljava/util/List;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/b/n;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;)Lcom/anythink/core/common/f/b;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/anythink/core/common/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;)Lcom/anythink/core/common/f/b;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;ZZLjava/util/Map;Lcom/anythink/core/common/f;Lcom/anythink/core/d/f;)Lcom/anythink/core/common/f/b;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/common/f;",
            "Lcom/anythink/core/d/f;",
            ")",
            "Lcom/anythink/core/common/f/b;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v3, p6

    invoke-virtual/range {p6 .. p6}, Lcom/anythink/core/d/f;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Lcom/anythink/core/d/f;->ah()I

    move-result v1

    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/anythink/core/common/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v9, Lcom/anythink/core/common/f/c;

    invoke-direct {v9}, Lcom/anythink/core/common/f/c;-><init>()V

    iget-object v1, v0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-static {v9, v1, v3}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f/c;Ljava/lang/String;Lcom/anythink/core/d/f;)V

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v9}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;ZZLjava/util/Map;Lcom/anythink/core/common/f/c;)Lcom/anythink/core/common/f/b;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v4, v0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/b;->h()Lcom/anythink/core/common/f/h;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/anythink/core/common/o/v;->a(Ljava/lang/String;Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/h;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const-wide/16 v4, 0x0

    const-string v8, ""

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/anythink/core/common/f/b;->h()Lcom/anythink/core/common/f/h;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/anythink/core/common/f/au;->ai()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_2
    move-object v9, v8

    :goto_1
    invoke-virtual {v1}, Lcom/anythink/core/common/f/b;->m()D

    move-result-wide v10

    move-wide v11, v10

    move-object v10, v9

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/anythink/core/common/w;->b(Ljava/lang/String;)V

    move-wide v11, v4

    move-object v10, v8

    const/4 v9, 0x0

    :goto_2
    const/16 v18, 0x0

    move-object/from16 v13, p5

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, p3

    move-object/from16 v17, p4

    invoke-virtual/range {v13 .. v18}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;ZZLjava/util/Map;Lcom/anythink/core/common/f/c;)Lcom/anythink/core/common/f/b;

    move-result-object v13

    if-eqz v13, :cond_5

    invoke-virtual {v13}, Lcom/anythink/core/common/f/b;->h()Lcom/anythink/core/common/f/h;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/anythink/core/common/f/au;->ai()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/anythink/core/common/f/h;->N()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    move-object v4, v8

    :goto_3
    invoke-virtual {v13}, Lcom/anythink/core/common/f/b;->m()D

    move-result-wide v14

    move-wide/from16 v19, v14

    move-object v15, v4

    move-object v14, v8

    move-wide/from16 v4, v19

    const/4 v8, 0x1

    goto :goto_4

    :cond_5
    move-object v14, v8

    move-object v15, v14

    const/4 v8, 0x0

    :goto_4
    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    if-nez v13, :cond_7

    goto :goto_5

    :cond_7
    const-string v6, ", real price:"

    cmpl-double v17, v11, v4

    if-lez v17, :cond_8

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v7, "CheckCacheWithShared, shared placement \'s price is higher, shared price: "

    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :goto_5
    move-object v13, v1

    goto :goto_6

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "CheckCacheWithShared, real placement \'s price is higher or same, shared price: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :goto_6
    iget-object v1, v0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    if-nez v8, :cond_a

    if-eqz v9, :cond_9

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    goto :goto_8

    :cond_a
    :goto_7
    const/4 v4, 0x1

    :goto_8
    move-object/from16 v3, p6

    move v5, v8

    move v6, v9

    move-object v7, v14

    move-object v8, v10

    move-object v9, v15

    invoke-static/range {v1 .. v9}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/f;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v13
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;
    .locals 5

    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v0

    if-nez v0, :cond_5

    const-class v1, Lcom/anythink/core/common/f;

    monitor-enter v1

    if-nez v0, :cond_4

    :try_start_0
    new-instance v0, Lcom/anythink/core/common/f;

    invoke-direct {v0, p0, p1}, Lcom/anythink/core/common/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x31

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const/16 v3, 0x33

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "3"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x0

    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    if-eq p0, v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/anythink/core/common/j/a;

    invoke-direct {p0, p1, p2}, Lcom/anythink/core/common/j/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, v0, Lcom/anythink/core/common/f;->k:Lcom/anythink/core/common/j/d;

    :goto_1
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v0}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f;)V

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public static a(Lcom/anythink/core/common/f/m;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/f/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/anythink/core/common/f/m;->f:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/anythink/core/common/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f;->m:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Landroid/content/Context;Lcom/anythink/core/common/f;Lcom/anythink/core/d/f;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/anythink/core/common/f;",
            "Lcom/anythink/core/d/f;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/api/ATAdInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/anythink/core/d/f;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    invoke-virtual {p2}, Lcom/anythink/core/d/f;->ah()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/anythink/core/common/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;ZZLjava/util/Map;Lcom/anythink/core/common/f/c;)Lcom/anythink/core/common/f/b;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/anythink/core/common/f/b;->n()Lcom/anythink/core/api/ATAdInfo;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-nez p2, :cond_1

    return-object p0

    :cond_1
    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/api/ATAdInfo;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/anythink/core/api/ATAdInfo;->getEcpm()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/anythink/core/api/ATAdInfo;->getEcpm()D

    move-result-wide v3

    cmpl-double v5, v1, v3

    if-lez v5, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sharedCheckValidAdCaches, shared top price > real top price, shared price: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/anythink/core/api/ATAdInfo;->getEcpm()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", real price: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATAdInfo;->getEcpm()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    return-object p0

    :cond_4
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/b/a;Lcom/anythink/core/common/f;Lcom/anythink/core/d/f;)V
    .locals 17

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {p7 .. p7}, Lcom/anythink/core/d/f;->l()Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/anythink/core/common/f/c;

    invoke-direct {v0}, Lcom/anythink/core/common/f/c;-><init>()V

    move-object/from16 v12, p7

    invoke-static {v0, v9, v12}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f/c;Ljava/lang/String;Lcom/anythink/core/d/f;)V

    iput-object v0, v10, Lcom/anythink/core/common/f/v;->i:Lcom/anythink/core/common/f/c;

    const/4 v0, 0x1

    new-array v13, v0, [Lcom/anythink/core/common/b/a;

    const/4 v14, 0x0

    aput-object p5, v13, v14

    invoke-virtual/range {p7 .. p7}, Lcom/anythink/core/d/f;->o()I

    move-result v1

    move-object/from16 v15, p1

    if-ne v1, v0, :cond_3

    move-object/from16 v8, p2

    invoke-static {v15, v11, v8, v10}, Lcom/anythink/core/common/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;)Lcom/anythink/core/common/f/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/anythink/core/common/o/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lcom/anythink/core/common/f/v;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "placementId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";result_callback:success;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Shared"

    invoke-static {v2, v1}, Lcom/anythink/core/common/o/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/core/common/f/b;->h()Lcom/anythink/core/common/f/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->ai()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object/from16 v16, v0

    const/4 v5, 0x1

    const-string v6, "1"

    const-string v7, "2"

    move-object/from16 v0, p3

    move-object v1, v11

    move-object/from16 v2, p2

    move-object/from16 v4, p7

    move-object/from16 v8, v16

    invoke-static/range {v0 .. v8}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/f;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aget-object v0, v13, v14

    if-eqz v0, :cond_1

    aget-object v0, v13, v14

    invoke-interface {v0}, Lcom/anythink/core/common/b/a;->onAdLoaded()V

    :cond_1
    const/4 v0, 0x0

    aput-object v0, v13, v14

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/anythink/core/common/w;->b(Ljava/lang/String;)V

    :goto_1
    new-instance v8, Lcom/anythink/core/common/f$4;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v3, p3

    move-object v4, v11

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/anythink/core/common/f$4;-><init>(Lcom/anythink/core/common/f;[Lcom/anythink/core/common/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/d/f;)V

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object v5, v8

    :goto_2
    invoke-virtual/range {v0 .. v5}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/b/a;)V

    return-void

    :cond_3
    new-instance v14, Lcom/anythink/core/common/f$5;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object v3, v11

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p7

    move-object v7, v13

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/anythink/core/common/f$5;-><init>(Lcom/anythink/core/common/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/d/f;[Lcom/anythink/core/common/b/a;Landroid/content/Context;)V

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v14

    goto :goto_2
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/v;)V
    .locals 25

    move-object/from16 v15, p0

    move-object/from16 v0, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkToGetWaterfallList() >>> WaterFall started. requestId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " placementId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " wf_id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/d/f;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/d/f;->ah()I

    move-result v6

    const-string v1, "1"

    const-string v4, ""

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v8}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    new-instance v13, Lcom/anythink/core/common/f/ba;

    invoke-direct {v13, v12, v10}, Lcom/anythink/core/common/f/ba;-><init>(Lcom/anythink/core/common/f/v;Lcom/anythink/core/d/f;)V

    if-eqz v11, :cond_0

    invoke-virtual {v13}, Lcom/anythink/core/common/f/ba;->e()I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/anythink/core/common/f/h;->c(I)V

    invoke-virtual {v13}, Lcom/anythink/core/common/f/ba;->f()I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/anythink/core/common/f/h;->d(I)V

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/d/f;->aV()Z

    move-result v2
    :try_end_0
    .catch Lcom/anythink/core/common/f/g; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v3, 0x5

    const-string v4, ""

    if-eqz v2, :cond_10

    :try_start_1
    invoke-static/range {p4 .. p5}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/h;)V

    invoke-static/range {p4 .. p5}, Lcom/anythink/core/common/f;->b(Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/h;)V

    invoke-static/range {p4 .. p5}, Lcom/anythink/core/common/o/r;->a(Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/h;)Lcom/anythink/core/common/f/ap;

    move-result-object v8

    invoke-virtual {v8}, Lcom/anythink/core/common/f/ap;->c()Lcom/anythink/core/common/f/h;

    move-result-object v2

    invoke-virtual {v8}, Lcom/anythink/core/common/f/ap;->b()I

    move-result v5
    :try_end_1
    .catch Lcom/anythink/core/common/f/g; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v5, :cond_2

    :try_start_2
    invoke-virtual {v2, v3}, Lcom/anythink/core/common/f/h;->E(I)V

    invoke-virtual {v8}, Lcom/anythink/core/common/f/ap;->a()Lcom/anythink/core/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/d/f;->u()I

    move-result v0
    :try_end_2
    .catch Lcom/anythink/core/common/f/g; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "No Adsource."

    if-ne v0, v1, :cond_1

    :try_start_3
    new-instance v0, Lcom/anythink/core/common/f/g;

    const-string v3, "4009"

    invoke-static {v3, v4, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/anythink/core/common/f/g;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/anythink/core/common/f/g;

    const-string v3, "4004"

    invoke-static {v3, v4, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/anythink/core/common/f/g;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lcom/anythink/core/common/f/g; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v11

    move-object v3, v12

    move-object v2, v15

    const/4 v4, 0x1

    goto/16 :goto_9

    :cond_2
    :try_start_4
    invoke-virtual {v8}, Lcom/anythink/core/common/f/ap;->h()Z

    move-result v3
    :try_end_4
    .catch Lcom/anythink/core/common/f/g; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v5, "4005"

    const/4 v6, 0x6

    if-eqz v3, :cond_f

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v8, v2}, Lcom/anythink/core/common/o/r;->b(Lcom/anythink/core/common/f/ap;Ljava/util/List;)V

    invoke-virtual {v8}, Lcom/anythink/core/common/f/ap;->d()Ljava/util/List;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/anythink/core/common/o/r;->a(Lcom/anythink/core/common/f/ap;Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/anythink/core/common/a;->b(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v7, 0x0

    if-lez v2, :cond_3

    const/16 v16, 0x1

    goto :goto_0

    :cond_3
    const/16 v16, 0x0

    :goto_0
    if-nez v16, :cond_5

    invoke-virtual {v8}, Lcom/anythink/core/common/f/ap;->e()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v8}, Lcom/anythink/core/common/f/ap;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_9

    if-eqz v14, :cond_6

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_9

    :cond_6
    invoke-virtual {v8}, Lcom/anythink/core/common/f/ap;->f()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v8}, Lcom/anythink/core/common/f/ap;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    invoke-virtual {v8}, Lcom/anythink/core/common/f/ap;->g()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v8}, Lcom/anythink/core/common/f/ap;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    invoke-static {v5, v4, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-virtual {v11, v6}, Lcom/anythink/core/common/f/h;->E(I)V

    invoke-direct {v15, v1, v11, v0, v12}, Lcom/anythink/core/common/f;->a(ZLcom/anythink/core/common/f/h;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/f/v;)V

    iput-boolean v7, v15, Lcom/anythink/core/common/f;->d:Z

    return-void

    :cond_9
    invoke-static {}, Lcom/anythink/core/a/b;->a()Lcom/anythink/core/a/b;

    move-result-object v2

    iget-object v4, v15, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    invoke-virtual {v2, v4, v0, v10}, Lcom/anythink/core/a/b;->b(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/d/f;)V

    iget-object v2, v15, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object v2

    const/16 v4, 0xa

    invoke-virtual {v2, v4, v11}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;)V

    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v2

    iget-object v4, v15, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/u;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    iget-object v2, v15, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/core/common/x;->a(Landroid/content/Context;)Lcom/anythink/core/common/x;

    move-result-object v2

    iget-object v2, v2, Lcom/anythink/core/common/x;->a:Ljava/util/Map;

    if-eqz v2, :cond_a

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/f/az;

    move-object v5, v2

    goto :goto_2

    :cond_a
    const/4 v5, 0x0

    :goto_2
    iget-object v2, v15, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/core/common/v;->a(Landroid/content/Context;)Lcom/anythink/core/common/v;

    move-result-object v2

    invoke-virtual {v2, v0, v9}, Lcom/anythink/core/common/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f/aq;

    move-result-object v2

    invoke-static {}, Lcom/anythink/core/common/d;->a()Lcom/anythink/core/common/d;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/anythink/core/common/d;->a(Ljava/lang/String;)Lcom/anythink/core/common/f/p;

    move-result-object v4

    new-instance v7, Lcom/anythink/core/common/f/p;

    invoke-direct {v7, v9}, Lcom/anythink/core/common/f/p;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/core/common/d;->a()Lcom/anythink/core/common/d;

    move-result-object v1

    move-object/from16 v20, v2

    iget-object v2, v15, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v7}, Lcom/anythink/core/common/d;->a(Ljava/lang/String;Lcom/anythink/core/common/f/p;)V

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/anythink/core/common/f/h;->b(Z)V

    invoke-virtual {v13}, Lcom/anythink/core/common/f/ba;->f()I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/anythink/core/common/f/h;->w(I)V

    new-instance v2, Lcom/anythink/core/common/g;

    invoke-virtual/range {p6 .. p6}, Lcom/anythink/core/common/f/v;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/anythink/core/common/g;-><init>(Landroid/content/Context;)V

    iput-object v6, v2, Lcom/anythink/core/common/g;->h:Ljava/util/Map;

    iput-object v11, v2, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/f/h;

    invoke-virtual {v2, v12}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/f/v;)V

    iget-object v1, v12, Lcom/anythink/core/common/f/v;->e:Lcom/anythink/core/common/b/b;

    invoke-virtual {v2, v1}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/b/b;)V

    iput-object v9, v15, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Lcom/anythink/core/common/f/au;->aa()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/anythink/core/common/f;->m:Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/d/f;->P()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_b

    move-object/from16 v19, v7

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/f/av;

    move-object/from16 v17, v1

    goto :goto_3

    :cond_b
    move-object/from16 v19, v7

    const/4 v7, 0x0

    const/16 v17, 0x0

    :goto_3
    if-eqz v17, :cond_d

    invoke-virtual {v8}, Lcom/anythink/core/common/f/ap;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/anythink/core/common/f/av;

    invoke-virtual/range {v21 .. v21}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/anythink/core/common/a/c;->a()Lcom/anythink/core/common/a/c;

    move-result-object v1

    move-object v10, v2

    move-object/from16 v7, v20

    move-object/from16 v2, p1

    move v12, v3

    move-object/from16 v3, p2

    move-object v11, v4

    move-object/from16 v4, p3

    move-object v15, v5

    move-object/from16 v5, v21

    move-object/from16 v20, v6

    move-object/from16 v6, p4

    move-object/from16 v21, v11

    move-object/from16 v22, v19

    move-object v11, v7

    move-object/from16 v7, v20

    invoke-virtual/range {v1 .. v7}, Lcom/anythink/core/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/av;Lcom/anythink/core/d/f;Ljava/util/Map;)Lcom/anythink/core/common/a/c$a;

    move-result-object v1

    iput-object v1, v10, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/a/c$a;

    goto :goto_5

    :cond_c
    move-object v10, v2

    move v12, v3

    move-object/from16 v21, v4

    move-object v15, v5

    move-object/from16 v22, v19

    move-object/from16 v11, v20

    move-object/from16 v20, v6

    :goto_5
    move-object v2, v10

    move v3, v12

    move-object v5, v15

    move-object/from16 v6, v20

    move-object/from16 v4, v21

    move-object/from16 v19, v22

    const/4 v7, 0x0

    move-object/from16 v15, p0

    move-object/from16 v10, p4

    move-object/from16 v12, p6

    move-object/from16 v20, v11

    move-object/from16 v11, p5

    goto :goto_4

    :cond_d
    move-object v10, v2

    move v12, v3

    move-object/from16 v21, v4

    move-object v15, v5

    move-object/from16 v22, v19

    move-object/from16 v11, v20

    new-instance v7, Lcom/anythink/core/common/p/i;

    invoke-direct {v7, v14}, Lcom/anythink/core/common/p/i;-><init>(Ljava/util/List;)V

    new-instance v1, Lcom/anythink/core/common/p/h;

    invoke-direct {v1}, Lcom/anythink/core/common/p/h;-><init>()V

    iput-object v0, v1, Lcom/anythink/core/common/p/h;->a:Ljava/lang/String;

    iput-object v9, v1, Lcom/anythink/core/common/p/h;->b:Ljava/lang/String;

    iput-object v13, v1, Lcom/anythink/core/common/p/h;->c:Lcom/anythink/core/common/f/ba;

    iput-object v14, v1, Lcom/anythink/core/common/p/h;->d:Ljava/util/List;

    invoke-virtual {v8}, Lcom/anythink/core/common/f/ap;->g()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/p/h;->e:Ljava/util/List;

    iput-boolean v12, v1, Lcom/anythink/core/common/p/h;->g:Z

    invoke-virtual/range {p5 .. p5}, Lcom/anythink/core/common/f/au;->ad()I

    move-result v2

    iput v2, v1, Lcom/anythink/core/common/p/h;->h:I

    iput-object v15, v1, Lcom/anythink/core/common/p/h;->i:Lcom/anythink/core/common/f/az;

    iput-object v11, v1, Lcom/anythink/core/common/p/h;->k:Lcom/anythink/core/common/f/aq;

    iput-object v7, v1, Lcom/anythink/core/common/p/h;->j:Lcom/anythink/core/common/p/i;

    move-object/from16 v14, v21

    iput-object v14, v1, Lcom/anythink/core/common/p/h;->m:Lcom/anythink/core/common/f/p;

    move-object/from16 v2, v22

    iput-object v2, v1, Lcom/anythink/core/common/p/h;->l:Lcom/anythink/core/common/f/p;

    invoke-virtual {v8}, Lcom/anythink/core/common/f/ap;->f()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/p/h;->f:Ljava/util/List;

    invoke-virtual {v10, v1}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/p/h;)V

    move-object/from16 v17, v15

    move-object/from16 v15, p0

    iget-object v1, v15, Lcom/anythink/core/common/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/anythink/core/common/g;->b()V

    const/4 v1, 0x0

    iput-boolean v1, v15, Lcom/anythink/core/common/f;->d:Z

    if-nez v12, :cond_e

    invoke-virtual {v8}, Lcom/anythink/core/common/f/ap;->e()Ljava/util/List;

    move-result-object v10

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v12

    new-instance v8, Lcom/anythink/core/common/f$2;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    move-object v0, v7

    move-object/from16 v7, p4

    move-object v9, v8

    move/from16 v8, v16

    move-object/from16 v23, v9

    move-object v9, v10

    move-object v10, v13

    move-object v13, v11

    move-object/from16 v11, p5

    move-object/from16 v24, v12

    move-object/from16 v12, v17

    move-object v15, v0

    invoke-direct/range {v1 .. v15}, Lcom/anythink/core/common/f$2;-><init>(Lcom/anythink/core/common/f;Landroid/content/Context;Lcom/anythink/core/common/f/v;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/f;ZLjava/util/List;Lcom/anythink/core/common/f/ba;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/az;Lcom/anythink/core/common/f/aq;Lcom/anythink/core/common/f/p;Lcom/anythink/core/common/p/i;)V

    move-object/from16 v1, v23

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->c(Ljava/lang/Runnable;)V

    :cond_e
    return-void

    :cond_f
    :try_start_5
    invoke-virtual {v2, v6}, Lcom/anythink/core/common/f/h;->E(I)V

    invoke-static {v5, v4, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/f/g;

    invoke-virtual {v0}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/anythink/core/common/f/g;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Lcom/anythink/core/common/f/g; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    const/4 v4, 0x1

    move-object/from16 v2, p0

    move-object/from16 v1, p5

    goto :goto_8

    :catch_0
    move-exception v0

    const/4 v4, 0x1

    move-object/from16 v2, p0

    move-object/from16 v1, p5

    :goto_6
    move-object/from16 v3, p6

    goto :goto_a

    :cond_10
    move-object v1, v11

    :try_start_6
    invoke-virtual {v1, v3}, Lcom/anythink/core/common/f/h;->E(I)V

    new-instance v0, Lcom/anythink/core/common/f/g;

    const-string v2, "4003"

    invoke-static {v2, v4, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    const-string v3, "Strategy is close."

    invoke-direct {v0, v2, v3}, Lcom/anythink/core/common/f/g;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Lcom/anythink/core/common/f/g; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    const/4 v4, 0x1

    move-object/from16 v2, p0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v1, v11

    :goto_7
    const/4 v4, 0x1

    move-object/from16 v2, p0

    :goto_8
    move-object/from16 v3, p6

    :goto_9
    invoke-direct {v2, v4, v1, v0, v3}, Lcom/anythink/core/common/f;->a(ZLcom/anythink/core/common/f/h;Ljava/lang/Throwable;Lcom/anythink/core/common/f/v;)V

    return-void

    :catch_2
    move-exception v0

    move-object v1, v11

    move-object v3, v12

    move-object v2, v15

    const/4 v4, 0x1

    :goto_a
    invoke-direct {v2, v4, v1, v0, v3}, Lcom/anythink/core/common/f;->a(ZLcom/anythink/core/common/f/h;Ljava/lang/Throwable;Lcom/anythink/core/common/f/v;)V

    return-void
.end method

.method private static a(Lcom/anythink/core/common/f/ap;)V
    .locals 3

    invoke-virtual {p0}, Lcom/anythink/core/common/f/ap;->c()Lcom/anythink/core/common/f/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/core/common/f/ap;->b()I

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/h;->E(I)V

    invoke-virtual {p0}, Lcom/anythink/core/common/f/ap;->a()Lcom/anythink/core/d/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->u()I

    move-result p0

    const/4 v0, 0x1

    const-string v1, "No Adsource."

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/anythink/core/common/f/g;

    const-string v0, "4009"

    invoke-static {v0, v2, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/anythink/core/common/f/g;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Lcom/anythink/core/common/f/g;

    const-string v0, "4004"

    invoke-static {v0, v2, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/anythink/core/common/f/g;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lcom/anythink/core/common/f/ap;->h()Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    const/4 p0, 0x6

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/f/h;->E(I)V

    const-string p0, "4005"

    invoke-static {p0, v2, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p0

    new-instance v0, Lcom/anythink/core/common/f/g;

    invoke-virtual {p0}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/anythink/core/common/f/g;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lcom/anythink/core/common/f/c;Ljava/lang/String;Lcom/anythink/core/d/f;)V
    .locals 1

    invoke-virtual {p2}, Lcom/anythink/core/d/f;->ao()I

    move-result v0

    invoke-virtual {p2}, Lcom/anythink/core/d/f;->Z()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/f;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/v;)V
    .locals 23

    move-object/from16 v2, p0

    move-object/from16 v0, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "checkToGetWaterfallList() >>> WaterFall started. requestId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " placementId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " wf_id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/d/f;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/d/f;->ah()I

    move-result v8

    const-string v3, "1"

    const-string v6, ""

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    invoke-static/range {v3 .. v10}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    new-instance v10, Lcom/anythink/core/common/f/ba;

    invoke-direct {v10, v14, v12}, Lcom/anythink/core/common/f/ba;-><init>(Lcom/anythink/core/common/f/v;Lcom/anythink/core/d/f;)V

    if-eqz v13, :cond_0

    invoke-virtual {v10}, Lcom/anythink/core/common/f/ba;->e()I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/anythink/core/common/f/h;->c(I)V

    invoke-virtual {v10}, Lcom/anythink/core/common/f/ba;->f()I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/anythink/core/common/f/h;->d(I)V

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/d/f;->aV()Z

    move-result v3
    :try_end_0
    .catch Lcom/anythink/core/common/f/g; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v4, 0x5

    const-string v5, ""

    if-eqz v3, :cond_10

    :try_start_1
    invoke-static/range {p4 .. p5}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/h;)V

    invoke-static/range {p4 .. p5}, Lcom/anythink/core/common/f;->b(Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/h;)V

    invoke-static/range {p4 .. p5}, Lcom/anythink/core/common/o/r;->a(Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/h;)Lcom/anythink/core/common/f/ap;

    move-result-object v15

    invoke-virtual {v15}, Lcom/anythink/core/common/f/ap;->c()Lcom/anythink/core/common/f/h;

    move-result-object v3

    invoke-virtual {v15}, Lcom/anythink/core/common/f/ap;->b()I

    move-result v6
    :try_end_1
    .catch Lcom/anythink/core/common/f/g; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v6, :cond_2

    :try_start_2
    invoke-virtual {v3, v4}, Lcom/anythink/core/common/f/h;->E(I)V

    invoke-virtual {v15}, Lcom/anythink/core/common/f/ap;->a()Lcom/anythink/core/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/d/f;->u()I

    move-result v0
    :try_end_2
    .catch Lcom/anythink/core/common/f/g; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v3, "No Adsource."

    if-ne v0, v1, :cond_1

    :try_start_3
    new-instance v0, Lcom/anythink/core/common/f/g;

    const-string v4, "4009"

    invoke-static {v4, v5, v5}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lcom/anythink/core/common/f/g;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/anythink/core/common/f/g;

    const-string v4, "4004"

    invoke-static {v4, v5, v5}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lcom/anythink/core/common/f/g;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lcom/anythink/core/common/f/g; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v13

    move-object v3, v14

    goto/16 :goto_8

    :cond_2
    :try_start_4
    invoke-virtual {v15}, Lcom/anythink/core/common/f/ap;->h()Z

    move-result v4
    :try_end_4
    .catch Lcom/anythink/core/common/f/g; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v6, "4005"

    const/4 v7, 0x6

    if-eqz v4, :cond_f

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v15, v3}, Lcom/anythink/core/common/o/r;->b(Lcom/anythink/core/common/f/ap;Ljava/util/List;)V

    invoke-virtual {v15}, Lcom/anythink/core/common/f/ap;->d()Ljava/util/List;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/anythink/core/common/o/r;->a(Lcom/anythink/core/common/f/ap;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/anythink/core/common/a;->b(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v8, 0x0

    if-lez v3, :cond_3

    const/16 v16, 0x1

    goto :goto_0

    :cond_3
    const/16 v16, 0x0

    :goto_0
    if-nez v16, :cond_5

    invoke-virtual {v15}, Lcom/anythink/core/common/f/ap;->e()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v15}, Lcom/anythink/core/common/f/ap;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_9

    if-eqz v9, :cond_6

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_9

    :cond_6
    invoke-virtual {v15}, Lcom/anythink/core/common/f/ap;->f()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v15}, Lcom/anythink/core/common/f/ap;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    invoke-virtual {v15}, Lcom/anythink/core/common/f/ap;->g()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v15}, Lcom/anythink/core/common/f/ap;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    invoke-static {v6, v5, v5}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-virtual {v13, v7}, Lcom/anythink/core/common/f/h;->E(I)V

    invoke-direct {v2, v1, v13, v0, v14}, Lcom/anythink/core/common/f;->a(ZLcom/anythink/core/common/f/h;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/f/v;)V

    iput-boolean v8, v2, Lcom/anythink/core/common/f;->d:Z

    return-void

    :cond_9
    invoke-static {}, Lcom/anythink/core/a/b;->a()Lcom/anythink/core/a/b;

    move-result-object v3

    iget-object v5, v2, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    invoke-virtual {v3, v5, v0, v12}, Lcom/anythink/core/a/b;->b(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/d/f;)V

    iget-object v3, v2, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object v3

    const/16 v5, 0xa

    invoke-virtual {v3, v5, v13}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;)V

    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v3

    iget-object v5, v2, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/anythink/core/common/u;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    iget-object v3, v2, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/anythink/core/common/x;->a(Landroid/content/Context;)Lcom/anythink/core/common/x;

    move-result-object v3

    iget-object v3, v3, Lcom/anythink/core/common/x;->a:Ljava/util/Map;

    if-eqz v3, :cond_a

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/common/f/az;

    move-object v6, v3

    goto :goto_2

    :cond_a
    const/4 v6, 0x0

    :goto_2
    iget-object v3, v2, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/anythink/core/common/v;->a(Landroid/content/Context;)Lcom/anythink/core/common/v;

    move-result-object v3

    invoke-virtual {v3, v0, v11}, Lcom/anythink/core/common/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f/aq;

    move-result-object v3

    invoke-static {}, Lcom/anythink/core/common/d;->a()Lcom/anythink/core/common/d;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/d;->a(Ljava/lang/String;)Lcom/anythink/core/common/f/p;

    move-result-object v5

    new-instance v8, Lcom/anythink/core/common/f/p;

    invoke-direct {v8, v11}, Lcom/anythink/core/common/f/p;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/core/common/d;->a()Lcom/anythink/core/common/d;

    move-result-object v1

    move-object/from16 v20, v3

    iget-object v3, v2, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v8}, Lcom/anythink/core/common/d;->a(Ljava/lang/String;Lcom/anythink/core/common/f/p;)V

    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lcom/anythink/core/common/f/h;->b(Z)V

    invoke-virtual {v10}, Lcom/anythink/core/common/f/ba;->f()I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/anythink/core/common/f/h;->w(I)V

    new-instance v1, Lcom/anythink/core/common/g;

    invoke-virtual/range {p6 .. p6}, Lcom/anythink/core/common/f/v;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/anythink/core/common/g;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lcom/anythink/core/common/g;->h:Ljava/util/Map;

    iput-object v13, v1, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/f/h;

    invoke-virtual {v1, v14}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/f/v;)V

    iget-object v3, v14, Lcom/anythink/core/common/f/v;->e:Lcom/anythink/core/common/b/b;

    invoke-virtual {v1, v3}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/b/b;)V

    iput-object v11, v2, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Lcom/anythink/core/common/f/au;->aa()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/anythink/core/common/f;->m:Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/d/f;->P()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_b

    move-object/from16 v19, v8

    const/4 v8, 0x0

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/common/f/av;

    move-object/from16 v17, v3

    goto :goto_3

    :cond_b
    move-object/from16 v19, v8

    const/4 v8, 0x0

    const/16 v17, 0x0

    :goto_3
    if-eqz v17, :cond_d

    invoke-virtual {v15}, Lcom/anythink/core/common/f/ap;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Lcom/anythink/core/common/f/av;

    invoke-virtual/range {v21 .. v21}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/anythink/core/common/a/c;->a()Lcom/anythink/core/common/a/c;

    move-result-object v3

    move-object/from16 v8, v20

    move v12, v4

    move-object/from16 v4, p1

    move-object v14, v5

    move-object/from16 v5, p2

    move-object v13, v6

    move-object/from16 v6, p3

    move-object/from16 v20, v7

    move-object/from16 v7, v21

    move-object v2, v8

    move-object/from16 v22, v19

    move-object/from16 v8, p4

    move-object/from16 v19, v14

    move-object v14, v9

    move-object/from16 v9, v20

    invoke-virtual/range {v3 .. v9}, Lcom/anythink/core/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/av;Lcom/anythink/core/d/f;Ljava/util/Map;)Lcom/anythink/core/common/a/c$a;

    move-result-object v3

    iput-object v3, v1, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/a/c$a;

    goto :goto_5

    :cond_c
    move v12, v4

    move-object v13, v6

    move-object v14, v9

    move-object/from16 v22, v19

    move-object/from16 v2, v20

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    :goto_5
    move v4, v12

    move-object v6, v13

    move-object v9, v14

    move-object/from16 v5, v19

    move-object/from16 v7, v20

    move-object/from16 v19, v22

    const/4 v8, 0x0

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v20, v2

    move-object/from16 v2, p0

    goto :goto_4

    :cond_d
    move v12, v4

    move-object v13, v6

    move-object v14, v9

    move-object/from16 v22, v19

    move-object/from16 v2, v20

    move-object/from16 v19, v5

    new-instance v9, Lcom/anythink/core/common/p/i;

    invoke-direct {v9, v14}, Lcom/anythink/core/common/p/i;-><init>(Ljava/util/List;)V

    new-instance v3, Lcom/anythink/core/common/p/h;

    invoke-direct {v3}, Lcom/anythink/core/common/p/h;-><init>()V

    iput-object v0, v3, Lcom/anythink/core/common/p/h;->a:Ljava/lang/String;

    iput-object v11, v3, Lcom/anythink/core/common/p/h;->b:Ljava/lang/String;

    iput-object v10, v3, Lcom/anythink/core/common/p/h;->c:Lcom/anythink/core/common/f/ba;

    iput-object v14, v3, Lcom/anythink/core/common/p/h;->d:Ljava/util/List;

    invoke-virtual {v15}, Lcom/anythink/core/common/f/ap;->g()Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/anythink/core/common/p/h;->e:Ljava/util/List;

    iput-boolean v12, v3, Lcom/anythink/core/common/p/h;->g:Z

    invoke-virtual/range {p5 .. p5}, Lcom/anythink/core/common/f/au;->ad()I

    move-result v4

    iput v4, v3, Lcom/anythink/core/common/p/h;->h:I

    iput-object v13, v3, Lcom/anythink/core/common/p/h;->i:Lcom/anythink/core/common/f/az;

    iput-object v2, v3, Lcom/anythink/core/common/p/h;->k:Lcom/anythink/core/common/f/aq;

    iput-object v9, v3, Lcom/anythink/core/common/p/h;->j:Lcom/anythink/core/common/p/i;

    move-object/from16 v14, v19

    iput-object v14, v3, Lcom/anythink/core/common/p/h;->m:Lcom/anythink/core/common/f/p;

    move-object/from16 v4, v22

    iput-object v4, v3, Lcom/anythink/core/common/p/h;->l:Lcom/anythink/core/common/f/p;

    invoke-virtual {v15}, Lcom/anythink/core/common/f/ap;->f()Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/anythink/core/common/p/h;->f:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/p/h;)V

    move-object/from16 v17, v2

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/anythink/core/common/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v11, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/anythink/core/common/g;->b()V

    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/anythink/core/common/f;->d:Z

    if-nez v12, :cond_e

    invoke-virtual {v15}, Lcom/anythink/core/common/f/ap;->e()Ljava/util/List;

    move-result-object v12

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v15

    new-instance v8, Lcom/anythink/core/common/f$2;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object v0, v8

    move/from16 v8, v16

    move-object/from16 v16, v9

    move-object v9, v12

    move-object/from16 v11, p5

    move-object v12, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v0

    move-object v0, v15

    move-object/from16 v15, v16

    invoke-direct/range {v1 .. v15}, Lcom/anythink/core/common/f$2;-><init>(Lcom/anythink/core/common/f;Landroid/content/Context;Lcom/anythink/core/common/f/v;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/f;ZLjava/util/List;Lcom/anythink/core/common/f/ba;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/az;Lcom/anythink/core/common/f/aq;Lcom/anythink/core/common/f/p;Lcom/anythink/core/common/p/i;)V

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->c(Ljava/lang/Runnable;)V

    :cond_e
    return-void

    :cond_f
    :try_start_5
    invoke-virtual {v3, v7}, Lcom/anythink/core/common/f/h;->E(I)V

    invoke-static {v6, v5, v5}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/f/g;

    invoke-virtual {v0}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/anythink/core/common/f/g;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Lcom/anythink/core/common/f/g; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object/from16 v1, p5

    goto :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v1, p5

    :goto_6
    move-object/from16 v3, p6

    goto :goto_9

    :cond_10
    move-object v1, v13

    :try_start_6
    invoke-virtual {v1, v4}, Lcom/anythink/core/common/f/h;->E(I)V

    new-instance v0, Lcom/anythink/core/common/f/g;

    const-string v3, "4003"

    invoke-static {v3, v5, v5}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v3

    const-string v4, "Strategy is close."

    invoke-direct {v0, v3, v4}, Lcom/anythink/core/common/f/g;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Lcom/anythink/core/common/f/g; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v1, v13

    :goto_7
    move-object/from16 v3, p6

    :goto_8
    const/4 v4, 0x1

    invoke-direct {v2, v4, v1, v0, v3}, Lcom/anythink/core/common/f;->a(ZLcom/anythink/core/common/f/h;Ljava/lang/Throwable;Lcom/anythink/core/common/f/v;)V

    return-void

    :catch_2
    move-exception v0

    move-object v1, v13

    move-object v3, v14

    :goto_9
    const/4 v4, 0x1

    invoke-direct {v2, v4, v1, v0, v3}, Lcom/anythink/core/common/f;->a(ZLcom/anythink/core/common/f/h;Ljava/lang/Throwable;Lcom/anythink/core/common/f/v;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/f;Lcom/anythink/core/common/f/h;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/f/v;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/anythink/core/common/f;->a(ZLcom/anythink/core/common/f/h;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/f/v;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/f;ZLcom/anythink/core/common/f/h;Ljava/lang/Throwable;Lcom/anythink/core/common/f/v;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/core/common/f;->a(ZLcom/anythink/core/common/f/h;Ljava/lang/Throwable;Lcom/anythink/core/common/f/v;)V

    return-void
.end method

.method private a(Lcom/anythink/core/common/j/d;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f;->k:Lcom/anythink/core/common/j/d;

    return-void
.end method

.method public static a(Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/h;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/anythink/core/a/a;->a(Lcom/anythink/core/d/f;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/anythink/core/common/f/h;->E(I)V

    new-instance p0, Lcom/anythink/core/common/f/g;

    const-string p1, "2003"

    const-string v0, ""

    invoke-static {p1, v0, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    const-string v0, "Capping."

    invoke-direct {p0, p1, v0}, Lcom/anythink/core/common/f/g;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw p0
.end method

.method private a(Ljava/lang/String;Lcom/anythink/core/common/b/a;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f;->i:Lcom/anythink/core/common/j/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/common/j/c;->a(Ljava/lang/String;Lcom/anythink/core/common/b/a;)V

    :cond_0
    return-void
.end method

.method private a(ZLcom/anythink/core/common/f/h;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/f/v;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/common/f;->d:Z

    invoke-virtual {p2, v0}, Lcom/anythink/core/common/f/h;->b(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0, p2}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;)V

    invoke-static {p2, p3}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/api/AdError;)V

    :cond_0
    invoke-virtual {p0, p4, p3}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f/v;Lcom/anythink/core/api/AdError;)V

    return-void
.end method

.method private a(ZLcom/anythink/core/common/f/h;Ljava/lang/Throwable;Lcom/anythink/core/common/f/v;)V
    .locals 2

    instance-of v0, p3, Lcom/anythink/core/common/f/g;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/anythink/core/common/f/g;

    iget-object p3, p3, Lcom/anythink/core/common/f/g;->a:Lcom/anythink/core/api/AdError;

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v0, "9999"

    const-string v1, ""

    invoke-static {v0, v1, p3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p3

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/core/common/f;->a(ZLcom/anythink/core/common/f/h;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/f/v;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/f;)Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f;->j:Lcom/anythink/core/common/j/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/core/common/j/e;->b()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/anythink/core/common/f;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/n;)Z
    .locals 6

    iget-object v0, p0, Lcom/anythink/core/common/f;->j:Lcom/anythink/core/common/j/e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/anythink/core/common/j/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/n;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/anythink/core/common/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/core/common/f;->p:Z

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/n;)Z
    .locals 6

    iget-object v0, p0, Lcom/anythink/core/common/f;->j:Lcom/anythink/core/common/j/e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/anythink/core/common/j/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/n;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(ZZLjava/util/Map;Lcom/anythink/core/common/f/c;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/common/f/c;",
            ")Z"
        }
    .end annotation

    move-object v0, p0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/d/h;->a(Landroid/content/Context;)Lcom/anythink/core/d/h;

    move-result-object v1

    iget-object v2, v0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/core/d/h;->a(Ljava/lang/String;)Lcom/anythink/core/d/f;

    move-result-object v1

    iget-object v2, v0, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    :goto_0
    move-object v3, v2

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/core/d/h;->a(Landroid/content/Context;)Lcom/anythink/core/d/h;

    move-result-object v1

    iget-object v2, v0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/core/d/h;->a(Ljava/lang/String;)Lcom/anythink/core/d/f;

    move-result-object v1

    :cond_1
    move-object v7, v1

    const/4 v1, 0x1

    if-nez v7, :cond_4

    if-eqz p1, :cond_2

    iget-object v4, v0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    const/4 v6, 0x4

    const-string v2, ""

    move-object v5, v7

    move-object v7, v2

    move-object/from16 v8, p3

    invoke-static/range {v3 .. v8}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/f;ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    iget-object v4, v0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v8, 0x0

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-static/range {v3 .. v12}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;ZILcom/anythink/core/d/f;Lcom/anythink/core/common/f/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/common/f/c;)V

    :cond_3
    :goto_1
    return v1

    :cond_4
    invoke-static {}, Lcom/anythink/core/a/c;->a()Lcom/anythink/core/a/c;

    iget-object v2, v0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/anythink/core/a/c;->a(Ljava/lang/String;Lcom/anythink/core/d/f;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p1, :cond_5

    iget-object v4, v0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    const/4 v6, 0x3

    const-string v2, ""

    move-object v5, v7

    move-object v7, v2

    move-object/from16 v8, p3

    invoke-static/range {v3 .. v8}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/f;ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    iget-object v4, v0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v8, 0x0

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-static/range {v3 .. v12}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;ZILcom/anythink/core/d/f;Lcom/anythink/core/common/f/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/common/f/c;)V

    :cond_6
    :goto_2
    return v1

    :cond_7
    iget-object v2, v0, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v2

    iget-object v4, v0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v7, v4}, Lcom/anythink/core/a/a;->a(Lcom/anythink/core/d/f;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz p1, :cond_8

    iget-object v4, v0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    const/4 v6, 0x2

    const-string v2, ""

    move-object v5, v7

    move-object v7, v2

    move-object/from16 v8, p3

    invoke-static/range {v3 .. v8}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/f;ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    :cond_8
    if-eqz p2, :cond_9

    iget-object v4, v0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x0

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-static/range {v3 .. v12}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;ZILcom/anythink/core/d/f;Lcom/anythink/core/common/f/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/common/f/c;)V

    :cond_9
    :goto_3
    return v1

    :cond_a
    const/4 v1, 0x0

    return v1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;)Lcom/anythink/core/common/f/b;
    .locals 6

    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    invoke-static {p1, p2}, Lcom/anythink/core/common/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p3, Lcom/anythink/core/common/f/v;->g:Ljava/util/Map;

    iget-object v5, p3, Lcom/anythink/core/common/f/v;->i:Lcom/anythink/core/common/f/c;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;ZZLjava/util/Map;Lcom/anythink/core/common/f/c;)Lcom/anythink/core/common/f/b;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/h;)V
    .locals 1

    invoke-static {}, Lcom/anythink/core/a/c;->a()Lcom/anythink/core/a/c;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/anythink/core/a/c;->a(Ljava/lang/String;Lcom/anythink/core/d/f;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Lcom/anythink/core/common/f/h;->E(I)V

    new-instance p0, Lcom/anythink/core/common/f/g;

    const-string p1, "2004"

    const-string v0, ""

    invoke-static {p1, v0, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    const-string v0, "Pacing."

    invoke-direct {p0, p1, v0}, Lcom/anythink/core/common/f/g;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(Lcom/anythink/core/common/f;)Z
    .locals 0

    invoke-direct {p0}, Lcom/anythink/core/common/f;->k()Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/anythink/core/common/f;)V
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/f;->k:Lcom/anythink/core/common/j/d;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/anythink/core/common/j/d;->c()V

    :cond_0
    return-void
.end method

.method private static c(Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/h;)V
    .locals 1

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->aV()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x5

    invoke-virtual {p1, p0}, Lcom/anythink/core/common/f/h;->E(I)V

    new-instance p0, Lcom/anythink/core/common/f/g;

    const-string p1, "4003"

    const-string v0, ""

    invoke-static {p1, v0, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    const-string v0, "Strategy is close."

    invoke-direct {p0, p1, v0}, Lcom/anythink/core/common/f/g;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic d(Lcom/anythink/core/common/f;)Z
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/f;->j:Lcom/anythink/core/common/j/e;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/anythink/core/common/j/e;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic e(Lcom/anythink/core/common/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/f;->m:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f(Lcom/anythink/core/common/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/f;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g(Lcom/anythink/core/common/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/core/common/f;->n:Z

    return p0
.end method

.method public static synthetic h(Lcom/anythink/core/common/f;)J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/f;->o:J

    return-wide v0
.end method

.method private h()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/core/common/f;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private i()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f;->j:Lcom/anythink/core/common/j/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/core/common/j/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic i(Lcom/anythink/core/common/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/core/common/f;->p:Z

    return p0
.end method

.method private j()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f;->j:Lcom/anythink/core/common/j/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/core/common/j/e;->b()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic j(Lcom/anythink/core/common/f;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/common/f;->n:Z

    return v0
.end method

.method public static synthetic k(Lcom/anythink/core/common/f;)J
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/core/common/f;->o:J

    return-wide v0
.end method

.method private k()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f;->k:Lcom/anythink/core/common/j/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/core/common/j/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private l()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f;->k:Lcom/anythink/core/common/j/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/core/common/j/d;->c()V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f;->k:Lcom/anythink/core/common/j/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/core/common/j/d;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/util/Map;)Lcom/anythink/core/api/ATAdStatusInfo;
    .locals 9
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

    invoke-virtual {p0}, Lcom/anythink/core/common/f;->f()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;ZZLjava/util/Map;)Lcom/anythink/core/common/f/b;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/anythink/core/common/f/b;->n()Lcom/anythink/core/api/ATAdInfo;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-instance v4, Lcom/anythink/core/api/ATAdStatusInfo;

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-direct {v4, v0, p2, v3}, Lcom/anythink/core/api/ATAdStatusInfo;-><init>(ZZLcom/anythink/core/api/ATAdInfo;)V

    iget-object p2, p0, Lcom/anythink/core/common/f;->k:Lcom/anythink/core/common/j/d;

    if-eqz p2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/anythink/core/common/f;->o:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x7d0

    cmp-long p2, v5, v7

    if-gtz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_4

    invoke-virtual {p0, v4}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/api/ATAdStatusInfo;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/anythink/core/common/f;->c()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {v4}, Lcom/anythink/core/api/ATAdStatusInfo;->isReady()Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    iget-object p2, p0, Lcom/anythink/core/common/f;->k:Lcom/anythink/core/common/j/d;

    const/4 v0, 0x5

    invoke-interface {p2, p1, v0}, Lcom/anythink/core/common/j/d;->a(Landroid/content/Context;I)V

    :cond_4
    return-object v4
.end method

.method public final a(Landroid/content/Context;ZZLjava/util/Map;)Lcom/anythink/core/common/f/b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/anythink/core/common/f/b;"
        }
    .end annotation

    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/w;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/anythink/core/d/h;->a(Landroid/content/Context;)Lcom/anythink/core/d/h;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/h;->a(Ljava/lang/String;)Lcom/anythink/core/d/f;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/w;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "anythink"

    const-string p2, "Forbidden placement"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/anythink/core/common/w;->a(Lcom/anythink/core/d/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p0

    invoke-direct/range {v2 .. v8}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;ZZLjava/util/Map;Lcom/anythink/core/common/f;Lcom/anythink/core/d/f;)Lcom/anythink/core/common/f/b;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;ZZLjava/util/Map;Lcom/anythink/core/common/f/c;)Lcom/anythink/core/common/f/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;ZZLjava/util/Map;Lcom/anythink/core/common/f/c;)Lcom/anythink/core/common/f/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/common/f/c;",
            ")",
            "Lcom/anythink/core/common/f/b;"
        }
    .end annotation

    invoke-direct {p0, p3, p2, p4, p5}, Lcom/anythink/core/common/f;->a(ZZLjava/util/Map;Lcom/anythink/core/common/f/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Ljava/lang/String;ZZLjava/util/Map;Lcom/anythink/core/common/f/c;)Lcom/anythink/core/common/f/b;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p3, p0, Lcom/anythink/core/common/f;->j:Lcom/anythink/core/common/j/e;

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-interface {p3, p1, p2, p4, p5}, Lcom/anythink/core/common/j/e;->a(Ljava/lang/String;ZLjava/util/Map;Lcom/anythink/core/common/f/c;)Lcom/anythink/core/common/f/b;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final a()Lcom/anythink/core/common/j/d;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f;->k:Lcom/anythink/core/common/j/d;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 10
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

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1, v1}, Lcom/anythink/core/common/f;->a(ZZLjava/util/Map;Lcom/anythink/core/common/f/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v2

    iget-object v4, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Ljava/lang/String;ZZZLjava/util/Map;Lcom/anythink/core/common/f/c;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/f/b;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/anythink/core/common/f/b;->e()Lcom/anythink/core/api/BaseAd;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    if-eqz v3, :cond_4

    invoke-static {v3, v2}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/api/ATBaseAdAdapter;)Lcom/anythink/core/common/b/j;

    move-result-object v2

    :goto_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object v2

    goto :goto_3

    :cond_5
    return-object v0

    :cond_6
    return-object v1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/b/a;)V
    .locals 12

    move-object v3, p3

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->v()Z

    move-result v0

    const/4 v9, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    iput-boolean v9, v0, Lcom/anythink/core/common/b/n;->c:Z

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/anythink/core/common/u;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    new-array v7, v9, [I

    const/4 v0, 0x0

    aput v0, v7, v0

    const-string v1, "ofm_tid_key"

    invoke-interface {v8, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v7, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    move-object/from16 v2, p4

    iget v0, v2, Lcom/anythink/core/common/f/v;->d:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v10

    new-instance v11, Lcom/anythink/core/common/f$1;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p4

    move-object v3, p3

    move-object v4, p2

    move-object/from16 v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/anythink/core/common/f$1;-><init>(Lcom/anythink/core/common/f;Lcom/anythink/core/common/f/v;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/b/a;Landroid/content/Context;[ILjava/util/Map;)V

    const/4 v0, 0x2

    invoke-virtual {v10, v11, v0, v9}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method public final a(Lcom/anythink/core/api/AdError;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/common/f;->k:Lcom/anythink/core/common/j/d;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/anythink/core/common/f;->f:I

    invoke-interface {v0, p1, v1}, Lcom/anythink/core/common/j/d;->a(Lcom/anythink/core/api/AdError;I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/ax;Lcom/anythink/core/d/f;)V
    .locals 3

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/d/h;->a(Landroid/content/Context;)Lcom/anythink/core/d/h;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/h;->a(Ljava/lang/String;)Lcom/anythink/core/d/f;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/anythink/core/d/f;->ae()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/anythink/core/d/f;->ae()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v0}, Lcom/anythink/core/d/c;->au()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/anythink/core/common/f;->h:Ljava/util/List;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/f;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1
.end method

.method public final a(Lcom/anythink/core/common/f/b;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/core/common/f;->h:Ljava/util/List;

    if-eqz p1, :cond_1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/f;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/f;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_1
    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/v;Lcom/anythink/core/api/AdError;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/common/f;->g:Lcom/anythink/core/common/n;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/anythink/core/common/n;->a(ILcom/anythink/core/common/f/v;Lcom/anythink/core/common/f/ba;Lcom/anythink/core/api/AdError;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/core/common/j/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f;->i:Lcom/anythink/core/common/j/c;

    return-void
.end method

.method public final a(Lcom/anythink/core/common/j/e;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f;->j:Lcom/anythink/core/common/j/e;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;DLcom/anythink/core/common/f/av;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/g;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3, p4}, Lcom/anythink/core/common/g;->a(DLcom/anythink/core/common/f/av;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/core/api/ATAdStatusInfo;)Z
    .locals 4

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/d/h;->a(Landroid/content/Context;)Lcom/anythink/core/d/h;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/h;->a(Ljava/lang/String;)Lcom/anythink/core/d/f;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/core/common/f;->c()I

    move-result v2

    invoke-virtual {v0}, Lcom/anythink/core/d/f;->i()I

    move-result v3

    if-lt v2, v3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/core/api/ATAdStatusInfo;->isReady()Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/anythink/core/basead/adx/api/ATAdxSetting;->getInstance()Lcom/anythink/core/basead/adx/api/ATAdxSetting;

    move-result-object p1

    iget-object v2, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/anythink/core/basead/adx/api/ATAdxSetting;->isAdxNetworkMode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/anythink/core/common/f;->k()Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/core/d/f;->af()I

    move-result p1

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method public final b(Ljava/lang/String;)Lcom/anythink/core/common/g;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/g;

    return-object p1
.end method

.method public final b(Landroid/content/Context;)Ljava/util/List;
    .locals 9
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

    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/w;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/anythink/core/d/h;->a(Landroid/content/Context;)Lcom/anythink/core/d/h;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/h;->a(Ljava/lang/String;)Lcom/anythink/core/d/f;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/w;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "anythink"

    const-string v0, "Forbidden placement"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/w;->a(Lcom/anythink/core/d/f;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/anythink/core/d/f;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    invoke-virtual {v0}, Lcom/anythink/core/d/f;->ah()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/anythink/core/common/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;ZZLjava/util/Map;Lcom/anythink/core/common/f/c;)Lcom/anythink/core/common/f/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/core/common/f/b;->n()Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/api/ATAdInfo;

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/anythink/core/api/ATAdInfo;->getEcpm()D

    move-result-wide v3

    invoke-virtual {v2}, Lcom/anythink/core/api/ATAdInfo;->getEcpm()D

    move-result-wide v5

    cmpl-double v7, v3, v5

    if-lez v7, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sharedCheckValidAdCaches, shared top price > real top price, shared price: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/anythink/core/api/ATAdInfo;->getEcpm()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", real price: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/anythink/core/api/ATAdInfo;->getEcpm()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-object p1

    :cond_5
    invoke-virtual {p0, p1}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/common/f;->h:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/f;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/b/a;)V
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v0, p5

    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/w;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/anythink/core/d/h;->a(Landroid/content/Context;)Lcom/anythink/core/d/h;

    move-result-object v1

    iget-object v2, v9, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/core/d/h;->a(Ljava/lang/String;)Lcom/anythink/core/d/f;

    move-result-object v12

    const-string v1, ""

    if-eqz v12, :cond_1

    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    move-result-object v2

    iget-object v3, v9, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/w;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "anythink"

    const-string v3, "Forbidden placement"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v2, "10019"

    invoke-static {v2, v1, v1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/core/common/b/a;->onAdLoadFail(Lcom/anythink/core/api/AdError;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/anythink/core/common/w;->a(Lcom/anythink/core/d/f;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v12}, Lcom/anythink/core/d/f;->l()Ljava/lang/String;

    move-result-object v13

    new-instance v2, Lcom/anythink/core/common/f/c;

    invoke-direct {v2}, Lcom/anythink/core/common/f/c;-><init>()V

    invoke-static {v2, v10, v12}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f/c;Ljava/lang/String;Lcom/anythink/core/d/f;)V

    iput-object v2, v11, Lcom/anythink/core/common/f/v;->i:Lcom/anythink/core/common/f/c;

    const/4 v2, 0x1

    new-array v14, v2, [Lcom/anythink/core/common/b/a;

    const/4 v15, 0x0

    aput-object v0, v14, v15

    invoke-virtual {v12}, Lcom/anythink/core/d/f;->o()I

    move-result v0

    if-ne v0, v2, :cond_5

    move-object/from16 v8, p1

    move-object/from16 v7, p2

    invoke-static {v8, v13, v7, v11}, Lcom/anythink/core/common/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;)Lcom/anythink/core/common/f/b;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/anythink/core/common/o/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/anythink/core/common/f/v;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "placementId:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";result_callback:success;"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Shared"

    invoke-static {v4, v2}, Lcom/anythink/core/common/o/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/core/common/f/b;->h()Lcom/anythink/core/common/f/h;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->ai()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_0

    :cond_2
    move-object/from16 v16, v1

    :goto_0
    const/4 v5, 0x1

    const-string v6, "1"

    const-string v17, "2"

    move-object/from16 v0, p3

    move-object v1, v13

    move-object/from16 v2, p2

    move-object v4, v12

    move-object/from16 v7, v17

    move-object/from16 v8, v16

    invoke-static/range {v0 .. v8}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/f;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aget-object v0, v14, v15

    if-eqz v0, :cond_3

    aget-object v0, v14, v15

    invoke-interface {v0}, Lcom/anythink/core/common/b/a;->onAdLoaded()V

    :cond_3
    const/4 v0, 0x0

    aput-object v0, v14, v15

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/anythink/core/common/w;->b(Ljava/lang/String;)V

    :goto_1
    new-instance v8, Lcom/anythink/core/common/f$4;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p3

    move-object v4, v13

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/anythink/core/common/f$4;-><init>(Lcom/anythink/core/common/f;[Lcom/anythink/core/common/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/d/f;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object v5, v8

    :goto_2
    invoke-virtual/range {v0 .. v5}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/b/a;)V

    return-void

    :cond_5
    new-instance v15, Lcom/anythink/core/common/f$5;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object v3, v13

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object v6, v12

    move-object v7, v14

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/anythink/core/common/f$5;-><init>(Lcom/anythink/core/common/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/d/f;[Lcom/anythink/core/common/b/a;Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v15

    goto :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p5}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/b/a;)V

    return-void
.end method

.method public final c()I
    .locals 4

    iget-object v0, p0, Lcom/anythink/core/common/f;->h:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/anythink/core/common/f;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/common/f/ax;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/anythink/core/common/f/ax;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2
    :goto_1
    return v1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/f$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/common/f$3;-><init>(Lcom/anythink/core/common/f;Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/common/f;->n:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/anythink/core/common/f;->o:J

    iput-boolean v0, p0, Lcom/anythink/core/common/f;->p:Z

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/d/h;->a(Landroid/content/Context;)Lcom/anythink/core/d/h;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/h;->b(Ljava/lang/String;)Lcom/anythink/core/d/f;

    move-result-object v0

    iget-boolean v1, p0, Lcom/anythink/core/common/f;->n:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/f;->n:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/f;->o:J

    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 3

    iget-boolean v0, p0, Lcom/anythink/core/common/f;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/core/common/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/core/common/g;->c()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    return-object v0
.end method
