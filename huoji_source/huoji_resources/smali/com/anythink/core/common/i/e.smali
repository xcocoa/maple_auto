.class public Lcom/anythink/core/common/i/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static d:Lcom/anythink/core/common/i/e;


# instance fields
.field public final a:J

.field public b:J

.field public c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:Z

.field private f:Landroid/content/Context;

.field private g:Landroid/app/ActivityManager;

.field private h:Lcom/anythink/core/common/i/d;

.field private final i:Ljava/io/File;

.field private j:Z

.field private volatile k:Ljava/lang/Integer;

.field private volatile l:Ljava/lang/Integer;

.field private volatile m:Ljava/lang/Long;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/common/i/e;->e:Z

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/i/e;->i:Ljava/io/File;

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/anythink/core/common/i/e;->a:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/i/e;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/i/e;->f:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/anythink/core/common/i/e;->g:Landroid/app/ActivityManager;

    new-instance v0, Lcom/anythink/core/common/i/d;

    invoke-direct {v0}, Lcom/anythink/core/common/i/d;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/i/e;->h:Lcom/anythink/core/common/i/d;

    return-void
.end method

.method public static a()Lcom/anythink/core/common/i/e;
    .locals 2

    sget-object v0, Lcom/anythink/core/common/i/e;->d:Lcom/anythink/core/common/i/e;

    if-nez v0, :cond_1

    const-class v0, Lcom/anythink/core/common/i/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/core/common/i/e;->d:Lcom/anythink/core/common/i/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/core/common/i/e;

    invoke-direct {v1}, Lcom/anythink/core/common/i/e;-><init>()V

    sput-object v1, Lcom/anythink/core/common/i/e;->d:Lcom/anythink/core/common/i/e;

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
    sget-object v0, Lcom/anythink/core/common/i/e;->d:Lcom/anythink/core/common/i/e;

    return-object v0
.end method

.method private i()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/core/common/i/e;->h:Lcom/anythink/core/common/i/d;

    iget-object v1, p0, Lcom/anythink/core/common/i/e;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/core/common/i/e;->g:Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v3

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x100000

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_0

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v3

    :cond_0
    iput v3, v0, Lcom/anythink/core/common/i/d;->d:I

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    const-string v1, "t_mem"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/i/e;->k:Ljava/lang/Integer;

    const-string v1, "anythink_t_me"

    const-string v2, "anythink_sdk"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/core/common/i/e;->f:Landroid/content/Context;

    const/4 v3, -0x1

    invoke-static {v0, v2, v1, v3}, Lcom/anythink/core/common/o/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/i/e;->k:Ljava/lang/Integer;

    :cond_2
    iget-object v0, p0, Lcom/anythink/core/common/i/e;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_3

    invoke-static {}, Lcom/anythink/core/common/i/b;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/i/e;->k:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/anythink/core/common/i/e;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/anythink/core/common/i/e;->k:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v2, v1, v3}, Lcom/anythink/core/common/o/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, Lcom/anythink/core/common/i/e;->h:Lcom/anythink/core/common/i/d;

    iget-object v1, p0, Lcom/anythink/core/common/i/e;->k:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/anythink/core/common/i/d;->a:I

    return-void
.end method

.method private j()V
    .locals 4

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    const-string v1, "c_num"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/i/e;->l:Ljava/lang/Integer;

    const-string v1, "anythink_c_nu"

    const-string v2, "anythink_sdk"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/core/common/i/e;->f:Landroid/content/Context;

    const/4 v3, -0x1

    invoke-static {v0, v2, v1, v3}, Lcom/anythink/core/common/o/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/i/e;->l:Ljava/lang/Integer;

    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/i/e;->l:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/i/e;->l:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/anythink/core/common/i/e;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/anythink/core/common/i/e;->l:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v2, v1, v3}, Lcom/anythink/core/common/o/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/core/common/i/e;->h:Lcom/anythink/core/common/i/d;

    iget-object v1, p0, Lcom/anythink/core/common/i/e;->l:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/anythink/core/common/i/d;->e:I

    return-void
.end method

