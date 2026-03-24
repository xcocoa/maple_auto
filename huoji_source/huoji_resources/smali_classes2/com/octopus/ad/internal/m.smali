.class public Lcom/octopus/ad/internal/m;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static F:Z = true

.field private static G:Z = false

.field public static e:Ljava/lang/String; = null

.field public static f:Ljava/lang/String; = ""

.field public static g:Ljava/lang/String; = ""

.field private static k:Ljava/lang/String; = "USED_AD_UNIT_IDS_KEY"

.field private static l:Lcom/octopus/ad/internal/m; = null

.field private static m:Ljava/lang/String; = "OctopusImpl"

.field private static p:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Landroid/util/DisplayMetrics;

.field private C:Z

.field private D:Z

.field private E:Lcom/octopus/ad/internal/b/f;

.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroid/content/Context;

.field public i:F

.field public j:F

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private q:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:Landroid/os/Handler;

.field private x:Landroid/os/Handler;

.field private y:Landroid/os/HandlerThread;

.field private z:F


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/m;->a:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/m;->b:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/m;->d:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/m;->q:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/m;->r:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/m;->s:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/m;->t:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/m;->u:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/m;->v:Ljava/util/HashSet;

    new-instance v1, Lcom/octopus/ad/internal/m$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/octopus/ad/internal/m$1;-><init>(Lcom/octopus/ad/internal/m;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/octopus/ad/internal/m;->w:Landroid/os/Handler;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/octopus/ad/internal/m;->x:Landroid/os/Handler;

    iput-object v1, p0, Lcom/octopus/ad/internal/m;->y:Landroid/os/HandlerThread;

    iput-boolean v0, p0, Lcom/octopus/ad/internal/m;->C:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/m;->D:Z

    return-void
.end method

.method public static a()Lcom/octopus/ad/internal/m;
    .locals 2

    const-class v0, Lcom/octopus/ad/internal/m;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/octopus/ad/internal/m;->l:Lcom/octopus/ad/internal/m;

    if-nez v1, :cond_0

    new-instance v1, Lcom/octopus/ad/internal/m;

    invoke-direct {v1}, Lcom/octopus/ad/internal/m;-><init>()V

    sput-object v1, Lcom/octopus/ad/internal/m;->l:Lcom/octopus/ad/internal/m;

    :cond_0
    sget-object v1, Lcom/octopus/ad/internal/m;->l:Lcom/octopus/ad/internal/m;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private r()Lcom/octopus/ad/internal/b/f;
    .locals 4

    iget-object v0, p0, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lcom/octopus/ad/internal/b/f$a;

    invoke-direct {v1, v0}, Lcom/octopus/ad/internal/b/f$a;-><init>(Landroid/content/Context;)V

    const-wide/32 v2, 0x3200000

    invoke-virtual {v1, v2, v3}, Lcom/octopus/ad/internal/b/f$a;->a(J)Lcom/octopus/ad/internal/b/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f$a;->a()Lcom/octopus/ad/internal/b/f;

    move-result-object v0

    return-object v0
.end method

.method private s()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SoonBlockedPrivateApi"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "android.content.pm.PackageParser$Package"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    :try_start_1
    const-string v2, "android.app.ActivityThread"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "currentActivityThread"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v4, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "mHiddenApiWarningShown"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The app volume must be a value between 0 and 1 inclusive."

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/q;->a(ZLjava/lang/Object;)V

    sget-object v0, Lcom/octopus/ad/internal/m;->e:Ljava/lang/String;

    const-string v1, "Octopus.initialize() must be called prior to setting the app volume."

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/q;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput p1, p0, Lcom/octopus/ad/internal/m;->z:F

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const-class v0, Lcom/octopus/ad/internal/m;

    monitor-enter v0

    if-eqz p1, :cond_6

    :try_start_0
    const-string v1, "octopus"

    const-string v2, "SDK_VERSION:1.5.8.9"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/octopus/ad/utils/b/h;->b()Lcom/octopus/ad/utils/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/utils/b/h;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/octopus/ad/utils/b/b;

    iget-object v3, p0, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/octopus/ad/utils/b/b;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    const-string v2, "duration"

    const-wide/32 v3, 0x15180

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/octopus/ad/internal/utilities/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v2, p0, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    const-string v3, "version"

    const-string v4, "1686041703212"

    invoke-static {v2, v3, v4}, Lcom/octopus/ad/internal/utilities/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    const-string v4, "lastReqTime"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/octopus/ad/internal/utilities/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/octopus/ad/utils/b/l;->c()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aHR0cDovL3Nka2NmZy5hZGludGwuY24vc2RrL3BrZ0NvbmZpZz92ZXJzaW9uPQ=="

    invoke-static {v3}, Lcom/octopus/ad/utils/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/octopus/ad/internal/j;

    invoke-direct {v2, v1}, Lcom/octopus/ad/internal/j;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/octopus/ad/Octopus;->isLimitPersonalAds()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    check-cast v1, Landroid/app/Application;

    invoke-static {v1}, Lcom/octopus/ad/utils/a/b;->a(Landroid/app/Application;)V

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->setErrorContext(Landroid/content/Context;)V

    sput-object p2, Lcom/octopus/ad/internal/m;->e:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object p2, p0, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    const-string v1, "userAgent"

    invoke-static {p2, v1}, Lcom/octopus/ad/internal/utilities/SPUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/octopus/ad/internal/m;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance p2, Lcom/octopus/ad/internal/m$2;

    invoke-direct {p2, p0, p1}, Lcom/octopus/ad/internal/m$2;-><init>(Lcom/octopus/ad/internal/m;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/octopus/ad/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    :try_start_4
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/m;->B:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v1, 0x44a00000    # 1280.0f

    const/high16 v2, 0x44340000    # 720.0f

    if-ge p2, p1, :cond_3

    int-to-float p2, p2

    div-float/2addr p2, v2

    iput p2, p0, Lcom/octopus/ad/internal/m;->i:F

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/octopus/ad/internal/m;->j:F

    goto :goto_2

    :cond_3
    int-to-float p1, p1

    div-float/2addr p1, v2

    iput p1, p0, Lcom/octopus/ad/internal/m;->i:F

    int-to-float p1, p2

    div-float/2addr p1, v1

    iput p1, p0, Lcom/octopus/ad/internal/m;->j:F

    :goto_2
    iget-boolean p1, p0, Lcom/octopus/ad/internal/m;->D:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/octopus/ad/utils/e;->a(Landroid/content/Context;)Lcom/octopus/ad/utils/e;

    move-result-object p1

    new-instance p2, Lcom/octopus/ad/internal/m$3;

    invoke-direct {p2, p0}, Lcom/octopus/ad/internal/m$3;-><init>(Lcom/octopus/ad/internal/m;)V

    invoke-virtual {p1, p2}, Lcom/octopus/ad/utils/e;->a(Lcom/octopus/ad/utils/d;)V

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/m;->D:Z

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1c

    if-lt p1, p2, :cond_5

    invoke-direct {p0}, Lcom/octopus/ad/internal/m;->s()V

    :cond_5
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/m;->n:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 2

    sget-object v0, Lcom/octopus/ad/internal/m;->e:Ljava/lang/String;

    const-string v1, "Octopus.initialize() must be called prior to setting the app volume."

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/q;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput-boolean p1, p0, Lcom/octopus/ad/internal/m;->A:Z

    return-void
.end method

.method public b()Lcom/octopus/ad/internal/b/f;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/m;->E:Lcom/octopus/ad/internal/b/f;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/octopus/ad/internal/m;->r()Lcom/octopus/ad/internal/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/m;->E:Lcom/octopus/ad/internal/b/f;

    :cond_1
    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/m;->o:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    sput-boolean p1, Lcom/octopus/ad/internal/m;->F:Z

    return-void
.end method

.method public c()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/m;->x:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/m;->y:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BackgroundHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/m;->y:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/octopus/ad/internal/m;->y:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/m;->x:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/m;->x:Landroid/os/Handler;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/octopus/ad/internal/m;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/octopus/ad/internal/m;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/m;->n:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/m;->o:Ljava/lang/String;

    return-object v0
.end method

.method public g()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/m;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "application/json; charset=utf-8"

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    const-string v0, "aHR0cDovL3N2LmFkaW50bC5jbg=="

    invoke-static {v0}, Lcom/octopus/ad/utils/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/octopus/ad/internal/m;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "http:"

    const-string v2, "https:"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/octopus/ad/internal/m;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "/api/zysdk?isEncrypt=0"

    const-string v3, "/api/zysdk?isEncrypt=1"

    const-string v4, "encrypt"

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    invoke-static {v1, v4, v0}, Lcom/octopus/ad/internal/utilities/SPUtils;->getFromGroupSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v2, v3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/octopus/ad/internal/m;->p:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    invoke-static {v1, v4, v0}, Lcom/octopus/ad/internal/utilities/SPUtils;->getFromGroupSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move-object v2, v3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/octopus/ad/internal/m;->i()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/octopus/ad/internal/m;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/octopus/ad/internal/m;->p:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "aHR0cDovL3N2LmFkaW50bC5jbg=="

    invoke-static {v0}, Lcom/octopus/ad/utils/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    iget-boolean v1, p0, Lcom/octopus/ad/internal/m;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "http:"

    const-string v2, "https:"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public l()F
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/m;->i:F

    return v0
.end method

.method public m()F
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/m;->j:F

    return v0
.end method

.method public n()F
    .locals 2

    iget v0, p0, Lcom/octopus/ad/internal/m;->i:F

    iget v1, p0, Lcom/octopus/ad/internal/m;->j:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public o()Landroid/util/DisplayMetrics;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/m;->B:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public p()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/octopus/ad/internal/m;->v:Ljava/util/HashSet;

    return-object v0
.end method

.method public q()Z
    .locals 1

    sget-boolean v0, Lcom/octopus/ad/internal/m;->F:Z

    return v0
.end method
