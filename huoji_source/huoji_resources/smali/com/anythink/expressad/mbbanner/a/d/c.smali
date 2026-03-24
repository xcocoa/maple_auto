.class public final Lcom/anythink/expressad/mbbanner/a/d/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static c:Ljava/lang/String; = "BannerShowManager"


# instance fields
.field private A:F

.field private B:Landroid/view/View$OnClickListener;

.field private C:Lcom/anythink/expressad/mbbanner/a/c/a;

.field private D:Lcom/anythink/expressad/atsignalcommon/a/b;

.field public a:Lcom/anythink/expressad/a/a;

.field public b:Lcom/anythink/expressad/out/i;

.field private d:Lcom/anythink/expressad/mbbanner/a/c/c;

.field private e:Z

.field private f:Lcom/anythink/expressad/foundation/d/c;

.field private g:Lcom/anythink/expressad/out/TemplateBannerView;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

.field private j:Landroid/widget/ImageView;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private u:I

.field private v:J

.field private w:Lcom/anythink/expressad/mbbanner/a/a/c;

.field private x:Landroid/os/Handler;

.field private y:Lcom/anythink/expressad/foundation/g/g/a;

.field private z:F


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/anythink/expressad/out/TemplateBannerView;Lcom/anythink/expressad/mbbanner/a/c/c;Ljava/lang/String;Ljava/lang/String;ZLcom/anythink/expressad/d/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->v:J

    new-instance v0, Lcom/anythink/expressad/mbbanner/a/d/c$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/anythink/expressad/mbbanner/a/d/c$1;-><init>(Lcom/anythink/expressad/mbbanner/a/d/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->x:Landroid/os/Handler;

    new-instance v0, Lcom/anythink/expressad/mbbanner/a/d/c$4;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/mbbanner/a/d/c$4;-><init>(Lcom/anythink/expressad/mbbanner/a/d/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->y:Lcom/anythink/expressad/foundation/g/g/a;

    new-instance v0, Lcom/anythink/expressad/mbbanner/a/d/c$5;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/mbbanner/a/d/c$5;-><init>(Lcom/anythink/expressad/mbbanner/a/d/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->B:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/anythink/expressad/mbbanner/a/d/c$6;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/mbbanner/a/d/c$6;-><init>(Lcom/anythink/expressad/mbbanner/a/d/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->C:Lcom/anythink/expressad/mbbanner/a/c/a;

    new-instance v0, Lcom/anythink/expressad/mbbanner/a/d/c$2;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/mbbanner/a/d/c$2;-><init>(Lcom/anythink/expressad/mbbanner/a/d/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->D:Lcom/anythink/expressad/atsignalcommon/a/b;

    iput-boolean p5, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->e:Z

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    iput-object p4, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->r:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->s:Ljava/lang/String;

    new-instance p1, Lcom/anythink/expressad/mbbanner/a/c/e;

    invoke-direct {p1, p2, p6}, Lcom/anythink/expressad/mbbanner/a/c/e;-><init>(Lcom/anythink/expressad/mbbanner/a/c/c;Lcom/anythink/expressad/d/c;)V

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->d:Lcom/anythink/expressad/mbbanner/a/c/c;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/mbbanner/a/d/c;F)F
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->z:F

    return p1
.end method

.method private static a(Lcom/anythink/expressad/foundation/d/c;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/d/c;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/j;->a()Lcom/anythink/expressad/videocommon/b/j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/videocommon/b/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/d/c;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/d/c;->ay()Z

    move-result p0

    const-string v2, "file:////"

    if-eqz p0, :cond_0

    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/anythink/expressad/foundation/h/m;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    goto :goto_1

    :catch_0
    nop

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_1
    return-object v0
.end method

.method private static a(Lcom/anythink/expressad/foundation/d/c;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/d/c;->e()Ljava/util/List;

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

    const/4 v2, 0x1

    invoke-static {p1, p0, p2, v1, v2}, Lcom/anythink/expressad/a/a;->a(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/mbbanner/a/d/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/mbbanner/a/d/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/anythink/expressad/mbbanner/a/d/c;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->x:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->y:Lcom/anythink/expressad/foundation/g/g/a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->d:Lcom/anythink/expressad/mbbanner/a/c/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/mbbanner/a/c/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/mbbanner/a/d/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->q:Z

    return p0
.end method

.method public static synthetic a(Lcom/anythink/expressad/mbbanner/a/d/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->p:Z

    return p1
.end method

.method public static synthetic b(Lcom/anythink/expressad/mbbanner/a/d/c;F)F
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->A:F

    return p1
.end method

.method private b(Lcom/anythink/expressad/foundation/d/d;)Lcom/anythink/expressad/foundation/d/c;
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->t:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->t:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/foundation/d/c;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static synthetic b()V
    .locals 0

    return-void
.end method

.method private b(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->r:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/anythink/expressad/mbbanner/a/d/c;->c(Lcom/anythink/expressad/foundation/d/c;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->r:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/anythink/expressad/mbbanner/a/d/c;->b(Lcom/anythink/expressad/foundation/d/c;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->r:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/anythink/expressad/mbbanner/a/d/c;->a(Lcom/anythink/expressad/foundation/d/c;Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static b(Lcom/anythink/expressad/foundation/d/c;Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/d/c;->ai()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/d/c;->ai()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    sget v7, Lcom/anythink/expressad/a/a/a;->j:I

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/anythink/expressad/a/a;->a(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;ZZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/anythink/expressad/mbbanner/a/d/c;)V
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->d:Lcom/anythink/expressad/mbbanner/a/c/c;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/anythink/expressad/mbbanner/a/c/c;->d()V

    :cond_0
    return-void
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anythink/expressad/mbbanner/a/d/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Lcom/anythink/expressad/foundation/d/c;Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/d/c;->ag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/d/c;->ag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    sget v7, Lcom/anythink/expressad/a/a/a;->i:I

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/anythink/expressad/a/a;->a(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;ZZI)V

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/d/c;->L()Lcom/anythink/expressad/foundation/d/n;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/d/c;->L()Lcom/anythink/expressad/foundation/d/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/n;->o()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/d/c;->L()Lcom/anythink/expressad/foundation/d/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/n;->o()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p0, p2, v0, v1}, Lcom/anythink/expressad/a/a;->a(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;[Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/anythink/expressad/mbbanner/a/d/c;)V
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->j:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->j:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    iget-object p0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/anythink/expressad/mbbanner/a/d/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/mbbanner/a/d/c;->l()V

    return-void
.end method

.method private d(Z)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/f/b;->b(Ljava/lang/String;)Lcom/anythink/expressad/widget/FeedBackButton;

    move-result-object v0

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/f/b;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez p1, :cond_1

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/anythink/expressad/foundation/f/b;->a:I

    sget v2, Lcom/anythink/expressad/foundation/f/b;->b:I

    invoke-direct {p1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :cond_1
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_2
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->r:Ljava/lang/String;

    new-instance v1, Lcom/anythink/expressad/mbbanner/a/d/c$3;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/mbbanner/a/d/c$3;-><init>(Lcom/anythink/expressad/mbbanner/a/d/c;)V

    invoke-virtual {p1, v0, v1}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/f/a;)V

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/foundation/d/c;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1, v0, v1}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)V

    :cond_3
    return-void
.end method

.method private d()Z
    .locals 7

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/a/d/c;->a(Lcom/anythink/expressad/foundation/d/c;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    new-instance v2, Lcom/anythink/expressad/mbbanner/view/a;

    iget-object v4, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->r:Ljava/lang/String;

    iget-object v5, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->t:Ljava/util/List;

    iget-object v6, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->C:Lcom/anythink/expressad/mbbanner/a/c/a;

    invoke-direct {v2, v4, v5, v6}, Lcom/anythink/expressad/mbbanner/view/a;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/anythink/expressad/mbbanner/a/c/a;)V

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->H()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/anythink/expressad/mbbanner/a/d/c;->d(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/anythink/expressad/mbbanner/a/d/c;->l()V

    new-instance v0, Lcom/anythink/expressad/mbbanner/a/a/c;

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->s:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->r:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v4}, Lcom/anythink/expressad/mbbanner/a/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->w:Lcom/anythink/expressad/mbbanner/a/a/c;

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->t:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/mbbanner/a/a/c;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->w:Lcom/anythink/expressad/mbbanner/a/a/c;

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->C:Lcom/anythink/expressad/mbbanner/a/c/a;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/mbbanner/a/a/c;->a(Lcom/anythink/expressad/mbbanner/a/c/a;)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->w:Lcom/anythink/expressad/mbbanner/a/a/c;

    iget v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->u:I

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/mbbanner/a/a/c;->a(I)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->D:Lcom/anythink/expressad/atsignalcommon/a/b;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/anythink/expressad/atsignalcommon/windvane/e;)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->w:Lcom/anythink/expressad/mbbanner/a/a/c;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    const-string v0, "file"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->p()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    const-string v4, "text/html"

    const-string v5, "utf-8"

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "banner show failed because banner view is exception"

    invoke-direct {p0, v0}, Lcom/anythink/expressad/mbbanner/a/d/c;->a(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_6
    return v1
.end method

.method private e()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->h:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/expressad/mbbanner/a/d/c$7;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/mbbanner/a/d/c$7;-><init>(Lcom/anythink/expressad/mbbanner/a/d/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/expressad/mbbanner/a/d/c$8;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/mbbanner/a/d/c$8;-><init>(Lcom/anythink/expressad/mbbanner/a/d/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v1

    new-instance v2, Lcom/anythink/expressad/mbbanner/a/d/c$9;

    invoke-direct {v2, p0}, Lcom/anythink/expressad/mbbanner/a/d/c$9;-><init>(Lcom/anythink/expressad/mbbanner/a/d/c;)V

    invoke-virtual {v1, v0, v2}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    return-void

    :cond_2
    const-string v0, "banner show failed because campain is exception"

    invoke-direct {p0, v0}, Lcom/anythink/expressad/mbbanner/a/d/c;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "banner show failed because banner view is exception"

    invoke-direct {p0, v0}, Lcom/anythink/expressad/mbbanner/a/d/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/anythink/expressad/mbbanner/a/d/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/mbbanner/a/d/c;->h()V

    return-void
.end method

.method private f()V
    .locals 4

    iget-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->j:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->j:Landroid/widget/ImageView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "anythink_banner_close"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->j:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->j:Landroid/widget/ImageView;

    const-string v1, "closeButton"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/anythink/expressad/mbbanner/a/d/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/mbbanner/a/d/c;->e()V

    return-void
.end method

.method public static synthetic g(Lcom/anythink/expressad/mbbanner/a/d/c;)Lcom/anythink/expressad/mbbanner/a/c/c;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->d:Lcom/anythink/expressad/mbbanner/a/c/c;

    return-object p0
.end method

.method private g()Z
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/y;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->p:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static synthetic h(Lcom/anythink/expressad/mbbanner/a/d/c;)Lcom/anythink/expressad/foundation/d/c;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    return-object p0
.end method

.method private h()V
    .locals 10

    iget-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->m:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->d:Lcom/anythink/expressad/mbbanner/a/c/c;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->n:Z

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->x:Landroid/os/Handler;

    iget-object v2, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->y:Lcom/anythink/expressad/foundation/g/g/a;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->am()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->an()V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->d:Lcom/anythink/expressad/mbbanner/a/c/c;

    iget-object v2, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->t:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/anythink/expressad/mbbanner/a/c/c;->a(Ljava/util/List;)V

    :cond_0
    iget-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->m:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->k:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->l:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->n:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/anythink/expressad/mbbanner/a/d/c;->i()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/y;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->p:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v3, 0x3e8

    if-nez v0, :cond_2

    iget-object v5, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    if-eqz v5, :cond_2

    new-instance v6, Lcom/anythink/expressad/mbbanner/a/d/c$10;

    invoke-direct {v6, p0}, Lcom/anythink/expressad/mbbanner/a/d/c$10;-><init>(Lcom/anythink/expressad/mbbanner/a/d/c;)V

    invoke-virtual {v5, v6, v3, v4}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-boolean v5, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->o:Z

    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    const/4 v5, 0x2

    new-array v5, v5, [I

    iget-object v6, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->getLocationInWindow([I)V

    iget-object v6, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    aget v7, v5, v2

    int-to-float v7, v7

    aget v8, v5, v1

    int-to-float v8, v8

    invoke-static {v6, v7, v8}, Lcom/anythink/expressad/mbbanner/a/a/a;->a(Landroid/webkit/WebView;FF)V

    iget-object v6, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    aget v7, v5, v2

    aget v5, v5, v1

    iget-object v8, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v9

    invoke-static {v6, v7, v5, v8, v9}, Lcom/anythink/expressad/mbbanner/a/a/a;->a(Landroid/webkit/WebView;IIII)V

    iput-boolean v2, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->o:Z

    iget-object v5, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v5}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v5

    invoke-virtual {v5}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v5

    iget-object v6, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v6}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/anythink/expressad/foundation/g/d/b;->c(Ljava/lang/String;)V

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "showSuccessed:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v6}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->h:Landroid/widget/ImageView;

    const-string v5, "banner"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_9

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v6

    invoke-virtual {v6}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->r:Ljava/lang/String;

    invoke-static {v0, v6, v7}, Lcom/anythink/expressad/mbbanner/a/d/c;->c(Lcom/anythink/expressad/foundation/d/c;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v6

    invoke-virtual {v6}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->r:Ljava/lang/String;

    invoke-static {v0, v6, v7}, Lcom/anythink/expressad/mbbanner/a/d/c;->b(Lcom/anythink/expressad/foundation/d/c;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v6

    invoke-virtual {v6}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->r:Ljava/lang/String;

    invoke-static {v0, v6, v7}, Lcom/anythink/expressad/mbbanner/a/d/c;->a(Lcom/anythink/expressad/foundation/d/c;Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/c;->c(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->r:Ljava/lang/String;

    iget-object v6, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v0, v6, v5}, Lcom/anythink/expressad/foundation/g/a/f;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->t:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    iget-object v8, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->t:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_8

    iget-object v8, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->t:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c;->s()Z

    move-result v8

    if-nez v8, :cond_7

    if-eqz v0, :cond_6

    iget-object v8, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->t:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c;->V()Z

    move-result v8

    if-nez v8, :cond_7

    :cond_6
    iget-object v6, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->t:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/anythink/expressad/foundation/d/c;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v7

    invoke-virtual {v7}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->r:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/anythink/expressad/mbbanner/a/d/c;->c(Lcom/anythink/expressad/foundation/d/c;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->t:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v6, v1}, Lcom/anythink/expressad/foundation/d/c;->c(Z)V

    iget-object v6, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->r:Ljava/lang/String;

    iget-object v7, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->t:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v6, v7, v5}, Lcom/anythink/expressad/foundation/g/a/f;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;)V

    move v7, v0

    const/4 v6, 0x1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    if-eqz v6, :cond_9

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->t:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v5

    invoke-virtual {v5}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->r:Ljava/lang/String;

    invoke-static {v0, v5, v6}, Lcom/anythink/expressad/mbbanner/a/d/c;->b(Lcom/anythink/expressad/foundation/d/c;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->t:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v5

    invoke-virtual {v5}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->r:Ljava/lang/String;

    invoke-static {v0, v5, v6}, Lcom/anythink/expressad/mbbanner/a/d/c;->a(Lcom/anythink/expressad/foundation/d/c;Landroid/content/Context;Ljava/lang/String;)V

    :cond_9
    :goto_2
    iput-boolean v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->q:Z

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->d:Lcom/anythink/expressad/mbbanner/a/c/c;

    if-eqz v0, :cond_a

    iget-object v5, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    invoke-interface {v0, v5, v2}, Lcom/anythink/expressad/mbbanner/a/c/c;->a(Lcom/anythink/expressad/foundation/d/c;Z)V

    :cond_a
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->x:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_b
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/foundation/d/c;->c(Z)V

    :cond_c
    return-void
.end method

.method public static synthetic i(Lcom/anythink/expressad/mbbanner/a/d/c;)F
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->z:F

    return p0
.end method

.method private declared-synchronized i()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->V()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/foundation/d/c;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic j(Lcom/anythink/expressad/mbbanner/a/d/c;)F
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->A:F

    return p0
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->d:Lcom/anythink/expressad/mbbanner/a/c/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/expressad/mbbanner/a/c/c;->d()V

    :cond_0
    return-void
.end method

.method public static synthetic k(Lcom/anythink/expressad/mbbanner/a/d/c;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->h:Landroid/widget/ImageView;

    return-object p0
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->h:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->h:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->h:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    iget-object v2, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/anythink/expressad/mbbanner/a/d/c;->d(Z)V

    :cond_3
    return-void
.end method

.method private l()V
    .locals 4

    iget-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->j:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    iget-object v2, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public static synthetic l(Lcom/anythink/expressad/mbbanner/a/d/c;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->m:Z

    return v0
.end method

.method private m()V
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->j:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->j:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic m(Lcom/anythink/expressad/mbbanner/a/d/c;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->h:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->h:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->h:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    iget-object v2, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/anythink/expressad/mbbanner/a/d/c;->d(Z)V

    :cond_3
    return-void
.end method

.method private static n()V
    .locals 0

    return-void
.end method

.method public static synthetic n(Lcom/anythink/expressad/mbbanner/a/d/c;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->o:Z

    return v0
.end method

.method public static synthetic o(Lcom/anythink/expressad/mbbanner/a/d/c;)Lcom/anythink/expressad/out/TemplateBannerView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    return-object p0
.end method

.method public static synthetic p(Lcom/anythink/expressad/mbbanner/a/d/c;)Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->d:Lcom/anythink/expressad/mbbanner/a/c/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->d:Lcom/anythink/expressad/mbbanner/a/c/c;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/anythink/expressad/atsignalcommon/windvane/e;)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->D:Lcom/anythink/expressad/atsignalcommon/a/b;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->D:Lcom/anythink/expressad/atsignalcommon/a/b;

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_5
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->release()V

    :cond_6
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->w:Lcom/anythink/expressad/mbbanner/a/a/c;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/anythink/expressad/mbbanner/a/a/c;->a()V

    :cond_7
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->C:Lcom/anythink/expressad/mbbanner/a/c/a;

    if-eqz v0, :cond_8

    iput-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->C:Lcom/anythink/expressad/mbbanner/a/c/a;

    :cond_8
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/f/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final a(IIII)V
    .locals 0

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    :try_start_0
    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->getInstance()Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;

    move-result-object p4

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p4, p3, p1, p2}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->fireSizeChangeEvent(Landroid/webkit/WebView;FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;ZLjava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->q:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->a:Lcom/anythink/expressad/a/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/anythink/expressad/a/a;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->r:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/anythink/expressad/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->a:Lcom/anythink/expressad/a/a;

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->a:Lcom/anythink/expressad/a/a;

    new-instance v1, Lcom/anythink/expressad/mbbanner/a/d/c$11;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/mbbanner/a/d/c$11;-><init>(Lcom/anythink/expressad/mbbanner/a/d/c;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/a/a;->a(Lcom/anythink/expressad/out/p$c;)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/foundation/d/c;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->W()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->X()V

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->d:Lcom/anythink/expressad/mbbanner/a/c/c;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/anythink/expressad/mbbanner/a/c/c;->a(Lcom/anythink/expressad/foundation/d/c;)V

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_4
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/d;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->t:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->t:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/foundation/d/c;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    if-nez p1, :cond_1

    const-string p1, "banner show failed because campain is exception"

    invoke-direct {p0, p1}, Lcom/anythink/expressad/mbbanner/a/d/c;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->x:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->y:Lcom/anythink/expressad/foundation/g/g/a;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->e:Z

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->j:Landroid/widget/ImageView;

    if-nez p1, :cond_2

    new-instance p1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->j:Landroid/widget/ImageView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_banner_close"

    const-string v4, "drawable"

    invoke-static {v2, v3, v4}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->j:Landroid/widget/ImageView;

    const-string v2, "closeButton"

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    iput-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->m:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->n:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->q:Z

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->q()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_3
    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->x:Landroid/os/Handler;

    iget-object v2, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->y:Lcom/anythink/expressad/foundation/g/g/a;

    iget-wide v3, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->v:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {p1}, Lcom/anythink/expressad/mbbanner/a/d/c;->a(Lcom/anythink/expressad/foundation/d/c;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    if-nez p1, :cond_4

    new-instance p1, Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    new-instance v2, Lcom/anythink/expressad/mbbanner/view/a;

    iget-object v3, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->r:Ljava/lang/String;

    iget-object v5, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->t:Ljava/util/List;

    iget-object v6, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->C:Lcom/anythink/expressad/mbbanner/a/c/a;

    invoke-direct {v2, v3, v5, v6}, Lcom/anythink/expressad/mbbanner/view/a;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/anythink/expressad/mbbanner/a/c/a;)V

    invoke-virtual {p1, v2}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_4
    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->h:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_6
    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->H()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/anythink/expressad/mbbanner/a/d/c;->d(Z)V

    :cond_7
    invoke-direct {p0}, Lcom/anythink/expressad/mbbanner/a/d/c;->l()V

    new-instance p1, Lcom/anythink/expressad/mbbanner/a/a/c;

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->g:Lcom/anythink/expressad/out/TemplateBannerView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->r:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lcom/anythink/expressad/mbbanner/a/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->w:Lcom/anythink/expressad/mbbanner/a/a/c;

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->t:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/mbbanner/a/a/c;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->w:Lcom/anythink/expressad/mbbanner/a/a/c;

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->C:Lcom/anythink/expressad/mbbanner/a/c/a;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/mbbanner/a/a/c;->a(Lcom/anythink/expressad/mbbanner/a/c/a;)V

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->w:Lcom/anythink/expressad/mbbanner/a/a/c;

    iget v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->u:I

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/mbbanner/a/a/c;->a(I)V

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->D:Lcom/anythink/expressad/atsignalcommon/a/b;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/anythink/expressad/atsignalcommon/windvane/e;)V

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->w:Lcom/anythink/expressad/mbbanner/a/a/c;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    const-string p1, "file"

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object v2, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->p()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const-string v5, "text/html"

    const-string v6, "utf-8"

    invoke-virtual/range {v2 .. v7}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->i:Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;

    invoke-virtual {p1, v4}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string p1, "banner show failed because banner view is exception"

    invoke-direct {p0, p1}, Lcom/anythink/expressad/mbbanner/a/d/c;->a(Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x1

    :cond_a
    if-nez v0, :cond_c

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->q()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->f:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_b
    invoke-direct {p0}, Lcom/anythink/expressad/mbbanner/a/d/c;->e()V

    :cond_c
    return-void
.end method

.method public final a(Lcom/anythink/expressad/out/i;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->b:Lcom/anythink/expressad/out/i;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->e:Z

    return-void
.end method

.method public final a(ZI)V
    .locals 1

    iput p2, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->u:I

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->r:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/anythink/expressad/d/b;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/anythink/expressad/d/c;->d()I

    move-result p1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->e:Z

    :cond_2
    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->k:Z

    invoke-direct {p0}, Lcom/anythink/expressad/mbbanner/a/d/c;->h()V

    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c;->l:Z

    invoke-direct {p0}, Lcom/anythink/expressad/mbbanner/a/d/c;->h()V

    return-void
.end method
