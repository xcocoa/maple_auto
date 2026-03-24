.class public final Lcom/anythink/core/common/b/j;
.super Lcom/anythink/core/api/ATAdInfo;
.source ""


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private D:I

.field private E:Ljava/lang/String;

.field private F:D

.field private G:Lcom/anythink/core/basead/adx/api/IATAdxHandler;

.field private a:Lcom/anythink/core/api/ATBaseAdAdapter;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:D

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Double;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/anythink/core/api/ATAdInfo;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/core/common/b/j;->b:I

    const-string v1, ""

    iput-object v1, p0, Lcom/anythink/core/common/b/j;->c:Ljava/lang/String;

    iput v0, p0, Lcom/anythink/core/common/b/j;->d:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/anythink/core/common/b/j;->e:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/core/common/b/j;->f:I

    iput-object v1, p0, Lcom/anythink/core/common/b/j;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/core/common/b/j;->h:Ljava/lang/Double;

    iput-object v1, p0, Lcom/anythink/core/common/b/j;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/anythink/core/common/b/j;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/anythink/core/common/b/j;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/anythink/core/common/b/j;->l:Ljava/lang/String;

    const-string v2, "unknow"

    iput-object v2, p0, Lcom/anythink/core/common/b/j;->m:Ljava/lang/String;

    const-string v2, "Network"

    iput-object v2, p0, Lcom/anythink/core/common/b/j;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/anythink/core/common/b/j;->o:Ljava/lang/String;

    const/4 v2, 0x1

    iput v2, p0, Lcom/anythink/core/common/b/j;->p:I

    iput v0, p0, Lcom/anythink/core/common/b/j;->q:I

    iput-object v1, p0, Lcom/anythink/core/common/b/j;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/anythink/core/common/b/j;->s:Ljava/lang/String;

    iput v0, p0, Lcom/anythink/core/common/b/j;->t:I

    iput-object v1, p0, Lcom/anythink/core/common/b/j;->u:Ljava/lang/String;

    iput-object v1, p0, Lcom/anythink/core/common/b/j;->v:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/anythink/core/common/b/j;->w:Ljava/util/Map;

    iput-object v1, p0, Lcom/anythink/core/common/b/j;->y:Ljava/lang/String;

    iput v0, p0, Lcom/anythink/core/common/b/j;->z:I

    iput-object v1, p0, Lcom/anythink/core/common/b/j;->A:Ljava/lang/String;

    iput v0, p0, Lcom/anythink/core/common/b/j;->B:I

    iput v2, p0, Lcom/anythink/core/common/b/j;->D:I

    iput-object v1, p0, Lcom/anythink/core/common/b/j;->E:Ljava/lang/String;

    iput-object v3, p0, Lcom/anythink/core/common/b/j;->G:Lcom/anythink/core/basead/adx/api/IATAdxHandler;

    return-void
.end method

.method public static a(Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/api/ATBaseAdAdapter;)Lcom/anythink/core/common/b/j;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/anythink/core/api/BaseAd;->getDetail()Lcom/anythink/core/common/f/h;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/f/h;)Lcom/anythink/core/common/b/j;

    move-result-object v1

    invoke-virtual {p0}, Lcom/anythink/core/api/BaseAd;->getNetworkInfoMap()Ljava/util/Map;

    move-result-object p0

    iput-object p0, v1, Lcom/anythink/core/common/b/j;->x:Ljava/util/Map;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->X()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/f/av;->M()Lcom/anythink/core/common/f/q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/f/q;->h()Lcom/anythink/core/basead/adx/api/IATAdxHandler;

    move-result-object p0

    iput-object p0, v1, Lcom/anythink/core/common/b/j;->G:Lcom/anythink/core/basead/adx/api/IATAdxHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance p0, Lcom/anythink/core/common/b/j;

    invoke-direct {p0}, Lcom/anythink/core/common/b/j;-><init>()V

    return-object p0
.end method

.method public static a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/f/h;)Lcom/anythink/core/common/b/j;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/b/j;Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/anythink/core/common/b/j;

    invoke-direct {p0}, Lcom/anythink/core/common/b/j;-><init>()V

    return-object p0
.end method

