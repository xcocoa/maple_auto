.class public Lcom/octopus/ad/internal/view/BannerAdViewImpl;
.super Lcom/octopus/ad/internal/view/AdViewImpl;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/view/BannerAdViewImpl$a;,
        Lcom/octopus/ad/internal/view/BannerAdViewImpl$b;
    }
.end annotation


# instance fields
.field private A:Lcom/octopus/ad/utils/i;

.field private B:Lcom/octopus/ad/utils/h;

.field private C:Z

.field private D:Lcom/octopus/ad/internal/view/b;

.field private E:Lcom/octopus/ad/internal/view/BannerAdViewImpl$a;

.field public m:Z

.field public n:I

.field public o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Landroid/content/BroadcastReceiver;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Lcom/octopus/ad/internal/animation/Animator;

.field private x:Z

.field private y:Lcom/octopus/ad/internal/view/AdWebView;

.field private z:Lcom/octopus/ad/utils/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->C:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->C:Z

    invoke-virtual {p0, p2}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->setAutoRefreshInterval(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/octopus/ad/internal/view/AdViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->C:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/octopus/ad/internal/view/AdViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->C:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/octopus/ad/internal/view/AdViewImpl;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->C:Z

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/view/BannerAdViewImpl;)I
    .locals 0

    iget p0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->p:I

    return p0
.end method

