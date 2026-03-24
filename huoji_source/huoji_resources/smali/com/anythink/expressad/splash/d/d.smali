.class public Lcom/anythink/expressad/splash/d/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/splash/b/d;


# static fields
.field private static final a:Ljava/lang/String; = "SplashShowListenerImpl"


# instance fields
.field private b:Lcom/anythink/expressad/out/e;

.field private c:Lcom/anythink/expressad/foundation/d/c;

.field private d:Z

.field private e:Lcom/anythink/expressad/splash/d/c;

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/splash/d/c;Lcom/anythink/expressad/out/e;DLcom/anythink/expressad/foundation/d/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/splash/d/d;->e:Lcom/anythink/expressad/splash/d/c;

    iput-object p2, p0, Lcom/anythink/expressad/splash/d/d;->b:Lcom/anythink/expressad/out/e;

    iput-object p5, p0, Lcom/anythink/expressad/splash/d/d;->c:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {p3, p4, p5}, Lcom/anythink/expressad/splash/d/d;->a(DLcom/anythink/expressad/foundation/d/c;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/anythink/expressad/splash/d/d;->d:Z

    new-instance p1, Lcom/anythink/expressad/splash/d/d$1;

    invoke-direct {p1, p0}, Lcom/anythink/expressad/splash/d/d$1;-><init>(Lcom/anythink/expressad/splash/d/d;)V

    iput-object p1, p0, Lcom/anythink/expressad/splash/d/d;->f:Ljava/lang/Runnable;

    return-void
.end method

.method private static a(DLcom/anythink/expressad/foundation/d/c;)Z
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/d/b;->b()Lcom/anythink/expressad/d/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/anythink/expressad/d/a;->l()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v1}, Lcom/anythink/expressad/d/a;->x()J

    move-result-wide v6

    mul-long v4, v4, v6

    move-wide v8, v2

    move-wide v2, v4

    move-wide v4, v8

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "cbp : "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, " plct : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " plctb : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2, v2, v3, v4, v5}, Lcom/anythink/expressad/foundation/d/c;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, v1}, Lcom/anythink/expressad/foundation/d/c;->e(I)V

    return v1

    :cond_1
    invoke-virtual {p2, v0}, Lcom/anythink/expressad/foundation/d/c;->e(I)V

    :cond_2
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c;->A()Z

    move-result p2

    if-nez p2, :cond_5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p2, p0, v2

    if-nez p2, :cond_3

    return v0

    :cond_3
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    invoke-virtual {p2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "hit : "

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-double v4, v2, p0

    if-lez v4, :cond_4

    const/4 p0, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v4, :cond_5

    return v1

    :catch_0
    :cond_5
    return v0
.end method

.method private static d()V
    .locals 0

    return-void
.end method

.method private static e()V
    .locals 0

    return-void
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/d;->b:Lcom/anythink/expressad/out/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/splash/d/d;->b:Lcom/anythink/expressad/out/e;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/d;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/splash/d/d;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->d(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/d/d;->e:Lcom/anythink/expressad/splash/d/c;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/expressad/splash/d/c;->a:Z

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "load_to="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/expressad/splash/d/d;->e:Lcom/anythink/expressad/splash/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/splash/d/c;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, "&allow_skip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/anythink/expressad/splash/d/d;->e:Lcom/anythink/expressad/splash/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/splash/d/c;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "&countdown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/anythink/expressad/splash/d/d;->e:Lcom/anythink/expressad/splash/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/splash/d/c;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/d;->b:Lcom/anythink/expressad/out/e;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/anythink/expressad/splash/d/d;->d:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/anythink/expressad/out/e;->a()V

    :cond_2
    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/d;->b:Lcom/anythink/expressad/out/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/out/e;->a(I)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/splash/d/d;->e:Lcom/anythink/expressad/splash/d/c;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/anythink/expressad/splash/d/c;->a:Z

    :cond_1
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/d;->b:Lcom/anythink/expressad/out/e;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/anythink/expressad/splash/d/d;->d:Z

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/out/e;->a(Lcom/anythink/expressad/foundation/d/c;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/d;->e:Lcom/anythink/expressad/splash/d/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/anythink/expressad/splash/d/c;->a:Z

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/d/d;->b:Lcom/anythink/expressad/out/e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/anythink/expressad/out/e;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/splash/d/d;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/common/b/n;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
