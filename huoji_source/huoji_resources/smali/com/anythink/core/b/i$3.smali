.class public final Lcom/anythink/core/b/i$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/i;->a(Lcom/anythink/core/common/f/av;Lcom/anythink/core/api/ATBidRequestInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/api/ATBidRequestInfo;

.field public final synthetic b:Lcom/anythink/core/common/f/av;

.field public final synthetic c:Lcom/anythink/core/b/i;


# direct methods
.method public constructor <init>(Lcom/anythink/core/b/i;Lcom/anythink/core/api/ATBidRequestInfo;Lcom/anythink/core/common/f/av;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/b/i$3;->c:Lcom/anythink/core/b/i;

    iput-object p2, p0, Lcom/anythink/core/b/i$3;->a:Lcom/anythink/core/api/ATBidRequestInfo;

    iput-object p3, p0, Lcom/anythink/core/b/i$3;->b:Lcom/anythink/core/common/f/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/i$3;->a:Lcom/anythink/core/api/ATBidRequestInfo;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBidRequestInfo;->toRequestJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/anythink/core/b/i$3;->c:Lcom/anythink/core/b/i;

    iget-object v1, v1, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget v1, v1, Lcom/anythink/core/common/f/a;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/b/i$3;->c:Lcom/anythink/core/b/i;

    iget-object v2, v2, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget-object v2, v2, Lcom/anythink/core/common/f/a;->n:Lcom/anythink/core/common/f/ba;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/ba;->a()Lcom/anythink/core/d/f;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/b/i$3;->b:Lcom/anythink/core/common/f/av;

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/api/ATBidRequestInfo;->fillBaseCommonParams(Lorg/json/JSONObject;Ljava/lang/String;Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/av;)V

    iget-object v1, p0, Lcom/anythink/core/b/i$3;->b:Lcom/anythink/core/common/f/av;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/av;->m()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    :try_start_1
    const-string v1, "unit_id"

    iget-object v2, p0, Lcom/anythink/core/b/i$3;->b:Lcom/anythink/core/common/f/av;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->k()Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "ecpoffer"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lcom/anythink/core/b/i$3;->c:Lcom/anythink/core/b/i;

    iget-object v1, v1, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget v1, v1, Lcom/anythink/core/common/f/a;->z:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "get_offer"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/anythink/core/b/i$3;->c:Lcom/anythink/core/b/i;

    iget-object v1, v1, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget-object v1, v1, Lcom/anythink/core/common/f/a;->s:Lcom/anythink/core/common/f/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/h;->X()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/anythink/core/b/i$3;->c:Lcom/anythink/core/b/i;

    iget-object v1, v1, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget-object v1, v1, Lcom/anythink/core/common/f/a;->A:Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;->getBidFloor()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;->getCurrency()Lcom/anythink/core/api/ATAdConst$CURRENCY;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/anythink/core/api/ATAdConst$CURRENCY;->USD:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    :cond_2
    iget-object v4, p0, Lcom/anythink/core/b/i$3;->c:Lcom/anythink/core/b/i;

    iget-object v4, v4, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget-object v4, v4, Lcom/anythink/core/common/f/a;->n:Lcom/anythink/core/common/f/ba;

    invoke-virtual {v4}, Lcom/anythink/core/common/f/ba;->a()Lcom/anythink/core/d/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/d/f;->C()D

    move-result-wide v4

    sget-object v6, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    if-ne v1, v6, :cond_3

    :goto_1
    mul-double v2, v2, v4

    goto :goto_2

    :cond_3
    sget-object v6, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    if-ne v1, v6, :cond_4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v6

    goto :goto_1

    :cond_4
    :goto_2
    const-string v1, "c_bidfloor"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_5
    iget-object v1, p0, Lcom/anythink/core/b/i$3;->c:Lcom/anythink/core/b/i;

    iget-object v1, v1, Lcom/anythink/core/b/i;->d:Lcom/anythink/core/b/i$a;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/anythink/core/b/i$3;->b:Lcom/anythink/core/common/f/av;

    invoke-interface {v1, v2, v0}, Lcom/anythink/core/b/i$a;->a(Lcom/anythink/core/common/f/av;Lorg/json/JSONObject;)V

    :cond_6
    return-void

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/anythink/core/b/i$3;->c:Lcom/anythink/core/b/i;

    iget-object v0, v0, Lcom/anythink/core/b/i;->d:Lcom/anythink/core/b/i$a;

    if-eqz v0, :cond_8

    const-string v1, "The parameter is abnormal."

    iget-object v2, p0, Lcom/anythink/core/b/i$3;->b:Lcom/anythink/core/common/f/av;

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/b/i$a;->a(Ljava/lang/String;Lcom/anythink/core/common/f/av;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_8
    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/anythink/core/b/i$3;->c:Lcom/anythink/core/b/i;

    iget-object v1, v1, Lcom/anythink/core/b/i;->d:Lcom/anythink/core/b/i$a;

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/core/b/i$3;->b:Lcom/anythink/core/common/f/av;

    invoke-interface {v1, v0, v2}, Lcom/anythink/core/b/i$a;->a(Ljava/lang/String;Lcom/anythink/core/common/f/av;)V

    :cond_9
    return-void
.end method
