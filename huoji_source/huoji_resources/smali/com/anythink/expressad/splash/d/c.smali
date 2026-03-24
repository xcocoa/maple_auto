.class public final Lcom/anythink/expressad/splash/d/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/a/i;


# static fields
.field private static b:Ljava/lang/String; = "SplashProvider"


# instance fields
.field private A:Landroid/content/Context;

.field private B:Z

.field private C:Lcom/anythink/expressad/foundation/d/c;

.field private D:Lcom/anythink/expressad/splash/view/ATSplashPopView;

.field private E:Z

.field private F:Z

.field public a:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:J

.field private g:I

.field private h:I

.field private i:Lcom/anythink/expressad/splash/c/c;

.field private j:Lcom/anythink/expressad/splash/c/d;

.field private k:Lcom/anythink/expressad/splash/d/b;

.field private l:Lcom/anythink/expressad/out/e;

.field private m:Lcom/anythink/expressad/splash/d/d;

.field private n:Lcom/anythink/expressad/splash/view/ATSplashView;

.field private o:Lcom/anythink/expressad/splash/view/ATSplashWebview;

.field private p:Landroid/view/ViewGroup;

.field private q:Landroid/view/View;

.field private r:Lcom/anythink/expressad/d/c;

.field private s:Z

.field private t:Landroid/view/ViewGroup;

.field private u:Z

.field private v:I

.field private w:I

.field private x:I

.field private y:Ljava/lang/Object;

