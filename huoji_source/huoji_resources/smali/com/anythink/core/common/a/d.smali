.class public Lcom/anythink/core/common/a/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile b:Lcom/anythink/core/common/a/d;


# instance fields
.field public final a:Ljava/lang/String;

.field private c:Lcom/anythink/core/common/c/f;

.field private d:Lcom/anythink/core/common/c/e;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/anythink/core/common/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/a/d;->a:Ljava/lang/String;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/c/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/c/f;->a(Lcom/anythink/core/common/c/b;)Lcom/anythink/core/common/c/f;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/a/d;->c:Lcom/anythink/core/common/c/f;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/c/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/c/e;->a(Lcom/anythink/core/common/c/b;)Lcom/anythink/core/common/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/a/d;->d:Lcom/anythink/core/common/c/e;

    :cond_0
    return-void
.end method

.method public static a()Lcom/anythink/core/common/a/d;
    .locals 2

    sget-object v0, Lcom/anythink/core/common/a/d;->b:Lcom/anythink/core/common/a/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/anythink/core/common/a/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/core/common/a/d;->b:Lcom/anythink/core/common/a/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/core/common/a/d;

    invoke-direct {v1}, Lcom/anythink/core/common/a/d;-><init>()V

    sput-object v1, Lcom/anythink/core/common/a/d;->b:Lcom/anythink/core/common/a/d;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/anythink/core/common/a/d;->b:Lcom/anythink/core/common/a/d;

    return-object v0
.end method

.method public static synthetic a(Lcom/anythink/core/common/a/d;)Lcom/anythink/core/common/c/f;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/a/d;->c:Lcom/anythink/core/common/c/f;

    return-object p0
.end method

.method public static synthetic b(Lcom/anythink/core/common/a/d;)Lcom/anythink/core/common/c/e;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/a/d;->d:Lcom/anythink/core/common/c/e;

    return-object p0
.end method


# virtual methods
.method public final a(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/a/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/core/common/a/d;->c:Lcom/anythink/core/common/c/f;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/c/f;->a(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/anythink/core/common/f/j;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "insertDspOfferShowRecord dspOfferId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->ae()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    new-instance v0, Lcom/anythink/core/common/a/d$1;

    invoke-direct {v0, p0, p1}, Lcom/anythink/core/common/a/d$1;-><init>(Lcom/anythink/core/common/a/d;Lcom/anythink/core/common/f/j;)V

    invoke-static {v0}, Lcom/anythink/core/common/b/n;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/a/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/core/common/a/d;->d:Lcom/anythink/core/common/c/e;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/c/e;->a(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    new-instance v0, Lcom/anythink/core/common/a/d$3;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/a/d$3;-><init>(Lcom/anythink/core/common/a/d;)V

    invoke-static {v0}, Lcom/anythink/core/common/b/n;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lcom/anythink/core/common/f/j;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateDspOfferShowRecord dspOfferId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->ae()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    new-instance v0, Lcom/anythink/core/common/a/d$2;

    invoke-direct {v0, p0, p1}, Lcom/anythink/core/common/a/d$2;-><init>(Lcom/anythink/core/common/a/d;Lcom/anythink/core/common/f/j;)V

    invoke-static {v0}, Lcom/anythink/core/common/b/n;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Lcom/anythink/core/common/f/j;)V
    .locals 3

    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->ag()I

    move-result v0

    const-string v1, ",not need to record install"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->H()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->H()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "adxOffer.getClickType = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->H()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    new-instance v0, Lcom/anythink/core/common/a/d$4;

    invoke-direct {v0, p0, p1}, Lcom/anythink/core/common/a/d$4;-><init>(Lcom/anythink/core/common/a/d;Lcom/anythink/core/common/f/j;)V

    invoke-static {v0}, Lcom/anythink/core/common/b/n;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "adxOffer.getDspInstallIdUploadSwitch() = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->ag()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
