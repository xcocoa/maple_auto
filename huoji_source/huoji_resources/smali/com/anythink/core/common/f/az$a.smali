.class public final Lcom/anythink/core/common/f/az$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/f/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:D

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/anythink/core/common/f/av;Lcom/anythink/core/common/f/q;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/az$a;->b:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/anythink/core/common/f/o;->getPrice()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->y()D

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/anythink/core/common/f/az$a;->d:D

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->d()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/f/az$a;->c:I

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->m()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v3, 0x3

    if-eq v0, v2, :cond_2

    const/4 v4, 0x4

    if-eq v0, v3, :cond_1

    if-eq v0, v4, :cond_3

    const/4 v3, 0x7

    if-eq v0, v3, :cond_3

    const/16 v3, 0x8

    if-eq v0, v3, :cond_4

    goto :goto_1

    :cond_1
    iput v4, p0, Lcom/anythink/core/common/f/az$a;->a:I

    goto :goto_1

    :cond_2
    iput v3, p0, Lcom/anythink/core/common/f/az$a;->a:I

    goto :goto_1

    :cond_3
    iput v2, p0, Lcom/anythink/core/common/f/az$a;->a:I

    goto :goto_1

    :cond_4
    iput v1, p0, Lcom/anythink/core/common/f/az$a;->a:I

    :goto_1
    const/16 v0, 0x23

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->d()I

    move-result p1

    if-ne v0, p1, :cond_5

    iput v2, p0, Lcom/anythink/core/common/f/az$a;->a:I

    :cond_5
    if-eqz p2, :cond_6

    iget-object p1, p2, Lcom/anythink/core/common/f/q;->g:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string p1, ""

    :goto_2
    iput-object p1, p0, Lcom/anythink/core/common/f/az$a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lorg/json/JSONObject;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "adSourceId"

    iget-object v2, p0, Lcom/anythink/core/common/f/az$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "price"

    iget-wide v2, p0, Lcom/anythink/core/common/f/az$a;->d:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "networkFirmId"

    iget v2, p0, Lcom/anythink/core/common/f/az$a;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "demandType"

    iget v2, p0, Lcom/anythink/core/common/f/az$a;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "tp_bid_id"

    iget-object v2, p0, Lcom/anythink/core/common/f/az$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
