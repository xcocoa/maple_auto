.class public final Lcom/anythink/core/c/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/c/a$a;
    }
.end annotation


# static fields
.field private static volatile e:Lcom/anythink/core/c/a;


# instance fields
.field public final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/anythink/core/c/a$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/anythink/core/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/c/a;->a:Ljava/lang/String;

    const-string v0, "sv_request_id"

    iput-object v0, p0, Lcom/anythink/core/c/a;->b:Ljava/lang/String;

    const-string v0, "sv_price"

    iput-object v0, p0, Lcom/anythink/core/c/a;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/c/a;->d:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/String;I)D
    .locals 4

    invoke-direct {p0, p1}, Lcom/anythink/core/c/a;->a(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAverageImpPrice valueList:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",proverCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Ljava/util/LinkedList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/c/a$a;

    iget-wide v2, v2, Lcom/anythink/core/c/a$a;->b:D

    add-double/2addr v0, v2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-double p1, p1

    div-double/2addr v0, p1

    return-wide v0

    :cond_3
    :goto_2
    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    return-wide p1
.end method

.method public static a()Lcom/anythink/core/c/a;
    .locals 2

    sget-object v0, Lcom/anythink/core/c/a;->e:Lcom/anythink/core/c/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/anythink/core/c/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/core/c/a;->e:Lcom/anythink/core/c/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/core/c/a;

    invoke-direct {v1}, Lcom/anythink/core/c/a;-><init>()V

    sput-object v1, Lcom/anythink/core/c/a;->e:Lcom/anythink/core/c/a;

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
    sget-object v0, Lcom/anythink/core/c/a;->e:Lcom/anythink/core/c/a;

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Lcom/anythink/core/c/a$a;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/c/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/anythink/core/c/a;->b(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :cond_1
    iget-object v1, p0, Lcom/anythink/core/c/a;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;DI)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/anythink/core/c/a;->a(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "putProverPriceInfo before list:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",cur impPrice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",maxRecordListSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    if-nez p5, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v2, p5, -0x1

    if-lt v1, v2, :cond_3

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    sub-int/2addr v1, p5

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v1, p5, :cond_4

    new-instance p5, Lcom/anythink/core/c/a$a;

    invoke-direct {p5, p0, p2, p3, p4}, Lcom/anythink/core/c/a$a;-><init>(Lcom/anythink/core/c/a;Ljava/lang/String;D)V

    invoke-virtual {v0, p5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "putProverPriceInfo after list:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object p2

    new-instance p3, Lcom/anythink/core/c/a$1;

    invoke-direct {p3, p0, p1, v0}, Lcom/anythink/core/c/a$1;-><init>(Lcom/anythink/core/c/a;Ljava/lang/String;Ljava/util/LinkedList;)V

    invoke-virtual {p2, p3}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/util/LinkedList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/anythink/core/c/a$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/c/a$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/core/c/a$1;-><init>(Lcom/anythink/core/c/a;Ljava/lang/String;Ljava/util/LinkedList;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Lcom/anythink/core/c/a$a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "anythink_proverb_price"

    const-string v3, ""

    invoke-static {v1, v2, p1, v3}, Lcom/anythink/core/common/o/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/anythink/core/c/a$a;

    const-string v4, "sv_request_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sv_price"

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/anythink/core/c/a$a;-><init>(Lcom/anythink/core/c/a;Ljava/lang/String;D)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    move-object v0, v1

    :catchall_1
    :cond_2
    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-direct {p0, p1}, Lcom/anythink/core/c/a;->a(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/c/a$a;

    iget-object v2, v1, Lcom/anythink/core/c/a$a;->a:Ljava/lang/String;

    iget-wide v3, v1, Lcom/anythink/core/c/a$a;->b:D

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    :cond_1
    const-string p1, ""

    :goto_1
    return-object p1
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/av;)V
    .locals 21

    move-object/from16 v0, p2

    const-string v1, "value_micros"

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/d/h;->a(Landroid/content/Context;)Lcom/anythink/core/d/h;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/core/d/h;->b(Ljava/lang/String;)Lcom/anythink/core/d/f;

    move-result-object v8

    if-nez v8, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/core/common/f/av;->ao()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/core/common/f/av;->d()I

    move-result v2

    const-wide/16 v11, 0x0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    move-object/from16 v15, p0

    goto/16 :goto_3

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/h;->f()Ljava/util/Map;

    move-result-object v13

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "generateImpPrice step1\uff1aextInfoMap:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v13, :cond_2

    const-string v5, "null"

    goto :goto_0

    :cond_2
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v13, :cond_4

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/core/common/f/av;->d()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/core/common/f/av;->ag()D

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/anythink/core/d/f;->k()I

    move-result v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v15, p0

    :try_start_2
    invoke-direct {v15, v2, v14}, Lcom/anythink/core/c/a;->a(Ljava/lang/String;I)D

    move-result-wide v16

    cmpl-double v2, v16, v11

    if-lez v2, :cond_3

    const/4 v14, 0x2

    goto :goto_1

    :cond_3
    const/4 v14, 0x1

    :goto_1
    move-object/from16 v2, p1

    move-object v3, v8

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v14

    invoke-static/range {v2 .. v7}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/d/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :catchall_0
    move-object/from16 v15, p0

    goto :goto_4

    :cond_4
    move-object/from16 v15, p0

    :goto_2
    if-eqz v13, :cond_5

    invoke-interface {v13, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double v9, v1, v3

    :cond_5
    :goto_3
    cmpl-double v1, v9, v11

    if-lez v1, :cond_6

    invoke-virtual {v0, v9, v10}, Lcom/anythink/core/common/f/av;->e(D)V

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/au;->ai()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v8}, Lcom/anythink/core/d/f;->k()I

    move-result v20

    move-object/from16 v15, p0

    move-wide/from16 v18, v9

    invoke-direct/range {v15 .. v20}, Lcom/anythink/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;DI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_6
    :goto_4
    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/h;Ljava/util/List;Lcom/anythink/core/d/f;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/f/h;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;",
            "Lcom/anythink/core/d/f;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/f/av;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/av;->ao()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/anythink/core/d/f;->k()I

    move-result v3

    invoke-virtual {v2}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/anythink/core/c/a;->a(Ljava/lang/String;I)D

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "syncProverbPrice adSourceId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",calPreverbCacheNum:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",averageValue:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_0

    invoke-virtual {v2}, Lcom/anythink/core/common/f/av;->aq()V

    invoke-virtual {v2, v4, v5}, Lcom/anythink/core/common/f/av;->a(D)V

    invoke-virtual {v2, v4, v5}, Lcom/anythink/core/common/f/av;->d(D)V

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/h;->o()D

    move-result-wide v6

    mul-double v6, v6, v4

    invoke-virtual {v2, v6, v7}, Lcom/anythink/core/common/f/av;->b(D)V

    const-string v6, "estimated"

    invoke-virtual {v2, v6}, Lcom/anythink/core/common/f/av;->i(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/anythink/core/common/f/av;->d()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v12

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/anythink/core/c/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    invoke-static/range {v8 .. v14}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/d/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    return-void
.end method
