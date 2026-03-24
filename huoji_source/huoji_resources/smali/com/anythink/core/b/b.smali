.class public Lcom/anythink/core/b/b;
.super Lcom/anythink/core/common/o/a;
.source ""

# interfaces
.implements Lcom/anythink/core/common/i$b;


# static fields
.field public static final a:Ljava/lang/String; = "b"


# instance fields
.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/f/h;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/anythink/core/common/m/b;

.field private d:Ljava/lang/String;

.field private e:Lcom/anythink/core/common/i$a;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Z

.field private i:Lcom/anythink/core/common/f/a;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/anythink/core/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private k:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/anythink/core/common/f/a;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/anythink/core/common/o/a;-><init>()V

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v2, v0, Lcom/anythink/core/b/b;->b:Ljava/util/Map;

    new-instance v2, Lcom/anythink/core/b/b$1;

    invoke-direct {v2, v0}, Lcom/anythink/core/b/b$1;-><init>(Lcom/anythink/core/b/b;)V

    iput-object v2, v0, Lcom/anythink/core/b/b;->c:Lcom/anythink/core/common/m/b;

    iput-object v1, v0, Lcom/anythink/core/b/b;->i:Lcom/anythink/core/common/f/a;

    iget-object v2, v1, Lcom/anythink/core/common/f/a;->e:Ljava/lang/String;

    iput-object v2, v0, Lcom/anythink/core/b/b;->d:Ljava/lang/String;

    iget-object v2, v1, Lcom/anythink/core/common/f/a;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/anythink/core/b/b;->f:Ljava/lang/String;

    iget-wide v4, v1, Lcom/anythink/core/common/f/a;->g:J

    iput-wide v4, v0, Lcom/anythink/core/b/b;->g:J

    iget-object v2, v1, Lcom/anythink/core/common/f/a;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v1, Lcom/anythink/core/common/f/a;->y:Lcom/anythink/core/common/p/i;

    invoke-virtual {v5}, Lcom/anythink/core/common/p/i;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, v0, Lcom/anythink/core/b/b;->i:Lcom/anythink/core/common/f/a;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v4

    iput v5, v6, Lcom/anythink/core/common/f/a;->z:I

    goto :goto_0

    :cond_0
    iget-object v5, v0, Lcom/anythink/core/b/b;->i:Lcom/anythink/core/common/f/a;

    iput v4, v5, Lcom/anythink/core/common/f/a;->z:I

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v8

    move-object v10, v9

    :goto_1
    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x5

    if-ge v7, v4, :cond_a

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/anythink/core/common/f/av;

    invoke-virtual {v15}, Lcom/anythink/core/common/f/av;->m()I

    move-result v11

    if-eq v11, v13, :cond_8

    invoke-virtual {v15}, Lcom/anythink/core/common/f/av;->m()I

    move-result v11

    if-ne v11, v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v15}, Lcom/anythink/core/common/f/av;->m()I

    move-result v11

    if-ne v11, v12, :cond_3

    if-nez v8, :cond_2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    :cond_2
    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-virtual {v15}, Lcom/anythink/core/common/f/av;->m()I

    move-result v11

    if-ne v11, v14, :cond_5

    if-nez v9, :cond_4

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    :cond_4
    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v15}, Lcom/anythink/core/common/f/av;->m()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_7

    if-nez v10, :cond_6

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(I)V

    :cond_6
    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v15}, Lcom/anythink/core/common/f/av;->m()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_9

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    :goto_2
    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_a
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v14}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, v0, Lcom/anythink/core/b/b;->j:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_b

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c

    :cond_b
    new-instance v3, Lcom/anythink/core/b/c;

    invoke-virtual {v1, v5, v6}, Lcom/anythink/core/common/f/a;->a(Ljava/util/List;Ljava/util/List;)Lcom/anythink/core/common/f/a;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/anythink/core/b/c;-><init>(Lcom/anythink/core/common/f/a;Ljava/util/List;)V

    iget-object v2, v0, Lcom/anythink/core/b/b;->j:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    if-eqz v8, :cond_d

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d

    new-instance v2, Lcom/anythink/core/b/a;

    invoke-virtual {v1, v8}, Lcom/anythink/core/common/f/a;->a(Ljava/util/List;)Lcom/anythink/core/common/f/a;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/anythink/core/b/a;-><init>(Lcom/anythink/core/common/f/a;)V

    iget-object v3, v0, Lcom/anythink/core/b/b;->j:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    if-eqz v9, :cond_e

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    new-instance v2, Lcom/anythink/core/b/h;

    invoke-virtual {v1, v9}, Lcom/anythink/core/common/f/a;->b(Ljava/util/List;)Lcom/anythink/core/common/f/a;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/anythink/core/b/h;-><init>(Lcom/anythink/core/common/f/a;)V

    iget-object v3, v0, Lcom/anythink/core/b/b;->j:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    if-eqz v10, :cond_f

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_f

    new-instance v2, Lcom/anythink/core/b/g;

    invoke-virtual {v1, v10}, Lcom/anythink/core/common/f/a;->c(Ljava/util/List;)Lcom/anythink/core/common/f/a;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/anythink/core/b/g;-><init>(Lcom/anythink/core/common/f/a;)V

    iget-object v1, v0, Lcom/anythink/core/b/b;->j:Ljava/util/Map;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/b/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/core/b/b;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/b/b;Lcom/anythink/core/common/f/av;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 2

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->m()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/b;->i:Lcom/anythink/core/common/f/a;

    iget-object v1, v0, Lcom/anythink/core/common/f/a;->c:Lcom/anythink/core/common/f/v;

    iget-object v1, v1, Lcom/anythink/core/common/f/v;->e:Lcom/anythink/core/common/b/b;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/anythink/core/common/f/a;->s:Lcom/anythink/core/common/f/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->V()Lcom/anythink/core/common/f/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/anythink/core/common/o/v;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/av;IZ)V

    invoke-virtual {p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->getInternalNetworkPlacementId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/anythink/core/common/f/h;->g(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/anythink/core/b/b;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 p1, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/f/h;->f(D)V

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/f/h;->c(D)V

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/f/h;->d(D)V

    iget-object p0, p0, Lcom/anythink/core/b/b;->i:Lcom/anythink/core/common/f/a;

    iget-object p0, p0, Lcom/anythink/core/common/f/a;->c:Lcom/anythink/core/common/f/v;

    iget-object p0, p0, Lcom/anythink/core/common/f/v;->e:Lcom/anythink/core/common/b/b;

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/b/b;->a(Lcom/anythink/core/common/f/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/b/b;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/core/b/b;->b(Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/anythink/core/common/f/av;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/b/b;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v1

    new-instance v2, Lcom/anythink/core/b/b$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/anythink/core/b/b$4;-><init>(Lcom/anythink/core/b/b;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/av;)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/anythink/core/common/f/av;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 2

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->m()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/b;->i:Lcom/anythink/core/common/f/a;

    iget-object v1, v0, Lcom/anythink/core/common/f/a;->c:Lcom/anythink/core/common/f/v;

    iget-object v1, v1, Lcom/anythink/core/common/f/v;->e:Lcom/anythink/core/common/b/b;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/anythink/core/common/f/a;->s:Lcom/anythink/core/common/f/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->V()Lcom/anythink/core/common/f/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/anythink/core/common/o/v;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/av;IZ)V

    invoke-virtual {p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->getInternalNetworkPlacementId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/anythink/core/common/f/h;->g(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/anythink/core/b/b;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 p1, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/f/h;->f(D)V

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/f/h;->c(D)V

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/f/h;->d(D)V

    iget-object p1, p0, Lcom/anythink/core/b/b;->i:Lcom/anythink/core/common/f/a;

    iget-object p1, p1, Lcom/anythink/core/common/f/a;->c:Lcom/anythink/core/common/f/v;

    iget-object p1, p1, Lcom/anythink/core/common/f/v;->e:Lcom/anythink/core/common/b/b;

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/b/b;->a(Lcom/anythink/core/common/f/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/b;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/b/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/b/b;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/anythink/core/b/b;->j:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/anythink/core/common/o/a;->a()V

    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object p1

    iget-object v2, p0, Lcom/anythink/core/b/b;->c:Lcom/anythink/core/common/m/b;

    invoke-interface {p1, v2}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-gtz v2, :cond_4

    if-lez v3, :cond_f

    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-lez v2, :cond_7

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_6

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/anythink/core/common/f/av;

    iget-object v9, p0, Lcom/anythink/core/b/b;->d:Ljava/lang/String;

    invoke-direct {p0, v9, v8, v0}, Lcom/anythink/core/b/b;->a(Ljava/lang/String;Lcom/anythink/core/common/f/av;Z)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/anythink/core/b/b;->b:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/anythink/core/common/f/h;

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v10

    new-instance v11, Lcom/anythink/core/b/b$5;

    invoke-direct {v11, p0, v9, v8}, Lcom/anythink/core/b/b$5;-><init>(Lcom/anythink/core/b/b;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/av;)V

    invoke-virtual {v10, v11}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_7
    if-lez v3, :cond_c

    const/4 p2, 0x0

    :goto_4
    if-ge p2, v3, :cond_b

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/f/av;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_8

    :try_start_1
    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Bid Fail AdSource Object is null, currentSize:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/anythink/core/common/o/i;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Bidding inner error"

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v9

    invoke-virtual {v9}, Lcom/anythink/core/common/b/n;->q()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    :cond_8
    :try_start_2
    iget-object v6, p0, Lcom/anythink/core/b/b;->d:Ljava/lang/String;

    invoke-direct {p0, v6, v2, v1}, Lcom/anythink/core/b/b;->a(Ljava/lang/String;Lcom/anythink/core/common/f/av;Z)V

    invoke-static {v2}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v6, v8, v10

    if-lez v6, :cond_9

    invoke-virtual {v2}, Lcom/anythink/core/common/f/av;->z()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/anythink/core/b/b;->b:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/anythink/core/common/f/h;

    if-eqz v6, :cond_a

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v8

    new-instance v9, Lcom/anythink/core/b/b$4;

    invoke-direct {v9, p0, v6, v2}, Lcom/anythink/core/b/b$4;-><init>(Lcom/anythink/core/b/b;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/av;)V

    invoke-virtual {v8, v9}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    :cond_a
    :goto_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_b
    invoke-interface {p3}, Ljava/util/List;->clear()V

    :cond_c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v0, :cond_d

    new-instance p2, Lcom/anythink/core/b/b$3;

    invoke-direct {p2, p0}, Lcom/anythink/core/b/b$3;-><init>(Lcom/anythink/core/b/b;)V

    invoke-static {v4, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_d
    iget-object p2, p0, Lcom/anythink/core/b/b;->i:Lcom/anythink/core/common/f/a;

    iget-object p2, p2, Lcom/anythink/core/common/f/a;->s:Lcom/anythink/core/common/f/h;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/h;->V()Lcom/anythink/core/common/f/h;

    move-result-object v6

    iget-wide v8, p0, Lcom/anythink/core/b/b;->k:J

    iget-object p2, p0, Lcom/anythink/core/b/b;->i:Lcom/anythink/core/common/f/a;

    iget v10, p2, Lcom/anythink/core/common/f/a;->t:I

    iget v11, p2, Lcom/anythink/core/common/f/a;->f:I

    invoke-static/range {v6 .. v11}, Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/common/f/h;Ljava/util/List;JII)V

    iget-object p2, p0, Lcom/anythink/core/b/b;->e:Lcom/anythink/core/common/i$a;

    if-eqz p2, :cond_e

    iget-object p3, p0, Lcom/anythink/core/b/b;->f:Ljava/lang/String;

    invoke-interface {p2, p3, v4, v5, p1}, Lcom/anythink/core/common/i$a;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    :cond_e
    if-eqz p1, :cond_f

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/anythink/core/b/b;->e:Lcom/anythink/core/common/i$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_f
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Ljava/lang/String;Lcom/anythink/core/common/f/av;Z)V
    .locals 13

    move-object v7, p2

    invoke-virtual {p2}, Lcom/anythink/core/common/f/av;->n()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v0

    move-object v2, p1

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/a;->a(Ljava/lang/String;Lcom/anythink/core/common/f/av;)Lcom/anythink/core/common/f/aw;

    move-result-object v0

    invoke-virtual {p2}, Lcom/anythink/core/common/f/av;->M()Lcom/anythink/core/common/f/q;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/anythink/core/common/f/aw;->a(Lcom/anythink/core/common/f/q;)Lcom/anythink/core/common/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/f;->b()Lcom/anythink/core/common/f/b;

    move-result-object v2

    invoke-virtual {v0}, Lcom/anythink/core/common/f/f;->d()I

    move-result v0

    move-object v10, v2

    goto :goto_0

    :cond_0
    move-object v10, v2

    const/4 v0, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CacehMotify: Bidding Offer Cache exist, need to compare with cache status:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    if-eqz v10, :cond_1

    invoke-virtual {p2}, Lcom/anythink/core/common/f/av;->an()I

    move-result v3

    if-lt v0, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", current cache size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/av;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_7

    invoke-virtual {p2}, Lcom/anythink/core/common/f/av;->an()I

    move-result v2

    if-lt v0, v2, :cond_7

    :try_start_0
    invoke-static {p2}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v2

    invoke-virtual {v10}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v5

    cmpl-double v0, v2, v5

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/anythink/core/common/f/av;->p()I

    move-result v0

    invoke-virtual {p2, p2, v1, v0, v11}, Lcom/anythink/core/common/f/av;->a(Lcom/anythink/core/common/f/av;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {v10}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/av;->M()Lcom/anythink/core/common/f/q;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/anythink/core/common/f/av;->M()Lcom/anythink/core/common/f/q;

    move-result-object v0

    iget-object v0, v0, Lcom/anythink/core/common/f/o;->token:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const-string v0, ""

    :goto_3
    if-eqz v8, :cond_5

    iget-object v1, v8, Lcom/anythink/core/common/f/o;->token:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/anythink/core/common/f/y;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x2

    move-object v12, p0

    :try_start_2
    iget-object v1, v12, Lcom/anythink/core/b/b;->i:Lcom/anythink/core/common/f/a;

    iget-object v4, v1, Lcom/anythink/core/common/f/a;->s:Lcom/anythink/core/common/f/h;

    move-object v1, v0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/anythink/core/common/f/y;-><init>(ILcom/anythink/core/common/f/av;Lcom/anythink/core/common/f/h;D)V

    invoke-static {v8, v0, v11}, Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/common/f/q;Lcom/anythink/core/common/f/y;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_5
    move-object v12, p0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v12, p0

    :goto_4
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    invoke-virtual {v10}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object v0

    invoke-virtual {p2}, Lcom/anythink/core/common/f/av;->p()I

    move-result v1

    if-eqz p3, :cond_6

    const/4 v9, 0x1

    :cond_6
    invoke-virtual {p2, v0, v11, v1, v9}, Lcom/anythink/core/common/f/av;->a(Lcom/anythink/core/common/f/av;III)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_0
    :cond_7
    move-object v12, p0

    :catch_1
    return-void
.end method

.method private a(Ljava/lang/Integer;)Z
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/b/b;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/b/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/b/b;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/anythink/core/b/b;->j:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0}, Lcom/anythink/core/common/o/a;->a()V

    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/b;->c:Lcom/anythink/core/common/m/b;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Lcom/anythink/core/common/f/av;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/b/b;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v1

    new-instance v2, Lcom/anythink/core/b/b$5;

    invoke-direct {v2, p0, v0, p1}, Lcom/anythink/core/b/b$5;-><init>(Lcom/anythink/core/b/b;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/av;)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized b(Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/core/b/b;->a(Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic b(Lcom/anythink/core/b/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/core/b/b;->h:Z

    return p0
.end method

.method public static synthetic c(Lcom/anythink/core/b/b;)Lcom/anythink/core/common/f/a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/b/b;->i:Lcom/anythink/core/common/f/a;

    return-object p0
.end method

.method private declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/b;->e:Lcom/anythink/core/common/i$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/core/b/b;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/i$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/core/b/b;->i:Lcom/anythink/core/common/f/a;

    iget-wide v0, v0, Lcom/anythink/core/common/f/a;->i:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-wide/16 v0, 0x7d0

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/b/b;->c:Lcom/anythink/core/common/m/b;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;JZ)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/i$a;)V
    .locals 4

    iput-object p1, p0, Lcom/anythink/core/b/b;->e:Lcom/anythink/core/common/i$a;

    iget-wide v0, p0, Lcom/anythink/core/b/b;->g:J

    invoke-super {p0, v0, v1}, Lcom/anythink/core/common/o/a;->a(J)V

    iget-object p1, p0, Lcom/anythink/core/b/b;->i:Lcom/anythink/core/common/f/a;

    iget-wide v0, p1, Lcom/anythink/core/common/f/a;->i:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const-wide/16 v0, 0x7d0

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object p1

    iget-object v2, p0, Lcom/anythink/core/b/b;->c:Lcom/anythink/core/common/m/b;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;JZ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/b/b;->k:J

    new-instance p1, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/anythink/core/b/b;->j:Ljava/util/Map;

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/d;

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v2

    new-instance v3, Lcom/anythink/core/b/b$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/anythink/core/b/b$2;-><init>(Lcom/anythink/core/b/b;Lcom/anythink/core/b/d;Ljava/lang/Integer;)V

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/core/b/b;->h:Z

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/anythink/core/b/b;->j:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

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

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/b/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/anythink/core/b/d;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
