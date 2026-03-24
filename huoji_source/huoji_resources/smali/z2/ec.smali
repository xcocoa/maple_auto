.class public Lz2/ec;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/ec$OooO0o;,
        Lz2/ec$OooO0O0;,
        Lz2/ec$OooO0OO;
    }
.end annotation


# static fields
.field private static OooO0Oo:Ljava/lang/String; = "ec"

.field private static OooO0o0:Lz2/ec;


# instance fields
.field private OooO00o:Landroid/content/Context;

.field private OooO0O0:Lz2/ec$OooO0o;

.field public OooO0OO:Lz2/ce$OooO0OO;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/ec$OooO00o;

    invoke-direct {v0, p0}, Lz2/ec$OooO00o;-><init>(Lz2/ec;)V

    iput-object v0, p0, Lz2/ec;->OooO0OO:Lz2/ce$OooO0OO;

    return-void
.end method

.method public static synthetic OooO00o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/ec;->OooO0Oo:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic OooO0O0(Lz2/ec;)Lz2/ec$OooO0o;
    .locals 0

    iget-object p0, p0, Lz2/ec;->OooO0O0:Lz2/ec$OooO0o;

    return-object p0
.end method

.method public static OooO0Oo()Lz2/ec;
    .locals 2

    sget-object v0, Lz2/ec;->OooO0o0:Lz2/ec;

    if-nez v0, :cond_1

    const-class v0, Lz2/ec;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/ec;->OooO0o0:Lz2/ec;

    if-nez v1, :cond_0

    new-instance v1, Lz2/ec;

    invoke-direct {v1}, Lz2/ec;-><init>()V

    sput-object v1, Lz2/ec;->OooO0o0:Lz2/ec;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lz2/ec;->OooO0o0:Lz2/ec;

    return-object v0
.end method

.method private OooO0oO(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lz2/ec;->OooO0o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lz2/ec;->OooO0O0:Lz2/ec$OooO0o;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lz2/ec$OooO0o;->OooO00o()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lz2/ec;->OooO00o:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tessdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "libraryDownloadTask --> path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lz2/ec$OooO0OO;

    iget-object v2, p0, Lz2/ec;->OooO00o:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lz2/ec$OooO0OO;-><init>(Lz2/ec;Landroid/content/Context;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public OooO0OO(Ljava/lang/String;Lz2/ec$OooO0o;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download --> url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-object p2, p0, Lz2/ec;->OooO0O0:Lz2/ec$OooO0o;

    invoke-direct {p0, p1}, Lz2/ec;->OooO0oO(Ljava/lang/String;)V

    return-void
.end method

.method public OooO0o()Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lz2/k3;->o000OOo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tessdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "chi_sim.traineddata"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "eng.traineddata"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooO0o0(Landroid/content/Context;)Lz2/ec;
    .locals 0

    iput-object p1, p0, Lz2/ec;->OooO00o:Landroid/content/Context;

    return-object p0
.end method