.method private static a(Lcom/anythink/core/common/b/j;Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/anythink/core/api/ATBaseAdAdapter;

    iput-object p1, p0, Lcom/anythink/core/common/b/j;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkInfoMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/b/j;->x:Ljava/util/Map;

    :try_start_0
    iget-object p1, p0, Lcom/anythink/core/common/b/j;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {p1}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->X()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/core/common/b/j;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {p1}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->M()Lcom/anythink/core/common/f/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/f/q;->h()Lcom/anythink/core/basead/adx/api/IATAdxHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/b/j;->G:Lcom/anythink/core/basead/adx/api/IATAdxHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p0
.end method

.method private static a(Lcom/anythink/core/common/b/j;Lcom/anythink/core/common/f/h;)Lcom/anythink/core/common/b/j;
    .locals 5

    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->P()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/b/j;->b:I

    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->F()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/j;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->I()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/b/j;->d:I

    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->D()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/b/j;->f:I

    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->n()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/b/j;->e:D

    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->d()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/b/j;->F:D

    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/j;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/j;->g:Ljava/lang/String;

    iget-wide v0, p0, Lcom/anythink/core/common/b/j;->e:D

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/j;->h:Ljava/lang/Double;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/j;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/o/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/j;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, ""

    :goto_1
    iput-object v0, p0, Lcom/anythink/core/common/b/j;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/anythink/core/common/b/j;->E:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/j;->m:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->P()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    const-string v0, "Cross_Promotion"

    :goto_2
    iput-object v0, p0, Lcom/anythink/core/common/b/j;->n:Ljava/lang/String;

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->P()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_3

    const-string v0, "Adx"

    goto :goto_2

    :cond_3
    const-string v0, "Network"

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/j;->o:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->u()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/b/j;->p:I

    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->Q()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/b/j;->q:I

    iget-object v0, p1, Lcom/anythink/core/common/f/h;->B:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/core/common/b/j;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/core/common/b/j;->l:Ljava/lang/String;

    const-string v1, "RewardedVideo"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->y()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/anythink/core/common/b/j;->r:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/anythink/core/common/b/j;->r:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/api/ATRewardInfo;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/anythink/core/api/ATRewardInfo;->rewardName:Ljava/lang/String;

    iput-object v1, p0, Lcom/anythink/core/common/b/j;->s:Ljava/lang/String;

    iget v0, v0, Lcom/anythink/core/api/ATRewardInfo;->rewardNumber:I

    iput v0, p0, Lcom/anythink/core/common/b/j;->t:I

    :cond_4
    iget-object v0, p0, Lcom/anythink/core/common/b/j;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/anythink/core/common/b/j;->t:I

    if-nez v0, :cond_6

    :cond_5
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->z()Lcom/anythink/core/api/ATRewardInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/anythink/core/api/ATRewardInfo;->rewardName:Ljava/lang/String;

    iput-object v1, p0, Lcom/anythink/core/common/b/j;->s:Ljava/lang/String;

    iget v0, v0, Lcom/anythink/core/api/ATRewardInfo;->rewardNumber:I

    iput v0, p0, Lcom/anythink/core/common/b/j;->t:I

    :cond_6
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/j;->v:Ljava/lang/String;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/j;->u:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->A()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/j;->w:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/j;->y:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->U()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/b/j;->z:I

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->aa()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/j;->A:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->af()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/b/j;->B:I

    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->h()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/anythink/core/common/b/j;->C:Ljava/util/Map;

    :cond_7
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->g()I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/b/j;->D:I

    return-object p0
.end method

.method private static a(Lcom/anythink/core/common/f/h;)Lcom/anythink/core/common/b/j;
    .locals 1

    new-instance v0, Lcom/anythink/core/common/b/j;

    invoke-direct {v0}, Lcom/anythink/core/common/b/j;-><init>()V

    if-eqz p0, :cond_0

    invoke-static {v0, p0}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/b/j;Lcom/anythink/core/common/f/h;)Lcom/anythink/core/common/b/j;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;
    .locals 0

    invoke-static {p0}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/f/h;)Lcom/anythink/core/common/b/j;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/b/j;Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getABTestId()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/b/j;->B:I

    return v0
.end method

.method public final getAdNetworkType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/b/j;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdsourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/b/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdsourceIndex()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/b/j;->d:I

    return v0
.end method

.method public final getAdxHandler()Lcom/anythink/core/basead/adx/api/IATAdxHandler;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/b/j;->G:Lcom/anythink/core/basead/adx/api/IATAdxHandler;

    return-object v0
.end method

.method public final getBidFloor()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/b/j;->F:D

    return-wide v0
.end method

.method public final getChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/b/j;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/b/j;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/b/j;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomRule()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/common/b/j;->w:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/anythink/core/common/b/j;->w:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getDismissType()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/b/j;->z:I

    return v0
.end method

.method public final getEcpm()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/b/j;->e:D

    return-wide v0
.end method

.method public final getEcpmLevel()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/b/j;->p:I

    return v0
.end method

.method public final getEcpmPrecision()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/b/j;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtInfoMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/core/common/b/j;->x:Ljava/util/Map;

    return-object v0
.end method

.method public final getLocalExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/core/common/b/j;->C:Ljava/util/Map;

    return-object v0
.end method

.method public final getNetworkFirmId()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/b/j;->b:I

    return v0
.end method

