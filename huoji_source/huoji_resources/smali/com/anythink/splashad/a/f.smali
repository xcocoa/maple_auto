.class public final Lcom/anythink/splashad/a/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/splashad/a/f$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/anythink/core/common/n;

.field public c:J

.field public d:Lcom/anythink/core/common/f/b;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lcom/anythink/core/common/f/v;

.field private n:Landroid/content/Context;

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/splashad/a/f;->k:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/splashad/a/f;->n:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/anythink/core/api/ATMediationRequestInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/anythink/core/api/ATMediationRequestInfo;->getAdSourceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/splashad/a/f;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/api/ATMediationRequestInfo;->getNetworkFirmId()I

    move-result v0

    iput v0, p0, Lcom/anythink/splashad/a/f;->h:I

    invoke-virtual {p1}, Lcom/anythink/core/api/ATMediationRequestInfo;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/splashad/a/f;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/api/ATMediationRequestInfo;->getRequestParamMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/splashad/a/f;->l:Ljava/util/Map;

    const/4 v0, 0x4

    iput v0, p0, Lcom/anythink/splashad/a/f;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ad_type"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/splashad/a/f;Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/f/h;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/splashad/a/f;->a(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/f/h;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/splashad/a/f;Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;[Lcom/anythink/core/api/BaseAd;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/splashad/a/f;->a(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;[Lcom/anythink/core/api/BaseAd;)V

    return-void
.end method

