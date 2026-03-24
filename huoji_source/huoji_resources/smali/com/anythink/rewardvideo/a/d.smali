.class public final Lcom/anythink/rewardvideo/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;


# instance fields
.field public a:J

.field public b:J

.field public c:Z

.field public d:Lcom/anythink/core/common/f/h;

.field public e:Z

.field public f:J

.field public g:J

.field public h:I

.field public i:Z

.field private j:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

.field private k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

.field private l:Lcom/anythink/core/common/g/c;

.field private m:J

.field private n:J


# direct methods
.method public constructor <init>(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/common/g/c;Lcom/anythink/rewardvideo/api/ATRewardVideoListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/rewardvideo/a/d;->h:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/rewardvideo/a/d;->a:J

    iput-object p3, p0, Lcom/anythink/rewardvideo/a/d;->j:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    iput-object p1, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    iput-object p2, p0, Lcom/anythink/rewardvideo/a/d;->l:Lcom/anythink/core/common/g/c;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/rewardvideo/a/d;->i:Z

    return-void
.end method

.method private a()Lcom/anythink/core/common/f/h;
    .locals 4

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->d:Lcom/anythink/core/common/f/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->V()Lcom/anythink/core/common/f/h;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/rewardvideo/a/d;->d:Lcom/anythink/core/common/f/h;

    const/4 v1, 0x6

    iput v1, v0, Lcom/anythink/core/common/f/h;->q:I

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->ai()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->d:Lcom/anythink/core/common/f/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/h;->F()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/o/h;->b(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->d:Lcom/anythink/core/common/f/h;

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/f/h;->h(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->d:Lcom/anythink/core/common/f/h;

    return-object v0
.end method

.method public static synthetic a(Lcom/anythink/rewardvideo/a/d;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;
    .locals 0

    iget-object p0, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    return-object p0
.end method

.method private a(Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/f/h;)V
    .locals 3

    sget-object v0, Lcom/anythink/core/common/b/h$n;->c:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/h$n;->m:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Lcom/anythink/core/common/o/p;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkInfoMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p2, p1, v0}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/api/AdError;Ljava/util/Map;)V

    return-void
.end method

.method private a(Lcom/anythink/core/common/f/h;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getILRD()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/f/h;->a(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/anythink/rewardvideo/a/d;->i:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;)V

    :cond_1
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-virtual {v2}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/av;)V

    sget-object v0, Lcom/anythink/core/common/b/h$n;->c:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/h$n;->l:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/anythink/core/common/o/p;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/u;->c(Ljava/lang/String;)Lcom/anythink/core/common/f/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/u;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "1"

    invoke-static {v1, p0, v2}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v2

    invoke-virtual {v0}, Lcom/anythink/core/common/f/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Lcom/anythink/core/common/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/f;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->E()Landroid/content/Context;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, p0, v1}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/api/ATAdStatusInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v6, Lcom/anythink/core/common/f/v;

    invoke-direct {v6}, Lcom/anythink/core/common/f/v;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->E()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/anythink/core/common/f/v;->a(Landroid/content/Context;)V

    iput p1, v6, Lcom/anythink/core/common/f/v;->d:I

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/n;->E()Landroid/content/Context;

    move-result-object v3

    const/4 v7, 0x0

    const-string v4, "1"

    move-object v5, p0

    invoke-virtual/range {v2 .. v7}, Lcom/anythink/core/common/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/b/a;)V

    :cond_0
    return-void
.end method

.method private static b(Lcom/anythink/core/common/f/h;)V
    .locals 3

    sget-object v0, Lcom/anythink/core/common/b/h$n;->f:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/h$n;->l:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/anythink/core/common/o/p;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p0}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;)V

    return-void
.end method

.method private static c(Lcom/anythink/core/common/f/h;)V
    .locals 3

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p0}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;)V

    sget-object v0, Lcom/anythink/core/common/b/h$n;->d:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/h$n;->l:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/anythink/core/common/o/p;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(Lcom/anythink/core/common/f/h;)V
    .locals 3

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-virtual {v1}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v0, v2, p1, v1}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/av;)V

    invoke-direct {p0, p1}, Lcom/anythink/rewardvideo/a/d;->a(Lcom/anythink/core/common/f/h;)V

    return-void
.end method


