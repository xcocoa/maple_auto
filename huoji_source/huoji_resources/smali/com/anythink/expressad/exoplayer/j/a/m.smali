.class public final Lcom/anythink/expressad/exoplayer/j/a/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/j/a/a;


# static fields
.field private static final a:Ljava/lang/String; = "SimpleCache"

.field private static final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Z


# instance fields
.field private final d:Ljava/io/File;

.field private final e:Lcom/anythink/expressad/exoplayer/j/a/d;

.field private final f:Lcom/anythink/expressad/exoplayer/j/a/h;

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/anythink/expressad/exoplayer/j/a/a$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:J

.field private i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/anythink/expressad/exoplayer/j/a/m;->b:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lcom/anythink/expressad/exoplayer/j/a/d;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/anythink/expressad/exoplayer/j/a/m;-><init>(Ljava/io/File;Lcom/anythink/expressad/exoplayer/j/a/d;[BZ)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lcom/anythink/expressad/exoplayer/j/a/d;Lcom/anythink/expressad/exoplayer/j/a/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/j/a/m;->c(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->d:Ljava/io/File;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->e:Lcom/anythink/expressad/exoplayer/j/a/d;

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->g:Ljava/util/HashMap;

    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    new-instance p2, Lcom/anythink/expressad/exoplayer/j/a/m$1;

    const-string p3, "SimpleCache.initialize()"

    invoke-direct {p2, p0, p3, p1}, Lcom/anythink/expressad/exoplayer/j/a/m$1;-><init>(Lcom/anythink/expressad/exoplayer/j/a/m;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Another SimpleCache instance uses the folder: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private constructor <init>(Ljava/io/File;Lcom/anythink/expressad/exoplayer/j/a/d;[B)V
    .locals 1

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/anythink/expressad/exoplayer/j/a/m;-><init>(Ljava/io/File;Lcom/anythink/expressad/exoplayer/j/a/d;[BZ)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lcom/anythink/expressad/exoplayer/j/a/d;[BZ)V
    .locals 1

    new-instance v0, Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-direct {v0, p1, p3, p4}, Lcom/anythink/expressad/exoplayer/j/a/h;-><init>(Ljava/io/File;[BZ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/expressad/exoplayer/j/a/m;-><init>(Ljava/io/File;Lcom/anythink/expressad/exoplayer/j/a/d;Lcom/anythink/expressad/exoplayer/j/a/h;)V

    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/j/a/e;Z)V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    iget-object v1, p1, Lcom/anythink/expressad/exoplayer/j/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/j/a/h;->b(Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/j/a/g;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/j/a/g;->a(Lcom/anythink/expressad/exoplayer/j/a/e;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v1, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->h:J

    iget-wide v3, p1, Lcom/anythink/expressad/exoplayer/j/a/e;->c:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->h:J

    if-eqz p2, :cond_1

    :try_start_0
    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/j/a/g;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/anythink/expressad/exoplayer/j/a/h;->d(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/j/a/h;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/j/a/m;->c(Lcom/anythink/expressad/exoplayer/j/a/e;)V

    throw p2

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/j/a/m;->c(Lcom/anythink/expressad/exoplayer/j/a/e;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/j/a/m;)V
    .locals 9

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->d:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/j/a/h;->a()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cached_content_index.exi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-static {v3, v4}, Lcom/anythink/expressad/exoplayer/j/a/n;->a(Ljava/io/File;Lcom/anythink/expressad/exoplayer/j/a/h;)Lcom/anythink/expressad/exoplayer/j/a/n;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    invoke-direct {p0, v4}, Lcom/anythink/expressad/exoplayer/j/a/m;->a(Lcom/anythink/expressad/exoplayer/j/a/n;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/j/a/h;->d()V

    :try_start_0
    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/j/a/h;->b()V
    :try_end_0
    .catch Lcom/anythink/expressad/exoplayer/j/a/a$a; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "SimpleCache"

    const-string v1, "Storing index file failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/j/a/n;)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    iget-object v1, p1, Lcom/anythink/expressad/exoplayer/j/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/j/a/h;->a(Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/j/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/j/a/g;->a(Lcom/anythink/expressad/exoplayer/j/a/n;)V

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->h:J

    iget-wide v2, p1, Lcom/anythink/expressad/exoplayer/j/a/e;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->h:J

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/j/a/m;->b(Lcom/anythink/expressad/exoplayer/j/a/n;)V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/expressad/exoplayer/j/a/m;)Lcom/anythink/expressad/exoplayer/j/a/d;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->e:Lcom/anythink/expressad/exoplayer/j/a/d;

    return-object p0
.end method

.method private b(Lcom/anythink/expressad/exoplayer/j/a/n;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->g:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/j/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static declared-synchronized b(Ljava/io/File;)Z
    .locals 2

    const-class v0, Lcom/anythink/expressad/exoplayer/j/a/m;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/expressad/exoplayer/j/a/m;->b:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private c(Lcom/anythink/expressad/exoplayer/j/a/e;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->g:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/j/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Lcom/anythink/expressad/exoplayer/j/a/n;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->g:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/j/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static declared-synchronized c(Ljava/io/File;)Z
    .locals 2

    const-class v0, Lcom/anythink/expressad/exoplayer/j/a/m;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/anythink/expressad/exoplayer/j/a/m;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/anythink/expressad/exoplayer/j/a/m;->b:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized d()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/anythink/expressad/exoplayer/j/a/m;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/anythink/expressad/exoplayer/j/a/m;->c:Z

    sget-object v1, Lcom/anythink/expressad/exoplayer/j/a/m;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized d(Ljava/io/File;)V
    .locals 2

    const-class v0, Lcom/anythink/expressad/exoplayer/j/a/m;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/anythink/expressad/exoplayer/j/a/m;->c:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/anythink/expressad/exoplayer/j/a/m;->b:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized e(Ljava/lang/String;J)Lcom/anythink/expressad/exoplayer/j/a/n;
    .locals 1

    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/j/a/m;->f(Ljava/lang/String;J)Lcom/anythink/expressad/exoplayer/j/a/n;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private e()V
    .locals 9

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/j/a/h;->a()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cached_content_index.exi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-static {v3, v4}, Lcom/anythink/expressad/exoplayer/j/a/n;->a(Ljava/io/File;Lcom/anythink/expressad/exoplayer/j/a/h;)Lcom/anythink/expressad/exoplayer/j/a/n;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    invoke-direct {p0, v4}, Lcom/anythink/expressad/exoplayer/j/a/m;->a(Lcom/anythink/expressad/exoplayer/j/a/n;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/j/a/h;->d()V

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/j/a/h;->b()V
    :try_end_0
    .catch Lcom/anythink/expressad/exoplayer/j/a/a$a; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SimpleCache"

    const-string v2, "Storing index file failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private declared-synchronized f(Ljava/lang/String;J)Lcom/anythink/expressad/exoplayer/j/a/n;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->i:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/j/a/h;->b(Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/j/a/g;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1, p2, p3}, Lcom/anythink/expressad/exoplayer/j/a/n;->b(Ljava/lang/String;J)Lcom/anythink/expressad/exoplayer/j/a/n;

    move-result-object p2

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v0, p2, p3}, Lcom/anythink/expressad/exoplayer/j/a/g;->a(J)Lcom/anythink/expressad/exoplayer/j/a/n;

    move-result-object v2

    iget-boolean v3, v2, Lcom/anythink/expressad/exoplayer/j/a/e;->d:Z

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/anythink/expressad/exoplayer/j/a/e;->e:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j/a/m;->f()V

    goto :goto_1

    :cond_2
    move-object p2, v2

    :goto_2
    iget-boolean p3, p2, Lcom/anythink/expressad/exoplayer/j/a/e;->d:Z

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-virtual {p3, p1}, Lcom/anythink/expressad/exoplayer/j/a/h;->b(Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/j/a/g;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/exoplayer/j/a/g;->b(Lcom/anythink/expressad/exoplayer/j/a/n;)Lcom/anythink/expressad/exoplayer/j/a/n;

    move-result-object p1

    iget-object p3, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->g:Ljava/util/HashMap;

    iget-object p2, p2, Lcom/anythink/expressad/exoplayer/j/a/e;->a:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v1

    :goto_3
    if-ltz p3, :cond_3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_3
    monitor-exit p0

    return-object p1

    :cond_4
    :try_start_1
    iget-object p3, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-virtual {p3, p1}, Lcom/anythink/expressad/exoplayer/j/a/h;->a(Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/j/a/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/j/a/g;->b()Z

    move-result p3

    if-nez p3, :cond_5

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/exoplayer/j/a/g;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_5
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private f()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/j/a/h;->c()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/exoplayer/j/a/g;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/j/a/g;->c()Ljava/util/TreeSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/exoplayer/j/a/e;

    iget-object v4, v3, Lcom/anythink/expressad/exoplayer/j/a/e;->e:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/exoplayer/j/a/e;

    invoke-direct {p0, v3, v1}, Lcom/anythink/expressad/exoplayer/j/a/m;->a(Lcom/anythink/expressad/exoplayer/j/a/e;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/j/a/h;->d()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/j/a/h;->b()V

    return-void
.end method

.method private g(Ljava/lang/String;J)Lcom/anythink/expressad/exoplayer/j/a/n;
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/j/a/h;->b(Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/j/a/g;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/anythink/expressad/exoplayer/j/a/n;->b(Ljava/lang/String;J)Lcom/anythink/expressad/exoplayer/j/a/n;

    move-result-object p1

    return-object p1

    :cond_0
    :goto_0
    invoke-virtual {v0, p2, p3}, Lcom/anythink/expressad/exoplayer/j/a/g;->a(J)Lcom/anythink/expressad/exoplayer/j/a/n;

    move-result-object p1

    iget-boolean v1, p1, Lcom/anythink/expressad/exoplayer/j/a/e;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/anythink/expressad/exoplayer/j/a/e;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j/a/m;->f()V

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;J)Lcom/anythink/expressad/exoplayer/j/a/e;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/j/a/m;->e(Ljava/lang/String;J)Lcom/anythink/expressad/exoplayer/j/a/n;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Ljava/util/NavigableSet;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet<",
            "Lcom/anythink/expressad/exoplayer/j/a/e;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/j/a/h;->b(Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/j/a/g;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/j/a/g;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/j/a/g;->c()Ljava/util/TreeSet;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :goto_1
    :try_start_1
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/anythink/expressad/exoplayer/j/a/a$b;)Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/anythink/expressad/exoplayer/j/a/a$b;",
            ")",
            "Ljava/util/NavigableSet<",
            "Lcom/anythink/expressad/exoplayer/j/a/e;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/exoplayer/j/a/m;->a(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j/a/m;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->d:Ljava/io/File;

    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/j/a/m;->d(Ljava/io/File;)V

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->i:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_4
    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->d:Ljava/io/File;

    invoke-static {v2}, Lcom/anythink/expressad/exoplayer/j/a/m;->d(Ljava/io/File;)V

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->i:Z

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/anythink/expressad/exoplayer/j/a/e;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/j/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/j/a/h;->b(Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/j/a/g;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/j/a/g;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/exoplayer/j/a/g;->a(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/j/a/g;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/j/a/h;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/io/File;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->i:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-static {p1, v0}, Lcom/anythink/expressad/exoplayer/j/a/n;->a(Ljava/io/File;Lcom/anythink/expressad/exoplayer/j/a/h;)Lcom/anythink/expressad/exoplayer/j/a/n;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/j/a/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/anythink/expressad/exoplayer/j/a/h;->b(Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/j/a/g;

    move-result-object v3

    invoke-static {v3}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/j/a/g;->b()Z

    move-result v4

    invoke-static {v4}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/j/a/g;->a()Lcom/anythink/expressad/exoplayer/j/a/i;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/j/a/j;->a(Lcom/anythink/expressad/exoplayer/j/a/i;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-eqz p1, :cond_5

    iget-wide v5, v0, Lcom/anythink/expressad/exoplayer/j/a/e;->b:J

    iget-wide v7, v0, Lcom/anythink/expressad/exoplayer/j/a/e;->c:J

    add-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-gtz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    :cond_5
    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/j/a/m;->a(Lcom/anythink/expressad/exoplayer/j/a/n;)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/j/a/h;->b()V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/anythink/expressad/exoplayer/j/a/k;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/j/a/h;->a(Ljava/lang/String;Lcom/anythink/expressad/exoplayer/j/a/k;)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/j/a/h;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;JJ)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->i:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/j/a/h;->b(Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/j/a/g;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/anythink/expressad/exoplayer/j/a/g;->a(JJ)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p3, p1, p4

    if-ltz p3, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/anythink/expressad/exoplayer/j/a/m;->c(Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/j/a/i;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/j/a/j;->a(Lcom/anythink/expressad/exoplayer/j/a/i;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;JJ)J
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/j/a/h;->b(Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/j/a/g;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/anythink/expressad/exoplayer/j/a/g;->a(JJ)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :cond_1
    neg-long p1, p4

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic b(Ljava/lang/String;J)Lcom/anythink/expressad/exoplayer/j/a/e;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/j/a/m;->f(Ljava/lang/String;J)Lcom/anythink/expressad/exoplayer/j/a/n;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/j/a/h;->e()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/anythink/expressad/exoplayer/j/a/e;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->i:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    invoke-direct {p0, p1, v1}, Lcom/anythink/expressad/exoplayer/j/a/m;->a(Lcom/anythink/expressad/exoplayer/j/a/e;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;Lcom/anythink/expressad/exoplayer/j/a/a$b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->g:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/j/a/i;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/j/a/h;->e(Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/j/a/i;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Ljava/lang/String;J)Ljava/io/File;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->f:Lcom/anythink/expressad/exoplayer/j/a/h;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/j/a/h;->b(Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/j/a/g;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/j/a/g;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j/a/m;->f()V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m;->d:Ljava/io/File;

    iget v1, p1, Lcom/anythink/expressad/exoplayer/j/a/g;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/j/a/n;->a(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Ljava/lang/String;J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/anythink/expressad/exoplayer/j/a/k;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/j/a/k;-><init>()V

    invoke-static {v0, p2, p3}, Lcom/anythink/expressad/exoplayer/j/a/j;->a(Lcom/anythink/expressad/exoplayer/j/a/k;J)V

    invoke-virtual {p0, p1, v0}, Lcom/anythink/expressad/exoplayer/j/a/m;->a(Ljava/lang/String;Lcom/anythink/expressad/exoplayer/j/a/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