.method private a(D)V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->z:Lcom/octopus/ad/utils/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/octopus/ad/utils/j;->a(D)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->z:Lcom/octopus/ad/utils/j;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p2, v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->px2dip(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->px2dip(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/octopus/ad/utils/j;->a(II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->z:Lcom/octopus/ad/utils/j;

    new-instance v0, Lcom/octopus/ad/internal/view/BannerAdViewImpl$2;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl$2;-><init>(Lcom/octopus/ad/internal/view/BannerAdViewImpl;)V

    invoke-virtual {p2, v0}, Lcom/octopus/ad/utils/j;->a(Lcom/octopus/ad/utils/j$a;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 2

    invoke-static {p1}, Lcom/octopus/ad/utils/g;->a(I)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "octopus clickable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OctopusAd"

    invoke-static {v1, v0}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance p1, Lcom/octopus/ad/internal/view/BannerAdViewImpl$3;

    invoke-direct {p1, p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl$3;-><init>(Lcom/octopus/ad/internal/view/BannerAdViewImpl;)V

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->disableFullClick(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;ILcom/octopus/ad/utils/i$a;)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->A:Lcom/octopus/ad/utils/i;

    invoke-virtual {v0, p3}, Lcom/octopus/ad/utils/i;->a(Lcom/octopus/ad/utils/i$a;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p2, p2

    invoke-static {v0, p2}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    new-instance v0, Lcom/octopus/ad/internal/view/BannerAdViewImpl$6;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/octopus/ad/internal/view/BannerAdViewImpl$6;-><init>(Lcom/octopus/ad/internal/view/BannerAdViewImpl;ILjava/lang/String;Lcom/octopus/ad/utils/i$a;)V

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->setScrollClick(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/view/BannerAdViewImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->r:Z

    return p0
.end method

.method private j()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->q:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->p:I

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->r:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->x:Z

    return-void
.end method

.method private k()V
    .locals 4

    const-string v0, "OctopusAd"

    iget-object v1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->s:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/octopus/ad/internal/view/BannerAdViewImpl$1;

    invoke-direct {v2, p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl$1;-><init>(Lcom/octopus/ad/internal/view/BannerAdViewImpl;)V

    iput-object v2, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->s:Landroid/content/BroadcastReceiver;

    :try_start_0
    const-string v2, "before registerReceiver"

    invoke-static {v0, v2}, Lcom/octopus/ad/utils/b/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v1, "ignore error"

    invoke-static {v0, v1}, Lcom/octopus/ad/utils/b/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private l()V
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->p:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->k()V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 4

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->A:Lcom/octopus/ad/utils/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/utils/i;->a()V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->A:Lcom/octopus/ad/utils/i;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/octopus/ad/internal/utilities/ViewUtil;->px2dip(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/octopus/ad/internal/utilities/ViewUtil;->px2dip(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/octopus/ad/utils/i;->a(II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x64

    new-instance v2, Lcom/octopus/ad/internal/view/BannerAdViewImpl$4;

    invoke-direct {v2, p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl$4;-><init>(Lcom/octopus/ad/internal/view/BannerAdViewImpl;)V

    const-string v3, "up"

    invoke-direct {p0, v3, v1, v2}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->a(Ljava/lang/String;ILcom/octopus/ad/utils/i$a;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 4

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->B:Lcom/octopus/ad/utils/h;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/octopus/ad/internal/utilities/ViewUtil;->px2dip(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/octopus/ad/internal/utilities/ViewUtil;->px2dip(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/octopus/ad/utils/h;->a(IIZ)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->B:Lcom/octopus/ad/utils/h;

    new-instance v2, Lcom/octopus/ad/internal/view/BannerAdViewImpl$5;

    invoke-direct {v2, p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl$5;-><init>(Lcom/octopus/ad/internal/view/BannerAdViewImpl;)V

    invoke-virtual {v1, v2}, Lcom/octopus/ad/utils/h;->a(Lcom/octopus/ad/utils/h$a;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter dismantleBroadcast mReceiver == null ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->s:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OctopusAd"

    invoke-static {v1, v0}, Lcom/octopus/ad/utils/b/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->s:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "after unregisterReceiver"

    invoke-static {v1, v0}, Lcom/octopus/ad/utils/b/f;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "got IllegalArgumentException"

    invoke-static {v1, v0}, Lcom/octopus/ad/utils/b/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->s:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private p()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->z:Lcom/octopus/ad/utils/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/utils/j;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->z:Lcom/octopus/ad/utils/j;

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->B:Lcom/octopus/ad/utils/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/octopus/ad/utils/h;->a()V

    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->A:Lcom/octopus/ad/utils/i;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/octopus/ad/utils/i;->c()V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v0, -0x1

    iput v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->p:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->m:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->t:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->u:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->v:Z

    new-instance v0, Lcom/octopus/ad/internal/animation/Animator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/octopus/ad/internal/animation/TransitionType;->NONE:Lcom/octopus/ad/internal/animation/TransitionType;

    sget-object v4, Lcom/octopus/ad/internal/animation/TransitionDirection;->UP:Lcom/octopus/ad/internal/animation/TransitionDirection;

    const-wide/16 v5, 0x1f4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/octopus/ad/internal/animation/Animator;-><init>(Landroid/content/Context;Lcom/octopus/ad/internal/animation/TransitionType;Lcom/octopus/ad/internal/animation/TransitionDirection;J)V

    iput-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->w:Lcom/octopus/ad/internal/animation/Animator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v2

    int-to-float v1, v1

    invoke-virtual {v2}, Lcom/octopus/ad/internal/m;->m()F

    move-result v3

    div-float/2addr v1, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v0, v0

    invoke-virtual {v2}, Lcom/octopus/ad/internal/m;->l()F

    move-result v2

    div-float/2addr v0, v2

    add-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v2, v0}, Lcom/octopus/ad/internal/d;->d(I)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/d;->e(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/octopus/ad/internal/view/AdViewImpl;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->l()V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    iget-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->a:Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    sget-object p2, Lcom/octopus/ad/internal/l;->a:Lcom/octopus/ad/internal/l;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/octopus/ad/internal/l;->b:Lcom/octopus/ad/internal/l;

    :goto_0
    invoke-virtual {p1, p2}, Lcom/octopus/ad/internal/d;->a(Lcom/octopus/ad/internal/l;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->mAdFetcher:Lcom/octopus/ad/internal/c;

    iget p2, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->p:I

    invoke-virtual {p1, p2}, Lcom/octopus/ad/internal/c;->a(I)V

    iget-boolean p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->x:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->mAdFetcher:Lcom/octopus/ad/internal/c;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/c;->b()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->q:Z

    :cond_2
    new-instance p1, Lcom/octopus/ad/utils/j;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/octopus/ad/utils/j;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->z:Lcom/octopus/ad/utils/j;

    new-instance p1, Lcom/octopus/ad/utils/i;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/octopus/ad/utils/i;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->A:Lcom/octopus/ad/utils/i;

    new-instance p1, Lcom/octopus/ad/utils/h;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/octopus/ad/utils/h;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->B:Lcom/octopus/ad/utils/h;

    return-void
.end method

.method public a(Lcom/octopus/ad/internal/view/b;)V
    .locals 4

    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcom/octopus/ad/internal/view/b;->failed()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-interface {p1}, Lcom/octopus/ad/internal/view/b;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->c:Lcom/octopus/ad/internal/view/b;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->D:Lcom/octopus/ad/internal/view/b;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->getTransitionType()Lcom/octopus/ad/internal/animation/TransitionType;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/animation/TransitionType;->NONE:Lcom/octopus/ad/internal/animation/TransitionType;

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->c:Lcom/octopus/ad/internal/view/b;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/octopus/ad/internal/view/b;->destroy()V

    :cond_2
    invoke-interface {p1}, Lcom/octopus/ad/internal/view/b;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    instance-of v1, v0, Lcom/octopus/ad/internal/view/AdWebView;

    if-eqz v1, :cond_3

    const-string v1, "OctopusAd"

    const-string v2, "set mAdWebView"

    invoke-static {v1, v2}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lcom/octopus/ad/internal/view/AdWebView;

    iput-object v1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->y:Lcom/octopus/ad/internal/view/AdWebView;

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->getAdAlignment()Lcom/octopus/ad/internal/view/BannerAdViewImpl$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/internal/view/BannerAdViewImpl$a;->a()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_4
    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->getMediaType()Lcom/octopus/ad/internal/l;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/l;->a:Lcom/octopus/ad/internal/l;

    if-ne v0, v1, :cond_5

    invoke-interface {p1}, Lcom/octopus/ad/internal/view/b;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/octopus/ad/internal/video/AdVideoView;

    if-eqz v0, :cond_f

    :cond_5
    invoke-interface {p1}, Lcom/octopus/ad/internal/view/b;->visible()V

    goto/16 :goto_2

    :cond_6
    invoke-interface {p1}, Lcom/octopus/ad/internal/view/b;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lcom/octopus/ad/internal/view/b;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->getAdAlignment()Lcom/octopus/ad/internal/view/BannerAdViewImpl$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/internal/view/BannerAdViewImpl$a;->a()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->w:Lcom/octopus/ad/internal/animation/Animator;

    invoke-interface {p1}, Lcom/octopus/ad/internal/view/b;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->w:Lcom/octopus/ad/internal/animation/Animator;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->getMediaType()Lcom/octopus/ad/internal/l;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/l;->a:Lcom/octopus/ad/internal/l;

    if-ne v0, v1, :cond_9

    invoke-interface {p1}, Lcom/octopus/ad/internal/view/b;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/octopus/ad/internal/video/AdVideoView;

    if-eqz v0, :cond_a

    :cond_9
    invoke-interface {p1}, Lcom/octopus/ad/internal/view/b;->visible()V

    :cond_a
    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->w:Lcom/octopus/ad/internal/animation/Animator;

    invoke-interface {p1}, Lcom/octopus/ad/internal/view/b;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->w:Lcom/octopus/ad/internal/animation/Animator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->showNext()V

    goto :goto_1

    :cond_b
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->getMediaType()Lcom/octopus/ad/internal/l;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/l;->a:Lcom/octopus/ad/internal/l;

    if-ne v0, v1, :cond_c

    invoke-interface {p1}, Lcom/octopus/ad/internal/view/b;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/octopus/ad/internal/video/AdVideoView;

    if-eqz v0, :cond_d

    :cond_c
    invoke-interface {p1}, Lcom/octopus/ad/internal/view/b;->visible()V

    :cond_d
    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->w:Lcom/octopus/ad/internal/animation/Animator;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->w:Lcom/octopus/ad/internal/animation/Animator;

    invoke-interface {p1}, Lcom/octopus/ad/internal/view/b;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;)V

    :goto_1
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->c:Lcom/octopus/ad/internal/view/b;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/octopus/ad/internal/view/b;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Lcom/octopus/ad/internal/view/b;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lcom/octopus/ad/internal/view/BannerAdViewImpl$b;

    iget-object v3, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->w:Lcom/octopus/ad/internal/animation/Animator;

    invoke-direct {v2, p0, v0, v3}, Lcom/octopus/ad/internal/view/BannerAdViewImpl$b;-><init>(Lcom/octopus/ad/internal/view/BannerAdViewImpl;Lcom/octopus/ad/internal/view/b;Lcom/octopus/ad/internal/animation/Animator;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_2

    :cond_e
    invoke-interface {v0}, Lcom/octopus/ad/internal/view/b;->destroy()V

    :cond_f
    :goto_2
    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->b()V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->a:Landroid/view/ViewGroup;

    if-nez v0, :cond_10

    invoke-interface {p1}, Lcom/octopus/ad/internal/view/b;->getRefreshInterval()I

    move-result v0

    if-lez v0, :cond_10

    iget-boolean v1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->C:Z

    if-eqz v1, :cond_10

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->setAutoRefreshInterval(I)V

    :cond_10
    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->c:Lcom/octopus/ad/internal/view/b;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_11
    :goto_3
    const p1, 0x138e6

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->onAdFailedToLoad(I)V

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    const-string v0, "Loaded an ad with an invalid displayable"

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public activityOnDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->D:Lcom/octopus/ad/internal/view/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/octopus/ad/internal/view/b;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->D:Lcom/octopus/ad/internal/view/b;

    :cond_0
    const-string v0, "OctopusAd"

    const-string v1, "enter activityOnDestroy before dismantleBroadcast"

    invoke-static {v0, v1}, Lcom/octopus/ad/utils/b/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->o()V

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->p()V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->mAdFetcher:Lcom/octopus/ad/internal/c;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->h()V

    :cond_1
    return-void
.end method

.method public activityOnPause()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->D:Lcom/octopus/ad/internal/view/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/octopus/ad/internal/view/b;->onPause()V

    :cond_0
    return-void
.end method

.method public activityOnResume()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->D:Lcom/octopus/ad/internal/view/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/octopus/ad/internal/view/b;->onResume()V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->j()V

    sget-object v0, Lcom/octopus/ad/R$styleable;->AdView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->xmlLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->found_n_in_xml:I

    int-to-long v2, p2

    invoke-static {v1, v2, v3}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_10

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget v3, Lcom/octopus/ad/R$styleable;->AdView_adSlotId:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/octopus/ad/internal/view/AdViewImpl;->setAdSlotId(Ljava/lang/String;)V

    sget-object v3, Lcom/octopus/ad/internal/utilities/HaoboLog;->xmlLogTag:Ljava/lang/String;

    sget v4, Lcom/octopus/ad/R$string;->placement_id:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v3, v2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    sget v3, Lcom/octopus/ad/R$styleable;->AdView_auto_refresh_interval:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->setAutoRefreshInterval(I)V

    if-gtz v2, :cond_1

    iput-boolean v4, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->x:Z

    :cond_1
    sget-object v3, Lcom/octopus/ad/internal/utilities/HaoboLog;->xmlLogTag:Ljava/lang/String;

    sget v4, Lcom/octopus/ad/R$string;->xml_set_period:I

    int-to-long v5, v2

    invoke-static {v4, v5, v6}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(IJ)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    sget v3, Lcom/octopus/ad/R$styleable;->AdView_test:I

    if-ne v2, v3, :cond_3

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v3

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v3, Lcom/octopus/ad/internal/m;->b:Z

    sget-object v2, Lcom/octopus/ad/internal/utilities/HaoboLog;->xmlLogTag:Ljava/lang/String;

    sget v3, Lcom/octopus/ad/R$string;->xml_set_test:I

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v4

    iget-boolean v4, v4, Lcom/octopus/ad/internal/m;->b:Z

    :goto_2
    invoke-static {v3, v4}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_3
    sget v3, Lcom/octopus/ad/R$styleable;->AdView_adSize:I

    if-ne v2, v3, :cond_6

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    :try_start_0
    const-class v4, Lcom/octopus/ad/a;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/octopus/ad/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    goto :goto_3

    :catch_0
    nop

    :cond_4
    :goto_3
    if-nez v3, :cond_5

    sget-object v3, Lcom/octopus/ad/a;->g:Lcom/octopus/ad/a;

    :cond_5
    sget-object v2, Lcom/octopus/ad/internal/utilities/HaoboLog;->xmlLogTag:Ljava/lang/String;

    sget v4, Lcom/octopus/ad/R$string;->xml_ad_size:I

    invoke-virtual {v3}, Lcom/octopus/ad/a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/octopus/ad/a;->b()I

    move-result v2

    invoke-virtual {v3}, Lcom/octopus/ad/a;->a()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->setAdSize(II)V

    goto/16 :goto_4

    :cond_6
    sget v3, Lcom/octopus/ad/R$styleable;->AdView_should_reload_on_resume:I

    if-ne v2, v3, :cond_7

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->setShouldReloadOnResume(Z)V

    sget-object v2, Lcom/octopus/ad/internal/utilities/HaoboLog;->xmlLogTag:Ljava/lang/String;

    sget v3, Lcom/octopus/ad/R$string;->xml_set_should_reload:I

    iget-boolean v4, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->r:Z

    goto :goto_2

    :cond_7
    sget v3, Lcom/octopus/ad/R$styleable;->AdView_opens_native_browser:I

    if-ne v2, v3, :cond_8

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/octopus/ad/internal/view/AdViewImpl;->setOpensNativeBrowser(Z)V

    sget-object v2, Lcom/octopus/ad/internal/utilities/HaoboLog;->xmlLogTag:Ljava/lang/String;

    sget v3, Lcom/octopus/ad/R$string;->xml_set_opens_native_browser:I

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getOpensNativeBrowser()Z

    move-result v4

    goto :goto_2

    :cond_8
    sget v3, Lcom/octopus/ad/R$styleable;->AdView_expands_to_fit_screen_width:I

    if-ne v2, v3, :cond_9

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->setExpandsToFitScreenWidth(Z)V

    sget-object v2, Lcom/octopus/ad/internal/utilities/HaoboLog;->xmlLogTag:Ljava/lang/String;

    sget v3, Lcom/octopus/ad/R$string;->xml_set_expands_to_full_screen_width:I

    iget-boolean v4, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->t:Z

    goto/16 :goto_2

    :cond_9
    sget v3, Lcom/octopus/ad/R$styleable;->AdView_resize_ad_to_fit_container:I

    if-ne v2, v3, :cond_a

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->setResizeAdToFitContainer(Z)V

    sget-object v2, Lcom/octopus/ad/internal/utilities/HaoboLog;->xmlLogTag:Ljava/lang/String;

    sget v3, Lcom/octopus/ad/R$string;->xml_resize_ad_to_fit_container:I

    iget-boolean v4, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->u:Z

    goto/16 :goto_2

    :cond_a
    sget v3, Lcom/octopus/ad/R$styleable;->AdView_show_loading_indicator:I

    if-ne v2, v3, :cond_b

    sget-object v3, Lcom/octopus/ad/internal/utilities/HaoboLog;->xmlLogTag:Ljava/lang/String;

    sget v5, Lcom/octopus/ad/R$string;->show_loading_indicator_xml:I

    invoke-static {v5}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/octopus/ad/internal/view/AdViewImpl;->setShowLoadingIndicator(Z)V

    goto :goto_4

    :cond_b
    sget v3, Lcom/octopus/ad/R$styleable;->AdView_transition_type:I

    if-ne v2, v3, :cond_c

    sget-object v3, Lcom/octopus/ad/internal/utilities/HaoboLog;->xmlLogTag:Ljava/lang/String;

    sget v4, Lcom/octopus/ad/R$string;->transition_type:I

    invoke-static {v4}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {v2}, Lcom/octopus/ad/internal/animation/TransitionType;->getTypeForInt(I)Lcom/octopus/ad/internal/animation/TransitionType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->setTransitionType(Lcom/octopus/ad/internal/animation/TransitionType;)V

    goto :goto_4

    :cond_c
    sget v3, Lcom/octopus/ad/R$styleable;->AdView_transition_direction:I

    if-ne v2, v3, :cond_d

    sget-object v3, Lcom/octopus/ad/internal/utilities/HaoboLog;->xmlLogTag:Ljava/lang/String;

    sget v4, Lcom/octopus/ad/R$string;->transition_direction:I

    invoke-static {v4}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {v2}, Lcom/octopus/ad/internal/animation/TransitionDirection;->getDirectionForInt(I)Lcom/octopus/ad/internal/animation/TransitionDirection;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->setTransitionDirection(Lcom/octopus/ad/internal/animation/TransitionDirection;)V

    goto :goto_4

    :cond_d
    sget v3, Lcom/octopus/ad/R$styleable;->AdView_transition_duration:I

    if-ne v2, v3, :cond_e

    sget-object v3, Lcom/octopus/ad/internal/utilities/HaoboLog;->xmlLogTag:Ljava/lang/String;

    sget v4, Lcom/octopus/ad/R$string;->transition_duration:I

    invoke-static {v4}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3e8

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->setTransitionDuration(J)V

    goto :goto_4

    :cond_e
    sget v3, Lcom/octopus/ad/R$styleable;->AdView_load_landing_page_in_background:I

    if-ne v2, v3, :cond_f

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/octopus/ad/internal/view/AdViewImpl;->setLoadsInBackground(Z)V

    sget-object v2, Lcom/octopus/ad/internal/utilities/HaoboLog;->xmlLogTag:Ljava/lang/String;

    sget v3, Lcom/octopus/ad/R$string;->xml_load_landing_page_in_background:I

    iget-boolean v4, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->g:Z

    goto/16 :goto_2

    :cond_f
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->mAdFetcher:Lcom/octopus/ad/internal/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/c;->a()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public disableFullClick(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->y:Lcom/octopus/ad/internal/view/AdWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public expandToFitScreenWidth(IILcom/octopus/ad/internal/view/b;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    int-to-float p1, p1

    div-float/2addr v1, p1

    int-to-float p1, p2

    mul-float p1, p1, v1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p2, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->n:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->o:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-interface {p3}, Lcom/octopus/ad/internal/view/b;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/4 p3, -0x1

    if-nez p2, :cond_2

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->m:Z

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 2

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->q:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->publicFunctionsLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->start:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->mAdFetcher:Lcom/octopus/ad/internal/c;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/c;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->q:Z

    :cond_0
    return-void
.end method

.method public getAdAlignment()Lcom/octopus/ad/internal/view/BannerAdViewImpl$a;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->E:Lcom/octopus/ad/internal/view/BannerAdViewImpl$a;

    if-nez v0, :cond_0

    sget-object v0, Lcom/octopus/ad/internal/view/BannerAdViewImpl$a;->e:Lcom/octopus/ad/internal/view/BannerAdViewImpl$a;

    iput-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->E:Lcom/octopus/ad/internal/view/BannerAdViewImpl$a;

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->E:Lcom/octopus/ad/internal/view/BannerAdViewImpl$a;

    return-object v0
.end method

.method public getAdHeight()I
    .locals 4

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->get_height:I

    iget-object v2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->g()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->g()I

    move-result v0

    return v0
.end method

.method public getAdWidth()I
    .locals 4

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->get_width:I

    iget-object v2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->f()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->f()I

    move-result v0

    return v0
.end method

.method public getAutoRefreshInterval()I
    .locals 4

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->publicFunctionsLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->get_period:I

    iget v2, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->p:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->p:I

    return v0
.end method

.method public getExpandsToFitScreenWidth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->t:Z

    return v0
.end method

.method public getMediaType()Lcom/octopus/ad/internal/l;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/octopus/ad/internal/l;->a:Lcom/octopus/ad/internal/l;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/octopus/ad/internal/l;->b:Lcom/octopus/ad/internal/l;

    :goto_0
    return-object v0
.end method

.method public getResizeAdToFitContainer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->u:Z

    return v0
.end method

.method public getShouldReloadOnResume()Z
    .locals 3

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->publicFunctionsLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->get_should_resume:I

    iget-boolean v2, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->r:Z

    invoke-static {v1, v2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->r:Z

    return v0
.end method

.method public getTransitionDirection()Lcom/octopus/ad/internal/animation/TransitionDirection;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->w:Lcom/octopus/ad/internal/animation/Animator;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/animation/Animator;->getTransitionDirection()Lcom/octopus/ad/internal/animation/TransitionDirection;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionDuration()J
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->w:Lcom/octopus/ad/internal/animation/Animator;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/animation/Animator;->getTransitionDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransitionType()Lcom/octopus/ad/internal/animation/TransitionType;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->w:Lcom/octopus/ad/internal/animation/Animator;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/animation/Animator;->getTransitionType()Lcom/octopus/ad/internal/animation/TransitionType;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->publicFunctionsLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->stop:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->mAdFetcher:Lcom/octopus/ad/internal/c;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/c;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->q:Z

    return-void
.end method

.method public i()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->m:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->n:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->o:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    return-void
.end method

.method public isAutoRefresh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->C:Z

    return v0
.end method

.method public loadAd(Lcom/octopus/ad/internal/network/a$a;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->loadAd(Lcom/octopus/ad/internal/network/a$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->q:Z

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onGlobalLayout()V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->getMediaType()Lcom/octopus/ad/internal/l;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/l;->a:Lcom/octopus/ad/internal/l;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->serverResponse:Lcom/octopus/ad/internal/network/ServerResponse;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/ServerResponse;->getInterEvent()Lcom/octopus/ad/b/b$m;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$m;->c()Lcom/octopus/ad/b/b$r;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/octopus/ad/b/b$r;->a()I

    move-result v3

    if-ne v3, v2, :cond_1

    invoke-virtual {v1}, Lcom/octopus/ad/b/b$r;->b()D

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->a(D)V

    :cond_1
    invoke-virtual {v0}, Lcom/octopus/ad/b/b$m;->d()Lcom/octopus/ad/b/b$p;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/octopus/ad/b/b$p;->a()I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->m()V

    :cond_2
    invoke-virtual {v0}, Lcom/octopus/ad/b/b$m;->a()Lcom/octopus/ad/b/b$l;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/octopus/ad/b/b$l;->a()I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->a(I)V

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$m;->b()Lcom/octopus/ad/b/b$o;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$o;->a()I

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->n()V

    :cond_4
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/octopus/ad/internal/view/AdViewImpl;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->d:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->d:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->v:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object p1

    sub-int/2addr p4, p2

    int-to-float p2, p4

    invoke-virtual {p1}, Lcom/octopus/ad/internal/m;->l()F

    move-result p4

    div-float/2addr p2, p4

    const/high16 p4, 0x3f000000    # 0.5f

    add-float/2addr p2, p4

    float-to-int p2, p2

    sub-int/2addr p5, p3

    int-to-float p3, p5

    invoke-virtual {p1}, Lcom/octopus/ad/internal/m;->m()F

    move-result p1

    div-float/2addr p3, p1

    add-float/2addr p3, p4

    float-to-int p1, p3

    iget-object p3, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {p3}, Lcom/octopus/ad/internal/d;->f()I

    move-result p3

    if-lt p2, p3, :cond_6

    iget-object p3, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {p3}, Lcom/octopus/ad/internal/d;->g()I

    move-result p3

    if-ge p1, p3, :cond_2

    if-lez p2, :cond_2

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {p3, p2}, Lcom/octopus/ad/internal/d;->d(I)V

    iget-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {p2, p1}, Lcom/octopus/ad/internal/d;->e(I)V

    iget-boolean p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->v:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->c()V

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->v:Z

    :cond_4
    iget-boolean p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->q:Z

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->k()V

    iget-boolean p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->r:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->g()V

    :cond_5
    return-void

    :cond_6
    :goto_0
    sget-object p3, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget p4, Lcom/octopus/ad/R$string;->adsize_too_big:I

    iget-object p5, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {p5}, Lcom/octopus/ad/internal/d;->f()I

    move-result p5

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->g()I

    move-result v0

    invoke-static {p4, p2, p1, p5, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(IIIII)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->c()V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->mAdFetcher:Lcom/octopus/ad/internal/c;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/octopus/ad/internal/c;->a()V

    :cond_7
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->k()V

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->unhidden:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->q:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->r:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->p:I

    if-lez p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->f:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->d:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->a()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->mAdFetcher:Lcom/octopus/ad/internal/c;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->g()V

    :cond_1
    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->f:Z

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroid/webkit/WebView;

    if-eqz p1, :cond_4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/WebviewUtil;->onResume(Landroid/webkit/WebView;)V

    goto :goto_0

    :cond_2
    const-string p1, "OctopusAd"

    const-string v1, "enter onWindowVisibilityChanged before dismantleBroadcast"

    invoke-static {p1, v1}, Lcom/octopus/ad/utils/b/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->o()V

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->hidden:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->mAdFetcher:Lcom/octopus/ad/internal/c;

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->q:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->h()V

    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroid/webkit/WebView;

    if-eqz p1, :cond_4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/WebviewUtil;->onPause(Landroid/webkit/WebView;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public resetContainerIfNeeded()V
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->i()V

    :cond_0
    return-void
.end method

.method public resizeWebViewToFitContainer(IILcom/octopus/ad/internal/view/b;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    :goto_1
    if-lez v1, :cond_6

    if-gtz v0, :cond_2

    goto :goto_4

    :cond_2
    int-to-float v2, p1

    int-to-float v3, v0

    div-float/2addr v2, v3

    int-to-float v3, p2

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-interface {p3}, Lcom/octopus/ad/internal/view/b;->getView()Landroid/view/View;

    move-result-object p3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    mul-int p1, p1, v1

    div-int v0, p1, p2

    instance-of p1, p3, Landroid/webkit/WebView;

    if-eqz p1, :cond_4

    move-object p1, p3

    check-cast p1, Landroid/webkit/WebView;

    mul-int/lit8 v2, v1, 0x64

    div-int/2addr v2, p2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p2, v2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setInitialScale(I)V

    goto :goto_2

    :cond_3
    mul-int p2, p2, v0

    div-int v1, p2, p1

    instance-of p2, p3, Landroid/webkit/WebView;

    if-eqz p2, :cond_4

    move-object p2, p3

    check-cast p2, Landroid/webkit/WebView;

    mul-int/lit8 v2, v0, 0x64

    div-int/2addr v2, p1

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setInitialScale(I)V

    :cond_4
    :goto_2
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/16 p2, 0x11

    if-nez p1, :cond_5

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_3
    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    return-void

    :cond_6
    :goto_4
    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    const-string p2, "Unable to resize ad to fit container because of failure to obtain the container size."

    invoke-static {p1, p2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAdAlignment(Lcom/octopus/ad/internal/view/BannerAdViewImpl$a;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->E:Lcom/octopus/ad/internal/view/BannerAdViewImpl$a;

    return-void
.end method

.method public setAdSize(II)V
    .locals 2

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->set_size:I

    invoke-static {v1, p1, p2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/d;->b(I)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {p1, p2}, Lcom/octopus/ad/internal/d;->c(I)V

    return-void
.end method

.method public setAutoRefresh(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->C:Z

    return-void
.end method

.method public setAutoRefreshInterval(I)V
    .locals 3

    if-lez p1, :cond_0

    const/16 v0, 0x2710

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_0
    iput p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->p:I

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->publicFunctionsLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->set_period:I

    iget v1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->p:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(IJ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->mAdFetcher:Lcom/octopus/ad/internal/c;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->p:I

    invoke-virtual {p1, v0}, Lcom/octopus/ad/internal/c;->a(I)V

    :cond_1
    return-void
.end method

.method public setExpandsToFitScreenWidth(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->t:Z

    return-void
.end method

.method public setResizeAdToFitContainer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->u:Z

    return-void
.end method

.method public setScrollClick(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->y:Lcom/octopus/ad/internal/view/AdWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public setShouldReloadOnResume(Z)V
    .locals 2

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->publicFunctionsLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->set_should_resume:I

    invoke-static {v1, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->r:Z

    return-void
.end method

.method public setTransitionDirection(Lcom/octopus/ad/internal/animation/TransitionDirection;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->w:Lcom/octopus/ad/internal/animation/Animator;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/animation/Animator;->setTransitionDirection(Lcom/octopus/ad/internal/animation/TransitionDirection;)V

    return-void
.end method

.method public setTransitionDuration(J)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->w:Lcom/octopus/ad/internal/animation/Animator;

    invoke-virtual {v0, p1, p2}, Lcom/octopus/ad/internal/animation/Animator;->setTransitionDuration(J)V

    return-void
.end method

.method public setTransitionType(Lcom/octopus/ad/internal/animation/TransitionType;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->w:Lcom/octopus/ad/internal/animation/Animator;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/animation/Animator;->setTransitionType(Lcom/octopus/ad/internal/animation/TransitionType;)V

    return-void
.end method