# virtual methods
.method public final onAgainReward()V
    .locals 8

    invoke-direct {p0}, Lcom/anythink/rewardvideo/a/d;->a()Lcom/anythink/core/common/f/h;

    move-result-object v7

    iget-boolean v0, p0, Lcom/anythink/rewardvideo/a/d;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->l:Lcom/anythink/core/common/g/c;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/anythink/rewardvideo/a/d;->f:J

    iget-wide v3, p0, Lcom/anythink/rewardvideo/a/d;->g:J

    iget-object v5, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    move-object v6, v7

    invoke-interface/range {v0 .. v6}, Lcom/anythink/core/common/g/c;->a(JJLcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/h;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/rewardvideo/a/d;->e:Z

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->j:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-static {v7, v1}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;->onAgainReward(Lcom/anythink/core/api/ATAdInfo;)V

    :cond_1
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->j:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-static {v1}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;->onDeeplinkCallback(Lcom/anythink/core/api/ATAdInfo;Z)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    if-eqz p1, :cond_1

    sget-object p1, Lcom/anythink/core/common/b/h$n;->l:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/anythink/core/common/b/h$n;->m:Ljava/lang/String;

    :goto_0
    sget-object v1, Lcom/anythink/core/common/b/h$n;->i:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, p1, v2}, Lcom/anythink/core/common/o/p;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->j:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-static {v1}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;->onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object p1

    sget-object p2, Lcom/anythink/core/common/b/h$n;->j:Ljava/lang/String;

    sget-object v0, Lcom/anythink/core/common/b/h$n;->l:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p1, p2, v0, v1}, Lcom/anythink/core/common/o/p;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onReward()V
    .locals 8

    iget-boolean v0, p0, Lcom/anythink/rewardvideo/a/d;->c:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->l:Lcom/anythink/core/common/g/c;

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/anythink/rewardvideo/a/d;->m:J

    iget-wide v4, p0, Lcom/anythink/rewardvideo/a/d;->n:J

    iget-object v6, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-virtual {v6}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v7

    invoke-interface/range {v1 .. v7}, Lcom/anythink/core/common/g/c;->a(JJLcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/h;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/rewardvideo/a/d;->c:Z

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->j:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-static {v1}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onReward(Lcom/anythink/core/api/ATAdInfo;)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    sget-object v1, Lcom/anythink/core/common/b/h$n;->h:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$n;->l:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/o/p;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onRewardedVideoAdAgainPlayClicked()V
    .locals 3

    invoke-direct {p0}, Lcom/anythink/rewardvideo/a/d;->a()Lcom/anythink/core/common/f/h;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/anythink/rewardvideo/a/d;->c(Lcom/anythink/core/common/f/h;)V

    :cond_0
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->j:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;

    iget-object v2, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-static {v0, v2}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;->onRewardedVideoAdAgainPlayClicked(Lcom/anythink/core/api/ATAdInfo;)V

    :cond_1
    return-void
.end method

.method public final onRewardedVideoAdAgainPlayEnd()V
    .locals 5

    iget-wide v0, p0, Lcom/anythink/rewardvideo/a/d;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/rewardvideo/a/d;->g:J

    :cond_0
    invoke-direct {p0}, Lcom/anythink/rewardvideo/a/d;->a()Lcom/anythink/core/common/f/h;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/anythink/rewardvideo/a/d;->b(Lcom/anythink/core/common/f/h;)V

    :cond_1
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->j:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v1, :cond_2

    instance-of v2, v1, Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;

    iget-object v2, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-static {v0, v2}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;->onRewardedVideoAdAgainPlayEnd(Lcom/anythink/core/api/ATAdInfo;)V

    :cond_2
    return-void
.end method

.method public final onRewardedVideoAdAgainPlayFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x63

    iput v0, p0, Lcom/anythink/rewardvideo/a/d;->h:I

    const-string v0, "4006"

    invoke-static {v0, p1, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    invoke-direct {p0}, Lcom/anythink/rewardvideo/a/d;->a()Lcom/anythink/core/common/f/h;

    move-result-object p2

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/anythink/rewardvideo/a/d;->a(Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/f/h;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->j:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-static {p2, v1}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;->onRewardedVideoAdAgainPlayFailed(Lcom/anythink/core/api/AdError;Lcom/anythink/core/api/ATAdInfo;)V

    :cond_1
    return-void
.end method

.method public final onRewardedVideoAdAgainPlayStart()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/rewardvideo/a/d;->h:I

    iget-wide v0, p0, Lcom/anythink/rewardvideo/a/d;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/rewardvideo/a/d;->f:J

    :cond_0
    iput-wide v2, p0, Lcom/anythink/rewardvideo/a/d;->g:J

    invoke-direct {p0}, Lcom/anythink/rewardvideo/a/d;->a()Lcom/anythink/core/common/f/h;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object v1

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-virtual {v3}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/av;)V

    invoke-direct {p0, v0}, Lcom/anythink/rewardvideo/a/d;->a(Lcom/anythink/core/common/f/h;)V

    :cond_1
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->j:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v1, :cond_2

    instance-of v2, v1, Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;

    iget-object v2, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-static {v0, v2}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;->onRewardedVideoAdAgainPlayStart(Lcom/anythink/core/api/ATAdInfo;)V

    :cond_2
    return-void
.end method

.method public final onRewardedVideoAdClosed()V
    .locals 11

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    iget v1, p0, Lcom/anythink/rewardvideo/a/d;->h:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-virtual {v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getDismissType()I

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/h;->D(I)V

    sget-object v1, Lcom/anythink/core/common/b/h$n;->e:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$n;->l:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/o/p;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/anythink/rewardvideo/a/d;->a:J

    const-wide/16 v1, 0x0

    cmp-long v5, v3, v1

    if-eqz v5, :cond_2

    iget-boolean v2, p0, Lcom/anythink/rewardvideo/a/d;->c:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/anythink/rewardvideo/a/d;->b:J

    sub-long/2addr v7, v9

    move-object v1, v0

    invoke-static/range {v1 .. v8}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/h;ZJJJ)V

    :cond_2
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-virtual {v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getAdExtraInfoMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "close_scene"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/h;->I(I)V

    :cond_3
    iget-boolean v1, p0, Lcom/anythink/rewardvideo/a/d;->c:Z

    invoke-static {v0, v1}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/h;Z)V

    iget-boolean v1, p0, Lcom/anythink/rewardvideo/a/d;->c:Z

    if-eqz v1, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-virtual {v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->clearImpressionListener()V

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-virtual {v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->internalDestory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    new-instance v2, Lcom/anythink/rewardvideo/a/d$1;

    invoke-direct {v2, p0}, Lcom/anythink/rewardvideo/a/d$1;-><init>(Lcom/anythink/rewardvideo/a/d;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/anythink/core/common/b/n;->a(Ljava/lang/Runnable;J)V

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/rewardvideo/a/d;->a(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->j:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-static {v0, v2}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdClosed(Lcom/anythink/core/api/ATAdInfo;)V

    :cond_6
    return-void
.end method

.method public final onRewardedVideoAdPlayClicked()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/rewardvideo/a/d;->c(Lcom/anythink/core/common/f/h;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->j:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-static {v1}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdPlayClicked(Lcom/anythink/core/api/ATAdInfo;)V

    :cond_1
    return-void
.end method

.method public final onRewardedVideoAdPlayEnd()V
    .locals 5

    iget-wide v0, p0, Lcom/anythink/rewardvideo/a/d;->n:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/rewardvideo/a/d;->n:J

    :cond_0
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getDismissType()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/anythink/rewardvideo/a/d;->h:I

    :cond_1
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/rewardvideo/a/d;->b(Lcom/anythink/core/common/f/h;)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->j:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-static {v1}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdPlayEnd(Lcom/anythink/core/api/ATAdInfo;)V

    :cond_3
    return-void
.end method

.method public final onRewardedVideoAdPlayFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x63

    iput v0, p0, Lcom/anythink/rewardvideo/a/d;->h:I

    const-string v0, "4006"

    invoke-static {v0, p1, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/f/h;->P()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/rewardvideo/a/d;->i:Z

    :cond_0
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/anythink/rewardvideo/a/d;->a(Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/f/h;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/anythink/rewardvideo/a/d;->a(Ljava/lang/String;)V

    :cond_1
    const/4 p2, 0x7

    invoke-static {v0, p2}, Lcom/anythink/rewardvideo/a/d;->a(Ljava/lang/String;I)V

    :cond_2
    iget-object p2, p0, Lcom/anythink/rewardvideo/a/d;->j:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-static {v0}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdPlayFailed(Lcom/anythink/core/api/AdError;Lcom/anythink/core/api/ATAdInfo;)V

    :cond_3
    return-void
.end method

.method public final onRewardedVideoAdPlayStart()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/rewardvideo/a/d;->a:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/rewardvideo/a/d;->b:J

    iget-wide v2, p0, Lcom/anythink/rewardvideo/a/d;->m:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iput-wide v0, p0, Lcom/anythink/rewardvideo/a/d;->m:J

    :cond_0
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-static {v0}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-virtual {v2}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkInfoMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/h;->a(Ljava/util/Map;)V

    invoke-direct {p0, v1}, Lcom/anythink/rewardvideo/a/d;->a(Lcom/anythink/core/common/f/h;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Lcom/anythink/core/api/ATAdInfo;)V

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/anythink/rewardvideo/a/d;->a(Ljava/lang/String;I)V

    :cond_2
    iget-boolean v1, p0, Lcom/anythink/rewardvideo/a/d;->i:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->j:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/anythink/core/api/ATAdInfo;->getNetworkFirmId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->k:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    const/4 v2, 0x0

    const-string v3, "RewardedVideo"

    invoke-static {v3, v1, v2}, Lcom/anythink/core/common/n/g;->a(Ljava/lang/String;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/BaseAd;)V

    :cond_3
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/d;->j:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    invoke-interface {v1, v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdPlayStart(Lcom/anythink/core/api/ATAdInfo;)V

    :cond_4
    return-void
.end method
