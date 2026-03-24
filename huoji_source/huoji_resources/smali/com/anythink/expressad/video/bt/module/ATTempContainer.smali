.class public Lcom/anythink/expressad/video/bt/module/ATTempContainer;
.super Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/video/bt/module/ATTempContainer$d;,
        Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;,
        Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;,
        Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;,
        Lcom/anythink/expressad/video/bt/module/ATTempContainer$a;
    }
.end annotation


# static fields
.field private static final B:Ljava/lang/String;

.field private static final ab:J = 0x1388L

.field private static final ac:J = 0x7d0L

.field private static final ad:J = 0x64L

.field private static final ae:I = -0x1

.field private static final af:I = -0x2

.field private static final ag:I = -0x3

.field private static final ah:I = -0x3

.field private static final ai:I = -0x4

.field private static final am:I = 0xfa

.field public static final b:I


# instance fields
.field private C:Landroid/view/View;

.field private D:Lcom/anythink/expressad/foundation/d/c;

.field private E:Lcom/anythink/expressad/videocommon/b/c;

.field private F:Lcom/anythink/expressad/video/bt/module/b/h;

.field private G:Lcom/anythink/expressad/video/bt/module/a/b;

.field private H:Lcom/anythink/expressad/video/dynview/f/a;

.field private I:I

.field private J:Ljava/lang/String;

.field private K:Lcom/anythink/expressad/video/signal/factory/b;

.field private L:I

.field private M:I

.field private N:Z

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private W:I

.field public a:Z

.field private aa:Landroid/view/LayoutInflater;

.field private aj:I

.field private ak:I

.field private al:I

.field private an:Landroid/view/View;

.field private ao:Z

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private as:Z

.field private at:Z

.field private au:Z

.field private av:Z

.field private aw:Z

.field private ax:Z

.field private ay:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

.field private az:Ljava/lang/Runnable;

.field public c:Z

.field public d:Lcom/anythink/expressad/video/bt/module/ATTempContainer$a;

.field public e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

.field public f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

.field public g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

