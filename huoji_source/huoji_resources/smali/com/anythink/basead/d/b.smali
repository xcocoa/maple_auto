.class public abstract Lcom/anythink/basead/d/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/d/b$a;,
        Lcom/anythink/basead/d/b$b;
    }
.end annotation


# instance fields
.field private a:Lcom/anythink/basead/d/b$b;

.field public b:Landroid/content/Context;

.field public c:Lcom/anythink/core/common/f/m;

.field public d:Lcom/anythink/basead/d/c;

.field public e:Lcom/anythink/core/common/f/aj;

.field public f:Lcom/anythink/core/common/a/i;

.field public g:Lcom/anythink/basead/a/b;

.field public h:Lcom/anythink/basead/e/a;

.field public i:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/basead/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/lang/String;

.field private k:Z

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/basead/d/b$b;Lcom/anythink/core/common/f/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/basead/d/b;->k:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/d/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/anythink/basead/d/b;->a:Lcom/anythink/basead/d/b$b;

    iput-object p3, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/d/b;Lcom/anythink/core/common/a/i;)V
    .locals 3

    iput-object p1, p0, Lcom/anythink/basead/d/b;->f:Lcom/anythink/core/common/a/i;

    new-instance p1, Lcom/anythink/basead/a/b;

    iget-object v0, p0, Lcom/anythink/basead/d/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v2, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    invoke-direct {p1, v0, v1, v2}, Lcom/anythink/basead/a/b;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)V

    iput-object p1, p0, Lcom/anythink/basead/d/b;->g:Lcom/anythink/basead/a/b;

    new-instance v0, Lcom/anythink/basead/d/b$3;

    invoke-direct {v0, p0}, Lcom/anythink/basead/d/b$3;-><init>(Lcom/anythink/basead/d/b;)V

    invoke-virtual {p1, v0}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/a/b$b;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/d/b;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/c/e;Lcom/anythink/basead/e/c;Z)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lcom/anythink/basead/c/i;

    iget-object v1, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/anythink/basead/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x22

    invoke-static {v1, p1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    :cond_0
    instance-of p1, p1, Lcom/anythink/core/common/f/ai;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/anythink/core/basead/b;->a()Lcom/anythink/core/basead/b;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/basead/b;->a()Lcom/anythink/core/basead/b;

    iget-object v0, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    invoke-static {v0}, Lcom/anythink/core/basead/b;->a(Lcom/anythink/core/common/f/m;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/anythink/core/basead/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_2

    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/a/a;->a()Lcom/anythink/core/common/a/a;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p4

    invoke-virtual {p4}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object p4

    iget-object p0, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object p0, p0, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    invoke-virtual {p1, p4, p0}, Lcom/anythink/core/common/a/a;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    invoke-interface {p3, p2}, Lcom/anythink/basead/e/c;->onAdLoadFailed(Lcom/anythink/basead/c/e;)V

    :cond_3
    return-void
.end method

.method private a(Lcom/anythink/core/common/a/i;)V
    .locals 3

    iput-object p1, p0, Lcom/anythink/basead/d/b;->f:Lcom/anythink/core/common/a/i;

    new-instance p1, Lcom/anythink/basead/a/b;

    iget-object v0, p0, Lcom/anythink/basead/d/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v2, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    invoke-direct {p1, v0, v1, v2}, Lcom/anythink/basead/a/b;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)V

    iput-object p1, p0, Lcom/anythink/basead/d/b;->g:Lcom/anythink/basead/a/b;

    new-instance v0, Lcom/anythink/basead/d/b$3;

    invoke-direct {v0, p0}, Lcom/anythink/basead/d/b$3;-><init>(Lcom/anythink/basead/d/b;)V

    invoke-virtual {p1, v0}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/a/b$b;)V

    return-void
.end method

