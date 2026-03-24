.class public abstract Lcom/anythink/core/b/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field public f:Lcom/anythink/core/common/f/a;

.field public g:Z

.field public h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/anythink/core/b/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/anythink/core/b/d;->f:Lcom/anythink/core/common/f/a;

    return-void
.end method

.method private static a(Lcom/anythink/core/d/f;Lcom/anythink/core/api/ATAdConst$CURRENCY;)D
    .locals 3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    sget-object v2, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->C()D

    move-result-wide p0

    div-double/2addr v0, p0

    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    mul-double v0, v0, p0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->C()D

    move-result-wide p0

    div-double/2addr v0, p0

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public static a(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/f/av;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "network_firm_id"

    invoke-virtual {v1}, Lcom/anythink/core/common/f/av;->d()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "ad_source_id"

    invoke-virtual {v1}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "content"

    invoke-virtual {v1}, Lcom/anythink/core/common/f/av;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/av;->A()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "error"

    invoke-virtual {v1}, Lcom/anythink/core/common/f/av;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static a(Lcom/anythink/core/common/f/av;Ljava/lang/String;JI)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/anythink/core/common/f/av;->a(J)V

    const-wide/16 p2, 0x0

    invoke-virtual {p0, p2, p3}, Lcom/anythink/core/common/f/av;->a(D)V

    invoke-virtual {p0, p2, p3}, Lcom/anythink/core/common/f/av;->d(D)V

    invoke-virtual {p0, p4}, Lcom/anythink/core/common/f/av;->g(I)V

    invoke-virtual {p0}, Lcom/anythink/core/common/f/av;->c()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "bid error"

    invoke-virtual {p0, p1}, Lcom/anythink/core/common/f/av;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/anythink/core/common/f/av;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    const-string v0, "unit_ids"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "network_firm_id"

    const/16 v5, 0x43

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final a(DLcom/anythink/core/api/ATAdConst$CURRENCY;)D
    .locals 2

    if-nez p3, :cond_0

    return-wide p1

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/b/d;->f:Lcom/anythink/core/common/f/a;

    iget-object v0, v0, Lcom/anythink/core/common/f/a;->n:Lcom/anythink/core/common/f/ba;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/ba;->a()Lcom/anythink/core/d/f;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/d/f;Lcom/anythink/core/api/ATAdConst$CURRENCY;)D

    move-result-wide v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    return-wide p1
.end method

.method public final a(DLcom/anythink/core/common/f/av;)D
    .locals 3

    invoke-virtual {p3}, Lcom/anythink/core/common/f/av;->ac()Lcom/anythink/core/api/ATAdConst$CURRENCY;

    move-result-object v0

    if-nez v0, :cond_0

    return-wide p1

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/b/d;->f:Lcom/anythink/core/common/f/a;

    iget-object v0, v0, Lcom/anythink/core/common/f/a;->n:Lcom/anythink/core/common/f/ba;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/ba;->a()Lcom/anythink/core/d/f;

    move-result-object v0

    invoke-virtual {p3}, Lcom/anythink/core/common/f/av;->ac()Lcom/anythink/core/api/ATAdConst$CURRENCY;

    move-result-object v1

    sget-object v2, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    if-ne v1, v2, :cond_1

    :goto_0
    invoke-virtual {v0}, Lcom/anythink/core/d/f;->C()D

    move-result-wide v0

    mul-double p1, p1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lcom/anythink/core/common/f/av;->ac()Lcom/anythink/core/api/ATAdConst$CURRENCY;

    move-result-object p3

    sget-object v1, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    if-ne p3, v1, :cond_2

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    div-double/2addr p1, v1

    goto :goto_0

    :cond_2
    :goto_1
    return-wide p1
.end method

.method public final a(Lcom/anythink/core/common/f/av;)D
    .locals 4

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->ac()Lcom/anythink/core/api/ATAdConst$CURRENCY;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/b/d;->f:Lcom/anythink/core/common/f/a;

    iget-object v0, v0, Lcom/anythink/core/common/f/a;->n:Lcom/anythink/core/common/f/ba;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/ba;->a()Lcom/anythink/core/d/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->ac()Lcom/anythink/core/api/ATAdConst$CURRENCY;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/d/f;Lcom/anythink/core/api/ATAdConst$CURRENCY;)D

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "generateNoticeCurrencyRate () >>> NetworkName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|| currenyRata(USD->RMB):"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    return-wide v0
.end method

