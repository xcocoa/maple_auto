.class public Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;
.super Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;
.source ""

# interfaces
.implements Lcom/anythink/expressad/video/signal/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private B:Landroid/widget/TextView;

.field private C:Z

.field private D:Z

.field private E:Ljava/lang/String;

.field private F:Z

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/videocommon/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private I:Lcom/anythink/expressad/video/bt/module/a/a;

.field private J:Lcom/anythink/expressad/video/bt/module/b/h;

.field private K:Lcom/anythink/expressad/video/bt/module/b/h;

.field private L:Lcom/anythink/expressad/video/bt/module/a/b;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Z

.field private P:I

.field private Q:Z

.field private R:I

.field private S:Ljava/lang/String;

.field private T:Lcom/anythink/expressad/video/dynview/f/d;

.field public a:Lcom/anythink/expressad/foundation/d/c;

.field private e:I

.field private f:I

.field private g:Landroid/widget/FrameLayout;

.field private h:Lcom/anythink/expressad/video/bt/module/AnythinkBTLayout;

.field private i:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

.field private j:Landroid/view/LayoutInflater;

.field private k:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->e:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->f:I

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->C:Z

    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->D:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->F:Z

    iput v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->P:I

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->e:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->f:I

    iput-boolean p2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->C:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->D:Z

    iput-boolean p2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->F:Z

    iput v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->P:I

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;I)I
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->R:I

    return p1
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->B:Landroid/widget/TextView;

    return-object p1
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->i:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    return-object p0
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->d:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->T:Lcom/anythink/expressad/video/dynview/f/d;

    if-nez v0, :cond_0

    const-string p1, "ChoiceOneCallback is null"

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->T:Lcom/anythink/expressad/video/dynview/f/d;

    const-string v2, "choice_one_callback"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/anythink/expressad/video/dynview/b;->a()Lcom/anythink/expressad/video/dynview/b;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->G:Ljava/util/List;

    new-instance v2, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer$2;

    invoke-direct {v2, p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer$2;-><init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)V

    invoke-static {p1, v1, v2, v0}, Lcom/anythink/expressad/video/dynview/b;->a(Landroid/content/Context;Ljava/util/List;Lcom/anythink/expressad/video/dynview/f/h;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->Q:Z

    return p1
.end method

.method private a(Z)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/d;->K()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 p1, 0x3

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->g()Z

    move-result p1

    return p1

    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->g()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0

    :cond_4
    return p1

    :catchall_0
    :goto_0
    return v0
.end method

.method public static synthetic b(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->g:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;
    .locals 2

    invoke-static {p1}, Lcom/anythink/expressad/videocommon/a;->a(Ljava/lang/String;)Lcom/anythink/expressad/videocommon/a$a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/a$a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->E:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get BT wraper.getTag = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/videocommon/a$a;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/a$a;->a()Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic c(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)Lcom/anythink/expressad/video/bt/module/a/a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->I:Lcom/anythink/expressad/video/bt/module/a/a;

    return-object p0
.end method

.method private c()Lcom/anythink/expressad/video/bt/module/a/b;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->L:Lcom/anythink/expressad/video/bt/module/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer$3;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer$3;-><init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->L:Lcom/anythink/expressad/video/bt/module/a/b;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->L:Lcom/anythink/expressad/video/bt/module/a/b;

    return-object v0
.end method

.method private d(Lcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/videocommon/b/c;
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->H:Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/videocommon/b/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/b/c;->n()Lcom/anythink/expressad/foundation/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic d(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->G:Ljava/util/List;

    return-object p0
.end method

.method private static d()V
    .locals 0

    return-void
.end method

.method public static synthetic e(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    return-object p0
.end method

.method private static e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static f()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic f(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->o:Ljava/lang/String;

    return-object p0
.end method

.method private g()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/d;->L()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    return v0

    :cond_1
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-double v5, v3, v1

    if-lez v5, :cond_2

    const/4 v0, 0x1

    :catchall_0
    :cond_2
    return v0
.end method

.method public static synthetic h(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic i(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->o:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic j(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic k(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->o:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic l(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic m(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->o:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic n(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic o(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->o:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic p(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic q(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic r(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->D:Z

    return p0
.end method

.method public static synthetic s(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic t(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)Lcom/anythink/expressad/video/bt/module/b/h;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->K:Lcom/anythink/expressad/video/bt/module/b/h;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 5

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, p1, v3, v1, v4}, Lcom/anythink/expressad/a/a;->a(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->J:Lcom/anythink/expressad/video/bt/module/b/h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/video/bt/module/b/h;->a(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->a(Ljava/lang/String;)V

    return-void
.end method

.method public appendSubView(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;Lcom/anythink/expressad/video/bt/module/ATTempContainer;Lorg/json/JSONObject;)V
    .locals 7

    :try_start_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-eqz p3, :cond_5

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "left"

    const/16 v3, -0x3e7

    invoke-virtual {p3, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "top"

    invoke-virtual {p3, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "right"

    invoke-virtual {p3, v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "bottom"

    invoke-virtual {p3, v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v2, v3, :cond_0

    if-eqz v1, :cond_0

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_0
    if-eq v4, v3, :cond_1

    if-eqz v1, :cond_1

    int-to-float v2, v4

    invoke-static {v1, v2}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_1
    if-eq v5, v3, :cond_2

    if-eqz v1, :cond_2

    int-to-float v2, v5

    invoke-static {v1, v2}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_2
    if-eq v6, v3, :cond_3

    if-eqz v1, :cond_3

    int-to-float v2, v6

    invoke-static {v1, v2}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_3
    const-string v1, "width"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "height"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    if-lez v1, :cond_4

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_4
    if-lez p3, :cond_5

    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_5
    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setActivity(Landroid/app/Activity;)V

    iget p1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->t:I

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setMute(I)V

    iget-boolean p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->C:Z

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setBidCampaign(Z)V

    iget-boolean p1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->u:Z

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setIV(Z)V

    iget-boolean p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->D:Z

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setBigOffer(Z)V

    iget p1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->w:I

    iget p3, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->x:I

    iget v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->y:I

    invoke-virtual {p2, p1, p3, v0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setIVRewardEnable(III)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->K:Lcom/anythink/expressad/video/bt/module/b/h;

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->setShowRewardListener(Lcom/anythink/expressad/video/bt/module/b/h;)V

    invoke-virtual {p2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getCampaign()Lcom/anythink/expressad/foundation/d/c;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->d(Lcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/videocommon/b/c;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->setCampaignDownLoadTask(Lcom/anythink/expressad/videocommon/b/c;)V

    invoke-direct {p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->c()Lcom/anythink/expressad/video/bt/module/a/b;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->setAnythinkTempCallback(Lcom/anythink/expressad/video/bt/module/a/b;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/expressad/video/signal/c;->e()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->setH5Cbp(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/expressad/video/signal/c;->f()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->setWebViewFront(I)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->k:Landroid/content/Context;

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->init(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->onCreate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public broadcast(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "broadcast"

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->i:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    iget v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->e:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "id"

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->E:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "eventName"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "data"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->i:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->i:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    iget-object p2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->E:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/anythink/expressad/video/bt/a/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public click(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public findID(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, p1, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findLayout(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout"

    invoke-static {v0, p1, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public handlerH5Exception(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->k:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->j:Landroid/view/LayoutInflater;

    return-void
.end method

.method public isNativeKilledCallback(Lcom/anythink/expressad/foundation/d/c;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/c;->e()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->n()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/e/d;->M()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p1, v2}, Lcom/anythink/expressad/foundation/d/c;->m(I)V

    return v2

    :cond_1
    invoke-virtual {p1, v1}, Lcom/anythink/expressad/foundation/d/c;->m(I)V

    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->A()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/foundation/d/c;->m(I)V

    return v1

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/e/d;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/foundation/d/c;->m(I)V

    if-ne v0, v2, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public onAdClose()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->N:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v2, v1, Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->onBackPressed()V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->onBackPressed()V

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTLayout;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTLayout;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTLayout;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->N:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v2, v1, Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {v1, p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;

    invoke-virtual {v1, p1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTLayout;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTLayout;

    invoke-virtual {v1, p1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public onCreate()V
    .locals 9

    const-string v0, "_1"

    const-string v1, ""

    const-string v2, "_"

    :try_start_0
    const-string v3, "anythink_bt_container"

    invoke-virtual {p0, v3}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->findLayout(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    const-string v0, "anythink_bt_container layout null"

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->j:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->g:Landroid/widget/FrameLayout;

    if-nez v3, :cond_1

    const-string v0, "ViewIds null"

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iput-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->N:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->G:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->G:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->N:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v5, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->N:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/anythink/expressad/videocommon/a;->a(Ljava/lang/String;)Lcom/anythink/expressad/videocommon/a$a;

    move-result-object v3

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/anythink/expressad/videocommon/a$a;->b()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->E:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "get BT wraper.getTag = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->E:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Lcom/anythink/expressad/videocommon/a$a;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/anythink/expressad/videocommon/a$a;->a()Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v6

    :goto_1
    iput-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->i:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->N:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/anythink/expressad/videocommon/a;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->i:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v3, :cond_f

    new-instance v5, Lcom/anythink/expressad/video/signal/factory/b;

    iget-object v7, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    invoke-direct {v5, v7, p0, v3}, Lcom/anythink/expressad/video/signal/factory/b;-><init>(Landroid/app/Activity;Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;Landroid/webkit/WebView;)V

    invoke-virtual {p0, v5}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->registerJsFactory(Lcom/anythink/expressad/video/signal/factory/IJSFactory;)V

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->i:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v3, v5}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setApiManagerJSFactory(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->i:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v0, "preload template webview is null or load error"

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->a(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->i:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v3}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/anythink/expressad/video/signal/a/j;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->i:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v3}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/video/signal/a/j;

    invoke-virtual {v5, v3}, Lcom/anythink/expressad/video/signal/factory/b;->a(Lcom/anythink/expressad/video/signal/a/j;)V

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->i:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v3, :cond_5

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    sget-object v5, Lcom/anythink/expressad/foundation/g/a;->ch:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/anythink/expressad/foundation/h/t;->c(Landroid/content/Context;)F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v3, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "name"

    iget-object v8, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    invoke-virtual {v8}, Lcom/anythink/expressad/videocommon/c/c;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "amount"

    iget-object v8, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    invoke-virtual {v8}, Lcom/anythink/expressad/videocommon/c/c;->b()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "id"

    iget-object v8, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->s:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "userId"

    iget-object v8, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->q:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "reward"

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "playVideoMute"

    iget v7, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->t:I

    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "extra"

    iget-object v7, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->S:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_2

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    :goto_2
    new-instance v5, Lcom/anythink/expressad/video/bt/module/b/d;

    invoke-direct {p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->c()Lcom/anythink/expressad/video/bt/module/a/b;

    move-result-object v7

    invoke-direct {v5, v7, v1}, Lcom/anythink/expressad/video/bt/module/b/d;-><init>(Lcom/anythink/expressad/video/bt/module/a/b;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->K:Lcom/anythink/expressad/video/bt/module/b/h;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSNotifyProxy()Lcom/anythink/expressad/video/signal/g;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/anythink/expressad/video/signal/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/anythink/expressad/video/signal/c;->h()V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v1

    new-instance v3, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer$a;

    invoke-direct {v3, p0, v4}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer$a;-><init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;B)V

    invoke-interface {v1, v3}, Lcom/anythink/expressad/video/signal/c;->a(Lcom/anythink/expressad/video/signal/c$a;)V

    :cond_5
    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/video/signal/a/c;

    iget-object v1, v1, Lcom/anythink/expressad/video/signal/a/c;->r:Lcom/anythink/expressad/video/signal/c$a;

    invoke-interface {v1}, Lcom/anythink/expressad/video/signal/c$a;->c()V

    :cond_6
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->i:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    iget-object v5, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->N:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Lcom/anythink/expressad/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->E:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->E:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    instance-of v5, v3, Lcom/anythink/expressad/video/bt/module/AnythinkBTLayout;

    if-eqz v5, :cond_c

    check-cast v3, Lcom/anythink/expressad/video/bt/module/AnythinkBTLayout;

    iput-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->h:Lcom/anythink/expressad/video/bt/module/AnythinkBTLayout;

    iget-object v5, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->i:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer$1;

    invoke-direct {v7, p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer$1;-><init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)V

    invoke-virtual {v3, v5, v7}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/f/a;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_2"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/anythink/expressad/foundation/f/b;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/anythink/expressad/foundation/f/b;->b(Ljava/lang/String;)Lcom/anythink/expressad/widget/FeedBackButton;

    move-result-object v0

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/f/b;->b()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_9

    if-eqz v0, :cond_9

    :try_start_3
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v6, v3

    goto :goto_3

    :catch_2
    move-exception v3

    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    if-nez v6, :cond_7

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/anythink/expressad/foundation/f/b;->a:I

    sget v5, Lcom/anythink/expressad/foundation/f/b;->b:I

    invoke-direct {v6, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :cond_7
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v3

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v3, v5}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v3

    iput v3, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v3

    iput v3, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->h:Lcom/anythink/expressad/video/bt/module/AnythinkBTLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_9
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->h:Lcom/anythink/expressad/video/bt/module/AnythinkBTLayout;

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->E:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->E:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->h:Lcom/anythink/expressad/video/bt/module/AnythinkBTLayout;

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    instance-of v5, v3, Lcom/anythink/expressad/video/bt/module/AnythinkBTRootLayout;

    if-eqz v5, :cond_a

    check-cast v3, Lcom/anythink/expressad/video/bt/module/AnythinkBTRootLayout;

    invoke-virtual {v3}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->M:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->g:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->M:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->M:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    iget v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->t:I

    invoke-static {v0, v1}, Lcom/anythink/expressad/video/bt/a/c;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->E:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->N:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/anythink/expressad/video/bt/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->M:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->N:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/anythink/expressad/video/bt/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/anythink/expressad/video/bt/a/c;->a(Ljava/lang/String;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->G:Ljava/util/List;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->G:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p0, v0, v1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->a(Lcom/anythink/expressad/videocommon/e/d;Lcom/anythink/expressad/foundation/d/c;)V

    :cond_d
    return-void

    :cond_e
    const-string v0, "big template webviewLayout is null"

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->a(Ljava/lang/String;)V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->G:Ljava/util/List;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->G:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->T:Lcom/anythink/expressad/video/dynview/f/d;

    if-nez v1, :cond_10

    const-string v0, "ChoiceOneCallback is null"

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->a(Ljava/lang/String;)V

    return-void

    :cond_10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "choice_one_callback"

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->T:Lcom/anythink/expressad/video/dynview/f/d;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/anythink/expressad/video/dynview/b;->a()Lcom/anythink/expressad/video/dynview/b;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->G:Ljava/util/List;

    new-instance v3, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer$2;

    invoke-direct {v3, p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer$2;-><init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)V

    invoke-static {v0, v2, v3, v1}, Lcom/anythink/expressad/video/dynview/b;->a(Landroid/content/Context;Ljava/util/List;Lcom/anythink/expressad/video/dynview/f/h;Ljava/util/Map;)V

    return-void

    :cond_11
    const-string v0, "big template webview is null"

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate exception "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->F:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->F:Z

    invoke-super {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->onDestroy()V

    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->N:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/video/bt/a/c;->d(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->i:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->i:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->clearWebView()V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->i:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->release()V

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->L:Lcom/anythink/expressad/video/bt/module/a/b;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iput-object v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->L:Lcom/anythink/expressad/video/bt/module/a/b;

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->I:Lcom/anythink/expressad/video/bt/module/a/a;

    if-eqz v0, :cond_4

    iput-object v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->I:Lcom/anythink/expressad/video/bt/module/a/a;

    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->k:Landroid/content/Context;

    if-eqz v0, :cond_5

    iput-object v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->k:Landroid/content/Context;

    :cond_5
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->G:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/expressad/videocommon/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->E:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/expressad/video/bt/a/c;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/expressad/video/bt/a/c;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->N:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->N:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->N:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->onPause()V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->G:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->G:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/expressad/video/dynview/b/a;->a()Lcom/anythink/expressad/video/dynview/b/a;

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->N:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v2, v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->onResume()V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->G:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->G:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/expressad/video/dynview/b/a;->a()Lcom/anythink/expressad/video/dynview/b/a;

    move-result-object v0

    iget-object v0, v0, Lcom/anythink/expressad/video/dynview/b/a;->a:Lcom/anythink/expressad/video/dynview/e/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/expressad/video/dynview/e/a;->a()V

    :cond_0
    sget-boolean v0, Lcom/anythink/expressad/foundation/f/b;->c:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->N:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v2, v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->onStop()V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->G:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->G:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/expressad/video/dynview/b/a;->a()Lcom/anythink/expressad/video/dynview/b/a;

    move-result-object v0

    iget-object v0, v0, Lcom/anythink/expressad/video/dynview/b/a;->a:Lcom/anythink/expressad/video/dynview/e/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/expressad/video/dynview/e/a;->c()V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->N:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v2, v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public reactDeveloper(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8

    const-string v0, "error"

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->I:Lcom/anythink/expressad/video/bt/module/a/a;

    if-eqz v1, :cond_e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "type"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    const-string v2, "hit"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "unitId"

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/anythink/expressad/a;->y:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getPlacementId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->G:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/expressad/foundation/d/c;

    const/4 v6, 0x1

    if-ne p2, v6, :cond_2

    const-string v7, "expired"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v4, :cond_1

    if-eqz v7, :cond_0

    invoke-virtual {v4, v6}, Lcom/anythink/expressad/foundation/d/c;->e(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v5}, Lcom/anythink/expressad/foundation/d/c;->e(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->isNativeKilledCallback(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->O:Z

    :cond_2
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string p2, "convert"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    const-string p2, "reward"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "campaign"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/d/c;->b(Lorg/json/JSONObject;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object v0

    invoke-static {p2}, Lcom/anythink/expressad/videocommon/c/c;->a(Lorg/json/JSONObject;)Lcom/anythink/expressad/videocommon/c/c;

    move-result-object p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    :cond_4
    const-string v7, "extra"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    iput-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->S:Ljava/lang/String;

    :cond_5
    iget-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->O:Z

    if-nez v1, :cond_d

    iget v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->P:I

    if-eq v2, v1, :cond_d

    iget-boolean v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->u:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->w:I

    sget v2, Lcom/anythink/expressad/foundation/g/a;->cr:I

    if-eq v1, v2, :cond_6

    sget v2, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-ne v1, v2, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->I:Lcom/anythink/expressad/video/bt/module/a/a;

    iget-boolean v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->Q:Z

    iget v7, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->R:I

    invoke-interface {v1, v2, v7}, Lcom/anythink/expressad/video/bt/module/a/a;->a(ZI)V

    :cond_7
    if-nez v6, :cond_8

    invoke-virtual {p2, v5}, Lcom/anythink/expressad/videocommon/c/c;->a(I)V

    :cond_8
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->I:Lcom/anythink/expressad/video/bt/module/a/a;

    invoke-interface {v1, v6, p2}, Lcom/anythink/expressad/video/bt/module/a/a;->a(ZLcom/anythink/expressad/videocommon/c/c;)V

    iget-boolean v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->u:Z

    if-nez v1, :cond_d

    if-eqz v6, :cond_d

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->S:Ljava/lang/String;

    invoke-static {v0, p2, v3, v1, v2}, Lcom/anythink/expressad/video/module/b/a;->a(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->S:Ljava/lang/String;

    invoke-static {v4, p2, v3, v0, v1}, Lcom/anythink/expressad/video/module/b/a;->a(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    iget-object p2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->I:Lcom/anythink/expressad/video/bt/module/a/a;

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->a:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_a

    move-object v4, v0

    :cond_a
    invoke-interface {p2, v4}, Lcom/anythink/expressad/video/bt/module/a/a;->a(Lcom/anythink/expressad/foundation/d/c;)V

    goto :goto_2

    :pswitch_2
    iget-object p2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->I:Lcom/anythink/expressad/video/bt/module/a/a;

    invoke-interface {p2}, Lcom/anythink/expressad/video/bt/module/a/a;->c()V

    goto :goto_2

    :pswitch_3
    iget-object p2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->I:Lcom/anythink/expressad/video/bt/module/a/a;

    invoke-interface {p2}, Lcom/anythink/expressad/video/bt/module/a/a;->b()V

    goto :goto_2

    :pswitch_4
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v3, ""

    if-eqz p2, :cond_b

    const-string v3, "msg"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_c
    iget-boolean p2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->O:Z

    if-nez p2, :cond_d

    iget p2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->P:I

    if-eq v2, p2, :cond_d

    iget-object p2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->I:Lcom/anythink/expressad/video/bt/module/a/a;

    invoke-interface {p2, v3}, Lcom/anythink/expressad/video/bt/module/a/a;->a(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    iget-object p2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->I:Lcom/anythink/expressad/video/bt/module/a/a;

    invoke-interface {p2}, Lcom/anythink/expressad/video/bt/module/a/a;->a()V

    :cond_d
    :goto_2
    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    return-void

    :cond_e
    const-string p2, "listener is null"

    invoke-static {p1, p2}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBTContainerCallback(Lcom/anythink/expressad/video/bt/module/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->I:Lcom/anythink/expressad/video/bt/module/a/a;

    return-void
.end method

.method public setCampaignDownLoadTasks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/videocommon/b/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->H:Ljava/util/List;

    return-void
.end method

.method public setCampaigns(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->G:Ljava/util/List;

    return-void
.end method

.method public setChoiceOneCallback(Lcom/anythink/expressad/video/dynview/f/d;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->T:Lcom/anythink/expressad/video/dynview/f/d;

    return-void
.end method

.method public setDeveloperExtraData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->S:Ljava/lang/String;

    return-void
.end method

.method public setJSFactory(Lcom/anythink/expressad/video/signal/factory/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->A:Lcom/anythink/expressad/video/signal/factory/IJSFactory;

    return-void
.end method

.method public setNotchPadding(IIIII)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    :try_start_0
    invoke-static/range {p1 .. p5}, Lcom/anythink/expressad/foundation/h/h;->a(IIIII)Ljava/lang/String;

    move-result-object v12

    iget-object v0, v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->i:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v13, "oncutoutfetched"

    const/4 v14, 0x0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/anythink/expressad/video/signal/a/j;

    if-eqz v0, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->i:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/video/signal/a/j;

    invoke-virtual {v0, v12}, Lcom/anythink/expressad/video/signal/a/j;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    iget-object v0, v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->i:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v14}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v13, v2}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->G:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v0, :cond_1

    :try_start_2
    iget-object v0, v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->G:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->B:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v8, v10, v9, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->B:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_1
    :goto_0
    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    invoke-static/range {p1 .. p5}, Lcom/anythink/expressad/video/bt/a/c;->a(IIIII)V

    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    move-result-object v0

    iget-object v2, v1, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    iget-object v3, v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->N:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/anythink/expressad/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/view/View;

    instance-of v2, v15, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;

    if-eqz v2, :cond_3

    move-object v2, v15

    check-cast v2, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;

    invoke-virtual {v2, v8, v9, v10, v11}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->setNotchPadding(IIII)V

    :cond_3
    instance-of v2, v15, Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    if-eqz v2, :cond_4

    move-object v2, v15

    check-cast v2, Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->setNotchPadding(IIIII)V

    :cond_4
    instance-of v2, v15, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v2, :cond_2

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v14}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v15, v13, v3}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public setShowRewardVideoListener(Lcom/anythink/expressad/video/bt/module/b/h;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->J:Lcom/anythink/expressad/video/bt/module/b/h;

    return-void
.end method
