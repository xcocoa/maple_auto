.class public final Lcom/anythink/core/b/h;
.super Lcom/anythink/core/b/d;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Lcom/anythink/core/b/b/b;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/core/b/d;-><init>(Lcom/anythink/core/common/f/a;)V

    const-string p1, "IH Bidding"

    iput-object p1, p0, Lcom/anythink/core/b/h;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/b/h;Ljava/util/List;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/anythink/core/b/h;->a(Ljava/util/List;I)V

    return-void
.end method

.method private declared-synchronized a(Ljava/util/List;I)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lcom/anythink/core/b/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/anythink/core/b/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez p1, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_1
    move-object/from16 v2, p1

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/anythink/core/b/h;->b:J

    sub-long/2addr v4, v6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v1, Lcom/anythink/core/b/d;->f:Lcom/anythink/core/common/f/a;

    iget-object v7, v7, Lcom/anythink/core/common/f/a;->j:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/anythink/core/common/f/av;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/anythink/core/common/f/av;

    invoke-virtual {v8}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v11, v4, v5}, Lcom/anythink/core/common/f/av;->a(J)V

    invoke-virtual {v11, v9}, Lcom/anythink/core/common/f/av;->g(I)V

    new-instance v9, Lcom/anythink/core/common/f/q;

    const/4 v14, 0x1

    invoke-virtual {v11}, Lcom/anythink/core/common/f/av;->y()D

    move-result-wide v15

    invoke-virtual {v11}, Lcom/anythink/core/common/f/av;->z()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    const-string v19, ""

    const-string v20, ""

    const-string v21, ""

    move-object v13, v9

    invoke-direct/range {v13 .. v21}, Lcom/anythink/core/common/f/q;-><init>(ZDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/anythink/core/common/f/av;->o()J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    add-long/2addr v12, v14

    iput-wide v12, v9, Lcom/anythink/core/common/f/q;->f:J

    invoke-virtual {v11}, Lcom/anythink/core/common/f/av;->o()J

    move-result-wide v12

    iput-wide v12, v9, Lcom/anythink/core/common/f/q;->e:J

    invoke-virtual {v1, v11, v9}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/common/f/av;Lcom/anythink/core/common/f/q;)V

    const/4 v9, 0x1

    :cond_4
    if-nez v9, :cond_2

    const-string v9, "NO_BID_TOKEN"

    invoke-virtual {v8}, Lcom/anythink/core/common/f/av;->A()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "No Bid Info."

    const-wide/16 v10, 0x0

    const/4 v12, -0x2

    invoke-static {v8, v9, v10, v11, v12}, Lcom/anythink/core/b/h;->b(Lcom/anythink/core/common/f/av;Ljava/lang/String;JI)V

    goto :goto_2

    :cond_5
    const-string v9, "No Bid Info."

    invoke-static {v8, v9, v4, v5, v0}, Lcom/anythink/core/b/h;->b(Lcom/anythink/core/common/f/av;Ljava/lang/String;JI)V

    :goto_2
    const-string v9, "No Bid Info."

    invoke-virtual {v1, v8, v9, v0}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/common/f/av;Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v4, "IH Bidding Success List"

    invoke-static {v2}, Lcom/anythink/core/b/d;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "IH Bidding Fail List"

    invoke-static {v6}, Lcom/anythink/core/b/d;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :try_start_3
    iget-object v4, v1, Lcom/anythink/core/b/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v9}, Lcom/anythink/core/common/o/p;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_8
    iget-object v0, v1, Lcom/anythink/core/b/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v1, Lcom/anythink/core/b/h;->c:Lcom/anythink/core/b/b/b;

    if-eqz v0, :cond_9

    invoke-interface {v0, v2, v6}, Lcom/anythink/core/b/b/b;->a(Ljava/util/List;Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Lcom/anythink/core/common/f/av;)V
    .locals 10

    new-instance v9, Lcom/anythink/core/common/f/q;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->y()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->z()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/anythink/core/common/f/q;-><init>(ZDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->o()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, v9, Lcom/anythink/core/common/f/q;->f:J

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->o()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/anythink/core/common/f/q;->e:J

    invoke-virtual {p0, p1, v9}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/common/f/av;Lcom/anythink/core/common/f/q;)V

    return-void
.end method

.method private static b(Lcom/anythink/core/common/f/av;Ljava/lang/String;JI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/common/f/av;Ljava/lang/String;JI)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x3

    invoke-direct {p0, v0, v1}, Lcom/anythink/core/b/h;->a(Ljava/util/List;I)V

    return-void
.end method

.method public final a(Lcom/anythink/core/b/b/b;)V
    .locals 5

    iput-object p1, p0, Lcom/anythink/core/b/h;->c:Lcom/anythink/core/b/b/b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/b/h;->b:J

    iget-object v0, p0, Lcom/anythink/core/b/d;->f:Lcom/anythink/core/common/f/a;

    iget-object v0, v0, Lcom/anythink/core/common/f/a;->j:Ljava/util/List;

    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v1

    const-string v2, "anythink_bidding"

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "Start IH Bidding List"

    invoke-static {v0}, Lcom/anythink/core/b/d;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/anythink/core/common/o/p;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    invoke-static {}, Lcom/anythink/core/b/f;->a()Lcom/anythink/core/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/f;->b()Lcom/anythink/core/api/MediationBidManager;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/f/av;

    invoke-static {v1}, Lcom/anythink/core/common/o/j;->a(Lcom/anythink/core/common/f/av;)Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getBidManager()Lcom/anythink/core/api/MediationBidManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/anythink/core/b/f;->a()Lcom/anythink/core/b/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/b/f;->a(Lcom/anythink/core/api/MediationBidManager;)V

    :cond_2
    invoke-static {}, Lcom/anythink/core/b/f;->a()Lcom/anythink/core/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/f;->b()Lcom/anythink/core/api/MediationBidManager;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p1, "No BidManager."

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/16 v0, -0x9

    invoke-direct {p0, p1, v0}, Lcom/anythink/core/b/h;->a(Ljava/util/List;I)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/anythink/core/b/d;->f:Lcom/anythink/core/common/f/a;

    iget-object v1, v1, Lcom/anythink/core/common/f/a;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/api/MediationBidManager;->setBidRequestUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/b/d;->f:Lcom/anythink/core/common/f/a;

    new-instance v2, Lcom/anythink/core/b/h$1;

    invoke-direct {v2, p0, p1}, Lcom/anythink/core/b/h$1;-><init>(Lcom/anythink/core/b/h;Lcom/anythink/core/b/b/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/api/MediationBidManager;->startBid(Lcom/anythink/core/common/f/a;Lcom/anythink/core/api/MediationBidManager$BidListener;)V

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/av;Lcom/anythink/core/common/f/o;J)V
    .locals 0

    return-void
.end method