.method private a(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/a/f$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/splashad/a/f$1;-><init>(Lcom/anythink/splashad/a/f;Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/splashad/a/f;->b:Lcom/anythink/core/common/n;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/anythink/splashad/a/f;->m:Lcom/anythink/core/common/f/v;

    invoke-virtual {p1, v1, v2, v0, p2}, Lcom/anythink/core/common/n;->a(ILcom/anythink/core/common/f/v;Lcom/anythink/core/common/f/ba;Lcom/anythink/core/api/AdError;)V

    :cond_1
    iput-object v0, p0, Lcom/anythink/splashad/a/f;->b:Lcom/anythink/core/common/n;

    return-void
.end method

.method private declared-synchronized a(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/f/h;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/splashad/a/f;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    :try_start_1
    sget-object v0, Lcom/anythink/core/common/b/h$n;->b:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/h$n;->m:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v0, v1, v2}, Lcom/anythink/core/common/o/p;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/anythink/splashad/a/f;->a:Z

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/anythink/splashad/a/f;->o:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p3

    new-instance v0, Lcom/anythink/splashad/a/f$1;

    invoke-direct {v0, p0, p1}, Lcom/anythink/splashad/a/f$1;-><init>(Lcom/anythink/splashad/a/f;Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V

    invoke-virtual {p3, v0}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    :cond_2
    iget-object p1, p0, Lcom/anythink/splashad/a/f;->b:Lcom/anythink/core/common/n;

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/anythink/splashad/a/f;->m:Lcom/anythink/core/common/f/v;

    invoke-virtual {p1, v0, v1, p3, p2}, Lcom/anythink/core/common/n;->a(ILcom/anythink/core/common/f/v;Lcom/anythink/core/common/f/ba;Lcom/anythink/core/api/AdError;)V

    :cond_3
    iput-object p3, p0, Lcom/anythink/splashad/a/f;->b:Lcom/anythink/core/common/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private varargs declared-synchronized a(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;[Lcom/anythink/core/api/BaseAd;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/splashad/a/f;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p1}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/anythink/splashad/a/f;->c:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/f/h;->f(J)V

    invoke-virtual {p1}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getInternalNetworkPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/h;->g(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v1

    sget-object v2, Lcom/anythink/core/common/b/h$n;->b:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/h$n;->l:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v1, v2, v3, v4}, Lcom/anythink/core/common/o/p;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/splashad/a/f;->n:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {p1}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;)V

    iget-object v1, p0, Lcom/anythink/splashad/a/f;->n:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;)V

    new-instance v1, Lcom/anythink/core/common/f/b;

    invoke-direct {v1}, Lcom/anythink/core/common/f/b;-><init>()V

    invoke-virtual {v1, p1}, Lcom/anythink/core/common/f/b;->a(Lcom/anythink/core/api/ATBaseAdAdapter;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/f/b;->c(J)V

    const-wide/32 v2, 0x927c0

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/f/b;->b(J)V

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/f/b;->a(J)V

    if-eqz p2, :cond_1

    array-length v2, p2

    if-lez v2, :cond_1

    aget-object v2, p2, v0

    invoke-virtual {p1}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->V()Lcom/anythink/core/common/f/h;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/anythink/core/api/BaseAd;->setTrackingInfo(Lcom/anythink/core/common/f/h;)V

    aget-object p1, p2, v0

    invoke-virtual {v1, p1}, Lcom/anythink/core/common/f/b;->a(Lcom/anythink/core/api/BaseAd;)V

    :cond_1
    iput-object v1, p0, Lcom/anythink/splashad/a/f;->d:Lcom/anythink/core/common/f/b;

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/splashad/a/f;->a:Z

    iput-boolean v0, p0, Lcom/anythink/splashad/a/f;->o:Z

    iget-object p1, p0, Lcom/anythink/splashad/a/f;->b:Lcom/anythink/core/common/n;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/anythink/splashad/a/f;->m:Lcom/anythink/core/common/f/v;

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/anythink/core/common/n;->a(ILcom/anythink/core/common/f/v;Lcom/anythink/core/common/f/ba;I)V

    :cond_3
    iput-object p2, p0, Lcom/anythink/splashad/a/f;->b:Lcom/anythink/core/common/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ad_type"

    const-string v1, "0"

    iput-object v1, p0, Lcom/anythink/splashad/a/f;->g:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/anythink/splashad/a/f;->l:Ljava/util/Map;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "unit_id"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/splashad/a/f;->g:Ljava/lang/String;

    const-string p1, "nw_firm_id"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/anythink/splashad/a/f;->h:I

    const-string p1, "adapter_class"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/splashad/a/f;->i:Ljava/lang/String;

    const-string p1, "content"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/splashad/a/f;->j:Ljava/lang/String;

    const/4 p1, -0x1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/anythink/splashad/a/f;->k:I

    iget-object p1, p0, Lcom/anythink/splashad/a/f;->j:Ljava/lang/String;

    invoke-static {p1}, Lcom/anythink/core/common/o/i;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/splashad/a/f;->l:Ljava/util/Map;

    iget v1, p0, Lcom/anythink/splashad/a/f;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/splashad/a/f;->b:Lcom/anythink/core/common/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/anythink/splashad/a/f;->m:Lcom/anythink/core/common/f/v;

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/anythink/core/common/n;->a(ILcom/anythink/core/common/f/v;Lcom/anythink/core/common/f/ba;I)V

    :cond_0
    iput-object v1, p0, Lcom/anythink/splashad/a/f;->b:Lcom/anythink/core/common/n;

    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/splashad/a/f;->b:Lcom/anythink/core/common/n;

    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/splashad/a/f;->d:Lcom/anythink/core/common/f/b;

    return-void
.end method

.method private e()Lcom/anythink/core/common/f/b;
    .locals 1

    iget-object v0, p0, Lcom/anythink/splashad/a/f;->d:Lcom/anythink/core/common/f/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/b;->c()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/splashad/a/f;->d:Lcom/anythink/core/common/f/b;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private f()Lcom/anythink/core/common/f/b;
    .locals 1

    iget-object v0, p0, Lcom/anythink/splashad/a/f;->d:Lcom/anythink/core/common/f/b;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/n;)V
    .locals 6

    const-string v0, "admob_content_urls"

    const-string v1, ""

    iput-object p4, p0, Lcom/anythink/splashad/a/f;->m:Lcom/anythink/core/common/f/v;

    iput-object p5, p0, Lcom/anythink/splashad/a/f;->b:Lcom/anythink/core/common/n;

    iput-object p3, p0, Lcom/anythink/splashad/a/f;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/anythink/splashad/a/f;->f:Ljava/lang/String;

    iget-object p4, p4, Lcom/anythink/core/common/f/v;->c:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const-string p5, "ad_type"

    const-string v2, "0"

    const/4 v3, 0x1

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/anythink/splashad/a/f;->m:Lcom/anythink/core/common/f/v;

    iget-object p4, p4, Lcom/anythink/core/common/f/v;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/anythink/splashad/a/f;->g:Ljava/lang/String;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lcom/anythink/splashad/a/f;->l:Ljava/util/Map;

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p4, "unit_id"

    invoke-virtual {v4, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/anythink/splashad/a/f;->g:Ljava/lang/String;

    const-string p4, "nw_firm_id"

    invoke-virtual {v4, p4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p4

    iput p4, p0, Lcom/anythink/splashad/a/f;->h:I

    const-string p4, "adapter_class"

    invoke-virtual {v4, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/anythink/splashad/a/f;->i:Ljava/lang/String;

    const-string p4, "content"

    invoke-virtual {v4, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/anythink/splashad/a/f;->j:Ljava/lang/String;

    const/4 p4, -0x1

    invoke-virtual {v4, p5, p4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/anythink/splashad/a/f;->k:I

    iget-object p4, p0, Lcom/anythink/splashad/a/f;->j:Ljava/lang/String;

    invoke-static {p4}, Lcom/anythink/core/common/o/i;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p4

    iput-object p4, p0, Lcom/anythink/splashad/a/f;->l:Ljava/util/Map;

    iget v4, p0, Lcom/anythink/splashad/a/f;->k:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p4, p5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p4

    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/anythink/splashad/a/f;->m:Lcom/anythink/core/common/f/v;

    iget-object p4, p4, Lcom/anythink/core/common/f/v;->b:Lcom/anythink/core/api/ATMediationRequestInfo;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/anythink/core/api/ATMediationRequestInfo;->getAdSourceId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/anythink/splashad/a/f;->g:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/anythink/core/api/ATMediationRequestInfo;->getNetworkFirmId()I

    move-result v4

    iput v4, p0, Lcom/anythink/splashad/a/f;->h:I

    invoke-virtual {p4}, Lcom/anythink/core/api/ATMediationRequestInfo;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/anythink/splashad/a/f;->i:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/anythink/core/api/ATMediationRequestInfo;->getRequestParamMap()Ljava/util/Map;

    move-result-object p4

    iput-object p4, p0, Lcom/anythink/splashad/a/f;->l:Ljava/util/Map;

    const/4 v4, 0x4

    iput v4, p0, Lcom/anythink/splashad/a/f;->k:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p4, p5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    iget-object p4, p0, Lcom/anythink/splashad/a/f;->g:Ljava/lang/String;

    invoke-static {p4}, Lcom/anythink/core/common/b/n;->o(Ljava/lang/String;)V

    new-instance p4, Lcom/anythink/core/common/f/h;

    invoke-direct {p4}, Lcom/anythink/core/common/f/h;-><init>()V

    invoke-virtual {p4, p2}, Lcom/anythink/core/common/f/au;->w(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Lcom/anythink/core/common/f/au;->x(Ljava/lang/String;)V

    iget p3, p0, Lcom/anythink/splashad/a/f;->h:I

    invoke-virtual {p4, p3}, Lcom/anythink/core/common/f/h;->y(I)V

    const-string p3, "4"

    invoke-virtual {p4, p3}, Lcom/anythink/core/common/f/au;->y(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/anythink/splashad/a/f;->g:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    move-object p3, v2

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lcom/anythink/splashad/a/f;->g:Ljava/lang/String;

    :goto_1
    invoke-virtual {p4, p3}, Lcom/anythink/core/common/f/h;->l(Ljava/lang/String;)V

    invoke-virtual {p4, v2}, Lcom/anythink/core/common/f/au;->v(Ljava/lang/String;)V

    const/4 p3, 0x2

    invoke-virtual {p4, p3}, Lcom/anythink/core/common/f/au;->J(I)V

    invoke-virtual {p4, v3}, Lcom/anythink/core/common/f/h;->b(Z)V

    iget-object p5, p0, Lcom/anythink/splashad/a/f;->j:Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_3

    iget-object p5, p0, Lcom/anythink/splashad/a/f;->j:Ljava/lang/String;

    invoke-virtual {p4, p5}, Lcom/anythink/core/common/f/h;->n(Ljava/lang/String;)V

    :cond_3
    iget-object p5, p0, Lcom/anythink/splashad/a/f;->m:Lcom/anythink/core/common/f/v;

    iget-object p5, p5, Lcom/anythink/core/common/f/v;->c:Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_4

    const/16 p5, 0x8

    invoke-virtual {p4, p5}, Lcom/anythink/core/common/f/h;->e(I)V

    :cond_4
    iget p5, p0, Lcom/anythink/splashad/a/f;->k:I

    invoke-virtual {p4, p5}, Lcom/anythink/core/common/f/h;->A(I)V

    :try_start_1
    iget-object p5, p0, Lcom/anythink/splashad/a/f;->i:Ljava/lang/String;

    invoke-static {p5}, Lcom/anythink/core/common/o/j;->a(Ljava/lang/String;)Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object p5

    instance-of v2, p5, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    if-eqz v2, :cond_7

    move-object v2, p5

    check-cast v2, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    iget-object v4, p0, Lcom/anythink/splashad/a/f;->m:Lcom/anythink/core/common/f/v;

    iget v4, v4, Lcom/anythink/core/common/f/v;->h:I

    invoke-virtual {v2, v4}, Lcom/anythink/core/api/ATBaseAdAdapter;->setFetchAdTimeout(I)V

    iput-boolean v3, p0, Lcom/anythink/splashad/a/f;->o:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/anythink/splashad/a/f;->a:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/anythink/splashad/a/f;->c:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {p5}, Lcom/anythink/core/api/ATBaseAdAdapter;->getInternalNetworkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/anythink/core/common/f/au;->u(Ljava/lang/String;)V

    invoke-virtual {p5}, Lcom/anythink/core/api/ATBaseAdAdapter;->getInternalNetworkSDKVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p4, Lcom/anythink/core/common/f/h;->u:Ljava/lang/String;

    iput p3, p4, Lcom/anythink/core/common/f/h;->q:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :try_start_3
    invoke-virtual {p5, p4}, Lcom/anythink/core/common/b/d;->setTrackingInfo(Lcom/anythink/core/common/f/h;)V

    sget-object v2, Lcom/anythink/core/common/b/h$n;->a:Ljava/lang/String;

    sget-object v4, Lcom/anythink/core/common/b/h$n;->n:Ljava/lang/String;

    invoke-static {p4, v2, v4, v1}, Lcom/anythink/core/common/o/p;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/splashad/a/f;->n:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object v2

    const/16 v4, 0xa

    invoke-virtual {v2, v4, p4}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;)V

    iget-object v2, p0, Lcom/anythink/splashad/a/f;->n:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object v2

    invoke-virtual {v2, v3, p4}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;)V

    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/anythink/core/common/u;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    iget v2, p0, Lcom/anythink/splashad/a/f;->h:I

    if-eq v2, p3, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_6

    instance-of v2, p3, Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/anythink/splashad/a/f;->f:Ljava/lang/String;

    invoke-static {v2, p4, v0, p3}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    :goto_2
    iget-object p3, p0, Lcom/anythink/splashad/a/f;->l:Ljava/util/Map;

    new-instance v0, Lcom/anythink/core/common/p/a;

    iget-object v2, p0, Lcom/anythink/splashad/a/f;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/splashad/a/f;->l:Ljava/util/Map;

    new-instance v4, Lcom/anythink/splashad/a/f$a;

    move-object v5, p5

    check-cast v5, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-direct {v4, p0, v5}, Lcom/anythink/splashad/a/f$a;-><init>(Lcom/anythink/splashad/a/f;Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V

    invoke-direct {v0, p4, v2, v3, v4}, Lcom/anythink/core/common/p/a;-><init>(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/api/ATCustomLoadListener;)V

    invoke-virtual {p5, p1, p3, p2, v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->internalLoad(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATCustomLoadListener;)V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "The class isn\'t instanceof CustomSplashAdapter"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "2002"

    invoke-static {p2, v1, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1, p4}, Lcom/anythink/splashad/a/f;->a(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/f/h;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/splashad/a/f;->o:Z

    return v0
.end method
