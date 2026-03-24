.class public final Lcom/anythink/core/d/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static m:Ljava/lang/String; = "ofm_logger"

.field private static n:Ljava/lang/String; = "ofm_tk_sw"

.field private static o:Ljava/lang/String; = "ofm_da_sw"

.field private static p:Ljava/lang/String; = "tk_address"

.field private static q:Ljava/lang/String; = "tk_max_amount"

.field private static r:Ljava/lang/String; = "tk_interval"

.field private static s:Ljava/lang/String; = "da_rt_keys_ft"

.field private static t:Ljava/lang/String; = "tk_no_t_ft"

.field private static u:Ljava/lang/String; = "da_not_keys_ft"

.field private static v:Ljava/lang/String; = "ofm_system"

.field private static w:Ljava/lang/String; = "ofm_tid"

.field private static x:Ljava/lang/String; = "ofm_firm_info"

.field private static y:Ljava/lang/String; = "ofm_st_vt"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:I

.field private e:I

.field private f:J

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:J

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/d/e;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/anythink/core/d/e;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/anythink/core/d/e;

    invoke-direct {v0}, Lcom/anythink/core/d/e;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/anythink/core/d/e;->v:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/anythink/core/d/e;->d:I

    sget-object p0, Lcom/anythink/core/d/e;->w:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/anythink/core/d/e;->e:I

    sget-object p0, Lcom/anythink/core/d/e;->y:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/anythink/core/d/e;->f:J

    sget-object p0, Lcom/anythink/core/d/e;->x:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/anythink/core/common/o/i;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    iput-object p0, v0, Lcom/anythink/core/d/e;->b:Ljava/util/Map;

    sget-object p0, Lcom/anythink/core/d/e;->m:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v2, Lcom/anythink/core/d/e;->n:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/anythink/core/d/e;->g:I

    sget-object v2, Lcom/anythink/core/d/e;->o:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/anythink/core/d/e;->h:I

    sget-object v2, Lcom/anythink/core/d/e;->p:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/core/d/e;->i:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/d/e;->q:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/anythink/core/d/e;->j:I

    sget-object v2, Lcom/anythink/core/d/e;->r:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/anythink/core/d/e;->k:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    sget-object v2, Lcom/anythink/core/d/e;->t:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object v2, v0, Lcom/anythink/core/d/e;->l:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_2
    return-object v0

    :catchall_1
    return-object v1
.end method

.method private b()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/d/e;->d:I

    return v0
.end method

.method private b(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/d/e;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/o/i;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private c()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/d/e;->e:I

    return v0
.end method

.method private static c(Ljava/lang/String;)Lcom/anythink/core/d/e;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/anythink/core/d/e;

    invoke-direct {v0}, Lcom/anythink/core/d/e;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/anythink/core/d/e;->c:Z

    sget-object v2, Lcom/anythink/core/d/e;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/anythink/core/d/e;->d:I

    sget-object v2, Lcom/anythink/core/d/e;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/o/i;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/d/e;->b:Ljava/util/Map;

    iput p0, v0, Lcom/anythink/core/d/e;->g:I

    iput p0, v0, Lcom/anythink/core/d/e;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private d()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/d/e;->g:I

    return v0
.end method

.method private e()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/d/e;->h:I

    return v0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/d/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method private g()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/d/e;->j:I

    return v0
.end method

.method private h()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/d/e;->k:J

    return-wide v0
.end method

.method private i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/core/d/e;->l:Ljava/util/Map;

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/d/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method private k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/core/d/e;->c:Z

    return v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/d/e;->f:J

    return-wide v0
.end method
