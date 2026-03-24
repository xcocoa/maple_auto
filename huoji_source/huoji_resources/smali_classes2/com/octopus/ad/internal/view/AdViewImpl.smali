.class public abstract Lcom/octopus/ad/internal/view/AdViewImpl;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/octopus/ad/AdLifeControl;
.implements Lcom/octopus/ad/IBidding;
.implements Lcom/octopus/ad/internal/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/view/AdViewImpl$a;,
        Lcom/octopus/ad/internal/view/AdViewImpl$b;,
        Lcom/octopus/ad/internal/view/AdViewImpl$c;,
        Lcom/octopus/ad/internal/view/AdViewImpl$d;
    }
.end annotation


# static fields
.field private static ah:Landroid/widget/FrameLayout;

.field private static ai:Lcom/octopus/ad/internal/view/e;

.field private static aj:Lcom/octopus/ad/internal/view/AdWebView$b;


# instance fields
.field private A:Z

.field private B:Landroidx/appcompat/widget/AppCompatTextView;

.field private C:Landroidx/appcompat/widget/AppCompatTextView;

.field private D:Landroid/widget/ImageView;

.field private E:Lcom/octopus/ad/a/a;

.field private F:Landroidx/appcompat/widget/AppCompatImageView;

.field private G:J

.field private H:Landroid/view/GestureDetector;

.field private I:F

.field private J:F

.field private K:F

.field private L:F

.field private M:Landroid/widget/FrameLayout;

.field private N:Landroid/widget/FrameLayout;

.field private O:I

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Z

.field public a:Landroid/view/ViewGroup;

.field private aa:Z

.field private ab:Z

.field private ac:I

.field private ad:Landroid/view/View;

.field private ae:Lcom/octopus/ad/internal/view/AdWebView;

.field private af:Z

.field private final ag:Lcom/octopus/ad/internal/view/AdViewImpl$d;

.field public b:Lcom/octopus/ad/internal/view/AdViewImpl$a;

.field public bottomPadding:I

.field public c:Lcom/octopus/ad/internal/view/b;

.field public clickCount:I

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Lcom/octopus/ad/internal/d;

.field public i:Lcom/octopus/ad/internal/network/a$a;

.field public j:Z

.field public k:Z

.field public l:I

.field public leftPadding:I

.field public loadCount:I

.field private m:Landroid/view/View;

.field public mAdFetcher:Lcom/octopus/ad/internal/c;

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Lcom/octopus/ad/SplashAdListener;

.field private r:Lcom/octopus/ad/InterstitialAdListener;

.field public rightPadding:I

.field private s:Lcom/octopus/ad/BannerAdListener;

.field public serverResponse:Lcom/octopus/ad/internal/network/ServerResponse;

.field private t:Lcom/octopus/ad/RewardVideoAdListener;

.field public topPadding:I

.field private u:Lcom/octopus/ad/AppEventListener;

.field private v:Lcom/octopus/ad/internal/view/AdViewImpl$c;

.field private final w:Landroid/os/Handler;

.field private x:Lcom/octopus/ad/internal/view/AdViewImpl$b;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/octopus/ad/internal/view/AdViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/octopus/ad/internal/view/AdViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->m:Landroid/view/View;

    const-string v0, ""

    iput-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->p:Ljava/lang/String;

    new-instance v0, Lcom/octopus/ad/internal/view/AdViewImpl$a;

    invoke-direct {v0}, Lcom/octopus/ad/internal/view/AdViewImpl$a;-><init>()V

    iput-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->b:Lcom/octopus/ad/internal/view/AdViewImpl$a;

    new-instance v0, Lcom/octopus/ad/internal/view/AdViewImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/octopus/ad/internal/view/AdViewImpl$1;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->w:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->d:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->e:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->f:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->g:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->y:Z

    iput-boolean v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->z:Z

    iput-object p3, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    iput-object p3, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->i:Lcom/octopus/ad/internal/network/a$a;

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->A:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->j:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->k:Z

    iput-boolean v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ab:Z

    iput v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ac:I

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->af:Z

    new-instance p3, Lcom/octopus/ad/internal/view/AdViewImpl$19;

    invoke-direct {p3, p0}, Lcom/octopus/ad/internal/view/AdViewImpl$19;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;)V

    iput-object p3, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ag:Lcom/octopus/ad/internal/view/AdViewImpl$d;

    iput v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->l:I

    invoke-virtual {p0, p1, p2}, Lcom/octopus/ad/internal/view/AdViewImpl;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->a:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->m:Landroid/view/View;

    const-string v2, ""

    iput-object v2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->p:Ljava/lang/String;

    new-instance v2, Lcom/octopus/ad/internal/view/AdViewImpl$a;

    invoke-direct {v2}, Lcom/octopus/ad/internal/view/AdViewImpl$a;-><init>()V

    iput-object v2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->b:Lcom/octopus/ad/internal/view/AdViewImpl$a;

    new-instance v2, Lcom/octopus/ad/internal/view/AdViewImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/octopus/ad/internal/view/AdViewImpl$1;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->w:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->d:Z

    iput-boolean v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->e:Z

    iput-boolean v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->f:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->g:Z

    iput-boolean v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->y:Z

    iput-boolean v2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->z:Z

    iput-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    iput-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->i:Lcom/octopus/ad/internal/network/a$a;

    iput-boolean v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->A:Z

    iput-boolean v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->j:Z

    iput-boolean v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->k:Z

    iput-boolean v2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ab:Z

    iput v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ac:I

    iput-boolean v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->af:Z

    new-instance v3, Lcom/octopus/ad/internal/view/AdViewImpl$19;

    invoke-direct {v3, p0}, Lcom/octopus/ad/internal/view/AdViewImpl$19;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;)V

    iput-object v3, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ag:Lcom/octopus/ad/internal/view/AdViewImpl$d;

    iput v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->l:I

    iput-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->a:Landroid/view/ViewGroup;

    if-nez p3, :cond_0

    iput-boolean v2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->S:Z

    new-instance p2, Lcom/octopus/ad/widget/SkipView;

    invoke-direct {p2, p1}, Lcom/octopus/ad/widget/SkipView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->m:Landroid/view/View;

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->S:Z

    iput-object p3, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->m:Landroid/view/View;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/view/AdViewImpl;F)F
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->I:F

    return p1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/view/AdViewImpl;I)I
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ac:I

    return p1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/view/AdViewImpl;J)J
    .locals 0

    iput-wide p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->G:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/view/AdViewImpl;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->H:Landroid/view/GestureDetector;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/internal/view/AdWebView;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ae:Lcom/octopus/ad/internal/view/AdWebView;

    return-object p0
