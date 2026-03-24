.class public Lcom/anythink/core/common/a/l;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile b:Lcom/anythink/core/common/a/l;


# instance fields
.field public final a:Ljava/lang/String;

.field private c:Lcom/anythink/core/common/c/m;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/anythink/core/common/a/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/a/l;->a:Ljava/lang/String;

    const-wide/32 v0, 0xc800000

    iput-wide v0, p0, Lcom/anythink/core/common/a/l;->e:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/core/common/a/l;->f:J

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/c/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/c/m;->a(Lcom/anythink/core/common/c/b;)Lcom/anythink/core/common/c/m;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/a/l;->c:Lcom/anythink/core/common/c/m;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/a/l;->d:Ljava/util/Map;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->c(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/a/l;->e:J

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/a/l;J)J
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/common/a/l;->f:J

    return-wide p1
.end method

.method public static a()Lcom/anythink/core/common/a/l;
    .locals 2

    sget-object v0, Lcom/anythink/core/common/a/l;->b:Lcom/anythink/core/common/a/l;

    if-nez v0, :cond_1

    const-class v0, Lcom/anythink/core/common/a/l;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/core/common/a/l;->b:Lcom/anythink/core/common/a/l;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/core/common/a/l;

    invoke-direct {v1}, Lcom/anythink/core/common/a/l;-><init>()V

    sput-object v1, Lcom/anythink/core/common/a/l;->b:Lcom/anythink/core/common/a/l;

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
    sget-object v0, Lcom/anythink/core/common/a/l;->b:Lcom/anythink/core/common/a/l;

    return-object v0
.end method

.method public static synthetic a(Lcom/anythink/core/common/a/l;)Lcom/anythink/core/common/c/m;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/a/l;->c:Lcom/anythink/core/common/c/m;

    return-object p0
.end method

.method private a(Lcom/anythink/core/common/a/k;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/a/l$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/common/a/l$2;-><init>(Lcom/anythink/core/common/a/l;Lcom/anythink/core/common/a/k;)V

    const/16 p1, 0xd

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/core/common/a/l;)J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/a/l;->f:J

    return-wide v0
.end method

.method public static synthetic c(Lcom/anythink/core/common/a/l;)J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/a/l;->e:J

    return-wide v0
.end method

.method public static synthetic d(Lcom/anythink/core/common/a/l;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/a/l;->d:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/anythink/core/common/a/k;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/a/l;->c:Lcom/anythink/core/common/c/m;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/c/m;->a(Ljava/lang/String;)Lcom/anythink/core/common/a/k;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JJIZ)V
    .locals 12

    move-object v9, p0

    iget-object v0, v9, Lcom/anythink/core/common/a/l;->d:Ljava/util/Map;

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p8, :cond_0

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v10

    new-instance v11, Lcom/anythink/core/common/a/l$3;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/anythink/core/common/a/l$3;-><init>(Lcom/anythink/core/common/a/l;Ljava/lang/String;Ljava/lang/String;JJI)V

    const/16 v0, 0xd

    const/4 v1, 0x1

    invoke-virtual {v10, v11, v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;I)Z
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/anythink/core/common/a/l;->b(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    :goto_0
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)I
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/a/l;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/a/l;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/a/l;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/a/l;->c:Lcom/anythink/core/common/c/m;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/c/m;->a(Ljava/lang/String;)Lcom/anythink/core/common/a/k;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/anythink/core/common/a/k;->c()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/anythink/core/common/a/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/anythink/core/common/a/k;->e()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    iget-object v1, p0, Lcom/anythink/core/common/a/l;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/anythink/core/common/a/k;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/anythink/core/common/a/l;->c:Lcom/anythink/core/common/c/m;

    invoke-virtual {v1, p1}, Lcom/anythink/core/common/c/m;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/core/common/a/k;->c()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    if-eqz v0, :cond_2

    :try_start_2
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object p1

    new-instance v2, Lcom/anythink/core/common/a/l$2;

    invoke-direct {v2, p0, v0}, Lcom/anythink/core/common/a/l$2;-><init>(Lcom/anythink/core/common/a/l;Lcom/anythink/core/common/a/k;)V

    const/16 v0, 0xd

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v0, v3}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return v1

    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/a/l$1;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/a/l$1;-><init>(Lcom/anythink/core/common/a/l;)V

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/a/l;->e:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/common/a/l;->f:J

    return-wide v0
.end method