.field private z:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/anythink/expressad/splash/d/c;->e:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/expressad/splash/d/c;->v:I

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/k;->e(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/splash/d/c;->w:I

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/k;->f(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/splash/d/c;->x:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/splash/d/c;->y:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/splash/d/c;->z:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/splash/d/c;->a:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/splash/d/c;->E:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/splash/d/c;->F:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/anythink/expressad/splash/d/c;->w:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/anythink/expressad/splash/d/c;->x:I

    iput-object p2, p0, Lcom/anythink/expressad/splash/d/c;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/expressad/splash/d/c;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/anythink/expressad/splash/d/c;->A:Landroid/content/Context;

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->j:Lcom/anythink/expressad/splash/c/d;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/anythink/expressad/splash/c/d;

    invoke-direct {v0, p1, p2, p3}, Lcom/anythink/expressad/splash/c/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/expressad/splash/d/c;->j:Lcom/anythink/expressad/splash/c/d;

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/anythink/expressad/splash/c/d;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p3

    invoke-virtual {p3}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/expressad/splash/d/c;->c:Ljava/lang/String;

    invoke-direct {p2, p3, v0, v1}, Lcom/anythink/expressad/splash/c/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/anythink/expressad/splash/d/c;->j:Lcom/anythink/expressad/splash/c/d;

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/anythink/expressad/splash/d/c;->o:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    :try_start_0
    new-instance p2, Lcom/anythink/expressad/splash/view/ATSplashWebview;

    invoke-direct {p2, p1}, Lcom/anythink/expressad/splash/view/ATSplashWebview;-><init>(Landroid/content/Context;)V

    :goto_1
    iput-object p2, p0, Lcom/anythink/expressad/splash/d/c;->o:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    goto :goto_2

    :catch_0
    nop

    goto :goto_2

    :cond_2
    new-instance p2, Lcom/anythink/expressad/splash/view/ATSplashWebview;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p3

    invoke-virtual {p3}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/anythink/expressad/splash/view/ATSplashWebview;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    iget-object p2, p0, Lcom/anythink/expressad/splash/d/c;->o:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    if-eqz p2, :cond_3

    new-instance p3, Lcom/anythink/expressad/splash/view/b;

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/expressad/splash/d/c;->j:Lcom/anythink/expressad/splash/c/d;

    invoke-virtual {v1}, Lcom/anythink/expressad/splash/c/d;->a()Lcom/anythink/expressad/splash/d/a;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Lcom/anythink/expressad/splash/view/b;-><init>(Ljava/lang/String;Lcom/anythink/expressad/splash/d/a;)V

    invoke-virtual {p2, p3}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_3
    iget-object p2, p0, Lcom/anythink/expressad/splash/d/c;->n:Lcom/anythink/expressad/splash/view/ATSplashView;

    if-nez p2, :cond_5

    if-eqz p1, :cond_4

    new-instance p2, Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-direct {p2, p1}, Lcom/anythink/expressad/splash/view/ATSplashView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/anythink/expressad/splash/d/c;->n:Lcom/anythink/expressad/splash/view/ATSplashView;

    goto :goto_3

    :cond_4
    new-instance p1, Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/anythink/expressad/splash/view/ATSplashView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/expressad/splash/d/c;->n:Lcom/anythink/expressad/splash/view/ATSplashView;

    :goto_3
    iget-object p1, p0, Lcom/anythink/expressad/splash/d/c;->n:Lcom/anythink/expressad/splash/view/ATSplashView;

    iget-object p2, p0, Lcom/anythink/expressad/splash/d/c;->o:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/splash/view/ATSplashView;->setSplashWebview(Lcom/anythink/expressad/splash/view/ATSplashWebview;)V

    :cond_5
    return-void
.end method

.method private a(Lcom/anythink/expressad/out/t;)Landroid/view/ViewGroup;
    .locals 4

    new-instance v0, Lcom/anythink/expressad/splash/view/ATSplashPopView$a;

    iget-object v1, p0, Lcom/anythink/expressad/splash/d/c;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/splash/d/c;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/expressad/out/t;->a()I

    move-result p1

    iget-object v3, p0, Lcom/anythink/expressad/splash/d/c;->C:Lcom/anythink/expressad/foundation/d/c;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/anythink/expressad/splash/view/ATSplashPopView$a;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/anythink/expressad/foundation/d/c;)V

    new-instance p1, Lcom/anythink/expressad/splash/view/ATSplashPopView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/splash/d/c;->m:Lcom/anythink/expressad/splash/d/d;

    invoke-direct {p1, v1, v0, v2}, Lcom/anythink/expressad/splash/view/ATSplashPopView;-><init>(Landroid/content/Context;Lcom/anythink/expressad/splash/view/ATSplashPopView$a;Lcom/anythink/expressad/splash/d/d;)V

    iput-object p1, p0, Lcom/anythink/expressad/splash/d/c;->D:Lcom/anythink/expressad/splash/view/ATSplashPopView;

    return-object p1
.end method

.method private a(II)V
    .locals 5

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/k;->e(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/k;->f(Landroid/content/Context;)I

    move-result v1

    iget v2, p0, Lcom/anythink/expressad/splash/d/c;->v:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    mul-int/lit8 p1, p2, 0x4

    if-lt v1, p1, :cond_0

    sub-int/2addr v1, p2

    iput v1, p0, Lcom/anythink/expressad/splash/d/c;->x:I

    iput v0, p0, Lcom/anythink/expressad/splash/d/c;->w:I

    return-void

    :cond_0
    iput v3, p0, Lcom/anythink/expressad/splash/d/c;->x:I

    iput v3, p0, Lcom/anythink/expressad/splash/d/c;->w:I

    return-void

    :cond_1
    const/4 p2, 0x2

    if-ne v2, p2, :cond_3

    mul-int/lit8 p2, p1, 0x4

    if-lt v0, p2, :cond_2

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/anythink/expressad/splash/d/c;->w:I

    iput v1, p0, Lcom/anythink/expressad/splash/d/c;->x:I

    return-void

    :cond_2
    iput v3, p0, Lcom/anythink/expressad/splash/d/c;->x:I

    iput v3, p0, Lcom/anythink/expressad/splash/d/c;->w:I

    :cond_3
    return-void
.end method

.method private a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/expressad/splash/d/c;->f:J

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->j:Lcom/anythink/expressad/splash/c/d;

    if-nez v0, :cond_1

    new-instance v0, Lcom/anythink/expressad/splash/c/d;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/splash/d/c;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/splash/d/c;->c:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/anythink/expressad/splash/c/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/splash/d/c;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/splash/d/c;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/expressad/splash/c/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/anythink/expressad/splash/d/c;->j:Lcom/anythink/expressad/splash/c/d;

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->o:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    :try_start_0
    new-instance v0, Lcom/anythink/expressad/splash/view/ATSplashWebview;

    invoke-direct {v0, p1}, Lcom/anythink/expressad/splash/view/ATSplashWebview;-><init>(Landroid/content/Context;)V

    :goto_1
    iput-object v0, p0, Lcom/anythink/expressad/splash/d/c;->o:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    goto :goto_2

    :catch_0
    nop

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/anythink/expressad/splash/view/ATSplashWebview;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/expressad/splash/view/ATSplashWebview;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->o:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/anythink/expressad/splash/view/b;

    iget-object v2, p0, Lcom/anythink/expressad/splash/d/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/splash/d/c;->j:Lcom/anythink/expressad/splash/c/d;

    invoke-virtual {v3}, Lcom/anythink/expressad/splash/c/d;->a()Lcom/anythink/expressad/splash/d/a;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/anythink/expressad/splash/view/b;-><init>(Ljava/lang/String;Lcom/anythink/expressad/splash/d/a;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->n:Lcom/anythink/expressad/splash/view/ATSplashView;

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    new-instance v0, Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-direct {v0, p1}, Lcom/anythink/expressad/splash/view/ATSplashView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/splash/d/c;->n:Lcom/anythink/expressad/splash/view/ATSplashView;

    goto :goto_3

    :cond_4
    new-instance p1, Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/anythink/expressad/splash/view/ATSplashView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/expressad/splash/d/c;->n:Lcom/anythink/expressad/splash/view/ATSplashView;

    :goto_3
    iget-object p1, p0, Lcom/anythink/expressad/splash/d/c;->n:Lcom/anythink/expressad/splash/view/ATSplashView;

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->o:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/splash/view/ATSplashView;->setSplashWebview(Lcom/anythink/expressad/splash/view/ATSplashWebview;)V

    :cond_5
    return-void
.end method

.method private a(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    iput-object p1, p0, Lcom/anythink/expressad/splash/d/c;->q:Landroid/view/View;

    if-eqz p1, :cond_0

    iget v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-direct {p0, v0, v1}, Lcom/anythink/expressad/splash/d/c;->a(II)V

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->n:Lcom/anythink/expressad/splash/view/ATSplashView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/anythink/expressad/splash/view/ATSplashView;->setIconVg(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/anythink/expressad/foundation/d/c;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->n:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-static {v0, p1}, Lcom/anythink/expressad/splash/c/b;->a(Lcom/anythink/expressad/splash/view/ATSplashView;Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v0

    if-nez v0, :cond_2

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->j:Lcom/anythink/expressad/splash/c/d;

    iget-object v0, v0, Lcom/anythink/expressad/splash/c/d;->a:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/expressad/splash/d/c$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/anythink/expressad/splash/d/c$2;-><init>(Lcom/anythink/expressad/splash/d/c;Lcom/anythink/expressad/foundation/d/c;IZ)V

    const-wide/16 p1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/splash/d/c;->m:Lcom/anythink/expressad/splash/d/d;

    if-eqz p1, :cond_1

    const-string p2, "campaignEx is not ready"

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/splash/d/d;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/anythink/expressad/splash/d/c;->l()V

    iget-object p2, p0, Lcom/anythink/expressad/splash/d/c;->j:Lcom/anythink/expressad/splash/c/d;

    iget p3, p0, Lcom/anythink/expressad/splash/d/c;->e:I

    invoke-virtual {p2, p3}, Lcom/anythink/expressad/splash/c/d;->a(I)V

    iget-object p2, p0, Lcom/anythink/expressad/splash/d/c;->j:Lcom/anythink/expressad/splash/c/d;

    iget-object p3, p0, Lcom/anythink/expressad/splash/d/c;->t:Landroid/view/ViewGroup;

    invoke-virtual {p2, p3}, Lcom/anythink/expressad/splash/c/d;->a(Landroid/view/ViewGroup;)V

    iget-object p2, p0, Lcom/anythink/expressad/splash/d/c;->j:Lcom/anythink/expressad/splash/c/d;

    iget-object p3, p0, Lcom/anythink/expressad/splash/d/c;->m:Lcom/anythink/expressad/splash/d/d;

    invoke-virtual {p2, p3}, Lcom/anythink/expressad/splash/c/d;->a(Lcom/anythink/expressad/splash/d/d;)V

    iget-object p2, p0, Lcom/anythink/expressad/splash/d/c;->p:Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p2, p0, Lcom/anythink/expressad/splash/d/c;->n:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-static {p2}, Lcom/anythink/core/common/o/x;->a(Landroid/view/View;)V

    iget-object p2, p0, Lcom/anythink/expressad/splash/d/c;->p:Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/anythink/expressad/splash/d/c;->n:Lcom/anythink/expressad/splash/view/ATSplashView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object p2, p0, Lcom/anythink/expressad/splash/d/c;->j:Lcom/anythink/expressad/splash/c/d;

    iget-boolean p3, p0, Lcom/anythink/expressad/splash/d/c;->u:Z

    invoke-virtual {p2, p3}, Lcom/anythink/expressad/splash/c/d;->a(Z)V

    iget-object p2, p0, Lcom/anythink/expressad/splash/d/c;->j:Lcom/anythink/expressad/splash/c/d;

    iget-object p3, p0, Lcom/anythink/expressad/splash/d/c;->n:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {p2, p1, p3}, Lcom/anythink/expressad/splash/c/d;->a(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/splash/view/ATSplashView;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/splash/d/c;Lcom/anythink/expressad/foundation/d/c;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/expressad/splash/d/c;->a(Lcom/anythink/expressad/foundation/d/c;IZ)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/splash/d/c;->l:Lcom/anythink/expressad/out/e;

    if-eqz p1, :cond_1

    const-string p2, "token is null or empty"

    invoke-interface {p1, p2}, Lcom/anythink/expressad/out/e;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/anythink/expressad/splash/d/c;->a(Landroid/view/ViewGroup;)V

    :cond_1
    return-void
.end method

.method private b(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/splash/d/c;->t:Landroid/view/ViewGroup;

    return-void
.end method

.method private c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/splash/d/c;->B:Z

    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/splash/d/c;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->i:Lcom/anythink/expressad/splash/c/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/c/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->j:Lcom/anythink/expressad/splash/c/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/c/d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private i()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/splash/d/c;->E:Z

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->D:Lcom/anythink/expressad/splash/view/ATSplashPopView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/view/ATSplashPopView;->startCountDown()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/splash/d/c;->E:Z

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->D:Lcom/anythink/expressad/splash/view/ATSplashPopView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/view/ATSplashPopView;->release()V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->j:Lcom/anythink/expressad/splash/c/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/c/d;->d()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->D:Lcom/anythink/expressad/splash/view/ATSplashPopView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/anythink/expressad/splash/d/c;->E:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/view/ATSplashPopView;->reStartCountDown()V

    :cond_1
    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->o:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/anythink/expressad/splash/d/c$3;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/splash/d/c$3;-><init>(Lcom/anythink/expressad/splash/d/c;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->n:Lcom/anythink/expressad/splash/view/ATSplashView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/anythink/expressad/splash/d/c$4;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/splash/d/c$4;-><init>(Lcom/anythink/expressad/splash/d/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->j:Lcom/anythink/expressad/splash/c/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/c/d;->e()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->D:Lcom/anythink/expressad/splash/view/ATSplashPopView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/anythink/expressad/splash/d/c;->E:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/view/ATSplashPopView;->pauseCountDown()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/splash/d/c;->v:I

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 8

    iput-object p1, p0, Lcom/anythink/expressad/splash/d/c;->p:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->n:Lcom/anythink/expressad/splash/view/ATSplashView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/splash/view/ATSplashView;->setDevContainer(Landroid/view/ViewGroup;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->i:Lcom/anythink/expressad/splash/c/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/c/c;->c()Lcom/anythink/expressad/foundation/d/c;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/anythink/expressad/splash/d/c;->r:Lcom/anythink/expressad/d/c;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/splash/d/c;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/anythink/expressad/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/expressad/splash/d/c;->r:Lcom/anythink/expressad/d/c;

    :cond_2
    new-instance v7, Lcom/anythink/expressad/splash/d/d;

    iget-object v3, p0, Lcom/anythink/expressad/splash/d/c;->l:Lcom/anythink/expressad/out/e;

    iget-object v1, p0, Lcom/anythink/expressad/splash/d/c;->r:Lcom/anythink/expressad/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/d/c;->a()D

    move-result-wide v4

    move-object v1, v7

    move-object v2, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/anythink/expressad/splash/d/d;-><init>(Lcom/anythink/expressad/splash/d/c;Lcom/anythink/expressad/out/e;DLcom/anythink/expressad/foundation/d/c;)V

    iput-object v7, p0, Lcom/anythink/expressad/splash/d/c;->m:Lcom/anythink/expressad/splash/d/d;

    iget v1, p0, Lcom/anythink/expressad/splash/d/c;->e:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    const/16 v2, 0xa

    if-le v1, v2, :cond_4

    :cond_3
    const/4 v1, 0x5

    iput v1, p0, Lcom/anythink/expressad/splash/d/c;->e:I

    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/anythink/expressad/splash/d/d;->c()V

    :cond_5
    new-instance v1, Lcom/anythink/expressad/splash/d/c$1;

    invoke-direct {v1, p0, v0}, Lcom/anythink/expressad/splash/d/c$1;-><init>(Lcom/anythink/expressad/splash/d/c;Lcom/anythink/expressad/foundation/d/c;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_6
    iget-object p1, p0, Lcom/anythink/expressad/splash/d/c;->l:Lcom/anythink/expressad/out/e;

    if-eqz p1, :cond_7

    const-string v0, "campaignEx is vali"

    invoke-interface {p1, v0}, Lcom/anythink/expressad/out/e;->a(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;Z)V
    .locals 7

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->r:Lcom/anythink/expressad/d/c;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/splash/d/c;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/anythink/expressad/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/splash/d/c;->r:Lcom/anythink/expressad/d/c;

    :cond_0
    new-instance v0, Lcom/anythink/expressad/splash/d/d;

    iget-object v3, p0, Lcom/anythink/expressad/splash/d/c;->l:Lcom/anythink/expressad/out/e;

    iget-object v1, p0, Lcom/anythink/expressad/splash/d/c;->r:Lcom/anythink/expressad/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/d/c;->a()D

    move-result-wide v4

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/anythink/expressad/splash/d/d;-><init>(Lcom/anythink/expressad/splash/d/c;Lcom/anythink/expressad/out/e;DLcom/anythink/expressad/foundation/d/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/splash/d/c;->m:Lcom/anythink/expressad/splash/d/d;

    :cond_1
    iput-object p1, p0, Lcom/anythink/expressad/splash/d/c;->C:Lcom/anythink/expressad/foundation/d/c;

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->p:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/anythink/expressad/splash/d/c;->m:Lcom/anythink/expressad/splash/d/d;

    if-eqz p1, :cond_2

    const-string p2, "container is null"

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/splash/d/d;->a(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/anythink/expressad/splash/d/c;->j:Lcom/anythink/expressad/splash/c/d;

    if-nez v1, :cond_4

    new-instance v1, Lcom/anythink/expressad/splash/c/d;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/expressad/splash/d/c;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/splash/d/c;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lcom/anythink/expressad/splash/c/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/anythink/expressad/splash/d/c;->j:Lcom/anythink/expressad/splash/c/d;

    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/anythink/expressad/splash/d/c;->a(Lcom/anythink/expressad/foundation/d/c;IZ)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/d;)V
    .locals 7

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->y:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/anythink/expressad/splash/d/c;->s:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/splash/d/c;->k:Lcom/anythink/expressad/splash/d/b;

    if-eqz p1, :cond_0

    const-string v1, "current unit is loading"

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/splash/d/b;->a(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/anythink/expressad/splash/d/c;->s:Z

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/anythink/expressad/splash/d/c;->s:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->n:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/view/ATSplashView;->clearResState()V

    new-instance v0, Lcom/anythink/expressad/d/c;

    invoke-direct {v0}, Lcom/anythink/expressad/d/c;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/splash/d/c;->r:Lcom/anythink/expressad/d/c;

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->i:Lcom/anythink/expressad/splash/c/c;

    if-nez v0, :cond_2

    new-instance v0, Lcom/anythink/expressad/splash/c/c;

    iget-object v1, p0, Lcom/anythink/expressad/splash/d/c;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/splash/d/c;->c:Ljava/lang/String;

    iget-wide v3, p0, Lcom/anythink/expressad/splash/d/c;->f:J

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/anythink/expressad/splash/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/anythink/expressad/splash/d/c;->i:Lcom/anythink/expressad/splash/c/c;

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->k:Lcom/anythink/expressad/splash/d/b;

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/d/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->i:Lcom/anythink/expressad/splash/c/c;

    iget-object v1, p0, Lcom/anythink/expressad/splash/d/c;->k:Lcom/anythink/expressad/splash/d/b;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/c/c;->a(Lcom/anythink/expressad/splash/b/c;)V

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->n:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/view/ATSplashView;->resetLoadState()V

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->i:Lcom/anythink/expressad/splash/c/c;

    iget v1, p0, Lcom/anythink/expressad/splash/d/c;->e:I

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/c/c;->b(I)V

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->i:Lcom/anythink/expressad/splash/c/c;

    iget-object v1, p0, Lcom/anythink/expressad/splash/d/c;->n:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/c/c;->a(Lcom/anythink/expressad/splash/view/ATSplashView;)V

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->i:Lcom/anythink/expressad/splash/c/c;

    iget-object v1, p0, Lcom/anythink/expressad/splash/d/c;->r:Lcom/anythink/expressad/d/c;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/c/c;->a(Lcom/anythink/expressad/d/c;)V

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->i:Lcom/anythink/expressad/splash/c/c;

    iget v1, p0, Lcom/anythink/expressad/splash/d/c;->w:I

    iget v2, p0, Lcom/anythink/expressad/splash/d/c;->x:I

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/splash/c/c;->a(II)V

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->i:Lcom/anythink/expressad/splash/c/c;

    iget-boolean v1, p0, Lcom/anythink/expressad/splash/d/c;->u:Z

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/c/c;->b(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->i:Lcom/anythink/expressad/splash/c/c;

    iget-boolean v1, p0, Lcom/anythink/expressad/splash/d/c;->F:Z

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/c/c;->a(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->i:Lcom/anythink/expressad/splash/c/c;

    iget v1, p0, Lcom/anythink/expressad/splash/d/c;->v:I

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/c/c;->a(I)V

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->i:Lcom/anythink/expressad/splash/c/c;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/splash/c/c;->a(Lcom/anythink/expressad/foundation/d/d;)V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Lcom/anythink/expressad/out/d;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->k:Lcom/anythink/expressad/splash/d/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/splash/d/b;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/splash/d/b;-><init>(Lcom/anythink/expressad/splash/d/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/splash/d/c;->k:Lcom/anythink/expressad/splash/d/b;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->k:Lcom/anythink/expressad/splash/d/b;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/splash/d/b;->a(Lcom/anythink/expressad/out/d;)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/out/e;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/splash/d/c;->l:Lcom/anythink/expressad/out/e;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/splash/d/c;->F:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/splash/d/c;->s:Z

    return v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/splash/d/c;->s:Z

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/splash/d/c;->e:I

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/splash/d/c;->u:Z

    return-void
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/splash/d/c;->f:J

    return-wide v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/splash/d/c;->u:Z

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/splash/d/c;->e:I

    return v0
.end method

.method public final f()V
    .locals 1

    const/16 v0, 0x64

    invoke-direct {p0, v0, v0}, Lcom/anythink/expressad/splash/d/c;->a(II)V

    return-void
.end method

.method public final g()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/splash/d/c;->C:Lcom/anythink/expressad/foundation/d/c;

    iget-object v1, p0, Lcom/anythink/expressad/splash/d/c;->l:Lcom/anythink/expressad/out/e;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/anythink/expressad/splash/d/c;->l:Lcom/anythink/expressad/out/e;

    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/splash/d/c;->k:Lcom/anythink/expressad/splash/d/b;

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/anythink/expressad/splash/d/c;->k:Lcom/anythink/expressad/splash/d/b;

    :cond_1
    iget-object v1, p0, Lcom/anythink/expressad/splash/d/c;->m:Lcom/anythink/expressad/splash/d/d;

    if-eqz v1, :cond_2

    iput-object v0, p0, Lcom/anythink/expressad/splash/d/c;->m:Lcom/anythink/expressad/splash/d/d;

    :cond_2
    iget-object v1, p0, Lcom/anythink/expressad/splash/d/c;->i:Lcom/anythink/expressad/splash/c/c;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/anythink/expressad/splash/c/c;->b()V

    :cond_3
    iget-object v1, p0, Lcom/anythink/expressad/splash/d/c;->j:Lcom/anythink/expressad/splash/c/d;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/anythink/expressad/splash/c/d;->c()V

    :cond_4
    iget-object v1, p0, Lcom/anythink/expressad/splash/d/c;->A:Landroid/content/Context;

    if-eqz v1, :cond_5

    iput-object v0, p0, Lcom/anythink/expressad/splash/d/c;->A:Landroid/content/Context;

    :cond_5
    return-void
.end method

.method public final isReady()Z
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->i:Lcom/anythink/expressad/splash/c/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/c/c;->c()Lcom/anythink/expressad/foundation/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/c;->n:Lcom/anythink/expressad/splash/view/ATSplashView;

    iget-object v1, p0, Lcom/anythink/expressad/splash/d/c;->i:Lcom/anythink/expressad/splash/c/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/splash/c/c;->c()Lcom/anythink/expressad/foundation/d/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/expressad/splash/c/b;->a(Lcom/anythink/expressad/splash/view/ATSplashView;Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
