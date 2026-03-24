.class public final Lcom/anythink/expressad/splash/c/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static c:Ljava/lang/String; = "SplashLoadManager"

.field private static final l:I = 0x1

.field private static final m:I = 0x2

.field private static final n:I = 0x3


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:Landroid/os/Handler;

.field private D:Ljava/lang/Runnable;

.field public a:Z

.field public b:Lcom/anythink/expressad/foundation/d/c;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:Lcom/anythink/expressad/splash/b/c;

.field private i:Landroid/content/Context;

.field private j:Lcom/anythink/expressad/splash/view/ATSplashView;

.field private k:Lcom/anythink/expressad/d/c;

.field private o:Z

.field private p:I

.field private q:I

.field private r:I

.field private s:Ljava/lang/String;

.field private t:I

.field private u:Z

.field private volatile v:Z

.field private w:Lcom/anythink/expressad/videocommon/d/c;

.field private x:Lcom/anythink/expressad/videocommon/b/i$d;

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/expressad/splash/c/c;->A:Ljava/lang/String;

    new-instance v0, Lcom/anythink/expressad/splash/c/c$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/anythink/expressad/splash/c/c$1;-><init>(Lcom/anythink/expressad/splash/c/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/expressad/splash/c/c;->C:Landroid/os/Handler;

    new-instance v0, Lcom/anythink/expressad/splash/c/c$2;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/splash/c/c$2;-><init>(Lcom/anythink/expressad/splash/c/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/splash/c/c;->D:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/splash/c/c;->a:Z

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/splash/c/c;->i:Landroid/content/Context;

    iput-object p1, p0, Lcom/anythink/expressad/splash/c/c;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/anythink/expressad/splash/c/c;->d:Ljava/lang/String;

    iput-wide p3, p0, Lcom/anythink/expressad/splash/c/c;->g:J

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/splash/c/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/splash/c/c;->s:Ljava/lang/String;

    return-object p0
.end method

.method private a(J)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->C:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/splash/c/c;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(Lcom/anythink/expressad/foundation/d/c;I)V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/view/ATSplashView;->setDynamicView(Z)V

    :cond_0
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/splash/c/c;->d(Lcom/anythink/expressad/foundation/d/c;I)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-static {v0, p1}, Lcom/anythink/expressad/splash/c/b;->a(Lcom/anythink/expressad/splash/view/ATSplashView;Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/splash/c/c;->b(Lcom/anythink/expressad/foundation/d/c;I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/view/ATSplashView;->clearResState()V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/anythink/expressad/splash/c/c$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/anythink/expressad/splash/c/c$5;-><init>(Lcom/anythink/expressad/splash/c/c;Lcom/anythink/expressad/foundation/d/c;I)V

    iput-object v0, p0, Lcom/anythink/expressad/splash/c/c;->x:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/splash/c/c;->x:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    :cond_3
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/splash/c/c$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/expressad/splash/c/c$4;-><init>(Lcom/anythink/expressad/splash/c/c;Lcom/anythink/expressad/foundation/d/c;I)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    :cond_4
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/anythink/expressad/splash/c/c$8;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/splash/c/c$8;-><init>(Lcom/anythink/expressad/splash/c/c;Lcom/anythink/expressad/foundation/d/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/splash/c/c;->w:Lcom/anythink/expressad/videocommon/d/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/splash/c/c;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/splash/c/c;->w:Lcom/anythink/expressad/videocommon/d/c;

    const/16 v4, 0x129

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/anythink/expressad/videocommon/b/e;->a(Ljava/lang/String;Ljava/util/List;ILcom/anythink/expressad/videocommon/d/c;)Lcom/anythink/expressad/videocommon/b/n;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/splash/c/c;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->A()Z

    move-result v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/anythink/expressad/videocommon/b/e;->a(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/splash/c/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/videocommon/b/e;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/view/ATSplashView;->setVideoReady(Z)V

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/splash/c/c;->b(Lcom/anythink/expressad/foundation/d/c;I)V

    :cond_6
    :goto_0
    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/splash/c/c;->d(Lcom/anythink/expressad/foundation/d/c;I)V

    :cond_7
    return-void
.end method

.method private a(Lcom/anythink/expressad/foundation/d/d;I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    iget-object v2, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/foundation/d/c;

    iget-object v4, p0, Lcom/anythink/expressad/splash/c/c;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/anythink/expressad/foundation/d/c;->l(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/d;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/splash/c/c;->y:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->O()I

    move-result p1

    const/16 v4, 0x63

    if-eq p1, v4, :cond_6

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_0
    invoke-static {v3}, Lcom/anythink/expressad/foundation/h/t;->a(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/c;->i:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/anythink/expressad/out/j;->ba()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/anythink/expressad/foundation/h/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v3, p1}, Lcom/anythink/expressad/foundation/d/c;->i(I)V

    :cond_2
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->ae()I

    move-result p1

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/c;->i:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/anythink/expressad/out/j;->ba()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/anythink/expressad/foundation/h/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lcom/anythink/expressad/foundation/h/t;->a(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_4
    :goto_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_2
    if-eqz v2, :cond_11

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_11

    invoke-direct {p0}, Lcom/anythink/expressad/splash/c/c;->g()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "onload load suc size:"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<MBTPLMARK>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p1, v1}, Lcom/anythink/expressad/foundation/d/c;->a(Z)V

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/foundation/d/c;->b(Z)V

    goto :goto_4

    :cond_8
    :goto_3
    invoke-virtual {p1, v0}, Lcom/anythink/expressad/foundation/d/c;->a(Z)V

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/foundation/d/c;->b(Z)V

    :goto_4
    iget-object v2, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    if-eqz v2, :cond_9

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/splash/view/ATSplashView;->setDynamicView(Z)V

    :cond_9
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/splash/c/c;->d(Lcom/anythink/expressad/foundation/d/c;I)V

    :cond_a
    iget-object v1, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-static {v1, p1}, Lcom/anythink/expressad/splash/c/b;->a(Lcom/anythink/expressad/splash/view/ATSplashView;Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/splash/c/c;->b(Lcom/anythink/expressad/foundation/d/c;I)V

    return-void

    :cond_b
    iget-object v1, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {v1}, Lcom/anythink/expressad/splash/view/ATSplashView;->clearResState()V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Lcom/anythink/expressad/splash/c/c$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/expressad/splash/c/c$5;-><init>(Lcom/anythink/expressad/splash/c/c;Lcom/anythink/expressad/foundation/d/c;I)V

    iput-object v1, p0, Lcom/anythink/expressad/splash/c/c;->x:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/expressad/splash/c/c;->x:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-virtual {v1, v2, v3}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    :cond_c
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v1

    new-instance v2, Lcom/anythink/expressad/splash/c/c$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/anythink/expressad/splash/c/c$4;-><init>(Lcom/anythink/expressad/splash/c/c;Lcom/anythink/expressad/foundation/d/c;I)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    :cond_d
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, Lcom/anythink/expressad/splash/c/c$8;

    invoke-direct {v1, p0, p1}, Lcom/anythink/expressad/splash/c/c$8;-><init>(Lcom/anythink/expressad/splash/c/c;Lcom/anythink/expressad/foundation/d/c;)V

    iput-object v1, p0, Lcom/anythink/expressad/splash/c/c;->w:Lcom/anythink/expressad/videocommon/d/c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/expressad/splash/c/c;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/expressad/splash/c/c;->w:Lcom/anythink/expressad/videocommon/d/c;

    const/16 v5, 0x129

    invoke-virtual {v2, v3, v1, v5, v4}, Lcom/anythink/expressad/videocommon/b/e;->a(Ljava/lang/String;Ljava/util/List;ILcom/anythink/expressad/videocommon/d/c;)Lcom/anythink/expressad/videocommon/b/n;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/splash/c/c;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->A()Z

    move-result v3

    invoke-virtual {v1, v5, v2, v3}, Lcom/anythink/expressad/videocommon/b/e;->a(ILjava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/splash/c/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/videocommon/b/e;->d(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    iget-object v1, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/splash/view/ATSplashView;->setVideoReady(Z)V

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/splash/c/c;->b(Lcom/anythink/expressad/foundation/d/c;I)V

    :cond_f
    :goto_5
    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/splash/c/c;->d(Lcom/anythink/expressad/foundation/d/c;I)V

    :cond_10
    return-void

    :cond_11
    const-string p1, "invalid  campaign"

    invoke-direct {p0, p1}, Lcom/anythink/expressad/splash/c/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/splash/c/c;Lcom/anythink/expressad/foundation/d/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/splash/c/c;->b(Lcom/anythink/expressad/foundation/d/c;I)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/splash/c/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/splash/c/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/splash/c/c;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;I)V
    .locals 2

    new-instance v0, Lcom/anythink/expressad/splash/c/e$c;

    invoke-direct {v0}, Lcom/anythink/expressad/splash/c/e$c;-><init>()V

    iget-object v1, p0, Lcom/anythink/expressad/splash/c/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/c/e$c;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/expressad/splash/c/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/c/e$c;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/anythink/expressad/splash/c/e$c;->a(Lcom/anythink/expressad/foundation/d/c;)V

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/splash/c/e$c;->a(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/anythink/expressad/splash/c/c;->o:Z

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/splash/c/e$c;->b(Z)V

    iget p1, p0, Lcom/anythink/expressad/splash/c/c;->p:I

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/splash/c/e$c;->a(I)V

    iget-boolean p1, p0, Lcom/anythink/expressad/splash/c/c;->a:Z

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/splash/c/e$c;->a(Z)V

    new-instance p1, Lcom/anythink/expressad/splash/c/c$7;

    invoke-direct {p1, p0, p2, p3}, Lcom/anythink/expressad/splash/c/c$7;-><init>(Lcom/anythink/expressad/splash/c/c;Lcom/anythink/expressad/foundation/d/c;I)V

    invoke-static {}, Lcom/anythink/expressad/splash/c/e$a;->a()Lcom/anythink/expressad/splash/c/e;

    move-result-object p2

    iget-object p0, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {p2, p0, v0, p1}, Lcom/anythink/expressad/splash/c/e;->a(Lcom/anythink/expressad/splash/view/ATSplashView;Lcom/anythink/expressad/splash/c/e$c;Lcom/anythink/expressad/splash/c/e$b;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/splash/c/c;->u:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/expressad/splash/c/c;->u:Z

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/anythink/expressad/splash/c/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;I)V
    .locals 2

    new-instance v0, Lcom/anythink/expressad/splash/c/e$c;

    invoke-direct {v0}, Lcom/anythink/expressad/splash/c/e$c;-><init>()V

    iget-object v1, p0, Lcom/anythink/expressad/splash/c/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/c/e$c;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/expressad/splash/c/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/c/e$c;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/anythink/expressad/splash/c/e$c;->a(Lcom/anythink/expressad/foundation/d/c;)V

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/splash/c/e$c;->a(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/anythink/expressad/splash/c/c;->o:Z

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/splash/c/e$c;->b(Z)V

    iget p1, p0, Lcom/anythink/expressad/splash/c/c;->p:I

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/splash/c/e$c;->a(I)V

    iget-boolean p1, p0, Lcom/anythink/expressad/splash/c/c;->a:Z

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/splash/c/e$c;->a(Z)V

    new-instance p1, Lcom/anythink/expressad/splash/c/c$7;

    invoke-direct {p1, p0, p2, p3}, Lcom/anythink/expressad/splash/c/c$7;-><init>(Lcom/anythink/expressad/splash/c/c;Lcom/anythink/expressad/foundation/d/c;I)V

    invoke-static {}, Lcom/anythink/expressad/splash/c/e$a;->a()Lcom/anythink/expressad/splash/c/e;

    move-result-object p2

    iget-object p3, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {p2, p3, v0, p1}, Lcom/anythink/expressad/splash/c/e;->a(Lcom/anythink/expressad/splash/view/ATSplashView;Lcom/anythink/expressad/splash/c/e$c;Lcom/anythink/expressad/splash/c/e$b;)V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/expressad/splash/c/c;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/splash/c/c;->t:I

    return p0
.end method

.method private b(Lcom/anythink/expressad/foundation/d/d;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/foundation/d/d;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    iget-object v2, p0, Lcom/anythink/expressad/splash/c/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/foundation/d/c;->l(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/d;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/splash/c/c;->y:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->O()I

    move-result p1

    const/16 v2, 0x63

    if-eq p1, v2, :cond_6

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_0
    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/t;->a(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/c;->i:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->ba()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/anythink/expressad/foundation/h/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v1, p1}, Lcom/anythink/expressad/foundation/d/c;->i(I)V

    :cond_2
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->ae()I

    move-result p1

    if-eq p1, v2, :cond_4

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/c;->i:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->ba()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/anythink/expressad/foundation/h/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/t;->a(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_4
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_2
    return-object v0
.end method

.method private b(Lcom/anythink/expressad/foundation/d/c;I)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-static {v0, p1}, Lcom/anythink/expressad/splash/c/b;->a(Lcom/anythink/expressad/splash/view/ATSplashView;Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/expressad/splash/c/c;->v:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/anythink/expressad/splash/c/c;->l()V

    iput-object p1, p0, Lcom/anythink/expressad/splash/c/c;->b:Lcom/anythink/expressad/foundation/d/c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/splash/c/c;->v:Z

    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->h:Lcom/anythink/expressad/splash/b/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/splash/b/c;->a(Lcom/anythink/expressad/foundation/d/c;I)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/anythink/expressad/splash/c/c;Lcom/anythink/expressad/foundation/d/c;I)V
    .locals 9

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/anythink/expressad/splash/a/b$a;

    invoke-direct {v0}, Lcom/anythink/expressad/splash/a/b$a;-><init>()V

    iget-object v1, p0, Lcom/anythink/expressad/splash/c/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/a/b$a;->b(Ljava/lang/String;)Lcom/anythink/expressad/splash/a/b$a;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/splash/c/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/splash/a/b$a;->a(Ljava/lang/String;)Lcom/anythink/expressad/splash/a/b$a;

    move-result-object v1

    iget-boolean v2, p0, Lcom/anythink/expressad/splash/c/c;->o:Z

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/splash/a/b$a;->a(Z)Lcom/anythink/expressad/splash/a/b$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/anythink/expressad/splash/a/b$a;->a(Lcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/splash/a/b$a;

    move-result-object v1

    iget v2, p0, Lcom/anythink/expressad/splash/c/c;->p:I

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/splash/a/b$a;->a(I)Lcom/anythink/expressad/splash/a/b$a;

    move-result-object v1

    iget v2, p0, Lcom/anythink/expressad/splash/c/c;->B:I

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/splash/a/b$a;->h(I)Lcom/anythink/expressad/splash/a/b$a;

    :try_start_0
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "hdbtn"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "alecfc"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "hdinfo"

    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "shake_show"

    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "shake_strength"

    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "shake_time"

    invoke-virtual {v1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "n_logo"

    invoke-virtual {v1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/splash/a/b$a;->b(I)Lcom/anythink/expressad/splash/a/b$a;

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/splash/a/b$a;->c(I)Lcom/anythink/expressad/splash/a/b$a;

    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/splash/a/b$a;->d(I)Lcom/anythink/expressad/splash/a/b$a;

    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/splash/a/b$a;->e(I)Lcom/anythink/expressad/splash/a/b$a;

    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/splash/a/b$a;->f(I)Lcom/anythink/expressad/splash/a/b$a;

    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/splash/a/b$a;->g(I)Lcom/anythink/expressad/splash/a/b$a;

    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/a/b$a;->i(I)Lcom/anythink/expressad/splash/a/b$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_7
    :goto_1
    invoke-static {}, Lcom/anythink/expressad/splash/c/a$a;->a()Lcom/anythink/expressad/splash/c/a;

    iget-object v1, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    new-instance v2, Lcom/anythink/expressad/splash/a/b;

    invoke-direct {v2, v0}, Lcom/anythink/expressad/splash/a/b;-><init>(Lcom/anythink/expressad/splash/a/b$a;)V

    new-instance v0, Lcom/anythink/expressad/splash/c/c$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/anythink/expressad/splash/c/c$6;-><init>(Lcom/anythink/expressad/splash/c/c;Lcom/anythink/expressad/foundation/d/c;I)V

    invoke-static {v1, v2, v0}, Lcom/anythink/expressad/splash/c/a;->a(Lcom/anythink/expressad/splash/view/ATSplashView;Lcom/anythink/expressad/splash/a/b;Lcom/anythink/expressad/splash/b/a;)V

    :cond_8
    return-void
.end method

.method public static synthetic b(Lcom/anythink/expressad/splash/c/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/splash/c/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/splash/c/c;->v:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/anythink/expressad/splash/c/c;->l()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/splash/c/c;->v:Z

    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->h:Lcom/anythink/expressad/splash/b/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/splash/b/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/anythink/expressad/splash/c/c;)Lcom/anythink/expressad/splash/view/ATSplashView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    return-object p0
.end method

.method private c(Lcom/anythink/expressad/foundation/d/c;I)V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/view/ATSplashView;->clearResState()V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/splash/c/c$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/anythink/expressad/splash/c/c$5;-><init>(Lcom/anythink/expressad/splash/c/c;Lcom/anythink/expressad/foundation/d/c;I)V

    iput-object v0, p0, Lcom/anythink/expressad/splash/c/c;->x:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/splash/c/c;->x:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    :cond_0
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/splash/c/c$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/expressad/splash/c/c$4;-><init>(Lcom/anythink/expressad/splash/c/c;Lcom/anythink/expressad/foundation/d/c;I)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    :cond_1
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/anythink/expressad/splash/c/c$8;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/splash/c/c$8;-><init>(Lcom/anythink/expressad/splash/c/c;Lcom/anythink/expressad/foundation/d/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/splash/c/c;->w:Lcom/anythink/expressad/videocommon/d/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/splash/c/c;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/splash/c/c;->w:Lcom/anythink/expressad/videocommon/d/c;

    const/16 v4, 0x129

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/anythink/expressad/videocommon/b/e;->a(Ljava/lang/String;Ljava/util/List;ILcom/anythink/expressad/videocommon/d/c;)Lcom/anythink/expressad/videocommon/b/n;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/splash/c/c;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->A()Z

    move-result v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/anythink/expressad/videocommon/b/e;->a(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/splash/c/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/videocommon/b/e;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/view/ATSplashView;->setVideoReady(Z)V

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/splash/c/c;->b(Lcom/anythink/expressad/foundation/d/c;I)V

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/splash/c/c;->d(Lcom/anythink/expressad/foundation/d/c;I)V

    :cond_4
    return-void
.end method

.method public static synthetic c(Lcom/anythink/expressad/splash/c/c;Lcom/anythink/expressad/foundation/d/c;I)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/view/ATSplashView;->isH5Ready()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/view/ATSplashView;->setH5Ready(Z)V

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/splash/c/c;->b(Lcom/anythink/expressad/foundation/d/c;I)V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/splash/c/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/anythink/expressad/splash/c/c;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/splash/c/c;->C:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anythink/expressad/splash/c/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method private d(Lcom/anythink/expressad/foundation/d/c;I)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    new-instance v1, Lcom/anythink/expressad/splash/c/c$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/expressad/splash/c/c$3;-><init>(Lcom/anythink/expressad/splash/c/c;Lcom/anythink/expressad/foundation/d/c;I)V

    invoke-static {v0, p1, v1}, Lcom/anythink/expressad/splash/c/b;->a(Lcom/anythink/expressad/splash/view/ATSplashView;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/splash/view/a;)V

    return-void
.end method

.method private e(Lcom/anythink/expressad/foundation/d/c;I)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/splash/c/c$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/expressad/splash/c/c$4;-><init>(Lcom/anythink/expressad/splash/c/c;Lcom/anythink/expressad/foundation/d/c;I)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/splash/c/c;->o:Z

    return v0
.end method

.method private f()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/splash/c/c;->p:I

    return v0
.end method

.method private f(Lcom/anythink/expressad/foundation/d/c;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/splash/c/c$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/anythink/expressad/splash/c/c$5;-><init>(Lcom/anythink/expressad/splash/c/c;Lcom/anythink/expressad/foundation/d/c;I)V

    iput-object v0, p0, Lcom/anythink/expressad/splash/c/c;->x:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object p2

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->x:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-virtual {p2, p1, v0}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/anythink/expressad/splash/c/c;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/anythink/expressad/splash/c/c;->z:I

    iget-object v1, p0, Lcom/anythink/expressad/splash/c/c;->k:Lcom/anythink/expressad/d/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/anythink/expressad/d/c;->t()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/expressad/splash/c/c;->z:I

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onload,next offset is:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/anythink/expressad/splash/c/c;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private g(Lcom/anythink/expressad/foundation/d/c;I)V
    .locals 9

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/anythink/expressad/splash/a/b$a;

    invoke-direct {v0}, Lcom/anythink/expressad/splash/a/b$a;-><init>()V

    iget-object v1, p0, Lcom/anythink/expressad/splash/c/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/a/b$a;->b(Ljava/lang/String;)Lcom/anythink/expressad/splash/a/b$a;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/splash/c/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/splash/a/b$a;->a(Ljava/lang/String;)Lcom/anythink/expressad/splash/a/b$a;

    move-result-object v1

    iget-boolean v2, p0, Lcom/anythink/expressad/splash/c/c;->o:Z

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/splash/a/b$a;->a(Z)Lcom/anythink/expressad/splash/a/b$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/anythink/expressad/splash/a/b$a;->a(Lcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/splash/a/b$a;

    move-result-object v1

    iget v2, p0, Lcom/anythink/expressad/splash/c/c;->p:I

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/splash/a/b$a;->a(I)Lcom/anythink/expressad/splash/a/b$a;

    move-result-object v1

    iget v2, p0, Lcom/anythink/expressad/splash/c/c;->B:I

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/splash/a/b$a;->h(I)Lcom/anythink/expressad/splash/a/b$a;

    :try_start_0
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "hdbtn"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "alecfc"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "hdinfo"

    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "shake_show"

    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "shake_strength"

    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "shake_time"

    invoke-virtual {v1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "n_logo"

    invoke-virtual {v1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/splash/a/b$a;->b(I)Lcom/anythink/expressad/splash/a/b$a;

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/splash/a/b$a;->c(I)Lcom/anythink/expressad/splash/a/b$a;

    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/splash/a/b$a;->d(I)Lcom/anythink/expressad/splash/a/b$a;

    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/splash/a/b$a;->e(I)Lcom/anythink/expressad/splash/a/b$a;

    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/splash/a/b$a;->f(I)Lcom/anythink/expressad/splash/a/b$a;

    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/splash/a/b$a;->g(I)Lcom/anythink/expressad/splash/a/b$a;

    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/a/b$a;->i(I)Lcom/anythink/expressad/splash/a/b$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_7
    :goto_1
    invoke-static {}, Lcom/anythink/expressad/splash/c/a$a;->a()Lcom/anythink/expressad/splash/c/a;

    iget-object v1, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    new-instance v2, Lcom/anythink/expressad/splash/a/b;

    invoke-direct {v2, v0}, Lcom/anythink/expressad/splash/a/b;-><init>(Lcom/anythink/expressad/splash/a/b$a;)V

    new-instance v0, Lcom/anythink/expressad/splash/c/c$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/anythink/expressad/splash/c/c$6;-><init>(Lcom/anythink/expressad/splash/c/c;Lcom/anythink/expressad/foundation/d/c;I)V

    invoke-static {v1, v2, v0}, Lcom/anythink/expressad/splash/c/a;->a(Lcom/anythink/expressad/splash/view/ATSplashView;Lcom/anythink/expressad/splash/a/b;Lcom/anythink/expressad/splash/b/a;)V

    :cond_8
    return-void
.end method

.method private static h()V
    .locals 0

    return-void
.end method

.method private h(Lcom/anythink/expressad/foundation/d/c;I)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/view/ATSplashView;->isH5Ready()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/view/ATSplashView;->setH5Ready(Z)V

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/splash/c/c;->b(Lcom/anythink/expressad/foundation/d/c;I)V

    :cond_0
    return-void
.end method

.method private static i()V
    .locals 0

    return-void
.end method

.method private i(Lcom/anythink/expressad/foundation/d/c;I)V
    .locals 5

    new-instance v0, Lcom/anythink/expressad/splash/c/c$8;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/splash/c/c$8;-><init>(Lcom/anythink/expressad/splash/c/c;Lcom/anythink/expressad/foundation/d/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/splash/c/c;->w:Lcom/anythink/expressad/videocommon/d/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/splash/c/c;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/splash/c/c;->w:Lcom/anythink/expressad/videocommon/d/c;

    const/16 v4, 0x129

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/anythink/expressad/videocommon/b/e;->a(Ljava/lang/String;Ljava/util/List;ILcom/anythink/expressad/videocommon/d/c;)Lcom/anythink/expressad/videocommon/b/n;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/splash/c/c;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->A()Z

    move-result v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/anythink/expressad/videocommon/b/e;->a(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/expressad/splash/c/c;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/videocommon/b/e;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/view/ATSplashView;->setVideoReady(Z)V

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/splash/c/c;->b(Lcom/anythink/expressad/foundation/d/c;I)V

    return-void
.end method

.method private j()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/expressad/splash/c/c;->z:I

    return-void
.end method

.method private static k()V
    .locals 0

    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->C:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/splash/c/c;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->A:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/splash/c/c;->B:I

    return-void
.end method

.method public final a(II)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/splash/c/c;->r:I

    iput p2, p0, Lcom/anythink/expressad/splash/c/c;->q:I

    return-void
.end method

.method public final a(Lcom/anythink/expressad/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/splash/c/c;->k:Lcom/anythink/expressad/d/c;

    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/d;)V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/splash/c/c;->v:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/anythink/expressad/splash/c/c;->s:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, p0, Lcom/anythink/expressad/splash/c/c;->t:I

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    iget-object v3, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/expressad/foundation/d/c;

    iget-object v5, p0, Lcom/anythink/expressad/splash/c/c;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/anythink/expressad/foundation/d/c;->l(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/d;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/splash/c/c;->y:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/anythink/expressad/foundation/d/c;->O()I

    move-result p1

    const/16 v5, 0x63

    if-eq p1, v5, :cond_6

    invoke-virtual {v4}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v4}, Lcom/anythink/expressad/foundation/d/c;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_0
    invoke-static {v4}, Lcom/anythink/expressad/foundation/h/t;->a(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/c;->i:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/anythink/expressad/out/j;->ba()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/anythink/expressad/foundation/h/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v4, p1}, Lcom/anythink/expressad/foundation/d/c;->i(I)V

    :cond_2
    invoke-virtual {v4}, Lcom/anythink/expressad/foundation/d/c;->ae()I

    move-result p1

    if-eq p1, v2, :cond_4

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/c;->i:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/anythink/expressad/out/j;->ba()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/anythink/expressad/foundation/h/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v4}, Lcom/anythink/expressad/foundation/h/t;->a(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_4
    :goto_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_2
    if-eqz v3, :cond_11

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_11

    invoke-direct {p0}, Lcom/anythink/expressad/splash/c/c;->g()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "onload load suc size:"

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<MBTPLMARK>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p1, v0}, Lcom/anythink/expressad/foundation/d/c;->a(Z)V

    invoke-virtual {p1, v2}, Lcom/anythink/expressad/foundation/d/c;->b(Z)V

    goto :goto_4

    :cond_8
    :goto_3
    invoke-virtual {p1, v2}, Lcom/anythink/expressad/foundation/d/c;->a(Z)V

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/foundation/d/c;->b(Z)V

    :goto_4
    iget-object v3, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v0}, Lcom/anythink/expressad/splash/view/ATSplashView;->setDynamicView(Z)V

    :cond_9
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1, v1}, Lcom/anythink/expressad/splash/c/c;->d(Lcom/anythink/expressad/foundation/d/c;I)V

    :cond_a
    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-static {v0, p1}, Lcom/anythink/expressad/splash/c/b;->a(Lcom/anythink/expressad/splash/view/ATSplashView;Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1, v1}, Lcom/anythink/expressad/splash/c/c;->b(Lcom/anythink/expressad/foundation/d/c;I)V

    return-void

    :cond_b
    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/view/ATSplashView;->clearResState()V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lcom/anythink/expressad/splash/c/c$5;

    invoke-direct {v0, p0, p1, v1}, Lcom/anythink/expressad/splash/c/c$5;-><init>(Lcom/anythink/expressad/splash/c/c;Lcom/anythink/expressad/foundation/d/c;I)V

    iput-object v0, p0, Lcom/anythink/expressad/splash/c/c;->x:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/expressad/splash/c/c;->x:Lcom/anythink/expressad/videocommon/b/i$d;

    invoke-virtual {v0, v3, v4}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    :cond_c
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v3, Lcom/anythink/expressad/splash/c/c$4;

    invoke-direct {v3, p0, p1, v1}, Lcom/anythink/expressad/splash/c/c$4;-><init>(Lcom/anythink/expressad/splash/c/c;Lcom/anythink/expressad/foundation/d/c;I)V

    invoke-virtual {v0, v3}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    :cond_d
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Lcom/anythink/expressad/splash/c/c$8;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/splash/c/c$8;-><init>(Lcom/anythink/expressad/splash/c/c;Lcom/anythink/expressad/foundation/d/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/splash/c/c;->w:Lcom/anythink/expressad/videocommon/d/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/expressad/splash/c/c;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/anythink/expressad/splash/c/c;->w:Lcom/anythink/expressad/videocommon/d/c;

    const/16 v6, 0x129

    invoke-virtual {v3, v4, v0, v6, v5}, Lcom/anythink/expressad/videocommon/b/e;->a(Ljava/lang/String;Ljava/util/List;ILcom/anythink/expressad/videocommon/d/c;)Lcom/anythink/expressad/videocommon/b/n;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v0

    iget-object v3, p0, Lcom/anythink/expressad/splash/c/c;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->A()Z

    move-result v4

    invoke-virtual {v0, v6, v3, v4}, Lcom/anythink/expressad/videocommon/b/e;->a(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/expressad/splash/c/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/videocommon/b/e;->d(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/splash/view/ATSplashView;->setVideoReady(Z)V

    invoke-direct {p0, p1, v1}, Lcom/anythink/expressad/splash/c/c;->b(Lcom/anythink/expressad/foundation/d/c;I)V

    :cond_f
    :goto_5
    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0, p1, v1}, Lcom/anythink/expressad/splash/c/c;->d(Lcom/anythink/expressad/foundation/d/c;I)V

    :cond_10
    return-void

    :cond_11
    const-string p1, "invalid  campaign"

    invoke-direct {p0, p1}, Lcom/anythink/expressad/splash/c/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/splash/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/splash/c/c;->h:Lcom/anythink/expressad/splash/b/c;

    return-void
.end method

.method public final a(Lcom/anythink/expressad/splash/view/ATSplashView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/splash/c/c;->j:Lcom/anythink/expressad/splash/view/ATSplashView;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/splash/c/c;->a:Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->h:Lcom/anythink/expressad/splash/b/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/anythink/expressad/splash/c/c;->h:Lcom/anythink/expressad/splash/b/c;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->w:Lcom/anythink/expressad/videocommon/d/c;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/anythink/expressad/splash/c/c;->w:Lcom/anythink/expressad/videocommon/d/c;

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->x:Lcom/anythink/expressad/videocommon/b/i$d;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/anythink/expressad/splash/c/c;->x:Lcom/anythink/expressad/videocommon/b/i$d;

    :cond_2
    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/splash/c/c;->p:I

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/splash/c/c;->o:Z

    return-void
.end method

.method public final c()Lcom/anythink/expressad/foundation/d/c;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c;->b:Lcom/anythink/expressad/foundation/d/c;

    return-object v0
.end method
