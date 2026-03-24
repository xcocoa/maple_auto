.class public Lcom/anythink/splashad/a/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/splashad/a/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/anythink/splashad/a/e;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/anythink/core/common/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/anythink/splashad/a/c;->e:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/splashad/a/c;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/anythink/splashad/a/c;->c:Ljava/lang/String;

    const-string v0, "4"

    invoke-static {p1, p2, v0}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/splashad/a/c;->d:Lcom/anythink/core/common/f;

    new-instance p2, Lcom/anythink/splashad/a/d;

    invoke-direct {p2}, Lcom/anythink/splashad/a/d;-><init>()V

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/j/c;)V

    new-instance p1, Lcom/anythink/splashad/a/e;

    invoke-direct {p1}, Lcom/anythink/splashad/a/e;-><init>()V

    iput-object p1, p0, Lcom/anythink/splashad/a/c;->a:Lcom/anythink/splashad/a/e;

    iget-object p2, p0, Lcom/anythink/splashad/a/c;->d:Lcom/anythink/core/common/f;

    invoke-virtual {p2, p1}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/j/e;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/splashad/a/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/anythink/splashad/a/c;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/splashad/a/c;
    .locals 2

    sget-object v0, Lcom/anythink/splashad/a/c;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/splashad/a/c;

    if-nez v0, :cond_1

    const-class v1, Lcom/anythink/splashad/a/c;

    monitor-enter v1

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/anythink/splashad/a/c;

    invoke-direct {v0, p0, p1}, Lcom/anythink/splashad/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcom/anythink/splashad/a/c;->e:Ljava/util/Map;

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