.method public final getNetworkPlacementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/b/j;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlacementType()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/b/j;->D:I

    return v0
.end method

.method public final getPublisherRevenue()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/b/j;->h:Ljava/lang/Double;

    return-object v0
.end method

.method public final getRewardUserCustomData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/b/j;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getUserCustomData()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getScenarioId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/b/j;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final getScenarioRewardName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/b/j;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final getScenarioRewardNumber()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/b/j;->t:I

    return v0
.end method

.method public final getSegmentId()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/b/j;->q:I

    return v0
.end method

.method public final getSharedPlacementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/b/j;->E:Ljava/lang/String;

    return-object v0
.end method

.method public final getShowId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/b/j;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/b/j;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopOnAdFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/b/j;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopOnPlacementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/b/j;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final getTpBidId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/b/j;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final getWaterfallId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/b/j;->A:Ljava/lang/String;

    return-object v0
.end method

.method public final isHeaderBiddingAdsource()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/b/j;->f:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    iget-object v2, p0, Lcom/anythink/core/common/b/j;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "publisher_revenue"

    iget-object v2, p0, Lcom/anythink/core/common/b/j;->h:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "currency"

    iget-object v2, p0, Lcom/anythink/core/common/b/j;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "country"

    iget-object v2, p0, Lcom/anythink/core/common/b/j;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "adunit_id"

    iget-object v2, p0, Lcom/anythink/core/common/b/j;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "adunit_format"

    iget-object v2, p0, Lcom/anythink/core/common/b/j;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "precision"

    iget-object v2, p0, Lcom/anythink/core/common/b/j;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network_type"

    iget-object v2, p0, Lcom/anythink/core/common/b/j;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network_placement_id"

    iget-object v2, p0, Lcom/anythink/core/common/b/j;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ecpm_level"

    iget v2, p0, Lcom/anythink/core/common/b/j;->p:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "segment_id"

    iget v2, p0, Lcom/anythink/core/common/b/j;->q:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/anythink/core/common/b/j;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "scenario_id"

    iget-object v2, p0, Lcom/anythink/core/common/b/j;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/anythink/core/common/b/j;->s:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/anythink/core/common/b/j;->t:I

    if-eqz v1, :cond_1

    const-string v1, "scenario_reward_name"

    iget-object v2, p0, Lcom/anythink/core/common/b/j;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "scenario_reward_number"

    iget v2, p0, Lcom/anythink/core/common/b/j;->t:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/anythink/core/common/b/j;->v:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "channel"

    iget-object v2, p0, Lcom/anythink/core/common/b/j;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, p0, Lcom/anythink/core/common/b/j;->u:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "sub_channel"

    iget-object v2, p0, Lcom/anythink/core/common/b/j;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v1, p0, Lcom/anythink/core/common/b/j;->w:Ljava/util/Map;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "custom_rule"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/anythink/core/common/b/j;->w:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v1, "network_firm_id"

    iget v2, p0, Lcom/anythink/core/common/b/j;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "adsource_id"

    iget-object v2, p0, Lcom/anythink/core/common/b/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "adsource_index"

    iget v2, p0, Lcom/anythink/core/common/b/j;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "adsource_price"

    iget-wide v2, p0, Lcom/anythink/core/common/b/j;->e:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "adsource_isheaderbidding"

    iget v2, p0, Lcom/anythink/core/common/b/j;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/anythink/core/common/b/j;->x:Ljava/util/Map;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, "ext_info"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/anythink/core/common/b/j;->x:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object v1, p0, Lcom/anythink/core/common/b/j;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v1, :cond_6

    const-string v2, "reward_custom_data"

    invoke-virtual {v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getUserCustomData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget-object v1, p0, Lcom/anythink/core/common/b/j;->y:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "tp_bid_id"

    iget-object v2, p0, Lcom/anythink/core/common/b/j;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    iget v1, p0, Lcom/anythink/core/common/b/j;->z:I

    if-eqz v1, :cond_8

    const-string v2, "dismiss_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_8
    iget-object v1, p0, Lcom/anythink/core/common/b/j;->A:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "wf_id"

    iget-object v2, p0, Lcom/anythink/core/common/b/j;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    const-string v1, "abtest_id"

    iget v2, p0, Lcom/anythink/core/common/b/j;->B:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/anythink/core/common/b/j;->C:Ljava/util/Map;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_a

    const-string v1, "user_load_extra_data"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/anythink/core/common/b/j;->C:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    const-string v1, "placement_type"

    iget v2, p0, Lcom/anythink/core/common/b/j;->D:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/anythink/core/common/b/j;->E:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "shared_placement_id"

    iget-object v2, p0, Lcom/anythink/core/common/b/j;->E:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    const-string v1, "bid_floor"

    iget-wide v2, p0, Lcom/anythink/core/common/b/j;->F:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
