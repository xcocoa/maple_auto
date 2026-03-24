.class public Lcom/anythink/rewardvideo/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/j/b;


# static fields
.field private static volatile c:Lcom/anythink/rewardvideo/a/c;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/anythink/rewardvideo/api/ATRewardVideoAutoLoadListener;

.field private d:Lcom/anythink/rewardvideo/api/ATRewardVideoAutoLoadListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RewardVideoAuto"

    iput-object v0, p0, Lcom/anythink/rewardvideo/a/c;->a:Ljava/lang/String;

    new-instance v0, Lcom/anythink/rewardvideo/a/c$1;

    invoke-direct {v0, p0}, Lcom/anythink/rewardvideo/a/c$1;-><init>(Lcom/anythink/rewardvideo/a/c;)V

    iput-object v0, p0, Lcom/anythink/rewardvideo/a/c;->b:Lcom/anythink/rewardvideo/api/ATRewardVideoAutoLoadListener;

    return-void
.end method

.method public static a()Lcom/anythink/rewardvideo/a/c;
    .locals 2

    sget-object v0, Lcom/anythink/rewardvideo/a/c;->c:Lcom/anythink/rewardvideo/a/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/anythink/rewardvideo/a/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/rewardvideo/a/c;->c:Lcom/anythink/rewardvideo/a/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/rewardvideo/a/c;

    invoke-direct {v1}, Lcom/anythink/rewardvideo/a/c;-><init>()V

    sput-object v1, Lcom/anythink/rewardvideo/a/c;->c:Lcom/anythink/rewardvideo/a/c;

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
    sget-object v0, Lcom/anythink/rewardvideo/a/c;->c:Lcom/anythink/rewardvideo/a/c;

    return-object v0
.end method

.method public static synthetic a(Lcom/anythink/rewardvideo/a/c;)Lcom/anythink/rewardvideo/api/ATRewardVideoAutoLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/rewardvideo/a/c;->d:Lcom/anythink/rewardvideo/api/ATRewardVideoAutoLoadListener;

    return-object p0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Lcom/anythink/rewardvideo/api/ATRewardVideoAutoEventListener;)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/anythink/rewardvideo/a/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/rewardvideo/api/ATRewardVideoAutoEventListener;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/anythink/core/common/b/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private b()Lcom/anythink/rewardvideo/api/ATRewardVideoAutoLoadListener;
    .locals 1

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c;->b:Lcom/anythink/rewardvideo/api/ATRewardVideoAutoLoadListener;

    return-object v0
.end method

