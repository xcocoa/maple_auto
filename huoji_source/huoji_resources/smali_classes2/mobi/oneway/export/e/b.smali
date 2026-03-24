.class public Lmobi/oneway/export/e/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lmobi/oneway/export/e/b;

.field private static d:Landroid/os/Handler;


# instance fields
.field private volatile b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmobi/oneway/export/e/b;->d:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lmobi/oneway/export/e/b;
    .locals 1

    sget-object v0, Lmobi/oneway/export/e/b;->c:Lmobi/oneway/export/e/b;

    if-nez v0, :cond_0

    new-instance v0, Lmobi/oneway/export/e/b;

    invoke-direct {v0}, Lmobi/oneway/export/e/b;-><init>()V

    sput-object v0, Lmobi/oneway/export/e/b;->c:Lmobi/oneway/export/e/b;

    :cond_0
    sget-object v0, Lmobi/oneway/export/e/b;->c:Lmobi/oneway/export/e/b;

    return-object v0
.end method

.method private static e()V
    .locals 3

    sget-object v0, Lmobi/oneway/export/e/b;->a:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    sget-object v2, Lmobi/oneway/export/e/b;->d:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lmobi/oneway/export/e/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private f()V
    .locals 1

    sget-object v0, Lmobi/oneway/export/e/b;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmobi/oneway/export/e/b;->a:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lmobi/oneway/export/e/b;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmobi/oneway/export/e/b;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmobi/oneway/export/e/b;->f()V

    sget-object v0, Lmobi/oneway/export/e/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/oneway/export/e/b;->b:Z

    invoke-direct {p0}, Lmobi/oneway/export/e/b;->f()V

    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    :try_start_0
    sget-object v0, Lmobi/oneway/export/e/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/oneway/export/e/b;->b:Z

    invoke-static {}, Lmobi/oneway/export/e/b;->e()V

    return-void
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lmobi/oneway/export/e/b;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lmobi/oneway/export/e/b;->b:Z

    return v0
.end method