.method private a(Lcom/anythink/core/common/f/l;Lcom/anythink/basead/c/e;Lcom/anythink/basead/e/c;Z)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lcom/anythink/basead/c/i;

    iget-object v1, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/anythink/basead/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x22

    invoke-static {v1, p1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    :cond_0
    instance-of p1, p1, Lcom/anythink/core/common/f/ai;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/anythink/core/basead/b;->a()Lcom/anythink/core/basead/b;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/basead/b;->a()Lcom/anythink/core/basead/b;

    iget-object v0, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    invoke-static {v0}, Lcom/anythink/core/basead/b;->a(Lcom/anythink/core/common/f/m;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/anythink/core/basead/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_2

    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/a/a;->a()Lcom/anythink/core/common/a/a;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p4

    invoke-virtual {p4}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object p4

    iget-object v0, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    invoke-virtual {p1, p4, v0}, Lcom/anythink/core/common/a/a;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    invoke-interface {p3, p2}, Lcom/anythink/basead/e/c;->onAdLoadFailed(Lcom/anythink/basead/c/e;)V

    :cond_3
    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/d/b;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/d/b;->k:Z

    return v0
.end method

.method private b(Lcom/anythink/basead/e/c;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/n/b;->a()Lcom/anythink/core/common/n/b;

    iget-object v0, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    invoke-static {v0}, Lcom/anythink/core/common/n/b;->a(Lcom/anythink/core/common/f/m;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/n/b;->a()Lcom/anythink/core/common/n/b;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "recordOfferLoadStartTime, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", timeStamp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/n/b;->a(Ljava/lang/String;)Lcom/anythink/core/common/f/ah;

    move-result-object v1

    iput-wide v2, v1, Lcom/anythink/core/common/f/ah;->a:J

    iget-object v1, p0, Lcom/anythink/basead/d/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/basead/d/a/a;->a(Landroid/content/Context;)Lcom/anythink/basead/d/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    new-instance v3, Lcom/anythink/basead/d/b$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/anythink/basead/d/b$2;-><init>(Lcom/anythink/basead/d/b;Ljava/lang/String;Lcom/anythink/basead/e/c;)V

    invoke-virtual {v1, v2, v3}, Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const-string v0, "30001"

    const-string v1, "bidid\u3001placementid can not be null!"

    invoke-static {v0, v1}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/e/c;->onAdLoadFailed(Lcom/anythink/basead/c/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-9999"

    invoke-static {v1, v0}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/e/c;->onAdLoadFailed(Lcom/anythink/basead/c/e;)V

    :cond_3
    return-void
.end method

.method private c(Lcom/anythink/basead/e/c;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/d/b/a;->a(Landroid/content/Context;)Lcom/anythink/basead/d/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v2, p0, Lcom/anythink/basead/d/b;->j:Ljava/lang/String;

    new-instance v3, Lcom/anythink/basead/d/b$4;

    invoke-direct {v3, p0, p1}, Lcom/anythink/basead/d/b$4;-><init>(Lcom/anythink/basead/d/b;Lcom/anythink/basead/e/c;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/basead/d/b/a;->a(Lcom/anythink/core/common/f/m;Ljava/lang/String;Lcom/anythink/basead/d/b/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-9999"

    invoke-static {v1, v0}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/e/c;->onAdLoadFailed(Lcom/anythink/basead/c/e;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/f/aj;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget v1, v1, Lcom/anythink/core/common/f/m;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/anythink/basead/d/b$a;)V
    .locals 4

    sget-object v0, Lcom/anythink/basead/d/b$6;->a:[I

    iget-object v1, p0, Lcom/anythink/basead/d/b;->a:Lcom/anythink/basead/d/b$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/d/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/anythink/basead/d/b$a;->onAdCacheLoaded()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/anythink/basead/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/d/a/a;->a(Landroid/content/Context;)Lcom/anythink/basead/d/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    iget-object v2, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    new-instance v3, Lcom/anythink/basead/d/b$1;

    invoke-direct {v3, p0, p1}, Lcom/anythink/basead/d/b$1;-><init>(Lcom/anythink/basead/d/b;Lcom/anythink/basead/d/b$a;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/core/common/f/aj;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(Lcom/anythink/basead/d/c;)V
    .locals 4

    iput-object p1, p0, Lcom/anythink/basead/d/b;->d:Lcom/anythink/basead/d/c;

    iget-object v0, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v1, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    instance-of v2, v1, Lcom/anythink/core/common/f/ak;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/anythink/core/common/f/ak;

    iget v0, v0, Lcom/anythink/core/common/f/m;->f:I

    const/16 v2, 0x42

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/anythink/basead/d/c;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->x(I)V

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/anythink/basead/d/c;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/f/n;->y(I)V

    :cond_2
    invoke-virtual {p1}, Lcom/anythink/basead/d/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/f/n;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/basead/d/c;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/f/n;->r(I)V

    invoke-virtual {p1}, Lcom/anythink/basead/d/c;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/f/n;->q(I)V

    invoke-virtual {p1}, Lcom/anythink/basead/d/c;->f()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/f/n;->b(J)V

    invoke-virtual {p1}, Lcom/anythink/basead/d/c;->g()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/f/n;->p(I)V

    invoke-virtual {p1}, Lcom/anythink/basead/d/c;->h()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/f/n;->c(I)V

    invoke-virtual {p1}, Lcom/anythink/basead/d/c;->i()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/f/n;->d(I)V

    invoke-virtual {p1}, Lcom/anythink/basead/d/c;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/anythink/core/common/f/n;->f(Ljava/lang/String;)V

    nop

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Lcom/anythink/basead/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/d/b;->h:Lcom/anythink/basead/e/a;

    return-void
.end method

.method public final a(Lcom/anythink/basead/e/c;)V
    .locals 7

    sget-object v0, Lcom/anythink/basead/d/b$6;->a:[I

    iget-object v1, p0, Lcom/anythink/basead/d/b;->a:Lcom/anythink/basead/d/b$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "-9999"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/d/b/a;->a(Landroid/content/Context;)Lcom/anythink/basead/d/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v3, p0, Lcom/anythink/basead/d/b;->j:Ljava/lang/String;

    new-instance v4, Lcom/anythink/basead/d/b$4;

    invoke-direct {v4, p0, p1}, Lcom/anythink/basead/d/b$4;-><init>(Lcom/anythink/basead/d/b;Lcom/anythink/basead/e/c;)V

    invoke-virtual {v0, v1, v3, v4}, Lcom/anythink/basead/d/b/a;->a(Lcom/anythink/core/common/f/m;Ljava/lang/String;Lcom/anythink/basead/d/b/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/e/c;->onAdLoadFailed(Lcom/anythink/basead/c/e;)V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/anythink/core/common/n/b;->a()Lcom/anythink/core/common/n/b;

    iget-object v0, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    invoke-static {v0}, Lcom/anythink/core/common/n/b;->a(Lcom/anythink/core/common/f/m;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/n/b;->a()Lcom/anythink/core/common/n/b;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "recordOfferLoadStartTime, "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", timeStamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/n/b;->a(Ljava/lang/String;)Lcom/anythink/core/common/f/ah;

    move-result-object v1

    iput-wide v3, v1, Lcom/anythink/core/common/f/ah;->a:J

    iget-object v1, p0, Lcom/anythink/basead/d/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/basead/d/a/a;->a(Landroid/content/Context;)Lcom/anythink/basead/d/a/a;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    new-instance v4, Lcom/anythink/basead/d/b$2;

    invoke-direct {v4, p0, v0, p1}, Lcom/anythink/basead/d/b$2;-><init>(Lcom/anythink/basead/d/b;Ljava/lang/String;Lcom/anythink/basead/e/c;)V

    invoke-virtual {v1, v3, v4}, Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;)V

    return-void

    :cond_3
    :goto_1
    const-string v0, "30001"

    const-string v1, "bidid\u3001placementid can not be null!"

    invoke-static {v0, v1}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/e/c;->onAdLoadFailed(Lcom/anythink/basead/c/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/e/c;->onAdLoadFailed(Lcom/anythink/basead/c/e;)V

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/j;)V
    .locals 3

    invoke-virtual {p1}, Lcom/anythink/core/common/f/j;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/anythink/core/common/a/d;->a()Lcom/anythink/core/common/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/a/d;->b()V

    iget-object v0, p0, Lcom/anythink/basead/d/b;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->F()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, ",packagename:"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "check offer installed(onAdDataLoaded):ture,dsp offerid:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->ae()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/core/common/a/d;->a()Lcom/anythink/core/common/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/a/d;->c(Lcom/anythink/core/common/f/j;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "check offer installed(onAdDataLoaded):false,need record show,dsp offerid:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->ae()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/core/common/a/d;->a()Lcom/anythink/core/common/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/a/d;->a(Lcom/anythink/core/common/f/j;)V

    :cond_1
    return-void
.end method

.method public final declared-synchronized a(Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/d/b;->g:Lcom/anythink/basead/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/basead/d/b;->i:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/basead/d/b;->i:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/d/b;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/basead/a/b;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/basead/d/b;->g:Lcom/anythink/basead/a/b;

    invoke-static {v0, p1}, Lcom/anythink/basead/d/a/b;->a(Lcom/anythink/basead/a/b;Lcom/anythink/expressad/foundation/d/c;)Lcom/anythink/basead/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/d/b;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v0, :cond_3

    new-instance p1, Lcom/anythink/basead/c/i;

    iget-object v1, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    invoke-direct {p1, v1, p2}, Lcom/anythink/basead/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/anythink/basead/c/a;

    invoke-direct {p2}, Lcom/anythink/basead/c/a;-><init>()V

    iput-object p2, p1, Lcom/anythink/basead/c/i;->g:Lcom/anythink/basead/c/a;

    new-instance p2, Lcom/anythink/basead/d/b$5;

    invoke-direct {p2, p0}, Lcom/anythink/basead/d/b$5;-><init>(Lcom/anythink/basead/d/b;)V

    invoke-virtual {v0, p2}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/a/b$b;)V

    invoke-virtual {v0, p1}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/c/i;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/d/b;->j:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/basead/d/b;->l:Ljava/util/Map;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    return-void
.end method

.method public final c()Z
    .locals 4

    sget-object v0, Lcom/anythink/basead/d/b$6;->a:[I

    iget-object v1, p0, Lcom/anythink/basead/d/b;->a:Lcom/anythink/basead/d/b$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    if-eqz v0, :cond_4

    instance-of v3, v0, Lcom/anythink/core/common/f/ai;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/anythink/core/common/f/aj;->Y()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-boolean v0, p0, Lcom/anythink/basead/d/b;->k:Z

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    iget-object v3, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    invoke-static {v0, v3}, Lcom/anythink/basead/a/b/c;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/anythink/basead/d/b;->k:Z

    return v1

    :cond_4
    :goto_0
    return v2

    :cond_5
    iget-object v0, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/anythink/basead/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/d/a/a;->a(Landroid/content/Context;)Lcom/anythink/basead/d/a/a;

    move-result-object v0

    iget-object v3, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    invoke-virtual {v0, v3}, Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/core/common/f/m;)Lcom/anythink/core/common/f/j;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    :cond_6
    iget-object v0, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    if-nez v0, :cond_7

    return v2

    :cond_7
    invoke-virtual {v0}, Lcom/anythink/core/common/f/aj;->Y()Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    :cond_8
    iget-object v0, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    instance-of v3, v0, Lcom/anythink/core/common/f/j;

    if-eqz v3, :cond_a

    check-cast v0, Lcom/anythink/core/common/f/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/anythink/basead/d/b;->f:Lcom/anythink/core/common/a/i;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/anythink/core/common/a/i;->isReady()Z

    move-result v0

    return v0

    :cond_9
    return v2

    :cond_a
    iget-boolean v0, p0, Lcom/anythink/basead/d/b;->k:Z

    if-eqz v0, :cond_b

    return v1

    :cond_b
    iget-object v0, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    iget-object v3, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    invoke-static {v0, v3}, Lcom/anythink/basead/a/b/c;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-boolean v1, p0, Lcom/anythink/basead/d/b;->k:Z

    return v1

    :cond_c
    return v2
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/d/b;->a(Lcom/anythink/basead/d/b$a;)V

    return-void
.end method

.method public final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/d/b;->g:Lcom/anythink/basead/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/a/b;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/d/b;->g:Lcom/anythink/basead/a/b;

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/d/b;->i:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/basead/d/b;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/basead/a/b;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/anythink/basead/a/b;->d()V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()Lcom/anythink/core/common/f/l;
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    return-object v0
.end method

.method public final g()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/anythink/basead/d/b;->l:Ljava/util/Map;

    return-object v0
.end method