.field public h:Landroid/os/Handler;

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:Lcom/anythink/expressad/reward/player/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->B:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->I:I

    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->J:Ljava/lang/String;

    sget v1, Lcom/anythink/expressad/foundation/g/a;->cv:I

    iput v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->L:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->N:Z

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->T:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->V:Ljava/util/List;

    iput v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->W:I

    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a:Z

    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->c:Z

    new-instance v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$a$a;

    invoke-direct {v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$a$a;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->d:Lcom/anythink/expressad/video/bt/module/ATTempContainer$a;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h:Landroid/os/Handler;

    iput v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aj:I

    iput v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ak:I

    iput v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->al:I

    new-instance v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$1;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$1;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->i:Ljava/lang/Runnable;

    new-instance v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$2;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$2;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->j:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ao:Z

    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aq:Z

    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->as:Z

    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->at:Z

    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->au:Z

    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->av:Z

    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aw:Z

    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ax:Z

    new-instance v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$3;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$3;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->az:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->I:I

    const-string p2, ""

    iput-object p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->J:Ljava/lang/String;

    sget v0, Lcom/anythink/expressad/foundation/g/a;->cv:I

    iput v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->L:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->N:Z

    iput-object p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->T:Ljava/lang/String;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->V:Ljava/util/List;

    iput v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->W:I

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->c:Z

    new-instance p2, Lcom/anythink/expressad/video/bt/module/ATTempContainer$a$a;

    invoke-direct {p2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$a$a;-><init>()V

    iput-object p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->d:Lcom/anythink/expressad/video/bt/module/ATTempContainer$a;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h:Landroid/os/Handler;

    iput v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aj:I

    iput v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ak:I

    iput v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->al:I

    new-instance p2, Lcom/anythink/expressad/video/bt/module/ATTempContainer$1;

    invoke-direct {p2, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$1;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    iput-object p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->i:Ljava/lang/Runnable;

    new-instance p2, Lcom/anythink/expressad/video/bt/module/ATTempContainer$2;

    invoke-direct {p2, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$2;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    iput-object p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->j:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ao:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aq:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->as:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->at:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->au:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->av:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aw:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ax:Z

    new-instance p2, Lcom/anythink/expressad/video/bt/module/ATTempContainer$3;

    invoke-direct {p2, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$3;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    iput-object p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->az:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method private a(II)I
    .locals 5

    if-gez p1, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->V:Ljava/util/List;

    if-nez v0, :cond_1

    return p1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    return p1

    :cond_2
    const/4 v0, 0x1

    if-gt p2, v0, :cond_3

    return p1

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, p2, -0x1

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->V:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->V:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v4}, Lcom/anythink/expressad/out/j;->bi()I

    move-result v4

    add-int/2addr v3, v4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-le p1, v3, :cond_6

    sub-int v1, p1, v3

    :cond_6
    return v1
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/bt/module/ATTempContainer;I)I
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aj:I

    return p1
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->an:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->B:Ljava/lang/String;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/anythink/expressad/foundation/d/r;

    invoke-direct {v0}, Lcom/anythink/expressad/foundation/d/r;-><init>()V

    const-string v1, "2000037"

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/r;->h(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",desc="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, ""

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {v0, p2}, Lcom/anythink/expressad/foundation/d/r;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->d(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aa()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aa()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->e(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    invoke-static {}, Lcom/anythink/expressad/foundation/h/k;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->c(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/anythink/expressad/foundation/h/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->j(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/anythink/expressad/foundation/d/r;->a(Lcom/anythink/expressad/foundation/d/r;)Ljava/lang/String;

    invoke-static {}, Lcom/anythink/expressad/video/module/b/a;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/bt/module/ATTempContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->au:Z

    return p1
.end method

.method public static synthetic b(Lcom/anythink/expressad/video/bt/module/ATTempContainer;I)I
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->L:I

    return p1
.end method

.method public static synthetic b(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic c(Lcom/anythink/expressad/video/bt/module/ATTempContainer;I)I
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->M:I

    return p1
.end method

.method public static synthetic c(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    return-object p0
.end method

.method private static c()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public static synthetic d(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/foundation/d/c;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    return-object p0
.end method

.method private d()V
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->setMatchParent()V

    :cond_0
    return-void
.end method

.method private e()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->b(Lcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/video/signal/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/signal/a/c;->c()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic e(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->u:Z

    return p0
.end method

.method private f()I
    .locals 1

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/c;->n()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic f(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->z:Z

    return p0
.end method

.method private g()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->b(Lcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/video/signal/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/signal/a/c;->b()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic g(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/video/bt/module/b/h;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    return-object p0
.end method

.method private h()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->b(Lcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/video/signal/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/signal/a/c;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic h(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    return v0
.end method

.method private i()Z
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->isShowingAlertView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->isInstallDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public static synthetic i(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->au:Z

    return p0
.end method

.method public static synthetic j(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/videocommon/e/d;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    return-object p0
.end method

.method private j()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/t;->g(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/expressad/foundation/h/t;->h(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/anythink/expressad/foundation/h/g;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/anythink/expressad/foundation/h/t;->i(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    add-int/2addr v1, v3

    goto :goto_0

    :cond_0
    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/t;->f(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/expressad/foundation/h/t;->e(Landroid/content/Context;)I

    move-result v2

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c$c;->c()I

    move-result v3

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p0, v4}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->c(Lcom/anythink/expressad/foundation/d/c;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    move v3, v0

    :cond_3
    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSNotifyProxy()Lcom/anythink/expressad/video/signal/g;

    move-result-object v4

    invoke-interface {v4, v0, v3, v1, v2}, Lcom/anythink/expressad/video/signal/g;->a(IIII)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lcom/anythink/expressad/foundation/g/a;->ch:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/expressad/foundation/h/t;->c(Landroid/content/Context;)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    if-eqz v1, :cond_4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "name"

    iget-object v3, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    invoke-virtual {v3}, Lcom/anythink/expressad/videocommon/c/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "amount"

    iget-object v3, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    invoke-virtual {v3}, Lcom/anythink/expressad/videocommon/c/c;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "id"

    iget-object v3, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->s:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "userId"

    iget-object v3, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->q:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "reward"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playVideoMute"

    iget v2, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->t:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "extra"

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->U:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    :cond_4
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSNotifyProxy()Lcom/anythink/expressad/video/signal/g;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/anythink/expressad/video/signal/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    const-string v1, "oncutoutfetched"

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->T:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/c;->h()V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->loadModuleDatas()V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    return-void

    :catch_2
    move-exception v0

    sget-boolean v1, Lcom/anythink/expressad/a;->a:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-void
.end method

.method private k()V
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aj:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->i:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->j:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aj:I

    :cond_2
    return-void
.end method

.method public static synthetic k(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->G:Lcom/anythink/expressad/video/bt/module/a/b;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->u:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->w:I

    sget v2, Lcom/anythink/expressad/foundation/g/a;->cr:I

    if-eq v1, v2, :cond_0

    sget v2, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-ne v1, v2, :cond_2

    :cond_0
    iget v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->M:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->L:I

    invoke-interface {v0, v2, v1}, Lcom/anythink/expressad/video/bt/module/a/b;->a(ZI)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->G:Lcom/anythink/expressad/video/bt/module/a/b;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->J:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    iget-object v3, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    invoke-interface {v0, v1, v2, v3}, Lcom/anythink/expressad/video/bt/module/a/b;->a(Ljava/lang/String;ZLcom/anythink/expressad/videocommon/c/c;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    nop

    iget-object p0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5
    return-void
.end method

.method private l()Z
    .locals 11

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->findWindVaneWebView()Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->findAnythinkVideoView()Lcom/anythink/expressad/video/module/AnythinkVideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setVideoLayout(Lcom/anythink/expressad/foundation/d/c;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->u:Z

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setIsIV(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->H:Lcom/anythink/expressad/video/dynview/f/a;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->V:Ljava/util/List;

    iget v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->I:I

    iget v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->W:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setCamPlayOrderCallback(Lcom/anythink/expressad/video/dynview/f/a;Ljava/util/List;II)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->k:Lcom/anythink/expressad/reward/player/c;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setTempEventListener(Lcom/anythink/expressad/reward/player/c;)V

    iget-boolean v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->P:I

    iget v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->Q:I

    iget v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->R:I

    iget v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->S:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setNotchPadding(IIII)V

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->findAnythinkContainerView()Lcom/anythink/expressad/video/module/AnythinkContainerView;

    move-result-object v5

    iput-object v5, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-boolean v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->z:Z

    if-eqz v0, :cond_1

    iget v6, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->O:I

    iget v7, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->P:I

    iget v8, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->Q:I

    iget v9, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->R:I

    iget v10, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->S:I

    invoke-virtual/range {v5 .. v10}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setNotchPadding(IIIII)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->initViews()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic l(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->z:Z

    return p0
.end method

.method private m()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v0

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->u:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    :cond_0
    return-void
.end method

.method public static synthetic m(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->av:Z

    return v0
.end method

.method public static synthetic n(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/video/bt/module/a/b;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->G:Lcom/anythink/expressad/video/bt/module/a/b;

    return-object p0
.end method

.method private static n()V
    .locals 0

    return-void
.end method

.method public static synthetic o(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->J:Ljava/lang/String;

    return-object p0
.end method

.method private o()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->G:Lcom/anythink/expressad/video/bt/module/a/b;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->u:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->w:I

    sget v2, Lcom/anythink/expressad/foundation/g/a;->cr:I

    if-eq v1, v2, :cond_0

    sget v2, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-ne v1, v2, :cond_2

    :cond_0
    iget v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->M:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->L:I

    invoke-interface {v0, v2, v1}, Lcom/anythink/expressad/video/bt/module/a/b;->a(ZI)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->G:Lcom/anythink/expressad/video/bt/module/a/b;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->J:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    iget-object v3, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    invoke-interface {v0, v1, v2, v3}, Lcom/anythink/expressad/video/bt/module/a/b;->a(Ljava/lang/String;ZLcom/anythink/expressad/videocommon/c/c;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    nop

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_5
    return-void
.end method

.method private static p()V
    .locals 0

    return-void
.end method

.method public static synthetic p(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->u:Z

    return p0
.end method

.method private q()V
    .locals 10

    iget-object v7, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    new-instance v8, Lcom/anythink/expressad/video/signal/factory/b;

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v5, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    new-instance v6, Lcom/anythink/expressad/video/bt/module/ATTempContainer$d;

    const/4 v9, 0x0

    invoke-direct {v6, p0, v9}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$d;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;B)V

    move-object v0, v8

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/anythink/expressad/video/signal/factory/b;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/anythink/expressad/video/module/AnythinkVideoView;Lcom/anythink/expressad/video/module/AnythinkContainerView;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/video/signal/c$a;)V

    iput-object v8, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->V:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/video/signal/factory/b;->a(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->registerJsFactory(Lcom/anythink/expressad/video/signal/factory/IJSFactory;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/anythink/expressad/video/bt/module/ATTempContainer$5;

    invoke-direct {v2, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$5;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/f/a;)V

    const-string v0, "preload template webview is null or load error"

    if-eqz v7, :cond_6

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->C:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_video_templete_webview_parent"

    const-string v4, "id"

    invoke-static {v2, v3, v4}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v7, v2}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setApiManagerJSFactory(Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v9, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->defaultLoad(ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v7}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/anythink/expressad/video/signal/a/j;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v7}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/video/signal/a/j;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/signal/factory/b;->a(Lcom/anythink/expressad/video/signal/a/j;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    iget v2, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->t:I

    invoke-interface {v0, v2}, Lcom/anythink/expressad/video/signal/c;->a(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/anythink/expressad/video/signal/c;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-interface {v0, v2}, Lcom/anythink/expressad/video/signal/c;->a(Lcom/anythink/expressad/videocommon/e/d;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    new-instance v2, Lcom/anythink/expressad/video/bt/module/ATTempContainer$d;

    invoke-direct {v2, p0, v9}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$d;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;B)V

    invoke-interface {v0, v2}, Lcom/anythink/expressad/video/signal/c;->a(Lcom/anythink/expressad/video/signal/c$a;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->H()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->ay()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ay:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->registerReceiver()V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ay:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->getCurrentVolume()D

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ay:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    new-instance v2, Lcom/anythink/expressad/video/bt/module/ATTempContainer$6;

    invoke-direct {v2, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$6;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->setVolumeChangeListener(Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver$VolumeChangeListener;)V

    :cond_3
    invoke-virtual {v7}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/video/signal/a/j;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/signal/a/j;->r()I

    move-result v0

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSContainerModule()Lcom/anythink/expressad/video/signal/e;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/anythink/expressad/video/signal/e;->readyStatus(I)V

    invoke-direct {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->j()V

    invoke-virtual {v7}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/video/signal/a/j;

    iget-object v0, v0, Lcom/anythink/expressad/video/signal/a/c;->r:Lcom/anythink/expressad/video/signal/c$a;

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/c$a;->c()V

    iget-boolean v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->z:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    iget v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ak:I

    invoke-interface {v0, v2}, Lcom/anythink/expressad/video/signal/c;->f(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    iget v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->al:I

    invoke-interface {v0, v2}, Lcom/anythink/expressad/video/signal/c;->e(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/c;->f()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->C:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3, v4}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->C:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->C:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_5
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_6
    invoke-virtual {p0, v9, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->defaultLoad(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic q(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aw:Z

    return v0
.end method

.method public static synthetic r(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->az:Ljava/lang/Runnable;

    return-object p0
.end method

.method private r()V
    .locals 3

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    iget v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->t:I

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/signal/c;->a(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/signal/c;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/signal/c;->a(Lcom/anythink/expressad/videocommon/e/d;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/video/bt/module/ATTempContainer$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$d;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;B)V

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/signal/c;->a(Lcom/anythink/expressad/video/signal/c$a;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->H()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->ay()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ay:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->registerReceiver()V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ay:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->getCurrentVolume()D

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ay:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    new-instance v1, Lcom/anythink/expressad/video/bt/module/ATTempContainer$6;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$6;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->setVolumeChangeListener(Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver$VolumeChangeListener;)V

    :cond_1
    return-void
.end method

.method private s()V
    .locals 5

    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    iget-object v2, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->U:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/expressad/video/module/b/a;->a(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic s(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V
    .locals 2

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    new-instance v1, Lcom/anythink/expressad/video/bt/module/ATTempContainer$7;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$7;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private t()V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ao:Z

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->J()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    if-eqz v1, :cond_5

    iget-boolean v2, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->u:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->w:I

    sget v4, Lcom/anythink/expressad/foundation/g/a;->cr:I

    if-eq v2, v4, :cond_1

    sget v4, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-ne v2, v4, :cond_3

    :cond_1
    iget v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->M:I

    if-ne v2, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->L:I

    invoke-interface {v1, v0, v2}, Lcom/anythink/expressad/video/bt/module/b/h;->a(ZI)V

    :cond_3
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/videocommon/c/c;->a(I)V

    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    iget-object v2, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/bt/module/b/h;->a(ZLcom/anythink/expressad/videocommon/c/c;)V

    :cond_5
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->az:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->u:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->z:Z

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    iget-object v2, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->U:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/expressad/video/module/b/a;->a(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-boolean v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->z:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->u:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x11f

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    :goto_1
    invoke-static {v0, v1}, Lcom/anythink/expressad/videocommon/a;->b(ILcom/anythink/expressad/foundation/d/c;)V

    goto :goto_2

    :cond_9
    const/16 v0, 0x5e

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    goto :goto_1

    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public static synthetic t(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->at:Z

    return v0
.end method

.method private static u()I
    .locals 2

    const/4 v0, 0x5

    :try_start_0
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/c;->b()Lcom/anythink/expressad/videocommon/e/a;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->c()Lcom/anythink/expressad/videocommon/e/a;

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/a;->g()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public static synthetic u(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V
    .locals 2

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    new-instance v1, Lcom/anythink/expressad/video/bt/module/ATTempContainer$8;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$8;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic v(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    return-object p0
.end method

.method private v()V
    .locals 2

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    new-instance v1, Lcom/anythink/expressad/video/bt/module/ATTempContainer$7;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$7;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    new-instance v1, Lcom/anythink/expressad/video/bt/module/ATTempContainer$8;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$8;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic w(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->z:Z

    return p0
.end method

.method public static synthetic x(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/video/bt/module/b/h;->a(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->a(Ljava/lang/String;)V

    return-void
.end method

.method public canBackPress()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->canBackPress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public defaultLoad(ILjava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->superDefaultLoad(ILjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->isLoadSuccess()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->J()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->V:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->addOrderViewData(Ljava/util/List;)V

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v2, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setUnitID(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->g()I

    move-result v1

    if-le v1, v4, :cond_0

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->g()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/d;->p()I

    move-result v1

    :goto_0
    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setCloseDelayTime(I)V

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v2, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v2}, Lcom/anythink/expressad/videocommon/e/d;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setPlayCloseBtnTm(I)V

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    new-instance v2, Lcom/anythink/expressad/video/module/a/a/h;

    iget-object v5, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    iget-object v6, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->E:Lcom/anythink/expressad/videocommon/b/c;

    iget-object v7, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->b()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    new-instance v10, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;

    invoke-direct {v10, v0, v3}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;B)V

    iget-object v3, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v3}, Lcom/anythink/expressad/videocommon/e/d;->M()I

    move-result v11

    iget-boolean v12, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->z:Z

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lcom/anythink/expressad/video/module/a/a/h;-><init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/b/c;Lcom/anythink/expressad/videocommon/c/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/video/module/a/a;IZ)V

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showPlayableView()V

    return-void

    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a(ILjava/lang/String;)V

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->an:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->loadModuleDatas()V

    iget-object v1, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/d;->f()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e()I

    move-result v2

    if-eqz v2, :cond_2

    move v13, v2

    goto :goto_1

    :cond_2
    move v13, v1

    :goto_1
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    new-instance v2, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;

    iget-object v5, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    iget-object v6, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-direct {v2, v0, v5, v6}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;)V

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setContainerViewOnNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    :cond_3
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->h()I

    move-result v1

    if-le v1, v4, :cond_4

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->h()I

    move-result v1

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/d;->e()I

    move-result v1

    :goto_2
    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_5

    iget v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->I:I

    const/4 v4, 0x1

    if-le v2, v4, :cond_5

    invoke-direct {v0, v1, v2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a(II)I

    move-result v1

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/foundation/d/c;->a(I)V

    :cond_5
    move v14, v1

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v1, v14}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setVideoSkipTime(I)V

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    new-instance v2, Lcom/anythink/expressad/video/module/a/a/m;

    iget-object v7, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v8, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    iget-object v9, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    iget-object v10, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->E:Lcom/anythink/expressad/videocommon/b/c;

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->b()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    new-instance v15, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;

    invoke-direct {v15, v0, v3}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;B)V

    iget-object v3, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v3}, Lcom/anythink/expressad/videocommon/e/d;->M()I

    move-result v16

    iget-boolean v3, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->z:Z

    iget-object v4, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v4}, Lcom/anythink/expressad/videocommon/e/d;->U()I

    move-result v18

    move-object v5, v2

    move-object v6, v1

    move/from16 v17, v3

    invoke-direct/range {v5 .. v18}, Lcom/anythink/expressad/video/module/a/a/m;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;Lcom/anythink/expressad/video/module/AnythinkContainerView;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/c/c;Lcom/anythink/expressad/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;IILcom/anythink/expressad/video/module/a/a;IZI)V

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->defaultShow()V

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    new-instance v13, Lcom/anythink/expressad/video/module/a/a/b;

    iget-object v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v5, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    iget-object v6, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    iget-object v7, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->E:Lcom/anythink/expressad/videocommon/b/c;

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->b()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    new-instance v10, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;

    iget-object v2, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    iget-object v4, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-direct {v10, v0, v2, v4}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;)V

    iget-object v2, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v2}, Lcom/anythink/expressad/videocommon/e/d;->M()I

    move-result v11

    iget-boolean v12, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->z:Z

    move-object v2, v13

    move-object v4, v1

    invoke-direct/range {v2 .. v12}, Lcom/anythink/expressad/video/module/a/a/b;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;Lcom/anythink/expressad/video/module/AnythinkContainerView;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/c/c;Lcom/anythink/expressad/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/video/module/a/a;IZ)V

    invoke-virtual {v1, v13}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->defaultShow()V

    return-void

    :cond_6
    invoke-direct/range {p0 .. p2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a(ILjava/lang/String;)V

    iget-object v1, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_7
    return-void
.end method

.method public findAnythinkContainerView()Lcom/anythink/expressad/video/module/AnythinkContainerView;
    .locals 1

    const-string v0, "anythink_video_templete_container"

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/video/module/AnythinkContainerView;

    return-object v0
.end method

.method public findAnythinkVideoView()Lcom/anythink/expressad/video/module/AnythinkVideoView;
    .locals 1

    const-string v0, "anythink_video_templete_videoview"

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;

    return-object v0
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

.method public findWindVaneWebView()Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;
    .locals 4

    const-string v0, "_"

    :try_start_0
    iget-boolean v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->z:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/videocommon/a;->a(Ljava/lang/String;)Lcom/anythink/expressad/videocommon/a$a;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/a$a;->a()Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->u:Z

    const/16 v1, 0x11f

    const/16 v2, 0x5e

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v1, v0}, Lcom/anythink/expressad/videocommon/a;->a(ILcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/videocommon/a$a;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v2, v0}, Lcom/anythink/expressad/videocommon/a;->a(ILcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/videocommon/a$a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/a$a;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->u:Z

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v1, v2}, Lcom/anythink/expressad/videocommon/a;->b(ILcom/anythink/expressad/foundation/d/c;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v2, v1}, Lcom/anythink/expressad/videocommon/a;->b(ILcom/anythink/expressad/foundation/d/c;)V

    :goto_1
    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/a$a;->a()Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->as:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setWebViewTransparent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/anythink/expressad/a;->a:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCampaign()Lcom/anythink/expressad/foundation/d/c;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->J:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutID()I
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->as:Z

    if-eqz v0, :cond_0

    const-string v0, "anythink_reward_activity_video_templete_transparent"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->findLayout(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const-string v0, "anythink_reward_activity_video_templete"

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aa:Landroid/view/LayoutInflater;

    return-void
.end method

.method public initViews()Z
    .locals 1

    const-string v0, "anythink_video_templete_progressbar"

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->an:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLoadSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->c:Z

    return v0
.end method

.method public loadModuleDatas()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->b(Lcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/video/signal/a/j;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/anythink/expressad/video/signal/a/c;->b()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iput v1, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->t:I

    :cond_1
    iget-object v1, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/d;->f()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e()I

    move-result v3

    if-eqz v3, :cond_2

    move v11, v3

    goto :goto_1

    :cond_2
    move v11, v1

    :goto_1
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget v3, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->t:I

    invoke-virtual {v1, v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setSoundState(I)V

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1, v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->E:Lcom/anythink/expressad/videocommon/b/c;

    invoke-virtual {v3}, Lcom/anythink/expressad/videocommon/b/c;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setPlayURL(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    const/4 v3, -0x2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->h()I

    move-result v1

    if-le v1, v3, :cond_3

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->h()I

    move-result v1

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/d;->e()I

    move-result v1

    :goto_2
    iget-object v4, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v4}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result v4

    const/4 v5, 0x5

    const/4 v15, 0x1

    if-ne v4, v5, :cond_4

    iget v4, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->I:I

    if-le v4, v15, :cond_4

    invoke-direct {v0, v1, v4}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a(II)I

    move-result v1

    iget-object v4, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v4, v1}, Lcom/anythink/expressad/foundation/d/c;->a(I)V

    :cond_4
    iget-object v4, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v4, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setVideoSkipTime(I)V

    iget-object v4, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v5, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v5}, Lcom/anythink/expressad/videocommon/e/d;->k()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setCloseAlert(I)V

    iget-object v4, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->u()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setBufferTimeout(I)V

    iget-object v14, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    new-instance v13, Lcom/anythink/expressad/video/module/a/a/n;

    iget-object v5, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    iget-object v6, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    iget-object v7, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    iget-object v8, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->E:Lcom/anythink/expressad/videocommon/b/c;

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->b()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    new-instance v12, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;

    invoke-direct {v12, v0, v2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;B)V

    iget-object v4, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v4}, Lcom/anythink/expressad/videocommon/e/d;->M()I

    move-result v16

    iget-boolean v4, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->z:Z

    iget-object v15, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v15}, Lcom/anythink/expressad/videocommon/e/d;->U()I

    move-result v18

    move v15, v4

    move-object v4, v13

    move-object/from16 v19, v12

    move v12, v1

    move-object v2, v13

    move-object/from16 v13, v19

    move-object v3, v14

    move/from16 v14, v16

    const/16 v17, 0x1

    move/from16 v16, v18

    invoke-direct/range {v4 .. v16}, Lcom/anythink/expressad/video/module/a/a/n;-><init>(Lcom/anythink/expressad/video/signal/factory/IJSFactory;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/c/c;Lcom/anythink/expressad/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;IILcom/anythink/expressad/video/module/a/a;IZI)V

    invoke-virtual {v3, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-boolean v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->as:Z

    invoke-virtual {v2, v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setShowingTransparent(Z)V

    iget-boolean v2, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->u:Z

    if-eqz v2, :cond_7

    iget v2, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->w:I

    sget v3, Lcom/anythink/expressad/foundation/g/a;->cr:I

    if-eq v2, v3, :cond_5

    sget v3, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-ne v2, v3, :cond_7

    :cond_5
    iget-object v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget v4, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->x:I

    iget v5, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->y:I

    invoke-virtual {v3, v2, v4, v5}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setIVRewardEnable(III)V

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v3

    invoke-interface {v3}, Lcom/anythink/expressad/video/signal/c;->n()I

    move-result v15

    goto :goto_3

    :cond_6
    const/4 v15, 0x1

    :goto_3
    invoke-virtual {v2, v15}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setDialogRole(I)V

    :cond_7
    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2, v3}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->V:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->addOrderViewData(Ljava/util/List;)V

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v3, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setUnitID(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->g()I

    move-result v2

    const/4 v3, -0x2

    if-le v2, v3, :cond_8

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->g()I

    move-result v2

    goto :goto_4

    :cond_8
    iget-object v2, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v2}, Lcom/anythink/expressad/videocommon/e/d;->p()I

    move-result v2

    :goto_4
    iget-object v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v3, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setCloseDelayTime(I)V

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v3, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v3}, Lcom/anythink/expressad/videocommon/e/d;->j()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setPlayCloseBtnTm(I)V

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v3, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v3}, Lcom/anythink/expressad/videocommon/e/d;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setVideoInteractiveType(I)V

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v3, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v3}, Lcom/anythink/expressad/videocommon/e/d;->r()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setEndscreenType(I)V

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setVideoSkipTime(I)V

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-boolean v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->as:Z

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setShowingTransparent(Z)V

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setJSFactory(Lcom/anythink/expressad/video/signal/factory/b;)V

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->J()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    new-instance v11, Lcom/anythink/expressad/video/module/a/a/h;

    iget-object v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    iget-object v4, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->E:Lcom/anythink/expressad/videocommon/b/c;

    iget-object v5, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->b()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    new-instance v8, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;

    const/4 v2, 0x0

    invoke-direct {v8, v0, v2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;B)V

    iget-object v2, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v2}, Lcom/anythink/expressad/videocommon/e/d;->M()I

    move-result v9

    iget-boolean v10, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->z:Z

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/anythink/expressad/video/module/a/a/h;-><init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/b/c;Lcom/anythink/expressad/videocommon/c/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/video/module/a/a;IZ)V

    invoke-virtual {v1, v11}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showPlayableView()V

    goto :goto_5

    :cond_9
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    new-instance v12, Lcom/anythink/expressad/video/module/a/a/c;

    iget-object v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    iget-object v4, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    iget-object v5, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    iget-object v6, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->E:Lcom/anythink/expressad/videocommon/b/c;

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->b()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    new-instance v9, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;

    iget-object v2, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    iget-object v10, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-direct {v9, v0, v2, v10}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;)V

    iget-object v2, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v2}, Lcom/anythink/expressad/videocommon/e/d;->M()I

    move-result v10

    iget-boolean v11, v0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->z:Z

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/anythink/expressad/video/module/a/a/c;-><init>(Lcom/anythink/expressad/video/signal/factory/IJSFactory;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/c/c;Lcom/anythink/expressad/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/video/module/a/a;IZ)V

    invoke-virtual {v1, v12}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    :goto_5
    iget-boolean v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->as:Z

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setAnythinkClickMiniCardViewTransparent()V

    :cond_a
    return-void
.end method

.method public notifyEvent(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->J:Ljava/lang/String;

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->as:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->notifyVideoClose()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->au:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->isMiniCardShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->onMiniEndcardBackPress()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->onBackPress()V

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aw:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->onPlayableBackPress()V

    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->av:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->onEndcardBackPress()V

    :cond_5
    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/c;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSContainerModule()Lcom/anythink/expressad/video/signal/e;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSContainerModule()Lcom/anythink/expressad/video/signal/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/e;->miniCardShowing()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getActivityProxy()Lcom/anythink/expressad/video/signal/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/a;->g()V

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->canBackPress()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->z:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ax:Z

    if-nez v1, :cond_8

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ax:Z

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_8
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 14

    const-string v0, "id"

    const-string v1, "anythink_video_templete_webview_parent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCreate isBigOffer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->z:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v2

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->u:Z

    invoke-virtual {v2, v3, v4, v5}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ax:Z

    :try_start_0
    iget-boolean v3, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->z:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/anythink/expressad/video/bt/module/b/e;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v6, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->u:Z

    iget-object v7, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    iget-object v8, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    iget-object v9, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->b()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lcom/anythink/expressad/video/bt/module/b/e;-><init>(Landroid/content/Context;ZLcom/anythink/expressad/videocommon/e/d;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/video/bt/module/b/h;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/anythink/expressad/video/bt/module/b/d;

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->G:Lcom/anythink/expressad/video/bt/module/a/b;

    iget-object v5, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->J:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/anythink/expressad/video/bt/module/b/d;-><init>(Lcom/anythink/expressad/video/bt/module/a/b;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v11, Lcom/anythink/expressad/video/bt/module/b/e;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v5, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->u:Z

    iget-object v6, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    iget-object v7, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    iget-object v8, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->b()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/anythink/expressad/video/bt/module/b/e;-><init>(Landroid/content/Context;ZLcom/anythink/expressad/videocommon/e/d;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/video/bt/module/b/h;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v11, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    :goto_1
    new-instance v3, Lcom/anythink/expressad/video/bt/module/b/f;

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    invoke-direct {v3, v4}, Lcom/anythink/expressad/video/bt/module/b/f;-><init>(Lcom/anythink/expressad/video/bt/module/b/h;)V

    invoke-virtual {p0, v3}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->registerErrorListener(Lcom/anythink/expressad/video/bt/module/ATTempContainer$a;)V

    iget-object v3, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p0, v3, v4}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->a(Lcom/anythink/expressad/videocommon/e/d;Lcom/anythink/expressad/foundation/d/c;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->setShowingTransparent()V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getLayoutID()I

    move-result v3

    if-gtz v3, :cond_3

    const-string v0, "layoutID not found"

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aa:Landroid/view/LayoutInflater;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->C:Landroid/view/View;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->setMatchParent()V

    :cond_4
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->findWindVaneWebView()Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-result-object v3

    iput-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->findAnythinkVideoView()Lcom/anythink/expressad/video/module/AnythinkVideoView;

    move-result-object v3

    iput-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v3, v4}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setVideoLayout(Lcom/anythink/expressad/foundation/d/c;)V

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-boolean v4, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->u:Z

    invoke-virtual {v3, v4}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setIsIV(Z)V

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v4, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setUnitId(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->H:Lcom/anythink/expressad/video/dynview/f/a;

    iget-object v6, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->V:Ljava/util/List;

    iget v7, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->I:I

    iget v8, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->W:I

    invoke-virtual {v3, v4, v6, v7, v8}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setCamPlayOrderCallback(Lcom/anythink/expressad/video/dynview/f/a;Ljava/util/List;II)V

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->k:Lcom/anythink/expressad/reward/player/c;

    invoke-virtual {v3, v4}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setTempEventListener(Lcom/anythink/expressad/reward/player/c;)V

    iget-boolean v3, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->z:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->P:I

    iget v6, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->Q:I

    iget v7, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->R:I

    iget v8, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->S:I

    invoke-virtual {v3, v4, v6, v7, v8}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setNotchPadding(IIII)V

    :cond_5
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->findAnythinkContainerView()Lcom/anythink/expressad/video/module/AnythinkContainerView;

    move-result-object v6

    iput-object v6, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-boolean v3, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->z:Z

    if-eqz v3, :cond_6

    iget v7, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->O:I

    iget v8, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->P:I

    iget v9, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->Q:I

    iget v10, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->R:I

    iget v11, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->S:I

    invoke-virtual/range {v6 .. v11}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setNotchPadding(IIIII)V

    :cond_6
    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->initViews()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_8

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->d:Lcom/anythink/expressad/video/bt/module/ATTempContainer$a;

    const-string v1, "not found View IDS"

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_8
    iput-boolean v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->c:Z

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    new-instance v13, Lcom/anythink/expressad/video/signal/factory/b;

    iget-object v7, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    iget-object v9, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v10, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v11, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    new-instance v12, Lcom/anythink/expressad/video/bt/module/ATTempContainer$d;

    invoke-direct {v12, p0, v2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$d;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;B)V

    move-object v6, v13

    move-object v8, v3

    invoke-direct/range {v6 .. v12}, Lcom/anythink/expressad/video/signal/factory/b;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/anythink/expressad/video/module/AnythinkVideoView;Lcom/anythink/expressad/video/module/AnythinkContainerView;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/video/signal/c$a;)V

    iput-object v13, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    iget-object v6, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_9

    iget-object v6, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->V:Ljava/util/List;

    if-eqz v6, :cond_9

    iget-object v7, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v7, v6}, Lcom/anythink/expressad/video/signal/factory/b;->a(Ljava/util/List;)V

    :cond_9
    iget-object v6, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {p0, v6}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->registerJsFactory(Lcom/anythink/expressad/video/signal/factory/IJSFactory;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/anythink/expressad/video/bt/module/ATTempContainer$5;

    invoke-direct {v8, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$5;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    invoke-virtual {v6, v7, v8}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/f/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "preload template webview is null or load error"

    if-eqz v3, :cond_f

    :try_start_1
    iget-object v7, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->C:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v1, v0}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v3, v8}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setApiManagerJSFactory(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {p0, v2, v6}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->defaultLoad(ILjava/lang/String;)V

    return-void

    :cond_a
    invoke-virtual {v3}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/anythink/expressad/video/signal/a/j;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v3}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/anythink/expressad/video/signal/a/j;

    invoke-virtual {v6, v8}, Lcom/anythink/expressad/video/signal/factory/b;->a(Lcom/anythink/expressad/video/signal/a/j;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v6

    iget v8, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->t:I

    invoke-interface {v6, v8}, Lcom/anythink/expressad/video/signal/c;->a(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v6

    iget-object v8, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/anythink/expressad/video/signal/c;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v6

    iget-object v8, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-interface {v6, v8}, Lcom/anythink/expressad/video/signal/c;->a(Lcom/anythink/expressad/videocommon/e/d;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v6

    new-instance v8, Lcom/anythink/expressad/video/bt/module/ATTempContainer$d;

    invoke-direct {v8, p0, v2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$d;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;B)V

    invoke-interface {v6, v8}, Lcom/anythink/expressad/video/signal/c;->a(Lcom/anythink/expressad/video/signal/c$a;)V

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->H()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->ay()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    new-instance v2, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ay:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    invoke-virtual {v2}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->registerReceiver()V

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ay:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    invoke-virtual {v2}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->getCurrentVolume()D

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ay:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    new-instance v6, Lcom/anythink/expressad/video/bt/module/ATTempContainer$6;

    invoke-direct {v6, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$6;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    invoke-virtual {v2, v6}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->setVolumeChangeListener(Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver$VolumeChangeListener;)V

    :cond_c
    invoke-virtual {v3}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/video/signal/a/j;

    invoke-virtual {v2}, Lcom/anythink/expressad/video/signal/a/j;->r()I

    move-result v2

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSContainerModule()Lcom/anythink/expressad/video/signal/e;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/anythink/expressad/video/signal/e;->readyStatus(I)V

    invoke-direct {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->j()V

    invoke-virtual {v3}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/video/signal/a/j;

    iget-object v2, v2, Lcom/anythink/expressad/video/signal/a/c;->r:Lcom/anythink/expressad/video/signal/c$a;

    invoke-interface {v2}, Lcom/anythink/expressad/video/signal/c$a;->c()V

    iget-boolean v2, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->z:Z

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v2

    iget v6, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ak:I

    invoke-interface {v2, v6}, Lcom/anythink/expressad/video/signal/c;->f(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v2

    iget v6, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->al:I

    invoke-interface {v2, v6}, Lcom/anythink/expressad/video/signal/c;->e(I)V

    :cond_d
    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/anythink/expressad/video/signal/c;->f()I

    move-result v2

    if-ne v2, v4, :cond_e

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->C:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1, v0}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->C:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->C:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_e
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_f
    invoke-virtual {p0, v2, v6}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->defaultLoad(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_10
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate error"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->N:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->N:Z

    invoke-super {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->onDestroy()V

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->releasePlayer()V

    :cond_1
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_2
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->clearWebView()V

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->release()V

    :cond_3
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->G:Lcom/anythink/expressad/video/bt/module/a/b;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->G:Lcom/anythink/expressad/video/bt/module/a/b;

    :cond_4
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->i:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->j:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/anythink/expressad/video/signal/c;->k()V

    iget-boolean v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->u:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/anythink/expressad/d/b;->c(Ljava/lang/String;)V

    :cond_5
    iget-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ao:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_11

    :try_start_1
    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ao:Z

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->J()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    :cond_6
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    if-eqz v1, :cond_b

    iget-boolean v2, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->u:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->w:I

    sget v4, Lcom/anythink/expressad/foundation/g/a;->cr:I

    if-eq v2, v4, :cond_7

    sget v4, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-ne v2, v4, :cond_9

    :cond_7
    iget v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->M:I

    if-ne v2, v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->L:I

    invoke-interface {v1, v0, v2}, Lcom/anythink/expressad/video/bt/module/b/h;->a(ZI)V

    :cond_9
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/videocommon/c/c;->a(I)V

    :cond_a
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    iget-object v2, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/bt/module/b/h;->a(ZLcom/anythink/expressad/videocommon/c/c;)V

    :cond_b
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->az:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->u:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->z:Z

    if-eqz v0, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    iget-object v2, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->U:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/expressad/video/module/b/a;->a(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iget-boolean v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->z:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->u:Z

    if-eqz v0, :cond_f

    const/16 v0, 0x11f

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    :goto_1
    invoke-static {v0, v1}, Lcom/anythink/expressad/videocommon/a;->b(ILcom/anythink/expressad/foundation/d/c;)V

    goto :goto_2

    :cond_f
    const/16 v0, 0x5e

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    goto :goto_1

    :cond_10
    :goto_2
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_11
    :goto_3
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ay:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->unregisterReceiver()V

    :cond_12
    iget-boolean v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->z:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/expressad/video/bt/module/ATTempContainer$4;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$4;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_13
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_14
    :goto_4
    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->J:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/expressad/video/bt/a/c;->f(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
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
    .locals 2

    invoke-super {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aq:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSVideoModule()Lcom/anythink/expressad/video/signal/j;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/signal/j;->videoOperate(I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setOnPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->onResume()V

    iget v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aj:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->i:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->j:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aj:I

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->i()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->isMiniCardShowing()Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/anythink/expressad/foundation/f/b;->c:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setCover(Z)V

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setOnResume()V

    :cond_4
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aq:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->i()Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/anythink/expressad/foundation/f/b;->c:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSVideoModule()Lcom/anythink/expressad/video/signal/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/signal/j;->videoOperate(I)V

    :cond_5
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/t;->a(Landroid/view/View;)V

    :cond_6
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->as:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->at:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->onStop()V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setCover(Z)V

    :cond_0
    return-void
.end method

.method public preload()V
    .locals 0

    return-void
.end method

.method public receiveSuccess()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->az:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public registerErrorListener(Lcom/anythink/expressad/video/bt/module/ATTempContainer$a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->d:Lcom/anythink/expressad/video/bt/module/ATTempContainer$a;

    return-void
.end method

.method public setAnythinkTempCallback(Lcom/anythink/expressad/video/bt/module/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->G:Lcom/anythink/expressad/video/bt/module/a/b;

    return-void
.end method

.method public setCamPlayOrderCallback(Lcom/anythink/expressad/video/dynview/f/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->H:Lcom/anythink/expressad/video/dynview/f/a;

    iput p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->I:I

    return-void
.end method

.method public setCampOrderViewData(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->V:Ljava/util/List;

    :cond_0
    iput p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->W:I

    return-void
.end method

.method public setCampaign(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 3

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->K()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/foundation/d/c;->l(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)V

    :cond_1
    return-void
.end method

.method public setCampaignDownLoadTask(Lcom/anythink/expressad/videocommon/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->E:Lcom/anythink/expressad/videocommon/b/c;

    return-void
.end method

.method public setCampaignExpired(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/c;->e(I)V

    iget-boolean v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->v:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/foundation/d/c;->m(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/e/d;->M()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/c;->m(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/foundation/d/c;->m(I)V

    return-void

    :cond_2
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/c;->e(I)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->A()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/foundation/d/c;->m(I)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/e/d;->a()I

    move-result p1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/c;->m(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public setDeveloperExtraData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->U:Ljava/lang/String;

    return-void
.end method

.method public setH5Cbp(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->al:I

    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->J:Ljava/lang/String;

    return-void
.end method

.method public setJSFactory(Lcom/anythink/expressad/video/signal/factory/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    return-void
.end method

.method public setMatchParent()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method public setMediaPlayerUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setNotchPadding(IIIII)V
    .locals 7

    iput p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->O:I

    iput p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->P:I

    iput p3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->Q:I

    iput p4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->R:I

    iput p5, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->S:I

    invoke-static {p1, p2, p3, p4, p5}, Lcom/anythink/expressad/foundation/h/h;->a(IIIII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->T:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->T:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->T:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/signal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->T:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->T:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "oncutoutfetched"

    invoke-static {v0, v2, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setNotchPadding(IIII)V

    :cond_1
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v1, :cond_2

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setNotchPadding(IIIII)V

    :cond_2
    return-void
.end method

.method public setShowRewardListener(Lcom/anythink/expressad/video/bt/module/b/h;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    return-void
.end method

.method public setShowingTransparent()V
    .locals 3

    invoke-direct {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->as:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "anythink_reward_theme"

    const-string v2, "style"

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->m:Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTheme(I)V

    :cond_0
    return-void
.end method

.method public setTempEventListener(Lcom/anythink/expressad/reward/player/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->k:Lcom/anythink/expressad/reward/player/c;

    return-void
.end method

.method public setWebViewFront(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ak:I

    return-void
.end method

.method public superDefaultLoad(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receiveError:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",descroption:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h:Landroid/os/Handler;

    iget-object p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h:Landroid/os/Handler;

    iget-object p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->d:Lcom/anythink/expressad/video/bt/module/ATTempContainer$a;

    invoke-interface {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$a;->b()V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    return-void
.end method