.method public static varargs b([Ljava/lang/String;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Z)V

    invoke-static {v3}, Lcom/anythink/rewardvideo/a/c;->f(Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/f;->a()Lcom/anythink/core/common/j/d;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/anythink/core/common/j/d;->a(Lcom/anythink/core/common/j/b;)V

    invoke-interface {v3}, Lcom/anythink/core/common/j/d;->c()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private e(Ljava/lang/String;)Lcom/anythink/core/api/ATAdStatusInfo;
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/anythink/rewardvideo/a/c;->f(Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->E()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/util/Map;)Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/anythink/rewardvideo/a/c;->a:Ljava/lang/String;

    const-string v0, "SDK init error!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static f(Ljava/lang/String;)Lcom/anythink/core/common/f;
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, p0, v1}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/rewardvideo/api/ATRewardVideoAutoEventListener;)V
    .locals 8

    sget-object v0, Lcom/anythink/core/common/b/h$n;->u:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/h$n;->y:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$n;->n:Ljava/lang/String;

    const-string v3, ""

    invoke-static {p2, v0, v1, v2, v3}, Lcom/anythink/core/common/o/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "9999"

    if-eqz v0, :cond_1

    const-string v0, "placementId is empty."

    invoke-static {v2, v3, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    if-eqz p4, :cond_0

    invoke-static {v1}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object v4

    invoke-virtual {p4, v0, v4}, Lcom/anythink/rewardvideo/api/ATRewardVideoAutoEventListener;->onRewardedVideoAdPlayFailed(Lcom/anythink/core/api/AdError;Lcom/anythink/core/api/ATAdInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c;->a:Ljava/lang/String;

    const-string v4, "PlacementId is Empty!"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c;->a:Ljava/lang/String;

    const-string v1, "RewardedVideo Show Activity is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {p1, p2}, Lcom/anythink/rewardvideo/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/rewardvideo/a/a;

    move-result-object v2

    new-instance v5, Lcom/anythink/rewardvideo/a/b;

    invoke-direct {v5, p4}, Lcom/anythink/rewardvideo/a/b;-><init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAutoEventListener;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v2 .. v7}, Lcom/anythink/rewardvideo/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/anythink/rewardvideo/api/ATRewardVideoListener;Lcom/anythink/core/api/ATEventInterface;Ljava/util/Map;)V

    return-void

    :cond_4
    :goto_0
    const-string p1, "sdk init error"

    invoke-static {v2, v3, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    if-eqz p4, :cond_5

    invoke-static {v1}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Lcom/anythink/rewardvideo/api/ATRewardVideoAutoEventListener;->onRewardedVideoAdPlayFailed(Lcom/anythink/core/api/AdError;Lcom/anythink/core/api/ATAdInfo;)V

    :cond_5
    iget-object p1, p0, Lcom/anythink/rewardvideo/a/c;->a:Ljava/lang/String;

    const-string p2, "SDK init error!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Landroid/content/Context;[Ljava/lang/String;Lcom/anythink/rewardvideo/api/ATRewardVideoAutoLoadListener;)V
    .locals 5

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->a(Landroid/app/Activity;)V

    :cond_0
    if-eqz p2, :cond_4

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/anythink/core/basead/adx/api/ATAdxSetting;->getInstance()Lcom/anythink/core/basead/adx/api/ATAdxSetting;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/anythink/core/basead/adx/api/ATAdxSetting;->isAdxNetworkMode(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "anythink"

    if-eqz v3, :cond_1

    const-string v2, "Forbidden placement, this placement is in adx network mode"

    :goto_1
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/anythink/core/common/w;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "Forbidden placement"

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/anythink/core/common/u;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Z)V

    invoke-static {v2}, Lcom/anythink/rewardvideo/a/c;->f(Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/f;->a()Lcom/anythink/core/common/j/d;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2, p0}, Lcom/anythink/core/common/j/d;->a(Lcom/anythink/core/common/j/b;)V

    const/4 v3, 0x3

    invoke-interface {v2, p1, v3}, Lcom/anythink/core/common/j/d;->a(Landroid/content/Context;I)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iput-object p3, p0, Lcom/anythink/rewardvideo/a/c;->d:Lcom/anythink/rewardvideo/api/ATRewardVideoAutoLoadListener;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/anythink/rewardvideo/a/c;->a()Lcom/anythink/rewardvideo/a/c;

    move-result-object v0

    iget-object v0, v0, Lcom/anythink/rewardvideo/a/c;->b:Lcom/anythink/rewardvideo/api/ATRewardVideoAutoLoadListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAutoLoadListener;->onRewardVideoAutoLoaded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    .locals 1

    invoke-static {}, Lcom/anythink/rewardvideo/a/c;->a()Lcom/anythink/rewardvideo/a/c;

    move-result-object v0

    iget-object v0, v0, Lcom/anythink/rewardvideo/a/c;->b:Lcom/anythink/rewardvideo/api/ATRewardVideoAutoLoadListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/rewardvideo/api/ATRewardVideoAutoLoadListener;->onRewardVideoAutoLoadFail(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V

    :cond_0
    return-void
.end method

.method public final varargs a([Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/anythink/core/basead/adx/api/ATAdxSetting;->getInstance()Lcom/anythink/core/basead/adx/api/ATAdxSetting;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/anythink/core/basead/adx/api/ATAdxSetting;->isAdxNetworkMode(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "anythink"

    if-eqz v3, :cond_1

    const-string v2, "Forbidden placement, this placement is in adx network mode"

    :goto_1
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/anythink/core/common/w;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "Forbidden placement"

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/anythink/core/common/u;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Z)V

    invoke-static {v2}, Lcom/anythink/rewardvideo/a/c;->f(Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/f;->a()Lcom/anythink/core/common/j/d;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2, p0}, Lcom/anythink/core/common/j/d;->a(Lcom/anythink/core/common/j/b;)V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/n;->E()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4}, Lcom/anythink/core/common/j/d;->a(Landroid/content/Context;I)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/anythink/rewardvideo/a/c;->e(Ljava/lang/String;)Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/anythink/core/api/ATAdStatusInfo;->isReady()Z

    move-result v1

    :cond_1
    sget-object v0, Lcom/anythink/core/common/b/h$n;->u:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$n;->z:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {p1, v0, v2, v3, v4}, Lcom/anythink/core/common/o/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final c(Ljava/lang/String;)Lcom/anythink/core/api/ATAdStatusInfo;
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/anythink/rewardvideo/a/c;->e(Ljava/lang/String;)Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/anythink/core/api/ATAdStatusInfo;

    invoke-direct {v0, v2, v2, v1}, Lcom/anythink/core/api/ATAdStatusInfo;-><init>(ZZLcom/anythink/core/api/ATAdInfo;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/anythink/core/api/ATAdStatusInfo;

    invoke-direct {v0, v2, v2, v1}, Lcom/anythink/core/api/ATAdStatusInfo;-><init>(ZZLcom/anythink/core/api/ATAdInfo;)V

    :cond_1
    :goto_0
    sget-object v1, Lcom/anythink/core/common/b/h$n;->u:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$n;->A:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATAdStatusInfo;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {p1, v1, v2, v3, v4}, Lcom/anythink/core/common/o/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/api/ATAdInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/anythink/rewardvideo/a/c;->a:Ljava/lang/String;

    const-string v0, "PlacementId is empty."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/anythink/rewardvideo/a/c;->f(Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->E()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/f;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method