.method public abstract a()V
.end method

.method public final a(ILcom/anythink/core/common/f/o;DZ)V
    .locals 7

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const-wide v0, 0x3fee666666666666L    # 0.95

    iget-object v2, p0, Lcom/anythink/core/b/d;->f:Lcom/anythink/core/common/f/a;

    iget-object v2, v2, Lcom/anythink/core/common/f/a;->n:Lcom/anythink/core/common/f/ba;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/ba;->a()Lcom/anythink/core/d/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/d/f;->s()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double p1, v2, v4

    if-lez p1, :cond_1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v2, v4

    if-gtz p1, :cond_1

    move-wide v0, v2

    :cond_1
    iget-wide v2, p2, Lcom/anythink/core/common/f/o;->originPrice:D

    mul-double v2, v2, v0

    iget-object p1, p0, Lcom/anythink/core/b/d;->f:Lcom/anythink/core/common/f/a;

    iget-object p1, p1, Lcom/anythink/core/common/f/a;->y:Lcom/anythink/core/common/p/i;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/anythink/core/common/p/i;->a()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f/av;

    invoke-static {v0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v0

    iget-wide v4, p2, Lcom/anythink/core/common/f/o;->originPrice:D

    cmpg-double v6, v0, v4

    if-gez v6, :cond_3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    :cond_4
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p3

    iget-wide v0, p2, Lcom/anythink/core/common/f/o;->originPrice:D

    sub-double/2addr v0, p3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double v2, v2, v0

    add-double/2addr p3, v2

    invoke-virtual {p2, p3, p4}, Lcom/anythink/core/common/f/o;->setPrice(D)V

    if-eqz p5, :cond_5

    invoke-virtual {p2, p3, p4}, Lcom/anythink/core/common/f/o;->setSortPrice(D)V

    :cond_5
    return-void
.end method

.method public abstract a(Lcom/anythink/core/b/b/b;)V
.end method

.method public abstract a(Lcom/anythink/core/common/f/av;Lcom/anythink/core/common/f/o;J)V
.end method

.method public final a(Lcom/anythink/core/common/f/av;Lcom/anythink/core/common/f/q;)V
    .locals 13

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/b/d;->f:Lcom/anythink/core/common/f/a;

    iget-object v0, v0, Lcom/anythink/core/common/f/a;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/anythink/core/common/f/q;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/core/b/f;->a()Lcom/anythink/core/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/d;->f:Lcom/anythink/core/common/f/a;

    iget-object v1, v1, Lcom/anythink/core/common/f/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/b/f;->a(Ljava/lang/String;Lcom/anythink/core/common/f/av;)Lcom/anythink/core/common/f/q;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/anythink/core/common/f/q;->a()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2}, Lcom/anythink/core/common/f/o;->getSortPrice()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/anythink/core/common/f/o;->getSortPrice()D

    move-result-wide v6

    cmpl-double v8, v4, v6

    if-lez v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/anythink/core/common/f/o;->getSortPrice()D

    move-result-wide v3

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/anythink/core/common/f/o;->getSortPrice()D

    move-result-wide v11

    if-eqz v3, :cond_3

    new-instance v3, Lcom/anythink/core/common/f/y;

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/anythink/core/b/d;->f:Lcom/anythink/core/common/f/a;

    iget-object v8, v4, Lcom/anythink/core/common/f/a;->s:Lcom/anythink/core/common/f/h;

    move-object v5, v3

    move-object v7, p1

    move-wide v9, v11

    invoke-direct/range {v5 .. v10}, Lcom/anythink/core/common/f/y;-><init>(ILcom/anythink/core/common/f/av;Lcom/anythink/core/common/f/h;D)V

    invoke-static {v0, v3, v2}, Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/common/f/q;Lcom/anythink/core/common/f/y;Z)V

    goto :goto_2

    :cond_3
    move-wide v3, v11

    const/4 v5, 0x1

    :goto_1
    move-wide v10, v3

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lcom/anythink/core/common/f/o;->getSortPrice()D

    move-result-wide v11

    :goto_2
    move-wide v10, v11

    const/4 v5, 0x1

    :goto_3
    if-eqz v5, :cond_7

    if-eqz v0, :cond_5

    :try_start_0
    new-instance v3, Lcom/anythink/core/common/f/y;

    const/4 v7, 0x2

    iget-object v4, p0, Lcom/anythink/core/b/d;->f:Lcom/anythink/core/common/f/a;

    iget-object v9, v4, Lcom/anythink/core/common/f/a;->s:Lcom/anythink/core/common/f/h;

    move-object v6, v3

    move-object v8, p1

    invoke-direct/range {v6 .. v11}, Lcom/anythink/core/common/f/y;-><init>(ILcom/anythink/core/common/f/av;Lcom/anythink/core/common/f/h;D)V

    invoke-static {v0, v3, v2}, Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/common/f/q;Lcom/anythink/core/common/f/y;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_4
    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/anythink/core/common/f/av;->a(Lcom/anythink/core/common/f/q;III)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->K()I

    move-result v1

    if-eq v1, v0, :cond_9

    invoke-static {}, Lcom/anythink/core/b/f;->a()Lcom/anythink/core/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/d;->f:Lcom/anythink/core/common/f/a;

    iget-object v1, v1, Lcom/anythink/core/common/f/a;->e:Ljava/lang/String;

    iget-object v0, v0, Lcom/anythink/core/b/f;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/anythink/core/common/f/q;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->Z()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/anythink/core/common/a/a;->a()Lcom/anythink/core/common/a/a;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Lcom/anythink/core/common/a/a;->a(Ljava/lang/String;Lcom/anythink/core/common/f/q;)V

    :cond_6
    return-void

    :cond_7
    if-eqz p2, :cond_8

    :try_start_1
    new-instance v3, Lcom/anythink/core/common/f/y;

    const/4 v7, 0x2

    iget-object v4, p0, Lcom/anythink/core/b/d;->f:Lcom/anythink/core/common/f/a;

    iget-object v9, v4, Lcom/anythink/core/common/f/a;->s:Lcom/anythink/core/common/f/h;

    move-object v6, v3

    move-object v8, p1

    invoke-direct/range {v6 .. v11}, Lcom/anythink/core/common/f/y;-><init>(ILcom/anythink/core/common/f/av;Lcom/anythink/core/common/f/h;D)V

    invoke-static {p2, v3, v1}, Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/common/f/q;Lcom/anythink/core/common/f/y;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_5
    invoke-virtual {p1, v0, v2, v1, v2}, Lcom/anythink/core/common/f/av;->a(Lcom/anythink/core/common/f/q;III)V

    :cond_9
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/core/b/d;->g:Z

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/av;Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/common/f/av;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/anythink/core/common/f/av;Ljava/lang/String;II)Z
    .locals 4

    invoke-static {}, Lcom/anythink/core/b/f;->a()Lcom/anythink/core/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/d;->f:Lcom/anythink/core/common/f/a;

    iget-object v1, v1, Lcom/anythink/core/common/f/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/b/f;->a(Ljava/lang/String;Lcom/anythink/core/common/f/av;)Lcom/anythink/core/common/f/q;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/core/common/f/q;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1, p3, p4}, Lcom/anythink/core/common/f/av;->a(Lcom/anythink/core/common/f/q;III)V

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/f/av;->h(Ljava/lang/String;)V

    return v2

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    :try_start_0
    iget-object p2, p0, Lcom/anythink/core/b/d;->f:Lcom/anythink/core/common/f/a;

    iget-object p2, p2, Lcom/anythink/core/common/f/a;->s:Lcom/anythink/core/common/f/h;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/h;->V()Lcom/anythink/core/common/f/h;

    move-result-object p2

    invoke-virtual {v0}, Lcom/anythink/core/common/f/q;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/anythink/core/common/f/au;->x(Ljava/lang/String;)V

    new-instance p3, Lcom/anythink/core/common/f/y;

    invoke-direct {p3, v2, p1, p2}, Lcom/anythink/core/common/f/y;-><init>(ILcom/anythink/core/common/f/av;Lcom/anythink/core/common/f/h;)V

    invoke-static {v0, p3, v2}, Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/common/f/q;Lcom/anythink/core/common/f/y;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return v1
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/b/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