.method private k()V
    .locals 7

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    const-string v1, "t_store"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/i/e;->m:Ljava/lang/Long;

    const-string v1, "anythink_t_st"

    const-string v2, "anythink_sdk"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/core/common/i/e;->f:Landroid/content/Context;

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/anythink/core/common/o/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/i/e;->m:Ljava/lang/Long;

    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/i/e;->m:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    iget-object v3, p0, Lcom/anythink/core/common/i/e;->i:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v5

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v5, v0

    :goto_0
    mul-long v5, v5, v3

    const-wide/32 v3, 0x100000

    div-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/i/e;->m:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v0, p0, Lcom/anythink/core/common/i/e;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/anythink/core/common/i/e;->m:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v2, v1, v3, v4}, Lcom/anythink/core/common/o/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_3
    iget-object v0, p0, Lcom/anythink/core/common/i/e;->h:Lcom/anythink/core/common/i/d;

    iget-object v1, p0, Lcom/anythink/core/common/i/e;->m:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/anythink/core/common/i/d;->f:J

    return-void
.end method

.method private l()J
    .locals 5

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/anythink/core/common/i/e;->i:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    :goto_0
    mul-long v3, v3, v1

    const-wide/32 v0, 0x100000

    div-long/2addr v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v3

    :catchall_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/anythink/core/d/a;)V
    .locals 4

    invoke-virtual {p1}, Lcom/anythink/core/d/a;->c()Z

    move-result p1

    iput-boolean p1, p0, Lcom/anythink/core/common/i/e;->e:Z

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lcom/anythink/core/common/i/e;->j:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/anythink/core/common/i/e;->h:Lcom/anythink/core/common/i/d;

    iget-object v0, p0, Lcom/anythink/core/common/i/e;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/core/common/i/e;->g:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x100000

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_0

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v2

    :cond_0
    iput v2, p1, Lcom/anythink/core/common/i/d;->d:I

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    const-string v0, "t_mem"

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/b/n;->c(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/anythink/core/common/i/e;->k:Ljava/lang/Integer;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/anythink/core/common/i/e;->f:Landroid/content/Context;

    const-string v1, "anythink_sdk"

    const-string v2, "anythink_t_me"

    invoke-static {p1, v1, v2, v0}, Lcom/anythink/core/common/o/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/i/e;->k:Ljava/lang/Integer;

    :cond_1
    iget-object p1, p0, Lcom/anythink/core/common/i/e;->k:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gtz p1, :cond_2

    invoke-static {}, Lcom/anythink/core/common/i/b;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/i/e;->k:Ljava/lang/Integer;

    iget-object p1, p0, Lcom/anythink/core/common/i/e;->f:Landroid/content/Context;

    const-string v1, "anythink_sdk"

    const-string v2, "anythink_t_me"

    iget-object v3, p0, Lcom/anythink/core/common/i/e;->k:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/anythink/core/common/o/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    iget-object p1, p0, Lcom/anythink/core/common/i/e;->h:Lcom/anythink/core/common/i/d;

    iget-object v1, p0, Lcom/anythink/core/common/i/e;->k:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lcom/anythink/core/common/i/d;->a:I

    :cond_3
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    const-string v1, "c_num"

    invoke-virtual {p1, v1}, Lcom/anythink/core/common/b/n;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/anythink/core/common/i/e;->l:Ljava/lang/Integer;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/anythink/core/common/i/e;->f:Landroid/content/Context;

    const-string v1, "anythink_sdk"

    const-string v2, "anythink_c_nu"

    invoke-static {p1, v1, v2, v0}, Lcom/anythink/core/common/o/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/i/e;->l:Ljava/lang/Integer;

    :cond_4
    iget-object p1, p0, Lcom/anythink/core/common/i/e;->l:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gtz p1, :cond_5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/i/e;->l:Ljava/lang/Integer;

    iget-object p1, p0, Lcom/anythink/core/common/i/e;->f:Landroid/content/Context;

    const-string v0, "anythink_sdk"

    const-string v1, "anythink_c_nu"

    iget-object v2, p0, Lcom/anythink/core/common/i/e;->l:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/anythink/core/common/o/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5
    iget-object p1, p0, Lcom/anythink/core/common/i/e;->h:Lcom/anythink/core/common/i/d;

    iget-object v0, p0, Lcom/anythink/core/common/i/e;->l:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/anythink/core/common/i/d;->e:I

    :cond_6
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    const-string v0, "t_store"

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/b/n;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/anythink/core/common/i/e;->m:Ljava/lang/Long;

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/anythink/core/common/i/e;->f:Landroid/content/Context;

    const-string v0, "anythink_sdk"

    const-string v1, "anythink_t_st"

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/anythink/core/common/o/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/i/e;->m:Ljava/lang/Long;

    :cond_7
    iget-object p1, p0, Lcom/anythink/core/common/i/e;->m:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_9

    :try_start_1
    new-instance p1, Landroid/os/StatFs;

    iget-object v0, p0, Lcom/anythink/core/common/i/e;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_8

    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockCount()I

    move-result p1

    int-to-long v2, p1

    :goto_0
    mul-long v2, v2, v0

    const-wide/32 v0, 0x100000

    div-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/i/e;->m:Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    iget-object p1, p0, Lcom/anythink/core/common/i/e;->f:Landroid/content/Context;

    const-string v0, "anythink_sdk"

    const-string v1, "anythink_t_st"

    iget-object v2, p0, Lcom/anythink/core/common/i/e;->m:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p1, v0, v1, v2, v3}, Lcom/anythink/core/common/o/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_9
    iget-object p1, p0, Lcom/anythink/core/common/i/e;->h:Lcom/anythink/core/common/i/d;

    iget-object v0, p0, Lcom/anythink/core/common/i/e;->m:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/anythink/core/common/i/d;->f:J

    :cond_a
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/core/common/i/e;->j:Z

    :cond_b
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Lcom/anythink/core/common/i/d;
    .locals 5

    iget-boolean v0, p0, Lcom/anythink/core/common/i/e;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/core/common/i/e;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-object v0, p0, Lcom/anythink/core/common/i/e;->h:Lcom/anythink/core/common/i/d;

    return-object v0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/i/e;->b:J

    iget-object v0, p0, Lcom/anythink/core/common/i/e;->h:Lcom/anythink/core/common/i/d;

    invoke-static {}, Lcom/anythink/core/common/i/a;->a()I

    move-result v1

    iput v1, v0, Lcom/anythink/core/common/i/d;->h:I

    iget-object v0, p0, Lcom/anythink/core/common/i/e;->h:Lcom/anythink/core/common/i/d;

    invoke-static {}, Lcom/anythink/core/common/i/b;->b()I

    move-result v1

    iput v1, v0, Lcom/anythink/core/common/i/d;->b:I

    iget-object v0, p0, Lcom/anythink/core/common/i/e;->h:Lcom/anythink/core/common/i/d;

    invoke-direct {p0}, Lcom/anythink/core/common/i/e;->l()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/anythink/core/common/i/d;->g:J

    iget-object v0, p0, Lcom/anythink/core/common/i/e;->h:Lcom/anythink/core/common/i/d;

    iget-object v1, p0, Lcom/anythink/core/common/i/e;->g:Landroid/app/ActivityManager;

    invoke-static {v1}, Lcom/anythink/core/common/i/b;->a(Landroid/app/ActivityManager;)I

    move-result v1

    iput v1, v0, Lcom/anythink/core/common/i/d;->c:I

    iget-object v0, p0, Lcom/anythink/core/common/i/e;->h:Lcom/anythink/core/common/i/d;

    return-object v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/i/e;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/i/e;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/i/e;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()I
    .locals 5

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    const-string v1, "t_mem"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/i/e;->k:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/core/common/i/e;->f:Landroid/content/Context;

    const/4 v2, -0x1

    const-string v3, "anythink_sdk"

    const-string v4, "anythink_t_me"

    invoke-static {v0, v3, v4, v2}, Lcom/anythink/core/common/o/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/i/e;->k:Ljava/lang/Integer;

    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/i/e;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/core/common/i/e;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public final g()I
    .locals 5

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    const-string v1, "c_num"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/i/e;->l:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/core/common/i/e;->f:Landroid/content/Context;

    const/4 v2, -0x1

    const-string v3, "anythink_sdk"

    const-string v4, "anythink_c_nu"

    invoke-static {v0, v3, v4, v2}, Lcom/anythink/core/common/o/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/i/e;->l:Ljava/lang/Integer;

    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/i/e;->l:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/core/common/i/e;->l:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public final h()J
    .locals 6

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    const-string v1, "t_store"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->c(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/i/e;->m:Ljava/lang/Long;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/core/common/i/e;->f:Landroid/content/Context;

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "anythink_sdk"

    const-string v5, "anythink_t_st"

    invoke-static {v0, v4, v5, v3}, Lcom/anythink/core/common/o/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/i/e;->m:Ljava/lang/Long;

    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/i/e;->m:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/core/common/i/e;->m:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    return-wide v1
.end method