.end method

.method private a(II)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->d:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->y:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    return-void
.end method

.method private a(Lcom/octopus/ad/b/c;I)V
    .locals 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->V:Z

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ae:Lcom/octopus/ad/internal/view/AdWebView;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    add-long/2addr v5, v7

    iget v8, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ac:I

    move-object v2, p1

    move v7, p2

    invoke-virtual/range {v1 .. v8}, Lcom/octopus/ad/internal/view/AdWebView;->handleClickView(Lcom/octopus/ad/b/c;JJII)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/view/AdViewImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ab:Z

    return p1
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/view/AdViewImpl;F)F
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->J:F

    return p1
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/view/AdViewImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->U:Z

    return p0
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/view/AdViewImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->U:Z

    return p1
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/view/AdViewImpl;F)F
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->K:F

    return p1
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/view/AdViewImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->V:Z

    return p0
.end method

.method public static synthetic d(Lcom/octopus/ad/internal/view/AdViewImpl;F)F
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->L:F

    return p1
.end method

.method public static synthetic d(Lcom/octopus/ad/internal/view/AdViewImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->W:Z

    return p0
.end method

.method public static synthetic e(Lcom/octopus/ad/internal/view/AdViewImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->g()V

    return-void
.end method

.method public static synthetic f(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->F:Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method

.method public static synthetic g(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->B:Landroidx/appcompat/widget/AppCompatTextView;

    return-object p0
.end method

.method private g()V
    .locals 9

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ae:Lcom/octopus/ad/internal/view/AdWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->serverResponse:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->isAoClickCallBack(Lcom/octopus/ad/internal/network/ServerResponse;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->W:Z

    iput-boolean v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ab:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->W:Z

    const/16 v0, 0x9

    :goto_0
    iput v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ac:I

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ae:Lcom/octopus/ad/internal/view/AdWebView;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    add-long/2addr v5, v7

    iget v7, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ac:I

    invoke-virtual/range {v1 .. v7}, Lcom/octopus/ad/internal/view/AdWebView;->handleClickView(Landroid/view/MotionEvent;JJI)V

    :cond_1
    return-void
.end method

.method public static getMRAIDFullscreenContainer()Landroid/widget/FrameLayout;
    .locals 1

    sget-object v0, Lcom/octopus/ad/internal/view/AdViewImpl;->ah:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public static getMRAIDFullscreenImplementation()Lcom/octopus/ad/internal/view/e;
    .locals 1

    sget-object v0, Lcom/octopus/ad/internal/view/AdViewImpl;->ai:Lcom/octopus/ad/internal/view/e;

    return-object v0
.end method

.method public static getMRAIDFullscreenListener()Lcom/octopus/ad/internal/view/AdWebView$b;
    .locals 1

    sget-object v0, Lcom/octopus/ad/internal/view/AdViewImpl;->aj:Lcom/octopus/ad/internal/view/AdWebView$b;

    return-object v0
.end method

.method public static synthetic h(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->m:Landroid/view/View;

    return-object p0
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ae:Lcom/octopus/ad/internal/view/AdWebView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->serverResponse:Lcom/octopus/ad/internal/network/ServerResponse;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->aa:Z

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/network/ServerResponse;->setIsLiftUp(Z)V

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->i()V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->serverResponse:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/ServerResponse;->getAcRatio()I

    move-result v0

    invoke-static {v0}, Lcom/octopus/ad/utils/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/octopus/ad/internal/view/AdViewImpl$21;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/view/AdViewImpl$21;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;)V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ae:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v1, v0, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    iget-object v2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/octopus/ad/internal/network/ServerResponse;->handleView(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i(Lcom/octopus/ad/internal/view/AdViewImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->S:Z

    return p0
.end method

.method public static isAoClickCallBack(Lcom/octopus/ad/internal/network/ServerResponse;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/octopus/ad/internal/network/ServerResponse;->getStrategy()Lcom/octopus/ad/b/b$t;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/octopus/ad/b/b$t;->b()Lcom/octopus/ad/b/b$g;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/octopus/ad/b/b$g;->d()I

    move-result p0

    invoke-static {p0}, Lcom/octopus/ad/utils/g;->a(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCallBackClick(Lcom/octopus/ad/internal/network/ServerResponse;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/octopus/ad/internal/network/ServerResponse;->getStrategy()Lcom/octopus/ad/b/b$t;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/octopus/ad/b/b$t;->c()Lcom/octopus/ad/b/b$h;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/octopus/ad/b/b$h;->a()I

    move-result p0

    invoke-static {p0}, Lcom/octopus/ad/utils/g;->a(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static synthetic j(Lcom/octopus/ad/internal/view/AdViewImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->T:Z

    return p0
.end method

.method public static synthetic k(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/a/a;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->E:Lcom/octopus/ad/a/a;

    return-object p0
.end method

.method public static synthetic l(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->C:Landroidx/appcompat/widget/AppCompatTextView;

    return-object p0
.end method

.method public static synthetic m(Lcom/octopus/ad/internal/view/AdViewImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->aa:Z

    return p0
.end method

.method public static synthetic n(Lcom/octopus/ad/internal/view/AdViewImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->h()V

    return-void
.end method

.method public static synthetic o(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/InterstitialAdListener;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->r:Lcom/octopus/ad/InterstitialAdListener;

    return-object p0
.end method

.method public static synthetic p(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/RewardVideoAdListener;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->t:Lcom/octopus/ad/RewardVideoAdListener;

    return-object p0
.end method

.method public static synthetic q(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/internal/view/AdViewImpl$d;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ag:Lcom/octopus/ad/internal/view/AdViewImpl$d;

    return-object p0
.end method

.method public static synthetic r(Lcom/octopus/ad/internal/view/AdViewImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ab:Z

    return p0
.end method

.method public static synthetic s(Lcom/octopus/ad/internal/view/AdViewImpl;)I
    .locals 0

    iget p0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ac:I

    return p0
.end method

.method public static setAutoClickStrategy(Landroid/content/Context;Lcom/octopus/ad/internal/network/ServerResponse;Lcom/octopus/ad/internal/view/AdViewImpl$d;)V
    .locals 5

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->getStrategy()Lcom/octopus/ad/b/b$t;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$t;->b()Lcom/octopus/ad/b/b$g;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$g;->c()I

    move-result v1

    invoke-static {v1}, Lcom/octopus/ad/utils/g;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/octopus/ad/internal/utilities/SPUtils;->refreshFrequencyDate(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$g;->a()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frequency"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->getTagId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/octopus/ad/internal/utilities/SPUtils;->getFrequency(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    aput p0, v1, v3

    :cond_1
    aget p0, v1, v3

    if-lez p0, :cond_2

    new-instance p0, Lcom/octopus/ad/internal/view/AdViewImpl$18;

    invoke-direct {p0, p2, v1}, Lcom/octopus/ad/internal/view/AdViewImpl$18;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl$d;[I)V

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$g;->b()I

    move-result p1

    int-to-long p1, p1

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    invoke-static {p0, p1, p2}, Lcom/octopus/ad/utils/c;->a(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method private setDefaultSkip(Landroid/content/Context;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenWidth(Landroid/content/Context;)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fc3333333333333L    # 0.15

    mul-double v0, v0, v2

    double-to-int v0, v0

    int-to-double v1, v0

    const-wide v3, 0x3fdccccccccccccdL    # 0.45

    mul-double v1, v1, v3

    double-to-int v1, v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x35

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->m:Landroid/view/View;

    invoke-virtual {p0, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->m:Landroid/view/View;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/octopus/ad/widget/SkipView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/octopus/ad/widget/SkipView;->setData(II)V

    :cond_0
    return-void
.end method

.method public static setDpUpStrategy(Landroid/content/Context;Lcom/octopus/ad/internal/network/ServerResponse;Lcom/octopus/ad/internal/view/AdViewImpl$d;)V
    .locals 8

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->getStrategy()Lcom/octopus/ad/b/b$t;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/octopus/ad/b/b$t;->d()Lcom/octopus/ad/b/b$k;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/octopus/ad/b/b$k;->d()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/octopus/ad/b/b$k;->c()I

    move-result v1

    invoke-static {v1}, Lcom/octopus/ad/utils/g;->a(I)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/octopus/ad/b/b$k;->e()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    aget-object v4, v5, v3

    aget-object v5, v5, v2

    invoke-static {v4, v5}, Lcom/octopus/ad/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_0
    if-nez v4, :cond_7

    return-void

    :cond_7
    invoke-static {p0}, Lcom/octopus/ad/internal/utilities/SPUtils;->refreshFrequencyDate(Landroid/content/Context;)V

    new-array v1, v2, [I

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$k;->a()I

    move-result v2

    aput v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "liftUpfrequency"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->getTagId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/octopus/ad/internal/utilities/SPUtils;->getFrequency(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_8

    aput p0, v1, v3

    :cond_8
    aget p0, v1, v3

    if-lez p0, :cond_9

    new-instance p0, Lcom/octopus/ad/internal/view/AdViewImpl$20;

    invoke-direct {p0, p2, v1}, Lcom/octopus/ad/internal/view/AdViewImpl$20;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl$d;[I)V

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$k;->b()I

    move-result p1

    int-to-long p1, p1

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    invoke-static {p0, p1, p2}, Lcom/octopus/ad/utils/c;->a(Ljava/lang/Runnable;J)V

    :cond_9
    return-void
.end method

.method public static setMRAIDFullscreenContainer(Landroid/widget/FrameLayout;)V
    .locals 0

    sput-object p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ah:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static setMRAIDFullscreenImplementation(Lcom/octopus/ad/internal/view/e;)V
    .locals 0

    sput-object p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ai:Lcom/octopus/ad/internal/view/e;

    return-void
.end method

.method public static setMRAIDFullscreenListener(Lcom/octopus/ad/internal/view/AdWebView$b;)V
    .locals 0

    sput-object p0, Lcom/octopus/ad/internal/view/AdViewImpl;->aj:Lcom/octopus/ad/internal/view/AdWebView$b;

    return-void
.end method

.method public static synthetic t(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/BannerAdListener;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->s:Lcom/octopus/ad/BannerAdListener;

    return-object p0
.end method

.method public static synthetic u(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ad:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic v(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/SplashAdListener;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->q:Lcom/octopus/ad/SplashAdListener;

    return-object p0
.end method

.method public static synthetic w(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/AppEventListener;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->u:Lcom/octopus/ad/AppEventListener;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/content/MutableContextWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/content/MutableContextWrapper;

    invoke-virtual {p1}, Landroid/content/MutableContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public a(IIIILcom/octopus/ad/internal/view/e$a;ZLcom/octopus/ad/internal/view/e;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/octopus/ad/internal/view/AdViewImpl;->a(II)V

    iget-object p3, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p3}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    iget p3, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->l:I

    if-gtz p3, :cond_0

    iget-object p3, p7, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 p4, 0x42480000    # 50.0f

    mul-float p3, p3, p4

    float-to-int p3, p3

    iput p3, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->l:I

    :cond_0
    new-instance p3, Lcom/octopus/ad/internal/view/AdViewImpl$13;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p0, p4, p7}, Lcom/octopus/ad/internal/view/AdViewImpl$13;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;Landroid/content/Context;Lcom/octopus/ad/internal/view/e;)V

    iput-object p3, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->C:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    iget p4, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->l:I

    const/16 p6, 0x11

    invoke-direct {p3, p4, p4, p6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/4 p4, 0x2

    div-int/2addr p2, p4

    iget p6, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->l:I

    div-int/lit8 v0, p6, 0x2

    sub-int/2addr p2, v0

    div-int/2addr p1, p4

    div-int/2addr p6, p4

    sub-int/2addr p1, p6

    sget-object p6, Lcom/octopus/ad/internal/view/AdViewImpl$16;->a:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    aget p5, p6, p5

    const/4 p6, 0x1

    if-eq p5, p6, :cond_6

    if-eq p5, p4, :cond_5

    const/4 p4, 0x3

    if-eq p5, p4, :cond_4

    const/4 p4, 0x5

    if-eq p5, p4, :cond_3

    const/4 p4, 0x6

    if-eq p5, p4, :cond_2

    const/4 p4, 0x7

    if-eq p5, p4, :cond_1

    goto :goto_2

    :cond_1
    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_2
    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_3
    :goto_0
    iput p2, p3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    :cond_4
    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_5
    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_6
    :goto_1
    iput p2, p3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_2
    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->C:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->C:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance p2, Lcom/octopus/ad/internal/view/AdViewImpl$14;

    invoke-direct {p2, p0, p7}, Lcom/octopus/ad/internal/view/AdViewImpl$14;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;Lcom/octopus/ad/internal/view/e;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p7, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p7, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public a(IILcom/octopus/ad/internal/view/e;)V
    .locals 4

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->C:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p3, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    iget-boolean v2, v1, Lcom/octopus/ad/internal/view/AdWebView;->a:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    invoke-virtual {p3}, Lcom/octopus/ad/internal/view/e;->d()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/octopus/ad/internal/view/e;->d()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p3, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_0
    invoke-virtual {p3}, Lcom/octopus/ad/internal/view/e;->c()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Lcom/octopus/ad/internal/view/e;->c()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_1
    invoke-interface {p0}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/l;

    move-result-object v1

    sget-object v2, Lcom/octopus/ad/internal/l;->b:Lcom/octopus/ad/internal/l;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p3, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/content/MutableContextWrapper;

    if-eqz v1, :cond_2

    iget-object p3, p3, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Landroid/content/MutableContextWrapper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    :cond_2
    sput-object v0, Lcom/octopus/ad/internal/view/AdViewImpl;->ah:Landroid/widget/FrameLayout;

    sput-object v0, Lcom/octopus/ad/internal/view/AdViewImpl;->ai:Lcom/octopus/ad/internal/view/e;

    sput-object v0, Lcom/octopus/ad/internal/view/AdViewImpl;->aj:Lcom/octopus/ad/internal/view/AdWebView$b;

    invoke-direct {p0, p1, p2}, Lcom/octopus/ad/internal/view/AdViewImpl;->a(II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->f:Z

    iput-boolean v3, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->e:Z

    return-void
.end method

.method public a(IIZLcom/octopus/ad/internal/view/e;Lcom/octopus/ad/internal/view/AdWebView$b;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/octopus/ad/internal/view/AdViewImpl;->a(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createCloseButton(Landroid/content/Context;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object p2, p4, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    iget-boolean p2, p2, Lcom/octopus/ad/internal/view/AdWebView;->a:Z

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_0
    iget-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->C:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance p2, Lcom/octopus/ad/internal/view/AdViewImpl$11;

    invoke-direct {p2, p0, p4}, Lcom/octopus/ad/internal/view/AdViewImpl$11;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;Lcom/octopus/ad/internal/view/e;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p4, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    iget-boolean p1, p1, Lcom/octopus/ad/internal/view/AdWebView;->a:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, p4, p3, p5}, Lcom/octopus/ad/internal/view/AdViewImpl;->a(Lcom/octopus/ad/internal/view/e;ZLcom/octopus/ad/internal/view/AdWebView$b;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->e:Z

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v1, Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->w:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/octopus/ad/internal/view/AdViewImpl$b;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->x:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    new-instance v1, Lcom/octopus/ad/internal/d;

    invoke-static {}, Lcom/octopus/ad/internal/utilities/StringUtil;->createRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/octopus/ad/internal/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    new-instance v1, Lcom/octopus/ad/internal/view/AdViewImpl$12;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/view/AdViewImpl$12;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;)V

    invoke-static {v1}, Lcom/octopus/ad/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->setErrorContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    new-instance v0, Lcom/octopus/ad/internal/c;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/c;-><init>(Lcom/octopus/ad/internal/a;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->mAdFetcher:Lcom/octopus/ad/internal/c;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/octopus/ad/internal/view/AdViewImpl;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :cond_0
    return-void
.end method

.method public abstract a(Lcom/octopus/ad/internal/view/b;)V
.end method

.method public a(Lcom/octopus/ad/internal/view/e;ZLcom/octopus/ad/internal/view/AdWebView$b;)V
    .locals 2

    iget-object p2, p1, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/octopus/ad/internal/view/e;->a(Landroid/view/ViewGroup;)V

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v0, p1, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    iget-object v0, p1, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->C:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createCloseButton(Landroid/content/Context;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->C:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/octopus/ad/internal/view/AdViewImpl$10;

    invoke-direct {v1, p0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl$10;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;Lcom/octopus/ad/internal/view/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    sput-object p2, Lcom/octopus/ad/internal/view/AdViewImpl;->ah:Landroid/widget/FrameLayout;

    sput-object p1, Lcom/octopus/ad/internal/view/AdViewImpl;->ai:Lcom/octopus/ad/internal/view/e;

    sput-object p3, Lcom/octopus/ad/internal/view/AdViewImpl;->aj:Lcom/octopus/ad/internal/view/AdWebView$b;

    invoke-static {}, Lcom/octopus/ad/AdActivity;->a()Ljava/lang/Class;

    move-result-object p1

    :try_start_0
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "ACTIVITY_TYPE"

    const-string v0, "MRAID"

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p2, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget p3, Lcom/octopus/ad/R$string;->adactivity_missing:I

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    sput-object p1, Lcom/octopus/ad/internal/view/AdViewImpl;->ah:Landroid/widget/FrameLayout;

    sput-object p1, Lcom/octopus/ad/internal/view/AdViewImpl;->ai:Lcom/octopus/ad/internal/view/e;

    sput-object p1, Lcom/octopus/ad/internal/view/AdViewImpl;->aj:Lcom/octopus/ad/internal/view/AdWebView$b;

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lcom/octopus/ad/b/c;

    invoke-direct {v0}, Lcom/octopus/ad/b/c;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/octopus/ad/b/c;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0, p2}, Lcom/octopus/ad/b/c;->b(Ljava/lang/String;)V

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0, p3}, Lcom/octopus/ad/b/c;->c(Ljava/lang/String;)V

    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0, p4}, Lcom/octopus/ad/b/c;->d(Ljava/lang/String;)V

    :cond_3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0, p5}, Lcom/octopus/ad/b/c;->e(Ljava/lang/String;)V

    :cond_4
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0, p6}, Lcom/octopus/ad/b/c;->f(Ljava/lang/String;)V

    :cond_5
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0, p7}, Lcom/octopus/ad/b/c;->g(Ljava/lang/String;)V

    :cond_6
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v0, p8}, Lcom/octopus/ad/b/c;->h(Ljava/lang/String;)V

    :cond_7
    invoke-direct {p0, v0, p9}, Lcom/octopus/ad/internal/view/AdViewImpl;->a(Lcom/octopus/ad/b/c;I)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->e:Z

    return v0
.end method

.method public abstract activityOnDestroy()V
.end method

.method public abstract activityOnPause()V
.end method

.method public abstract activityOnResume()V
.end method

.method public addBannerCloseBtn()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->D:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createImageCloseButton(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->D:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->D:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->D:Landroid/widget/ImageView;

    new-instance v1, Lcom/octopus/ad/internal/view/AdViewImpl$3;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/view/AdViewImpl$3;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public addCloseButton(IIILandroid/view/View;Z)V
    .locals 10

    iput-object p4, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ad:Landroid/view/View;

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->E:Lcom/octopus/ad/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/a/a;->d()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->leftPadding:I

    iget v2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->topPadding:I

    iget v3, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->rightPadding:I

    iget v4, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->bottomPadding:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createCloseButton(Landroid/content/Context;IIII)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->C:Landroidx/appcompat/widget/AppCompatTextView;

    const-wide/16 v0, 0x32

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq p3, v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v6, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->leftPadding:I

    iget v7, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->topPadding:I

    iget v8, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->rightPadding:I

    iget v9, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->bottomPadding:I

    move v5, p3

    invoke-static/range {v4 .. v9}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createCountDown(Landroid/content/Context;IIIII)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->B:Landroidx/appcompat/widget/AppCompatTextView;

    if-lez p2, :cond_1

    sub-int p1, p3, p2

    iget-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    move v2, p1

    goto :goto_0

    :cond_1
    if-ne p2, v3, :cond_2

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->C:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    new-instance p1, Lcom/octopus/ad/a/a;

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long p2, p3

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/octopus/ad/a/a;-><init>(JJ)V

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->E:Lcom/octopus/ad/a/a;

    new-instance p2, Lcom/octopus/ad/internal/view/AdViewImpl$6;

    invoke-direct {p2, p0, v2, p5, p4}, Lcom/octopus/ad/internal/view/AdViewImpl$6;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;IZLandroid/view/View;)V

    invoke-virtual {p1, p2}, Lcom/octopus/ad/a/a;->a(Lcom/octopus/ad/a/b;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->E:Lcom/octopus/ad/a/a;

    invoke-virtual {p1}, Lcom/octopus/ad/a/a;->a()V

    instance-of p1, p4, Lcom/octopus/ad/internal/video/AdVideoView;

    if-eqz p1, :cond_5

    :goto_1
    move-object p1, p4

    check-cast p1, Lcom/octopus/ad/internal/video/AdVideoView;

    iget-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->E:Lcom/octopus/ad/a/a;

    invoke-virtual {p1, p2}, Lcom/octopus/ad/internal/video/AdVideoView;->setCountDownTimer(Lcom/octopus/ad/a/a;)V

    goto :goto_2

    :cond_3
    if-eq p2, v3, :cond_8

    if-eq p1, v3, :cond_8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->leftPadding:I

    iget v6, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->topPadding:I

    iget v7, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->rightPadding:I

    iget v8, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->bottomPadding:I

    move v4, p1

    invoke-static/range {v3 .. v8}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createCountDown(Landroid/content/Context;IIIII)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p3

    iput-object p3, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->B:Landroidx/appcompat/widget/AppCompatTextView;

    if-lez p2, :cond_4

    iget-object p3, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    sub-int v2, p1, p2

    :cond_4
    new-instance p2, Lcom/octopus/ad/a/a;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v3, p1

    invoke-direct {p2, v3, v4, v0, v1}, Lcom/octopus/ad/a/a;-><init>(JJ)V

    iput-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->E:Lcom/octopus/ad/a/a;

    new-instance p1, Lcom/octopus/ad/internal/view/AdViewImpl$7;

    invoke-direct {p1, p0, v2, p4}, Lcom/octopus/ad/internal/view/AdViewImpl$7;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;ILandroid/view/View;)V

    invoke-virtual {p2, p1}, Lcom/octopus/ad/a/a;->a(Lcom/octopus/ad/a/b;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->E:Lcom/octopus/ad/a/a;

    invoke-virtual {p1}, Lcom/octopus/ad/a/a;->a()V

    instance-of p1, p4, Lcom/octopus/ad/internal/video/AdVideoView;

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->C:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance p2, Lcom/octopus/ad/internal/view/AdViewImpl$9;

    invoke-direct {p2, p0, p5, p4}, Lcom/octopus/ad/internal/view/AdViewImpl$9;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;ZLandroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->e()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_3
    instance-of p2, p1, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_7

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_7
    return-void

    :cond_8
    if-eq p1, v3, :cond_c

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->leftPadding:I

    iget v5, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->topPadding:I

    iget v6, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->rightPadding:I

    iget v7, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->bottomPadding:I

    move v3, p1

    invoke-static/range {v2 .. v7}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createCountDown(Landroid/content/Context;IIIII)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p2

    iput-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->B:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance p2, Lcom/octopus/ad/a/a;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-direct {p2, v2, v3, v0, v1}, Lcom/octopus/ad/a/a;-><init>(JJ)V

    iput-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->E:Lcom/octopus/ad/a/a;

    new-instance p1, Lcom/octopus/ad/internal/view/AdViewImpl$8;

    invoke-direct {p1, p0}, Lcom/octopus/ad/internal/view/AdViewImpl$8;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;)V

    invoke-virtual {p2, p1}, Lcom/octopus/ad/a/a;->a(Lcom/octopus/ad/a/b;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->E:Lcom/octopus/ad/a/a;

    invoke-virtual {p1}, Lcom/octopus/ad/a/a;->a()V

    instance-of p1, p4, Lcom/octopus/ad/internal/video/AdVideoView;

    if-eqz p1, :cond_9

    move-object p1, p4

    check-cast p1, Lcom/octopus/ad/internal/video/AdVideoView;

    iget-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->E:Lcom/octopus/ad/a/a;

    invoke-virtual {p1, p2}, Lcom/octopus/ad/internal/video/AdVideoView;->setCountDownTimer(Lcom/octopus/ad/a/a;)V

    :cond_9
    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->e()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_4
    instance-of p2, p1, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_b

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_b
    return-void

    :cond_c
    if-eqz p5, :cond_d

    invoke-virtual {p0, p4}, Lcom/octopus/ad/internal/view/AdViewImpl;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_d

    invoke-static {}, Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;->getInstance()Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;->showLoadingDialog(Landroid/app/Activity;)V

    :cond_d
    return-void
.end method

.method public addInterstitialCloseButton(IILandroid/view/View;Z)V
    .locals 5

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    const-wide/16 v0, 0x32

    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createInterstitialCountDown(Landroid/content/Context;I)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v2

    iput-object v2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->B:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v2, 0x0

    if-lez p1, :cond_0

    sub-int v2, p2, p1

    :cond_0
    new-instance p1, Lcom/octopus/ad/a/a;

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v3, p2

    invoke-direct {p1, v3, v4, v0, v1}, Lcom/octopus/ad/a/a;-><init>(JJ)V

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->E:Lcom/octopus/ad/a/a;

    new-instance p2, Lcom/octopus/ad/internal/view/AdViewImpl$23;

    invoke-direct {p2, p0, v2, p4, p3}, Lcom/octopus/ad/internal/view/AdViewImpl$23;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;IZLandroid/view/View;)V

    invoke-virtual {p1, p2}, Lcom/octopus/ad/a/a;->a(Lcom/octopus/ad/a/b;)V

    goto :goto_0

    :cond_1
    if-eq p1, v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createInterstitialCountDown(Landroid/content/Context;I)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p2

    iput-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->B:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance p2, Lcom/octopus/ad/a/a;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-direct {p2, v2, v3, v0, v1}, Lcom/octopus/ad/a/a;-><init>(JJ)V

    iput-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->E:Lcom/octopus/ad/a/a;

    new-instance p1, Lcom/octopus/ad/internal/view/AdViewImpl$2;

    invoke-direct {p1, p0, p4, p3}, Lcom/octopus/ad/internal/view/AdViewImpl$2;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;ZLandroid/view/View;)V

    invoke-virtual {p2, p1}, Lcom/octopus/ad/a/a;->a(Lcom/octopus/ad/a/b;)V

    :goto_0
    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->E:Lcom/octopus/ad/a/a;

    invoke-virtual {p1}, Lcom/octopus/ad/a/a;->a()V

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_1
    instance-of p2, p1, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_3

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public addMuteButton(Lcom/octopus/ad/internal/video/AdVideoView;Z)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->F:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createMuteButton(Landroid/content/Context;Z)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p2

    iput-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->F:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lcom/octopus/ad/internal/view/AdViewImpl$22;

    invoke-direct {v0, p0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl$22;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;Lcom/octopus/ad/internal/video/AdVideoView;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->e()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    instance-of p2, p1, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->F:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public addSkipView(ILandroid/view/View;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->E:Lcom/octopus/ad/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/a/a;->d()V

    :cond_0
    if-gtz p1, :cond_1

    const-wide/16 v0, 0x5

    goto :goto_0

    :cond_1
    int-to-long v0, p1

    :goto_0
    new-instance p1, Lcom/octopus/ad/a/a;

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    const-wide/16 v2, 0x32

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/octopus/ad/a/a;-><init>(JJ)V

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->E:Lcom/octopus/ad/a/a;

    new-instance v0, Lcom/octopus/ad/internal/view/AdViewImpl$4;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/view/AdViewImpl$4;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;)V

    invoke-virtual {p1, v0}, Lcom/octopus/ad/a/a;->a(Lcom/octopus/ad/a/b;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->E:Lcom/octopus/ad/a/a;

    invoke-virtual {p1}, Lcom/octopus/ad/a/a;->a()V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->serverResponse:Lcom/octopus/ad/internal/network/ServerResponse;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->getStrategy()Lcom/octopus/ad/b/b$t;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$t;->a()Lcom/octopus/ad/b/b$n;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$n;->a()I

    move-result p1

    invoke-static {p1}, Lcom/octopus/ad/utils/g;->a(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->T:Z

    :cond_2
    new-instance p1, Lcom/octopus/ad/internal/view/AdViewImpl$5;

    invoke-direct {p1, p0}, Lcom/octopus/ad/internal/view/AdViewImpl$5;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    return-void
.end method

.method public abstract b(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    return-void
.end method

.method public clearAdRequest()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->i:Lcom/octopus/ad/internal/network/a$a;

    return-void
.end method

.method public createAdLogo(Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->M:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->N:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->getAdurl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createAdImageView(Landroid/content/Context;Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->M:Landroid/widget/FrameLayout;

    :cond_0
    invoke-virtual {p2}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->getAdurl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/content/MutableContextWrapper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createLogoImageView(Landroid/content/Context;Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->N:Landroid/widget/FrameLayout;

    :cond_1
    return-void
.end method

.method public abstract d()Z
.end method

.method public destroy()V
    .locals 2

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    const-string v1, "called destroy() on AdView"

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->c:Lcom/octopus/ad/internal/view/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/octopus/ad/internal/view/b;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->c:Lcom/octopus/ad/internal/view/b;

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->H:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public abstract e()Z
.end method

.method public abstract f()V
.end method

.method public finalize()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->mAdFetcher:Lcom/octopus/ad/internal/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/c;->a()V

    :cond_0
    return-void
.end method

.method public getActivity(Landroid/view/View;)Landroid/app/Activity;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->a(Landroid/view/View;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    return-object p1
.end method

.method public getAdDispatcher()Lcom/octopus/ad/internal/b;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->x:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    return-object v0
.end method

.method public getAdId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->R:Ljava/lang/String;

    return-object v0
.end method

.method public getAdParameters()Lcom/octopus/ad/internal/d;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    return-object v0
.end method

.method public getAdRequest()Lcom/octopus/ad/internal/network/a$a;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->i:Lcom/octopus/ad/internal/network/a$a;

    return-object v0
.end method

.method public getAdSize()Lcom/octopus/ad/a;
    .locals 3

    new-instance v0, Lcom/octopus/ad/a;

    iget v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->n:I

    iget v2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->o:I

    invoke-direct {v0, v1, v2}, Lcom/octopus/ad/a;-><init>(II)V

    return-object v0
.end method

.method public getAdSlotId()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->publicFunctionsLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->get_placement_id:I

    iget-object v2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppEventListener()Lcom/octopus/ad/AppEventListener;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->u:Lcom/octopus/ad/AppEventListener;

    return-object v0
.end method

.method public getBrowserStyle()Lcom/octopus/ad/internal/view/AdViewImpl$c;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->v:Lcom/octopus/ad/internal/view/AdViewImpl$c;

    return-object v0
.end method

.method public getContainerHeight()I
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->i()I

    move-result v0

    return v0
.end method

.method public getContainerWidth()I
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->h()I

    move-result v0

    return v0
.end method

.method public getCreativeHeight()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->o:I

    return v0
.end method

.method public getCreativeWidth()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->n:I

    return v0
.end method

.method public getLandingPageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadsInBackground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->g:Z

    return v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMyHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->w:Landroid/os/Handler;

    return-object v0
.end method

.method public getOpensNativeBrowser()Z
    .locals 3

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->publicFunctionsLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->get_opens_native_browser:I

    iget-object v2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->j()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->j()Z

    move-result v0

    return v0
.end method

.method public getPrice()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->O:I

    return v0
.end method

.method public getRewaredVideoAdListener()Lcom/octopus/ad/RewardVideoAdListener;
    .locals 2

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->publicFunctionsLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->get_reward_video_ad_listener:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->t:Lcom/octopus/ad/RewardVideoAdListener;

    return-object v0
.end method

.method public getShowLoadingIndicator()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->z:Z

    return v0
.end method

.method public getSplashParent()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->P:Ljava/lang/String;

    return-object v0
.end method

.method public isLoadToShow(Lcom/octopus/ad/internal/view/AdWebView;)V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->serverResponse:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/ServerResponse;->getFilter()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ae:Lcom/octopus/ad/internal/view/AdWebView;

    iput-boolean v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->af:Z

    const-string p1, "OctopusAd"

    const-string v0, "enter Octopus ad load"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->q:Lcom/octopus/ad/SplashAdListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/octopus/ad/SplashAdListener;->onAdLoaded()V

    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->r:Lcom/octopus/ad/InterstitialAdListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/octopus/ad/InterstitialAdListener;->onAdLoaded()V

    :cond_2
    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->s:Lcom/octopus/ad/BannerAdListener;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/octopus/ad/BannerAdListener;->onAdLoaded()V

    invoke-interface {p0}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/l;

    move-result-object p1

    sget-object v0, Lcom/octopus/ad/internal/l;->b:Lcom/octopus/ad/internal/l;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/octopus/ad/BannerAdView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/octopus/ad/BannerAdView;-><init>(Landroid/content/Context;Lcom/octopus/ad/internal/view/AdViewImpl;)V

    invoke-virtual {p1}, Lcom/octopus/ad/BannerAdView;->checkShow()V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->s:Lcom/octopus/ad/BannerAdListener;

    invoke-interface {v0, p1}, Lcom/octopus/ad/BannerAdListener;->onRenderSuccess(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public isLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->af:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->A:Z

    return v0
.end method

.method public isReadyToStart()Z
    .locals 3

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v2, Lcom/octopus/ad/R$string;->already_expanded:I

    invoke-static {v2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->i:Lcom/octopus/ad/internal/network/a$a;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isRewardVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->j:Z

    return v0
.end method

.method public loadAd(Lcom/octopus/ad/internal/network/a$a;)Z
    .locals 2

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->i:Lcom/octopus/ad/internal/network/a$a;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->isReadyToStart()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->q:Lcom/octopus/ad/SplashAdListener;

    const v1, 0x13880

    if-eqz p1, :cond_0

    invoke-interface {p1, v1}, Lcom/octopus/ad/SplashAdListener;->onAdFailedToLoad(I)V

    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->r:Lcom/octopus/ad/InterstitialAdListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, Lcom/octopus/ad/InterstitialAdListener;->onAdFailedToLoad(I)V

    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->s:Lcom/octopus/ad/BannerAdListener;

    if-eqz p1, :cond_2

    invoke-interface {p1, v1}, Lcom/octopus/ad/BannerAdListener;->onAdFailedToLoad(I)V

    :cond_2
    return v0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowVisibility()I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->mAdFetcher:Lcom/octopus/ad/internal/c;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/octopus/ad/internal/c;->a()V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->mAdFetcher:Lcom/octopus/ad/internal/c;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/c;->c()V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->mAdFetcher:Lcom/octopus/ad/internal/c;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/c;->b()V

    iput-boolean v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->A:Z

    iput v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->loadCount:I

    iput v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->clickCount:I

    return v1

    :cond_4
    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->mAdFetcher:Lcom/octopus/ad/internal/c;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/octopus/ad/internal/c;->a()V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->mAdFetcher:Lcom/octopus/ad/internal/c;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/c;->c()V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->mAdFetcher:Lcom/octopus/ad/internal/c;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/c;->b()V

    iput-boolean v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->A:Z

    iput v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->loadCount:I

    iput v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->clickCount:I

    :cond_5
    return v0
.end method

.method public onAdFailedToLoad(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->j:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->q:Lcom/octopus/ad/SplashAdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/octopus/ad/SplashAdListener;->onAdFailedToLoad(I)V

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->r:Lcom/octopus/ad/InterstitialAdListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/octopus/ad/InterstitialAdListener;->onAdFailedToLoad(I)V

    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->s:Lcom/octopus/ad/BannerAdListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/octopus/ad/BannerAdListener;->onAdFailedToLoad(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->t:Lcom/octopus/ad/RewardVideoAdListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/octopus/ad/RewardVideoAdListener;->onRewardVideoAdFailedToLoad(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onBannerAdShow()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ae:Lcom/octopus/ad/internal/view/AdWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->onAdShow()V

    :cond_0
    return-void
.end method

.method public onCreateLifeCycle()V
    .locals 0

    return-void
.end method

.method public onDestroyLifeCycle()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->mAdFetcher:Lcom/octopus/ad/internal/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/c;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->activityOnDestroy()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onPauseLifeCycle()V
    .locals 0

    return-void
.end method

.method public onRestartLifeCycle()V
    .locals 0

    return-void
.end method

.method public onResumeLifeCycle()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->b:Lcom/octopus/ad/internal/view/AdViewImpl$a;

    sget-object v1, Lcom/octopus/ad/internal/view/AdViewImpl$a$a;->d:Lcom/octopus/ad/internal/view/AdViewImpl$a$a;

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/view/AdViewImpl$a;->a(Lcom/octopus/ad/internal/view/AdViewImpl$a$a;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->b:Lcom/octopus/ad/internal/view/AdViewImpl$a;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl$a;->c()Lcom/octopus/ad/internal/view/AdViewImpl$a$a;

    move-result-object v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/b;->b()V

    :cond_0
    return-void
.end method

.method public onStartLifeCycle()V
    .locals 0

    return-void
.end method

.method public onStopLifeCycle()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->b:Lcom/octopus/ad/internal/view/AdViewImpl$a;

    sget-object v1, Lcom/octopus/ad/internal/view/AdViewImpl$a$a;->c:Lcom/octopus/ad/internal/view/AdViewImpl$a$a;

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/view/AdViewImpl$a;->a(Lcom/octopus/ad/internal/view/AdViewImpl$a$a;)V

    return-void
.end method

.method public openAdInNativeBrowser(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->setOpensNativeBrowser(Z)V

    return-void
.end method

.method public pingClick(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/octopus/ad/internal/h;

    invoke-direct {v0, p1}, Lcom/octopus/ad/internal/h;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public pingConvert(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/octopus/ad/internal/h;

    invoke-direct {v0, p1}, Lcom/octopus/ad/internal/h;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public sendLossNotice(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->serverResponse:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {v0, p1, p2, p3}, Lcom/octopus/ad/internal/network/ServerResponse;->reportLoss(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->serverResponse:Lcom/octopus/ad/internal/network/ServerResponse;

    new-instance p3, Lcom/octopus/ad/internal/view/AdViewImpl$15;

    invoke-direct {p3, p0}, Lcom/octopus/ad/internal/view/AdViewImpl$15;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;)V

    invoke-static {p1, p2, p3}, Lcom/octopus/ad/internal/view/AdViewImpl;->setDpUpStrategy(Landroid/content/Context;Lcom/octopus/ad/internal/network/ServerResponse;Lcom/octopus/ad/internal/view/AdViewImpl$d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendWinNotice(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->serverResponse:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/network/ServerResponse;->reportWin(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setAdExtInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->p:Ljava/lang/String;

    return-void
.end method

.method public setAdId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->R:Ljava/lang/String;

    return-void
.end method

.method public setAdSlotId(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->publicFunctionsLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->set_placement_id:I

    invoke-static {v1, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setAdWebView(Lcom/octopus/ad/internal/view/AdWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ae:Lcom/octopus/ad/internal/view/AdWebView;

    return-void
.end method

.method public setAppEventListener(Lcom/octopus/ad/AppEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->u:Lcom/octopus/ad/AppEventListener;

    return-void
.end method

.method public setBannerAdListener(Lcom/octopus/ad/BannerAdListener;)V
    .locals 2

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->publicFunctionsLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->set_banner_ad_listener:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->s:Lcom/octopus/ad/BannerAdListener;

    return-void
.end method

.method public setBrowserStyle(Lcom/octopus/ad/internal/view/AdViewImpl$c;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->v:Lcom/octopus/ad/internal/view/AdViewImpl$c;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setCloseButtonPadding(IIII)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->leftPadding:I

    iput p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->topPadding:I

    iput p3, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->rightPadding:I

    iput p4, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->bottomPadding:I

    return-void
.end method

.method public setCreativeHeight(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->o:I

    return-void
.end method

.method public setCreativeWidth(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->n:I

    return-void
.end method

.method public setInterstitialAdListener(Lcom/octopus/ad/InterstitialAdListener;)V
    .locals 2

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->publicFunctionsLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->set_interstitial_ad_listener:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->r:Lcom/octopus/ad/InterstitialAdListener;

    return-void
.end method

.method public setLandingPageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->Q:Ljava/lang/String;

    return-void
.end method

.method public setLoadsInBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->g:Z

    return-void
.end method

.method public setOpensNativeBrowser(Z)V
    .locals 2

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->publicFunctionsLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->set_opens_native_browser:I

    invoke-static {v1, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/d;->b(Z)V

    return-void
.end method

.method public setPrice(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->O:I

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->h:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setRewardVideoAdListener(Lcom/octopus/ad/RewardVideoAdListener;)V
    .locals 2

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->j:Z

    if-nez v0, :cond_0

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->publicFunctionsLogTag:Ljava/lang/String;

    const-string v0, "setRewardVideoAdListener() called on non-RewardVideoAd"

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->publicFunctionsLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->set_reward_video_ad_listener:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->t:Lcom/octopus/ad/RewardVideoAdListener;

    return-void
.end method

.method public setShouldResizeParent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->y:Z

    return-void
.end method

.method public setShowLoadingIndicator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->z:Z

    return-void
.end method

.method public setSplashAdListener(Lcom/octopus/ad/SplashAdListener;)V
    .locals 2

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->publicFunctionsLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->set_splash_ad_listener:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->q:Lcom/octopus/ad/SplashAdListener;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 1

    const-string v0, "OctopusGroup"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->h()V

    :cond_0
    return-void
.end method

.method public setTagId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->P:Ljava/lang/String;

    return-void
.end method

.method public showAd()V
    .locals 8

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ae:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v1, v0, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    iput-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->serverResponse:Lcom/octopus/ad/internal/network/ServerResponse;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/octopus/ad/internal/network/ServerResponse;->mMediaType:Lcom/octopus/ad/internal/l;

    sget-object v2, Lcom/octopus/ad/internal/l;->a:Lcom/octopus/ad/internal/l;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->m:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->S:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->setDefaultSkip(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ae:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->getAutoCloseTime()I

    move-result v0

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->m:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->addSkipView(ILandroid/view/View;)V

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->getShowCloseBtnTime()I

    move-result v4

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ae:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->getAutoCloseTime()I

    move-result v5

    iget-object v6, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ae:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, v6, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/ServerResponse;->getAdType()Lcom/octopus/ad/b/e$a;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/b/e$a;->b:Lcom/octopus/ad/b/e$a;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_0
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/octopus/ad/internal/view/AdViewImpl;->addCloseButton(IIILandroid/view/View;Z)V

    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->serverResponse:Lcom/octopus/ad/internal/network/ServerResponse;

    iget-object v2, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ag:Lcom/octopus/ad/internal/view/AdViewImpl$d;

    invoke-static {v0, v1, v2}, Lcom/octopus/ad/internal/view/AdViewImpl;->setAutoClickStrategy(Landroid/content/Context;Lcom/octopus/ad/internal/network/ServerResponse;Lcom/octopus/ad/internal/view/AdViewImpl$d;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->serverResponse:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->isCallBackClick(Lcom/octopus/ad/internal/network/ServerResponse;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ab:Z

    if-nez v0, :cond_4

    const/16 v0, 0x8

    iput v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ac:I

    :cond_4
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ae:Lcom/octopus/ad/internal/view/AdWebView;

    iget v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ac:I

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/view/AdWebView;->setOpt(I)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->q:Lcom/octopus/ad/SplashAdListener;

    if-eqz v0, :cond_5

    const-string v0, "OctopusAd"

    const-string v1, "enter Octopus ad show"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->q:Lcom/octopus/ad/SplashAdListener;

    invoke-interface {v0}, Lcom/octopus/ad/SplashAdListener;->onAdShown()V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->ae:Lcom/octopus/ad/internal/view/AdWebView;

    new-instance v1, Lcom/octopus/ad/internal/view/AdViewImpl$17;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/view/AdViewImpl$17;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method public showAdLogo(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->M:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->N:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->M:Landroid/widget/FrameLayout;

    const/16 v1, 0x2a

    const/4 v2, -0x1

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x53

    invoke-direct {v0, v2, v1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    move-object v5, p1

    check-cast v5, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->M:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->M:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->N:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x55

    invoke-direct {v0, v2, v1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v4, v4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->N:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->N:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public showBannerCloseBtn(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl;->D:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
