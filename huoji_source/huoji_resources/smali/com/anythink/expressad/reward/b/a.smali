.class public Lcom/anythink/expressad/reward/b/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/a/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/reward/b/a$b;,
        Lcom/anythink/expressad/reward/b/a$a;,
        Lcom/anythink/expressad/reward/b/a$c;,
        Lcom/anythink/expressad/reward/b/a$d;
    }
.end annotation


# static fields
.field private static final A:I = 0x9

.field private static final E:I = 0x10

.field private static final F:I = 0x12

.field private static final G:I = 0x11

.field private static final H:I = 0xf4629

.field private static final I:I = 0xf462a

.field private static T:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static U:Ljava/util/concurrent/ConcurrentHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:I = 0x1

.field public static b:Ljava/lang/String; = null

.field public static c:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/expressad/reward/b/a$d;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/lang/String; = "RewardVideoController"

.field private static final j:I = 0x8

.field private static final z:I = 0x8


# instance fields
.field private B:I

.field private C:I

.field private D:I

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Z

.field private volatile R:Z

.field private final S:Ljava/lang/Object;

.field private V:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private W:Ljava/lang/String;

.field private X:Lcom/anythink/expressad/foundation/c/c;

.field private volatile Y:Z

.field private volatile Z:Z

.field private volatile aa:Z

.field private volatile ab:Z

.field private volatile ac:Z

.field private volatile ad:Z

.field private volatile ae:Z

.field private af:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private ag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation
.end field

.field public volatile d:Z

.field public volatile e:Z

.field public volatile f:Z

.field public volatile g:Z

.field public volatile h:Z

.field private k:Landroid/content/Context;

.field private l:I

.field private m:Lcom/anythink/expressad/reward/a/d;

.field private n:Lcom/anythink/expressad/videocommon/e/d;

.field private o:Lcom/anythink/expressad/videocommon/e/a;

.field private volatile p:Lcom/anythink/expressad/videocommon/d/a;

.field private volatile q:Lcom/anythink/expressad/reward/b/a$c;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private volatile t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:I

.field private x:Landroid/os/Handler;