.method private a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/splashad/a/h;ZLcom/anythink/core/api/BaseAd;Lcom/anythink/core/common/f/h;)V
    .locals 8

    if-eqz p5, :cond_2

    instance-of v0, p5, Lcom/anythink/core/common/f/a/e;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    new-instance v5, Lcom/anythink/core/common/f/a/b;

    move-object v1, p5

    check-cast v1, Lcom/anythink/core/common/f/a/e;

    invoke-direct {v5, v1}, Lcom/anythink/core/common/f/a/b;-><init>(Lcom/anythink/core/common/f/a/e;)V

    new-instance v4, Lcom/anythink/core/common/f/a/c;

    move-object v1, p5

    check-cast v1, Lcom/anythink/core/common/f/a/a;

    const-string v2, "4"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v4, v1, p6, v2}, Lcom/anythink/core/common/f/a/c;-><init>(Lcom/anythink/core/common/f/a/a;Lcom/anythink/core/common/f/h;I)V

    invoke-static {v4}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f/m;)Ljava/lang/String;

    move-result-object v7

    new-instance p6, Lcom/anythink/splashad/a/c$2;

    invoke-direct {p6, p0, v0, p3}, Lcom/anythink/splashad/a/c$2;-><init>(Lcom/anythink/splashad/a/c;[ZLcom/anythink/splashad/a/h;)V

    invoke-virtual {p5, p6}, Lcom/anythink/core/api/BaseAd;->setNativeEventListener(Lcom/anythink/core/common/b/l;)V

    invoke-static {}, Lcom/anythink/basead/d/i;->a()Lcom/anythink/basead/d/i;

    move-result-object p6

    invoke-virtual {p6, v7, p5}, Lcom/anythink/basead/d/i;->a(Ljava/lang/String;Lcom/anythink/core/api/BaseAd;)V

    new-instance p6, Lcom/anythink/basead/ui/ThirdPartySplashATView;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v6, Lcom/anythink/splashad/a/c$3;

    invoke-direct {v6, p0, p3, p5, p2}, Lcom/anythink/splashad/a/c$3;-><init>(Lcom/anythink/splashad/a/c;Lcom/anythink/splashad/a/h;Lcom/anythink/core/api/BaseAd;Landroid/view/ViewGroup;)V

    move-object v2, p6

    invoke-direct/range {v2 .. v7}, Lcom/anythink/basead/ui/ThirdPartySplashATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/e/a;Ljava/lang/String;)V

    invoke-virtual {p6, p4}, Lcom/anythink/basead/ui/BaseSplashATView;->setDontCountDown(Z)V

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lcom/anythink/core/api/BaseAd;->getCustomAdContainer()Landroid/view/ViewGroup;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/anythink/core/common/o/x;->a(Landroid/view/View;)V

    invoke-virtual {p1, p6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    move-object p1, p6

    :goto_1
    invoke-virtual {p6, p2}, Lcom/anythink/basead/ui/ThirdPartySplashATView;->registerNativeClickListener(Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    const-string p1, "anythink"

    const-string p2, "showThirdPartyNativeSplash fail,AdCache return illegal type adObject"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_3

    const/16 p1, 0x63

    invoke-virtual {p3, p1}, Lcom/anythink/splashad/a/h;->a(I)V

    const-string p1, "4006"

    const-string p4, ""

    invoke-static {p1, p4, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/anythink/splashad/a/h;->onSplashAdShowFail(Lcom/anythink/core/api/AdError;)V

    invoke-virtual {p3}, Lcom/anythink/splashad/a/h;->onSplashAdDismiss()V

    :cond_3
    return-void
.end method

.method public static synthetic a(Lcom/anythink/splashad/a/c;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/splashad/a/h;ZLcom/anythink/core/api/BaseAd;Lcom/anythink/core/common/f/h;)V
    .locals 8

    if-eqz p5, :cond_2

    instance-of v0, p5, Lcom/anythink/core/common/f/a/e;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    new-instance v5, Lcom/anythink/core/common/f/a/b;

    move-object v1, p5

    check-cast v1, Lcom/anythink/core/common/f/a/e;

    invoke-direct {v5, v1}, Lcom/anythink/core/common/f/a/b;-><init>(Lcom/anythink/core/common/f/a/e;)V

    new-instance v4, Lcom/anythink/core/common/f/a/c;

    move-object v1, p5

    check-cast v1, Lcom/anythink/core/common/f/a/a;

    const-string v2, "4"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v4, v1, p6, v2}, Lcom/anythink/core/common/f/a/c;-><init>(Lcom/anythink/core/common/f/a/a;Lcom/anythink/core/common/f/h;I)V

    invoke-static {v4}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f/m;)Ljava/lang/String;

    move-result-object v7

    new-instance p6, Lcom/anythink/splashad/a/c$2;

    invoke-direct {p6, p0, v0, p3}, Lcom/anythink/splashad/a/c$2;-><init>(Lcom/anythink/splashad/a/c;[ZLcom/anythink/splashad/a/h;)V

    invoke-virtual {p5, p6}, Lcom/anythink/core/api/BaseAd;->setNativeEventListener(Lcom/anythink/core/common/b/l;)V

    invoke-static {}, Lcom/anythink/basead/d/i;->a()Lcom/anythink/basead/d/i;

    move-result-object p6

    invoke-virtual {p6, v7, p5}, Lcom/anythink/basead/d/i;->a(Ljava/lang/String;Lcom/anythink/core/api/BaseAd;)V

    new-instance p6, Lcom/anythink/basead/ui/ThirdPartySplashATView;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v6, Lcom/anythink/splashad/a/c$3;

    invoke-direct {v6, p0, p3, p5, p2}, Lcom/anythink/splashad/a/c$3;-><init>(Lcom/anythink/splashad/a/c;Lcom/anythink/splashad/a/h;Lcom/anythink/core/api/BaseAd;Landroid/view/ViewGroup;)V

    move-object v2, p6

    invoke-direct/range {v2 .. v7}, Lcom/anythink/basead/ui/ThirdPartySplashATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/e/a;Ljava/lang/String;)V

    invoke-virtual {p6, p4}, Lcom/anythink/basead/ui/BaseSplashATView;->setDontCountDown(Z)V

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lcom/anythink/core/api/BaseAd;->getCustomAdContainer()Landroid/view/ViewGroup;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/anythink/core/common/o/x;->a(Landroid/view/View;)V

    invoke-virtual {p0, p6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    move-object p0, p6

    :goto_1
    invoke-virtual {p6, p2}, Lcom/anythink/basead/ui/ThirdPartySplashATView;->registerNativeClickListener(Landroid/view/View;)V

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    const-string p0, "anythink"

    const-string p1, "showThirdPartyNativeSplash fail,AdCache return illegal type adObject"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x63

    invoke-virtual {p3, p0}, Lcom/anythink/splashad/a/h;->a(I)V

    const-string p0, "4006"

    const-string p2, ""

    invoke-static {p0, p2, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/anythink/splashad/a/h;->onSplashAdShowFail(Lcom/anythink/core/api/AdError;)V

    invoke-virtual {p3}, Lcom/anythink/splashad/a/h;->onSplashAdDismiss()V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/splashad/a/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/splashad/a/c;->c:Ljava/lang/String;

    return-object p0
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

    iget-object v0, p0, Lcom/anythink/splashad/a/c;->d:Lcom/anythink/core/common/f;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/util/Map;)Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lcom/anythink/core/common/g;
    .locals 1

    iget-object v0, p0, Lcom/anythink/splashad/a/c;->d:Lcom/anythink/core/common/f;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f;->b(Ljava/lang/String;)Lcom/anythink/core/common/g;

    move-result-object p1

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

    iget-object v0, p0, Lcom/anythink/splashad/a/c;->d:Lcom/anythink/core/common/f;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/splashad/a/a;Lcom/anythink/core/api/ATEventInterface;Lcom/anythink/splashad/api/ATSplashSkipInfo;Ljava/lang/String;Ljava/util/Map;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Lcom/anythink/splashad/a/a;",
            "Lcom/anythink/core/api/ATEventInterface;",
            "Lcom/anythink/splashad/api/ATSplashSkipInfo;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object v13, p0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-object v0, v13, Lcom/anythink/splashad/a/c;->d:Lcom/anythink/core/common/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 v4, p1

    move-object/from16 v6, p7

    invoke-virtual {v0, v4, v1, v2, v6}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;ZZLjava/util/Map;)Lcom/anythink/core/common/f/b;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "anythink"

    const-string v1, "Splash No Cache."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz v3, :cond_2

    :try_start_1
    invoke-virtual {v3}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    if-eqz v0, :cond_2

    iget-object v0, v13, Lcom/anythink/splashad/a/c;->d:Lcom/anythink/core/common/f;

    invoke-virtual {v0, v3}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f/b;)V

    invoke-virtual {v3}, Lcom/anythink/core/common/f/b;->c()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v3, v0}, Lcom/anythink/core/common/f/b;->a(I)V

    iget-object v0, v13, Lcom/anythink/splashad/a/c;->a:Lcom/anythink/splashad/a/e;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/anythink/splashad/a/e;->a:Lcom/anythink/splashad/a/f;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/anythink/splashad/a/f;->d:Lcom/anythink/core/common/f/b;

    if-ne v1, v3, :cond_1

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/anythink/splashad/a/f;->d:Lcom/anythink/core/common/f/b;

    :cond_1
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v14, Lcom/anythink/splashad/a/c$1;

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-direct/range {v1 .. v12}, Lcom/anythink/splashad/a/c$1;-><init>(Lcom/anythink/splashad/a/c;Lcom/anythink/core/common/f/b;Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/api/ATEventInterface;Lcom/anythink/splashad/api/ATSplashSkipInfo;Landroid/view/ViewGroup;Lcom/anythink/splashad/a/a;J)V

    invoke-virtual {v0, v14}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/content/Context;Lcom/anythink/core/api/ATMediationRequestInfo;Ljava/lang/String;Lcom/anythink/splashad/a/b;IZILcom/anythink/core/common/b/b;Ljava/util/Map;Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/anythink/core/api/ATMediationRequestInfo;",
            "Ljava/lang/String;",
            "Lcom/anythink/splashad/a/b;",
            "IZI",
            "Lcom/anythink/core/common/b/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/anythink/core/common/f/v;

    invoke-direct {v0}, Lcom/anythink/core/common/f/v;-><init>()V

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/v;->a(Landroid/content/Context;)V

    iput-object p2, v0, Lcom/anythink/core/common/f/v;->b:Lcom/anythink/core/api/ATMediationRequestInfo;

    iput-object p3, v0, Lcom/anythink/core/common/f/v;->c:Ljava/lang/String;

    iput p5, v0, Lcom/anythink/core/common/f/v;->h:I

    iput-boolean p6, v0, Lcom/anythink/core/common/f/v;->j:Z

    iput p7, v0, Lcom/anythink/core/common/f/v;->d:I

    iput-object p8, v0, Lcom/anythink/core/common/f/v;->e:Lcom/anythink/core/common/b/b;

    if-eqz p9, :cond_0

    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, v0, Lcom/anythink/core/common/f/v;->g:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_0
    :goto_0
    iput-object p10, v0, Lcom/anythink/core/common/f/v;->l:Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;

    iget-object p5, p0, Lcom/anythink/splashad/a/c;->d:Lcom/anythink/core/common/f;

    if-eqz p5, :cond_1

    iget-object p6, p0, Lcom/anythink/splashad/a/c;->b:Landroid/content/Context;

    iget-object p8, p0, Lcom/anythink/splashad/a/c;->c:Ljava/lang/String;

    const-string p7, "4"

    move-object p9, v0

    move-object p10, p4

    invoke-virtual/range {p5 .. p10}, Lcom/anythink/core/common/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/b/a;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/anythink/core/api/ATAdStatusInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/splashad/a/c;->d:Lcom/anythink/core/common/f;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/api/ATAdStatusInfo;)Z

    move-result p1

    return p1
.end method

.method public final b(Landroid/content/Context;Ljava/util/Map;)Lcom/anythink/core/common/f/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/anythink/core/common/f/b;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/splashad/a/c;->d:Lcom/anythink/core/common/f;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, p2}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;ZZLjava/util/Map;)Lcom/anythink/core/common/f/b;

    move-result-object p1

    return-object p1
.end method
