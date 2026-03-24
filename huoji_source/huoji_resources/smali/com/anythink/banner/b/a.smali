.class public Lcom/anythink/banner/b/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/anythink/banner/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/anythink/core/common/m/c;

.field public d:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

.field private e:Ljava/lang/Runnable;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/anythink/banner/a/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/banner/b/a;->f:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/anythink/banner/b/a;->b:Ljava/lang/ref/WeakReference;

    new-instance p1, Lcom/anythink/banner/b/a$1;

    invoke-direct {p1, p0}, Lcom/anythink/banner/b/a$1;-><init>(Lcom/anythink/banner/b/a;)V

    iput-object p1, p0, Lcom/anythink/banner/b/a;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/banner/b/a;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/banner/b/a;->f:Z

    return v0
.end method

.method public static synthetic b(Lcom/anythink/banner/b/a;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/banner/b/a;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/banner/a/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/anythink/banner/a/c;->timeUpRefreshView()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/anythink/banner/b/a;->c()V

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/banner/b/a;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/banner/a/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/anythink/banner/a/c;->timeUpRefreshView()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/anythink/banner/b/a;->c()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/banner/b/a;->d:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/banner/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/banner/b/a;->f:Z

    return v0
.end method

.method public final declared-synchronized b()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/banner/b/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/d/h;->a(Landroid/content/Context;)Lcom/anythink/core/d/h;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/h;->a(Ljava/lang/String;)Lcom/anythink/core/d/f;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/b/a;->c:Lcom/anythink/core/common/m/c;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/anythink/banner/b/a;->c()V

    :cond_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/anythink/core/d/f;->af()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iput-boolean v2, p0, Lcom/anythink/banner/b/a;->f:Z

    invoke-virtual {v0}, Lcom/anythink/core/d/f;->c()I

    move-result v1

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/anythink/banner/b/a;->d:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/anythink/core/common/f/av;->at()J

    move-result-wide v1

    goto :goto_0

    :cond_2
    move-wide v1, v3

    :goto_0
    cmp-long v5, v1, v3

    if-gtz v5, :cond_3

    invoke-virtual {v0}, Lcom/anythink/core/d/f;->ag()J

    move-result-wide v1

    :cond_3
    const-wide/16 v3, 0x7d0

    cmp-long v0, v1, v3

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    move-wide v1, v3

    :goto_1
    new-instance v0, Lcom/anythink/core/common/m/c;

    iget-object v3, p0, Lcom/anythink/banner/b/a;->e:Ljava/lang/Runnable;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/anythink/core/common/m/c;-><init>(JLjava/lang/Runnable;B)V

    iput-object v0, p0, Lcom/anythink/banner/b/a;->c:Lcom/anythink/core/common/m/c;

    invoke-virtual {v0}, Lcom/anythink/core/common/m/c;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/banner/b/a;->c:Lcom/anythink/core/common/m/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/m/c;->c()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/banner/b/a;->c:Lcom/anythink/core/common/m/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