.field private y:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/anythink/expressad/reward/b/a;->T:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/anythink/expressad/reward/b/a;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/anythink/expressad/reward/b/a;->U:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/expressad/reward/b/a;->w:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/anythink/expressad/reward/b/a;->y:I

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->J:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->K:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->L:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->M:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->O:Z

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/anythink/expressad/reward/b/a;->P:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->Q:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->R:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/anythink/expressad/reward/b/a;->S:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/anythink/expressad/reward/b/a;->X:Lcom/anythink/expressad/foundation/c/c;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/anythink/expressad/reward/b/a;->Y:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->Z:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->aa:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->ab:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->ac:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->ad:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->ae:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->d:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->e:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->f:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->g:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->h:Z

    new-instance v0, Lcom/anythink/expressad/reward/b/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/anythink/expressad/reward/b/a$1;-><init>(Lcom/anythink/expressad/reward/b/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/expressad/reward/b/a;->x:Landroid/os/Handler;

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anythink/expressad/reward/b/a;->T:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anythink/expressad/reward/b/a;->T:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/anythink/expressad/reward/b/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/b/a;->af:Ljava/util/List;

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(III)V
    .locals 5

    iput p1, p0, Lcom/anythink/expressad/reward/b/a;->B:I

    iput p2, p0, Lcom/anythink/expressad/reward/b/a;->C:I

    sget v0, Lcom/anythink/expressad/foundation/g/a;->cu:I

    if-ne p2, v0, :cond_1

    if-gez p3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iput v0, p0, Lcom/anythink/expressad/reward/b/a;->D:I

    :cond_1
    sget v0, Lcom/anythink/expressad/foundation/g/a;->ct:I

    if-ne p2, v0, :cond_3

    if-gez p3, :cond_2

    const/16 v0, 0x50

    goto :goto_1

    :cond_2
    move v0, p3

    :goto_1
    iput v0, p0, Lcom/anythink/expressad/reward/b/a;->D:I

    :cond_3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ivRewardEnable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ivRewardMode"

    sget v3, Lcom/anythink/expressad/foundation/g/a;->cr:I

    const/4 v4, 0x0

    if-ne p1, v3, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    const/4 p1, 0x1

    :goto_2
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "ivRewardPlayValueMode"

    sget v1, Lcom/anythink/expressad/foundation/g/a;->ct:I

    if-ne p2, v1, :cond_5

    const/4 v2, 0x0

    :cond_5
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "ivRewardPlayValue"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a;->s:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/anythink/expressad/d/b;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Lcom/anythink/core/common/f/m;)V
    .locals 11

    const-string v0, "_1"

    const-string v1, "1"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/anythink/expressad/reward/b/a;->o:Lcom/anythink/expressad/videocommon/e/a;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/anythink/expressad/videocommon/e/a;->i()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/anythink/expressad/reward/b/a;->k:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/anythink/expressad/reward/b/a;->t:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/anythink/expressad/foundation/h/v;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/anythink/expressad/reward/b/a;->k:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/anythink/expressad/reward/b/a;->t:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/anythink/expressad/foundation/h/v;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/reward/b/a;->l:I

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/anythink/expressad/reward/b/a;->i()V

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/anythink/expressad/reward/a/d;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/anythink/expressad/reward/b/a;->l:I

    if-lt v0, v1, :cond_3

    if-lez v1, :cond_3

    iput-boolean v2, p0, Lcom/anythink/expressad/reward/b/a;->R:Z

    return-void

    :cond_3
    new-instance v5, Lcom/anythink/expressad/reward/b/a$d;

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->x:Landroid/os/Handler;

    invoke-direct {v5, p0, p0, v0}, Lcom/anythink/expressad/reward/b/a$d;-><init>(Lcom/anythink/expressad/reward/b/a;Lcom/anythink/expressad/reward/b/a;Landroid/os/Handler;)V

    sget-object v0, Lcom/anythink/expressad/reward/b/a;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a;->s:Ljava/lang/String;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    iget-object v7, p0, Lcom/anythink/expressad/reward/b/a;->r:Ljava/lang/String;

    iget v8, p0, Lcom/anythink/expressad/reward/b/a;->y:I

    iget-object v9, p0, Lcom/anythink/expressad/reward/b/a;->u:Ljava/lang/String;

    move-object v4, p1

    move-object v6, p2

    move-object v10, p3

    invoke-virtual/range {v3 .. v10}, Lcom/anythink/expressad/reward/a/d;->a(Landroid/app/Activity;Lcom/anythink/expressad/video/bt/module/b/h;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/anythink/core/common/f/m;)V

    return-void

    :cond_4
    iput-boolean v2, p0, Lcom/anythink/expressad/reward/b/a;->R:Z

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a;->p:Lcom/anythink/expressad/videocommon/d/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_5

    :try_start_1
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a;->p:Lcom/anythink/expressad/videocommon/d/a;

    const-string p2, "can\'t show because load is failed"

    invoke-interface {p1, p2}, Lcom/anythink/expressad/videocommon/d/a;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    sget-boolean p2, Lcom/anythink/expressad/a;->a:Z

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    return-void

    :catch_1
    move-exception p1

    sget-boolean p2, Lcom/anythink/expressad/a;->a:Z

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    :cond_6
    iget-object p2, p0, Lcom/anythink/expressad/reward/b/a;->p:Lcom/anythink/expressad/videocommon/d/a;

    if-eqz p2, :cond_7

    :try_start_3
    iget-object p2, p0, Lcom/anythink/expressad/reward/b/a;->p:Lcom/anythink/expressad/videocommon/d/a;

    const-string p3, "show exception"

    invoke-interface {p2, p3}, Lcom/anythink/expressad/videocommon/d/a;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    nop

    sget-boolean p2, Lcom/anythink/expressad/a;->a:Z

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_1
    iput-boolean v2, p0, Lcom/anythink/expressad/reward/b/a;->R:Z

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/reward/b/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/b/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/anythink/expressad/reward/b/a;->T:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anythink/expressad/reward/b/a;->T:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->k:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Anythink_ConfirmTitle"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/expressad/reward/b/a;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/anythink/expressad/foundation/h/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a;->k:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Anythink_ConfirmContent"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/anythink/expressad/foundation/h/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a;->k:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Anythink_CancelText"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->s:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p2, p4}, Lcom/anythink/expressad/foundation/h/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a;->k:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Anythink_ConfirmText"

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/anythink/expressad/reward/b/a;->s:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/anythink/expressad/foundation/h/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private static a(ZZ)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/anythink/expressad/reward/b/a;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    if-eqz p0, :cond_2

    const/16 p0, 0x11f

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {p0}, Lcom/anythink/expressad/videocommon/a;->a(I)V

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/anythink/expressad/videocommon/a;->b(I)V

    goto :goto_1

    :cond_2
    const/16 p0, 0x5e

    if-eqz p1, :cond_1

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/anythink/expressad/videocommon/a;->a()V

    invoke-static {}, Lcom/anythink/expressad/videocommon/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static a(ZZLjava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/anythink/expressad/reward/b/a;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    if-eqz p0, :cond_2

    const/16 p0, 0x11f

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {p0}, Lcom/anythink/expressad/videocommon/a;->a(I)V

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/anythink/expressad/videocommon/a;->b(I)V

    goto :goto_1

    :cond_2
    const/16 p0, 0x5e

    if-eqz p1, :cond_1

    goto :goto_0

    :goto_1
    invoke-static {p2}, Lcom/anythink/expressad/videocommon/a;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/videocommon/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/reward/b/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/reward/b/a;->Q:Z

    return p1
.end method

.method private b(I)Lcom/anythink/expressad/videocommon/c/b;
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->n:Lcom/anythink/expressad/videocommon/e/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/e/d;->I()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/anythink/expressad/reward/b/a;->n:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v3}, Lcom/anythink/expressad/videocommon/e/d;->I()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/videocommon/c/b;

    invoke-virtual {v3}, Lcom/anythink/expressad/videocommon/c/b;->a()I

    move-result v3

    if-ne v3, p1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a;->n:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/d;->I()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/videocommon/c/b;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static synthetic b(Lcom/anythink/expressad/reward/b/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/b/a;->ag:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b()V
    .locals 0

    return-void
.end method

.method private b(Lcom/anythink/expressad/foundation/d/d;)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/b/a;->c(Lcom/anythink/expressad/foundation/d/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "load mv api error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/b/a;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string v0, "can\'t show because unknow error"

    invoke-direct {p0, v0}, Lcom/anythink/expressad/reward/b/a;->b(Ljava/lang/String;)V

    sget-boolean v0, Lcom/anythink/expressad/a;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->q:Lcom/anythink/expressad/reward/b/a$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->ad:Z

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->q:Lcom/anythink/expressad/reward/b/a$c;

    invoke-static {v0, p1}, Lcom/anythink/expressad/reward/b/a$c;->a(Lcom/anythink/expressad/reward/b/a$c;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/anythink/expressad/reward/b/a;->U:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/anythink/expressad/reward/b/a;->U:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/reward/b/a;->K:Z

    return-void
.end method

.method public static synthetic c(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/a/d;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    return-object p0
.end method

.method private static c()V
    .locals 0

    return-void
.end method

.method private c(Lcom/anythink/expressad/foundation/d/d;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a;->s:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/anythink/expressad/reward/a/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/anythink/expressad/reward/a/d;

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a;->k:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/expressad/reward/b/a;->t:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/reward/b/a;->s:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/expressad/reward/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    iget-boolean v1, p0, Lcom/anythink/expressad/reward/b/a;->J:Z

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/reward/a/d;->a(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    iget-boolean v1, p0, Lcom/anythink/expressad/reward/b/a;->K:Z

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/reward/a/d;->b(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->J:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    iget v1, p0, Lcom/anythink/expressad/reward/b/a;->B:I

    iget v2, p0, Lcom/anythink/expressad/reward/b/a;->C:I

    iget v3, p0, Lcom/anythink/expressad/reward/b/a;->D:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/expressad/reward/a/d;->a(III)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    iget v1, p0, Lcom/anythink/expressad/reward/b/a;->y:I

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/reward/a/d;->a(I)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a;->n:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/videocommon/e/d;)V

    new-instance v0, Lcom/anythink/expressad/reward/b/a$a;

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    invoke-direct {v0, p0, v1}, Lcom/anythink/expressad/reward/b/a$a;-><init>(Lcom/anythink/expressad/reward/b/a;Lcom/anythink/expressad/reward/a/a;)V

    new-instance v1, Lcom/anythink/expressad/reward/b/a$b;

    iget-object v2, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    invoke-direct {v1, p0, v2}, Lcom/anythink/expressad/reward/b/a$b;-><init>(Lcom/anythink/expressad/reward/b/a;Lcom/anythink/expressad/reward/a/a;)V

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/reward/b/a$b;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/reward/a/b;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/foundation/d/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/b/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/reward/b/a;->O:Z

    return-void
.end method

.method public static synthetic d(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/b/a$c;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/b/a;->q:Lcom/anythink/expressad/reward/b/a$c;

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/anythink/expressad/reward/b/a;->Q:Z

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/reward/a/d;->c(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private static e()V
    .locals 0

    invoke-static {}, Lcom/anythink/expressad/foundation/h/m;->a()V

    return-void
.end method

.method public static synthetic e(Lcom/anythink/expressad/reward/b/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/reward/b/a;->N:Z

    return p0
.end method

.method public static synthetic f(Lcom/anythink/expressad/reward/b/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/b/a;->t:Ljava/lang/String;

    return-object p0
.end method

.method private f()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->n:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/e/d;->I()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/videocommon/c/b;

    iget-object v4, p0, Lcom/anythink/expressad/reward/b/a;->k:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/anythink/expressad/reward/b/a;->t:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/anythink/expressad/videocommon/c/b;->a()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/anythink/expressad/foundation/h/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static synthetic g(Lcom/anythink/expressad/reward/b/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/b/a;->s:Ljava/lang/String;

    return-object p0
.end method

.method private g()Z
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->n:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/e/d;->I()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a;->o:Lcom/anythink/expressad/videocommon/e/a;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/c;->b()Lcom/anythink/expressad/videocommon/e/a;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/expressad/reward/b/a;->o:Lcom/anythink/expressad/videocommon/e/a;

    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a;->o:Lcom/anythink/expressad/videocommon/e/a;

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/a;->i()Ljava/util/Map;

    move-result-object v1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/expressad/videocommon/c/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/anythink/expressad/videocommon/c/b;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/anythink/expressad/videocommon/c/b;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lcom/anythink/expressad/reward/b/a;->k:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/anythink/expressad/reward/b/a;->t:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/anythink/expressad/videocommon/c/b;->a()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v4, v7}, Lcom/anythink/expressad/foundation/h/v;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic h(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/videocommon/d/a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/b/a;->p:Lcom/anythink/expressad/videocommon/d/a;

    return-object p0
.end method

.method private h()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/anythink/expressad/reward/b/a;->i()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/reward/a/d;->c()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private i()V
    .locals 4

    new-instance v0, Lcom/anythink/expressad/reward/a/d;

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a;->k:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/expressad/reward/b/a;->t:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/reward/b/a;->s:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/expressad/reward/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    iget-boolean v1, p0, Lcom/anythink/expressad/reward/b/a;->J:Z

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/reward/a/d;->a(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    iget-boolean v1, p0, Lcom/anythink/expressad/reward/b/a;->K:Z

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/reward/a/d;->b(Z)V

    iget-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->J:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    iget v1, p0, Lcom/anythink/expressad/reward/b/a;->B:I

    iget v2, p0, Lcom/anythink/expressad/reward/b/a;->C:I

    iget v3, p0, Lcom/anythink/expressad/reward/b/a;->D:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/expressad/reward/a/d;->a(III)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a;->n:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/videocommon/e/d;)V

    return-void
.end method

.method public static synthetic i(Lcom/anythink/expressad/reward/b/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/reward/b/a;->K:Z

    return p0
.end method

.method public static synthetic j(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/videocommon/e/d;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/b/a;->n:Lcom/anythink/expressad/videocommon/e/d;

    return-object p0
.end method

.method private j()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->X:Lcom/anythink/expressad/foundation/c/c;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/c/c;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/reward/b/a;->X:Lcom/anythink/expressad/foundation/c/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic k(Lcom/anythink/expressad/reward/b/a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/b/a;->P:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic l(Lcom/anythink/expressad/reward/b/a;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->R:Z

    return v0
.end method

.method public static synthetic m(Lcom/anythink/expressad/reward/b/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/b/a;->v:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic n(Lcom/anythink/expressad/reward/b/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/reward/b/a;->aa:Z

    return p0
.end method

.method public static synthetic o(Lcom/anythink/expressad/reward/b/a;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->aa:Z

    return v0
.end method

.method public static synthetic p(Lcom/anythink/expressad/reward/b/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/reward/b/a;->ab:Z

    return p0
.end method

.method public static synthetic q(Lcom/anythink/expressad/reward/b/a;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->ab:Z

    return v0
.end method

.method public static synthetic r(Lcom/anythink/expressad/reward/b/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/reward/b/a;->ac:Z

    return p0
.end method

.method public static synthetic s(Lcom/anythink/expressad/reward/b/a;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->ac:Z

    return v0
.end method

.method public static synthetic t(Lcom/anythink/expressad/reward/b/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/reward/b/a;->ae:Z

    return p0
.end method

.method public static synthetic u(Lcom/anythink/expressad/reward/b/a;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->ad:Z

    return v0
.end method

.method public static synthetic v(Lcom/anythink/expressad/reward/b/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/reward/b/a;->ad:Z

    return p0
.end method

.method public static synthetic w(Lcom/anythink/expressad/reward/b/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/b/a;->x:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->Q:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anythink/expressad/reward/b/a;->U:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/anythink/expressad/reward/b/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/anythink/expressad/reward/b/a;->U:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Lcom/anythink/expressad/reward/b/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/reward/b/a;->y:I

    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/m;)V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iput-object p2, p0, Lcom/anythink/expressad/reward/b/a;->v:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/expressad/reward/b/a;->r:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/expressad/reward/b/a;->u:Ljava/lang/String;

    iget-object p3, p0, Lcom/anythink/expressad/reward/b/a;->S:Ljava/lang/Object;

    monitor-enter p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    :try_start_1
    iget-boolean p4, p0, Lcom/anythink/expressad/reward/b/a;->R:Z

    if-eqz p4, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a;->p:Lcom/anythink/expressad/videocommon/d/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    :try_start_2
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a;->p:Lcom/anythink/expressad/videocommon/d/a;

    const-string p2, "Campaign is show progressing "

    invoke-interface {p1, p2}, Lcom/anythink/expressad/videocommon/d/a;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    sget-boolean p2, Lcom/anythink/expressad/a;->a:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    monitor-exit p3

    return-void

    :cond_1
    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/anythink/expressad/reward/b/a;->R:Z

    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object p3, p0, Lcom/anythink/expressad/reward/b/a;->q:Lcom/anythink/expressad/reward/b/a$c;

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/anythink/expressad/reward/b/a;->q:Lcom/anythink/expressad/reward/b/a$c;

    invoke-static {p3}, Lcom/anythink/expressad/reward/b/a$c;->c(Lcom/anythink/expressad/reward/b/a$c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    if-ne p3, p4, :cond_3

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a;->p:Lcom/anythink/expressad/videocommon/d/a;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    if-eqz p1, :cond_2

    :try_start_5
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a;->p:Lcom/anythink/expressad/videocommon/d/a;

    const-string p2, "campaing is loading"

    invoke-interface {p1, p2}, Lcom/anythink/expressad/videocommon/d/a;->b(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_6
    sget-boolean p2, Lcom/anythink/expressad/a;->a:Z

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->R:Z

    return-void

    :cond_3
    iget-object p3, p0, Lcom/anythink/expressad/reward/b/a;->k:Landroid/content/Context;

    if-nez p3, :cond_5

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a;->p:Lcom/anythink/expressad/videocommon/d/a;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    if-eqz p1, :cond_4

    :try_start_7
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a;->p:Lcom/anythink/expressad/videocommon/d/a;

    const-string p2, "context is null"

    invoke-interface {p1, p2}, Lcom/anythink/expressad/videocommon/d/a;->b(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    :try_start_8
    sget-boolean p2, Lcom/anythink/expressad/a;->a:Z

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->R:Z

    return-void

    :cond_5
    iget-boolean p4, p0, Lcom/anythink/expressad/reward/b/a;->J:Z

    if-eqz p4, :cond_7

    invoke-static {p3}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a;->p:Lcom/anythink/expressad/videocommon/d/a;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    if-eqz p1, :cond_6

    :try_start_9
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a;->p:Lcom/anythink/expressad/videocommon/d/a;

    const-string p2, "network exception"

    invoke-interface {p1, p2}, Lcom/anythink/expressad/videocommon/d/a;->b(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    :try_start_a
    sget-boolean p2, Lcom/anythink/expressad/a;->a:Z

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_3
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->R:Z

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/anythink/expressad/reward/b/a;->j()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    :try_start_b
    new-instance p3, Ljava/text/SimpleDateFormat;

    const-string p4, "dd"

    invoke-direct {p3, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance p4, Ljava/util/Date;

    invoke-direct {p4}, Ljava/util/Date;-><init>()V

    invoke-virtual {p3, p4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/anythink/expressad/reward/b/a;->k:Landroid/content/Context;

    const-string v1, "reward_date"

    const-string v2, "0"

    invoke-static {p4, v1, v2}, Lcom/anythink/expressad/foundation/h/v;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_8

    iget-object p4, p0, Lcom/anythink/expressad/reward/b/a;->k:Landroid/content/Context;

    const-string v1, "reward_date"

    invoke-static {p4, v1, p3}, Lcom/anythink/expressad/foundation/h/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/anythink/expressad/reward/b/a;->k:Landroid/content/Context;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a;->t:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_1"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3, p4, v1}, Lcom/anythink/expressad/foundation/h/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    :cond_8
    :try_start_c
    iget-object p3, p0, Lcom/anythink/expressad/reward/b/a;->o:Lcom/anythink/expressad/videocommon/e/a;

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Lcom/anythink/expressad/videocommon/e/a;->i()Ljava/util/Map;

    move-result-object p3

    if-eqz p3, :cond_9

    const-string p4, "1"

    invoke-interface {p3, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    const-string p4, "1"

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_4

    :cond_9
    const/4 p3, 0x0

    :goto_4
    iget-object p4, p0, Lcom/anythink/expressad/reward/b/a;->k:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/expressad/reward/b/a;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p4, v1, v2}, Lcom/anythink/expressad/foundation/h/v;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_a

    iget-object p4, p0, Lcom/anythink/expressad/reward/b/a;->k:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/expressad/reward/b/a;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p4, v1, v2}, Lcom/anythink/expressad/foundation/h/v;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    iput p4, p0, Lcom/anythink/expressad/reward/b/a;->l:I

    :cond_a
    iget-object p4, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    if-nez p4, :cond_b

    invoke-direct {p0}, Lcom/anythink/expressad/reward/b/a;->i()V

    :cond_b
    iget-object p4, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    if-eqz p4, :cond_d

    invoke-virtual {p4}, Lcom/anythink/expressad/reward/a/d;->c()Z

    move-result p4

    if-eqz p4, :cond_d

    iget p4, p0, Lcom/anythink/expressad/reward/b/a;->l:I

    if-lt p4, p3, :cond_c

    if-lez p3, :cond_c

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->R:Z

    return-void

    :cond_c
    new-instance v3, Lcom/anythink/expressad/reward/b/a$d;

    iget-object p3, p0, Lcom/anythink/expressad/reward/b/a;->x:Landroid/os/Handler;

    invoke-direct {v3, p0, p0, p3}, Lcom/anythink/expressad/reward/b/a$d;-><init>(Lcom/anythink/expressad/reward/b/a;Lcom/anythink/expressad/reward/b/a;Landroid/os/Handler;)V

    sget-object p3, Lcom/anythink/expressad/reward/b/a;->c:Ljava/util/Map;

    iget-object p4, p0, Lcom/anythink/expressad/reward/b/a;->s:Ljava/lang/String;

    invoke-interface {p3, p4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    iget-object v5, p0, Lcom/anythink/expressad/reward/b/a;->r:Ljava/lang/String;

    iget v6, p0, Lcom/anythink/expressad/reward/b/a;->y:I

    iget-object v7, p0, Lcom/anythink/expressad/reward/b/a;->u:Ljava/lang/String;

    move-object v2, p1

    move-object v4, p2

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/anythink/expressad/reward/a/d;->a(Landroid/app/Activity;Lcom/anythink/expressad/video/bt/module/b/h;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/anythink/core/common/f/m;)V

    return-void

    :cond_d
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->R:Z

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a;->p:Lcom/anythink/expressad/videocommon/d/a;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    if-eqz p1, :cond_e

    :try_start_d
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a;->p:Lcom/anythink/expressad/videocommon/d/a;

    const-string p2, "can\'t show because load is failed"

    invoke-interface {p1, p2}, Lcom/anythink/expressad/videocommon/d/a;->b(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    return-void

    :catch_5
    move-exception p1

    :try_start_e
    sget-boolean p2, Lcom/anythink/expressad/a;->a:Z

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    :cond_e
    return-void

    :catch_6
    move-exception p1

    :try_start_f
    sget-boolean p2, Lcom/anythink/expressad/a;->a:Z

    if-eqz p2, :cond_f

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    :cond_f
    iget-object p2, p0, Lcom/anythink/expressad/reward/b/a;->p:Lcom/anythink/expressad/videocommon/d/a;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    if-eqz p2, :cond_10

    :try_start_10
    iget-object p2, p0, Lcom/anythink/expressad/reward/b/a;->p:Lcom/anythink/expressad/videocommon/d/a;

    const-string p3, "show exception"

    invoke-interface {p2, p3}, Lcom/anythink/expressad/videocommon/d/a;->b(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_5

    :catch_7
    :try_start_11
    sget-boolean p2, Lcom/anythink/expressad/a;->a:Z

    if-eqz p2, :cond_10

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_5
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->R:Z

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3

    throw p1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    :catch_8
    move-exception p1

    sget-boolean p2, Lcom/anythink/expressad/a;->a:Z

    if-eqz p2, :cond_11

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    :cond_11
    iget-object p2, p0, Lcom/anythink/expressad/reward/b/a;->p:Lcom/anythink/expressad/videocommon/d/a;

    if-eqz p2, :cond_12

    :try_start_12
    iget-object p2, p0, Lcom/anythink/expressad/reward/b/a;->p:Lcom/anythink/expressad/videocommon/d/a;

    const-string p3, "show exception"

    invoke-interface {p2, p3}, Lcom/anythink/expressad/videocommon/d/a;->b(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    goto :goto_6

    :catch_9
    nop

    sget-boolean p2, Lcom/anythink/expressad/a;->a:Z

    if-eqz p2, :cond_12

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    :goto_6
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->R:Z

    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/d;)V
    .locals 5

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a;->q:Lcom/anythink/expressad/reward/b/a$c;

    const-string v0, "Campaign data is NULL"

    invoke-static {p1, v0}, Lcom/anythink/expressad/reward/b/a$c;->b(Lcom/anythink/expressad/reward/b/a$c;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->q:Lcom/anythink/expressad/reward/b/a$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->q:Lcom/anythink/expressad/reward/b/a$c;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a$c;->a(Lcom/anythink/expressad/reward/b/a$c;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    iput-boolean v2, p0, Lcom/anythink/expressad/reward/b/a;->Y:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/anythink/expressad/reward/b/a;->Y:Z

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->q:Lcom/anythink/expressad/reward/b/a$c;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a$c;->b(Lcom/anythink/expressad/reward/b/a$c;)V

    :goto_0
    iput-boolean v1, p0, Lcom/anythink/expressad/reward/b/a;->N:Z

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->x:Landroid/os/Handler;

    const v1, 0xf4629

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v2, p0, Lcom/anythink/expressad/reward/b/a;->ab:Z

    iput-boolean v2, p0, Lcom/anythink/expressad/reward/b/a;->aa:Z

    iput-boolean v2, p0, Lcom/anythink/expressad/reward/b/a;->ac:Z

    iput-boolean v2, p0, Lcom/anythink/expressad/reward/b/a;->ad:Z

    invoke-static {}, Lcom/anythink/expressad/reward/a/c;->a()Lcom/anythink/expressad/reward/a/c;

    :try_start_0
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v0

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/reward/b/a;->s:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/anythink/expressad/reward/b/a;->J:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/reward/b/a;->n:Lcom/anythink/expressad/videocommon/e/d;

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->n:Lcom/anythink/expressad/videocommon/e/d;

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/videocommon/e/d;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->n:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/e/d;->S()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a;->x:Landroid/os/Handler;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start load timeout for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a;->x:Landroid/os/Handler;

    const v2, 0xf462a

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->n:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/e/d;->Q()Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/reward/b/a;->V:Ljava/util/Queue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-direct {p0}, Lcom/anythink/expressad/reward/b/a;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/anythink/expressad/reward/b/a;->f()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    sget-boolean v1, Lcom/anythink/expressad/a;->a:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_4
    :goto_1
    :try_start_3
    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/b/a;->c(Lcom/anythink/expressad/foundation/d/d;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception p1

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "load mv api error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/b/a;->b(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    move-exception p1

    :try_start_5
    const-string v0, "can\'t show because unknow error"

    invoke-direct {p0, v0}, Lcom/anythink/expressad/reward/b/a;->b(Ljava/lang/String;)V

    sget-boolean v0, Lcom/anythink/expressad/a;->a:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    return-void

    :catch_3
    move-exception p1

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->q:Lcom/anythink/expressad/reward/b/a$c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a;->q:Lcom/anythink/expressad/reward/b/a$c;

    const-string v1, "load exception"

    invoke-static {v0, v1}, Lcom/anythink/expressad/reward/b/a$c;->a(Lcom/anythink/expressad/reward/b/a$c;Ljava/lang/String;)V

    :cond_6
    sget-boolean v0, Lcom/anythink/expressad/a;->a:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    return-void
.end method

.method public final a(Lcom/anythink/expressad/videocommon/d/a;)V
    .locals 7

    iput-object p1, p0, Lcom/anythink/expressad/reward/b/a;->p:Lcom/anythink/expressad/videocommon/d/a;

    new-instance v6, Lcom/anythink/expressad/reward/b/a$c;

    iget-object v3, p0, Lcom/anythink/expressad/reward/b/a;->x:Landroid/os/Handler;

    iget-object v4, p0, Lcom/anythink/expressad/reward/b/a;->s:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/anythink/expressad/reward/b/a$c;-><init>(Lcom/anythink/expressad/reward/b/a;Lcom/anythink/expressad/videocommon/d/a;Landroid/os/Handler;Ljava/lang/String;B)V

    iput-object v6, p0, Lcom/anythink/expressad/reward/b/a;->q:Lcom/anythink/expressad/reward/b/a$c;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/reward/b/a;->k:Landroid/content/Context;

    iput-object p2, p0, Lcom/anythink/expressad/reward/b/a;->s:Ljava/lang/String;

    iput-object p1, p0, Lcom/anythink/expressad/reward/b/a;->t:Ljava/lang/String;

    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/e/c;->b()Lcom/anythink/expressad/videocommon/e/a;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/reward/b/a;->o:Lcom/anythink/expressad/videocommon/e/a;

    invoke-static {}, Lcom/anythink/expressad/foundation/h/m;->b()V

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/m;->a()Lcom/anythink/expressad/videocommon/b/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/b/m;->b()V

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/j;->a()Lcom/anythink/expressad/videocommon/b/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/b/j;->b()V

    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/expressad/reward/b/a;->s:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/anythink/expressad/reward/b/a;->J:Z

    invoke-virtual {p1, p2, v0}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a;->X:Lcom/anythink/expressad/foundation/c/c;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/expressad/foundation/c/c;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/c/c;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/reward/b/a;->X:Lcom/anythink/expressad/foundation/c/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/reward/b/a;->J:Z

    return-void
.end method

.method public isReady()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/anythink/expressad/reward/b/a;->j()Z

    iget-boolean v1, p0, Lcom/anythink/expressad/reward/b/a;->K:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/anythink/expressad/reward/b/a;->i()V

    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a;->m:Lcom/anythink/expressad/reward/a/d;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/anythink/expressad/reward/a/d;->c()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-boolean v2, Lcom/anythink/expressad/a;->a:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method
