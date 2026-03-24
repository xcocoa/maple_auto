.class public Lcom/anythink/china/common/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/china/common/a/g;


# static fields
.field public static final a:Ljava/lang/String; = "a"

.field public static final b:Ljava/lang/String; = "action_offer_download_start"

.field public static final c:Ljava/lang/String; = "action_offer_download_end"

.field public static final d:Ljava/lang/String; = "action_offer_install_start"

.field public static final e:Ljava/lang/String; = "action_offer_install_successful"

.field public static final f:Ljava/lang/String; = "receiver_extra_offer_id"

.field public static final g:Ljava/lang/String; = "receiver_extra_click_id"

.field private static volatile h:Lcom/anythink/china/common/a;


# instance fields
.field private i:Landroid/content/Context;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/china/common/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private final r:I

.field private s:J

.field private t:Landroid/content/BroadcastReceiver;

.field private u:Lcom/anythink/china/common/service/ApkDownloadService$a;

.field private v:Landroid/content/BroadcastReceiver;

.field private w:Landroid/content/ServiceConnection;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/china/common/a;->r:I

    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/anythink/china/common/a;->s:J

    new-instance v0, Lcom/anythink/china/common/a$1;

    invoke-direct {v0, p0}, Lcom/anythink/china/common/a$1;-><init>(Lcom/anythink/china/common/a;)V

    iput-object v0, p0, Lcom/anythink/china/common/a;->w:Landroid/content/ServiceConnection;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/china/common/a;->j:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/anythink/china/common/a;->k:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/anythink/china/common/a;->l:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/anythink/china/common/a;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/anythink/china/common/c/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :try_start_0
    new-instance p1, Lcom/anythink/china/common/a$2;

    invoke-direct {p1, p0}, Lcom/anythink/china/common/a$2;-><init>(Lcom/anythink/china/common/a;)V

    iput-object p1, p0, Lcom/anythink/china/common/a;->v:Landroid/content/BroadcastReceiver;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/china/common/a;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/china/common/a;
    .locals 2

    sget-object v0, Lcom/anythink/china/common/a;->h:Lcom/anythink/china/common/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/anythink/china/common/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/china/common/a;->h:Lcom/anythink/china/common/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/china/common/a;

    invoke-direct {v1, p0}, Lcom/anythink/china/common/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anythink/china/common/a;->h:Lcom/anythink/china/common/a;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/anythink/china/common/a;->h:Lcom/anythink/china/common/a;

    return-object p0
.end method

.method public static synthetic a(Lcom/anythink/china/common/a;Lcom/anythink/china/common/service/ApkDownloadService$a;)Lcom/anythink/china/common/service/ApkDownloadService$a;
    .locals 0

    iput-object p1, p0, Lcom/anythink/china/common/a;->u:Lcom/anythink/china/common/service/ApkDownloadService$a;

    return-object p1
.end method

.method public static synthetic a(Lcom/anythink/china/common/a;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/anythink/china/common/a;->q:Ljava/util/Map;

    return-object p1
.end method

.method public static synthetic a(Lcom/anythink/china/common/a;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iput-object p1, p0, Lcom/anythink/china/common/a;->n:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p1
.end method

.method private a(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iput-wide p1, p0, Lcom/anythink/china/common/a;->s:J

    :cond_0
    return-void
.end method

.method private static a(Lcom/anythink/china/common/a/e;Z)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/china/common/a/e;->l:Lcom/anythink/core/common/g/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/china/common/a/e;->j:Lcom/anythink/core/common/f/l;

    iget-object v2, p0, Lcom/anythink/china/common/a/e;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/anythink/core/common/g/b;->a(Lcom/anythink/core/common/f/l;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/anythink/china/common/a;)V
    .locals 3

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/china/common/a$4;

    invoke-direct {v1, p0}, Lcom/anythink/china/common/a$4;-><init>(Lcom/anythink/china/common/a;)V

    const/4 p0, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/china/common/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/china/common/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/china/common/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic c(Lcom/anythink/china/common/a;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/anythink/china/common/a;->m:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static synthetic d(Lcom/anythink/china/common/a;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/anythink/china/common/a;->k:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/china/common/a$5;

    invoke-direct {v1, p0, p1}, Lcom/anythink/china/common/a$5;-><init>(Lcom/anythink/china/common/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic e(Lcom/anythink/china/common/a;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/anythink/china/common/a;->n:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private e(Lcom/anythink/china/common/a/e;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/china/common/a;->k:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/anythink/china/common/a$3;

    invoke-direct {v0, p0}, Lcom/anythink/china/common/a$3;-><init>(Lcom/anythink/china/common/a;)V

    iget-object v1, p0, Lcom/anythink/china/common/a;->m:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/anythink/china/common/a;->u:Lcom/anythink/china/common/service/ApkDownloadService$a;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/anythink/china/common/service/ApkDownloadService$a;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    const-class v2, Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "extra_unique_id"

    iget-object p1, p1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/china/common/a;->w:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static f(Lcom/anythink/china/common/a/e;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-static {p0}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".apk"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/anythink/china/common/a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/anythink/china/common/a;->q:Ljava/util/Map;

    return-object p0
.end method

.method private g()V
    .locals 4

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/china/common/a$4;

    invoke-direct {v1, p0}, Lcom/anythink/china/common/a$4;-><init>(Lcom/anythink/china/common/a;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method private h()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/anythink/china/common/a;->t:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/anythink/china/common/b;

    invoke-direct {v0}, Lcom/anythink/china/common/b;-><init>()V

    iput-object v0, p0, Lcom/anythink/china/common/a;->t:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/china/common/a;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private i()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/anythink/china/common/a;->t:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/china/common/a;->t:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Lcom/anythink/core/common/g/b;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    invoke-virtual/range {p3 .. p3}, Lcom/anythink/core/common/f/l;->F()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/china/common/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/anythink/core/common/f/l;->F()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/anythink/china/common/c/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p6, :cond_1

    invoke-interface/range {p6 .. p6}, Ljava/lang/Runnable;->run()V

    :cond_1
    new-instance v3, Lcom/anythink/china/common/a/e;

    invoke-direct {v3}, Lcom/anythink/china/common/a/e;-><init>()V

    invoke-static/range {p3 .. p3}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/l;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    iget-object v4, v0, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    iput-object v4, v3, Lcom/anythink/china/common/a/e;->a:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/anythink/china/common/a/e;->f:Ljava/lang/String;

    move-object/from16 v4, p4

    iput-object v4, v3, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    move-object/from16 v4, p5

    iput-object v4, v3, Lcom/anythink/china/common/a/e;->m:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lcom/anythink/core/common/f/l;->F()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/anythink/china/common/a/e;->e:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lcom/anythink/core/common/f/l;->v()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    move-object/from16 v4, p3

    iput-object v4, v3, Lcom/anythink/china/common/a/e;->j:Lcom/anythink/core/common/f/l;

    iget-object v5, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/anythink/core/common/f/n;->j()I

    move-result v5

    if-ne v5, v7, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    iput-boolean v5, v3, Lcom/anythink/china/common/a/e;->o:Z

    iget-object v5, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v5}, Lcom/anythink/core/common/f/n;->P()I

    move-result v5

    iput v5, v3, Lcom/anythink/china/common/a/e;->q:I

    iget-object v5, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v5}, Lcom/anythink/core/common/f/n;->O()I

    move-result v5

    iput v5, v3, Lcom/anythink/china/common/a/e;->p:I

    :cond_3
    const/high16 v5, 0x42480000    # 50.0f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v7, v5, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    invoke-static/range {p1 .. p1}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v8

    new-instance v9, Lcom/anythink/core/common/res/e;

    invoke-virtual/range {p3 .. p3}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v7, v10}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    invoke-virtual {v8, v9, v5, v5}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;II)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v3, Lcom/anythink/china/common/a/e;->d:Landroid/graphics/Bitmap;

    invoke-virtual/range {p3 .. p3}, Lcom/anythink/core/common/f/l;->D()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/anythink/core/common/f/l;->D()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    if-nez v5, :cond_4

    const-string v5, ""

    :cond_4
    const-string v7, "\\{req_id\\}"

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    :cond_5
    move-object/from16 v4, p7

    iput-object v4, v3, Lcom/anythink/china/common/a/e;->l:Lcom/anythink/core/common/g/b;

    iget-object v4, v1, Lcom/anythink/china/common/a;->p:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v4, :cond_6

    iget-object v5, v3, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v4, v1, Lcom/anythink/china/common/a;->q:Ljava/util/Map;

    if-eqz v4, :cond_7

    iget-object v5, v3, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object v4

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->G()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_8

    iput-wide v7, v4, Lcom/anythink/china/common/a;->s:J

    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/anythink/china/common/c/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto/16 :goto_5

    :cond_9
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_a

    array-length v5, v4

    if-nez v5, :cond_a

    goto :goto_5

    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/anythink/china/common/a;->s:J

    array-length v11, v4

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_d

    aget-object v13, v4, v12

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".apk"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {v14, v13}, Lcom/anythink/china/common/c/a;->b(Landroid/content/Context;Ljava/io/File;)Z

    move-result v14

    if-eqz v14, :cond_b

    :goto_2
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    add-long/2addr v14, v9

    cmp-long v16, v14, v7

    if-gez v16, :cond_c

    goto :goto_2

    :cond_c
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    :goto_4
    if-ge v6, v0, :cond_e

    sget-object v4, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "clean expired file -> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/anythink/china/common/a;->d(Lcom/anythink/china/common/a/e;)V

    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/e;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/china/common/a;->k:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "("

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-static {v3}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-static {v4}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") is downloading, do nothing"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u4e2d\uff1a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anythink/china/common/a;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/anythink/china/common/a;->k:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/anythink/china/common/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/china/common/a;->j:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/china/common/a/e;

    iget-object v4, v4, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") is waiting for downloading, do nothing"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7b49\u5f85\u4e0b\u8f7d\uff1a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anythink/china/common/a;->d(Ljava/lang/String;)V

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/anythink/china/common/a;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/china/common/b/a;->c(Lcom/anythink/china/common/a/e;)V

    iget-object v0, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x64

    const/4 v7, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/e;JJZ)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/anythink/china/common/a/e$a;->f:Lcom/anythink/china/common/a/e$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "("

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/anythink/china/common/a;->q:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/china/common/a;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/e;

    sget-object v2, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") onCleanNotification: download fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/anythink/china/common/b/a;->c(Lcom/anythink/china/common/a/e;)V

    iget-object v0, p0, Lcom/anythink/china/common/a;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/anythink/china/common/a/e$a;->e:Lcom/anythink/china/common/a/e$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/china/common/a;->n:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/china/common/a;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/e;

    sget-object v2, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") onCleanNotification: download success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/anythink/china/common/b/a;->c(Lcom/anythink/china/common/a/e;)V

    iget-object v0, p0, Lcom/anythink/china/common/a;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/anythink/china/common/a/e$a;->g:Lcom/anythink/china/common/a/e$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/china/common/a;->p:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/china/common/a;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/e;

    sget-object v2, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") onCleanNotification: install success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/anythink/china/common/b/a;->c(Lcom/anythink/china/common/a/e;)V

    iget-object v0, p0, Lcom/anythink/china/common/a;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v0, Lcom/anythink/china/common/a/e$a;->c:Lcom/anythink/china/common/a/e$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/anythink/china/common/a;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/china/common/a/e;

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/anythink/china/common/a;->u:Lcom/anythink/china/common/service/ApkDownloadService$a;

    if-eqz v0, :cond_3

    iget-object v2, p2, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/anythink/china/common/service/ApkDownloadService$a;->c(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/anythink/china/common/a;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") onCleanNotification: stop download"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/anythink/china/common/a/e$a;->f:Lcom/anythink/china/common/a/e$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p2, p0, Lcom/anythink/china/common/a;->q:Ljava/util/Map;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/china/common/a/e;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->e()V

    sget-object p2, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") onClickNotification: download fail to retry"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/anythink/china/common/a;->d(Lcom/anythink/china/common/a/e;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/anythink/china/common/b/a;->a(I)V

    :cond_1
    return-void

    :cond_2
    sget-object v1, Lcom/anythink/china/common/a/e$a;->e:Lcom/anythink/china/common/a/e$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p2, p0, Lcom/anythink/china/common/a;->n:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/china/common/a/e;

    if-eqz p1, :cond_3

    sget-object p2, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") onClickNotification: start intall"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {p2}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/anythink/china/common/b/a;->c(Lcom/anythink/china/common/a/e;)V

    iget-object p2, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {p2}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/e;)V

    invoke-virtual {p0, p1}, Lcom/anythink/china/common/a;->b(Lcom/anythink/china/common/a/e;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/anythink/china/common/b/a;->a(I)V

    :cond_4
    return-void

    :cond_5
    sget-object v1, Lcom/anythink/china/common/a/e$a;->g:Lcom/anythink/china/common/a/e$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object p2, p0, Lcom/anythink/china/common/a;->p:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p2, :cond_7

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/china/common/a/e;

    if-eqz p1, :cond_6

    sget-object p2, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") onClickNotification: start open"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {p2}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/anythink/china/common/b/a;->c(Lcom/anythink/china/common/a/e;)V

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a/e;Z)V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/anythink/china/common/b/a;->a(I)V

    :cond_7
    return-void

    :cond_8
    sget-object v1, Lcom/anythink/china/common/a/e$a;->b:Lcom/anythink/china/common/a/e$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_d

    iget-object p2, p0, Lcom/anythink/china/common/a;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/china/common/a/e;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->d()Z

    move-result p2

    if-eqz p2, :cond_c

    iget p2, p1, Lcom/anythink/china/common/a/e;->q:I

    if-ne p2, v2, :cond_9

    return-void

    :cond_9
    sget-object p2, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") onClickNotification: pause download"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/anythink/china/common/a;->u:Lcom/anythink/china/common/service/ApkDownloadService$a;

    if-eqz p2, :cond_a

    iget-object p3, p1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/anythink/china/common/service/ApkDownloadService$a;->b(Ljava/lang/String;)V

    :cond_a
    iget-object p2, p0, Lcom/anythink/china/common/a;->l:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p3, p1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_b
    iget-object p1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/anythink/china/common/b/a;->a(I)V

    :cond_c
    return-void

    :cond_d
    sget-object v1, Lcom/anythink/china/common/a/e$a;->c:Lcom/anythink/china/common/a/e$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object p2, p0, Lcom/anythink/china/common/a;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/china/common/a/e;

    if-eqz p1, :cond_e

    sget-object p2, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") onClickNotification: resume download"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/anythink/china/common/a;->d(Lcom/anythink/china/common/a/e;)V

    return-void

    :cond_e
    iget-object p1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/anythink/china/common/b/a;->a(I)V

    return-void

    :cond_f
    sget-object v1, Lcom/anythink/china/common/a/e$a;->a:Lcom/anythink/china/common/a/e$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    iget-object p2, p0, Lcom/anythink/china/common/a;->j:Ljava/util/List;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/anythink/china/common/a;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/china/common/a/e;

    iget-object v4, v3, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget p1, v3, Lcom/anythink/china/common/a/e;->q:I

    if-ne p1, v2, :cond_11

    monitor-exit p2

    return-void

    :cond_11
    sget-object p1, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") onClickNotification: pause download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/anythink/china/common/a;->j:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v1, v3

    goto :goto_0

    :cond_12
    move-object v1, v0

    :goto_0
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_13

    :try_start_2
    invoke-virtual {v1}, Lcom/anythink/china/common/a/e;->k()V

    iget-object p1, p0, Lcom/anythink/china/common/a;->l:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p2, v1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/anythink/china/common/b/a;->c(Lcom/anythink/china/common/a/e;)V

    iget-object p1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/e;JJZ)V

    return-void

    :cond_13
    iget-object p1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/anythink/china/common/b/a;->a(I)V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_14
    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/l;)Z
    .locals 1

    invoke-static {p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/l;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/china/common/a;->k:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".apk"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/anythink/core/common/f/l;)I
    .locals 5

    invoke-static {p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/l;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a;->j:Ljava/util/List;

    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/anythink/china/common/a;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/anythink/china/common/a;->j:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/china/common/a/e;

    if-eqz v4, :cond_0

    iget-object v4, v4, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    iget-object v1, p0, Lcom/anythink/china/common/a;->k:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/anythink/china/common/a;->l:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, 0x6

    return p1

    :cond_3
    iget-object v1, p0, Lcom/anythink/china/common/a;->n:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x4

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0, v0}, Lcom/anythink/china/common/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    iget-object v0, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->F()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/anythink/china/common/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x5

    return p1

    :cond_6
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method public final b()V
    .locals 9

    iget-object v0, p0, Lcom/anythink/china/common/a;->j:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/china/common/a;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/anythink/china/common/a;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    const/4 v3, 0x1

    rsub-int/lit8 v2, v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    iget-object v5, p0, Lcom/anythink/china/common/a;->j:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/anythink/china/common/a;->j:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anythink/china/common/a/e;

    iget-object v6, p0, Lcom/anythink/china/common/a;->k:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v7, v5, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/anythink/china/common/a$3;

    invoke-direct {v6, p0}, Lcom/anythink/china/common/a$3;-><init>(Lcom/anythink/china/common/a;)V

    iget-object v7, p0, Lcom/anythink/china/common/a;->m:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v8, v5, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, p0, Lcom/anythink/china/common/a;->u:Lcom/anythink/china/common/service/ApkDownloadService$a;

    if-eqz v6, :cond_2

    iget-object v5, v5, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/anythink/china/common/service/ApkDownloadService$a;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    iget-object v7, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    const-class v8, Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v7, "extra_unique_id"

    iget-object v5, v5, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    iget-object v7, p0, Lcom/anythink/china/common/a;->w:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v6, v7, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final b(Lcom/anythink/china/common/a/e;)V
    .locals 12

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "action_offer_install_start"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/anythink/china/common/a/e;->f:Ljava/lang/String;

    const-string v2, "receiver_extra_offer_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/anythink/china/common/a/e;->m:Ljava/lang/String;

    const-string v2, "receiver_extra_click_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/core/common/k;->a(Landroid/content/Context;)Lcom/anythink/core/common/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/k;->a(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/anythink/china/common/a;->o:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/china/common/a;->o:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    iget-object v0, p1, Lcom/anythink/china/common/a/e;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/anythink/china/common/a;->f(Lcom/anythink/china/common/a/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/anythink/china/common/c/a;->a(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/anythink/china/common/a/e;->e:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/anythink/china/common/a;->o:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/anythink/china/common/a/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/anythink/china/common/a;->t:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/anythink/china/common/b;

    invoke-direct {v0}, Lcom/anythink/china/common/b;-><init>()V

    iput-object v0, p0, Lcom/anythink/china/common/a;->t:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/china/common/a;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    invoke-static {p1}, Lcom/anythink/china/common/a;->f(Lcom/anythink/china/common/a/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "install: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v4, 0x18

    const-string v5, "application/vnd.android.package-archive"

    if-lt v3, v4, :cond_3

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".anythink.fileProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    const-string v3, "file://"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p1, Lcom/anythink/china/common/a/e;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/anythink/china/common/a/e;->f:Ljava/lang/String;

    iget-object v5, p1, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static/range {v3 .. v11}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v2, p1, Lcom/anythink/china/common/a/e;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/anythink/china/common/a/e;->f:Ljava/lang/String;

    iget-object v4, p1, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    const/16 v5, 0xa

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static/range {v2 .. v10}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJ)V

    :cond_4
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/anythink/china/common/a;->o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/china/common/a;->o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/e;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lcom/anythink/china/common/a;->f(Lcom/anythink/china/common/a/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    invoke-virtual {v0}, Lcom/anythink/china/common/a/e;->m()V

    iget-object v1, p0, Lcom/anythink/china/common/a;->o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/anythink/china/common/a;->p:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/anythink/china/common/a;->p:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_3
    iget-object p1, p0, Lcom/anythink/china/common/a;->p:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, v0, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/anythink/china/common/a;->n:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p1, :cond_4

    iget-object v1, v0, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object p1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/anythink/china/common/b/a;->c(Lcom/anythink/china/common/a/e;)V

    iget-object p1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x64

    const/4 v7, 0x1

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/e;JJZ)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "action_offer_install_successful"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "receiver_extra_offer_id"

    iget-object v2, v0, Lcom/anythink/china/common/a/e;->f:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "receiver_extra_click_id"

    iget-object v2, v0, Lcom/anythink/china/common/a/e;->m:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/core/common/k;->a(Landroid/content/Context;)Lcom/anythink/core/common/k;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/anythink/core/common/k;->a(Landroid/content/Intent;)Z

    iget-object v2, v0, Lcom/anythink/china/common/a/e;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/anythink/china/common/a/e;->f:Ljava/lang/String;

    iget-object v4, v0, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    const/4 v5, 0x5

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-static/range {v2 .. v10}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJ)V

    iget-object p1, p0, Lcom/anythink/china/common/a;->o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_5

    :try_start_1
    iget-object p1, p0, Lcom/anythink/china/common/a;->t:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/anythink/china/common/a;->t:Landroid/content/BroadcastReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_5
    const/4 p1, 0x0

    :try_start_2
    invoke-static {v0, p1}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a/e;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final c(Ljava/lang/String;)Lcom/anythink/china/common/a/a$a;
    .locals 1

    iget-object v0, p0, Lcom/anythink/china/common/a;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/china/common/a/a$a;

    return-object p1
.end method

.method public final c(Lcom/anythink/china/common/a/e;)V
    .locals 12

    invoke-static {p1}, Lcom/anythink/china/common/a;->f(Lcom/anythink/china/common/a/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "install: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x18

    const-string v5, "application/vnd.android.package-archive"

    if-lt v3, v4, :cond_1

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".anythink.fileProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    const-string v3, "file://"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p1, Lcom/anythink/china/common/a/e;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/anythink/china/common/a/e;->f:Ljava/lang/String;

    iget-object v5, p1, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static/range {v3 .. v11}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v2, p1, Lcom/anythink/china/common/a/e;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/anythink/china/common/a/e;->f:Ljava/lang/String;

    iget-object v4, p1, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    const/16 v5, 0xa

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static/range {v2 .. v10}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJ)V

    return-void
.end method

.method public final c()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final d()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final d(Lcom/anythink/china/common/a/e;)V
    .locals 2

    :try_start_0
    iget-object v0, p1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/anythink/china/common/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->l()V

    invoke-virtual {p0, p1}, Lcom/anythink/china/common/a;->b(Lcom/anythink/china/common/a/e;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/china/common/a;->l:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/e;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/anythink/china/common/a;->l:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/anythink/china/common/a/e;->e()V

    invoke-virtual {p0, v0}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a/e;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a/e;)V

    :goto_0
    invoke-virtual {p0}, Lcom/anythink/china/common/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final e()V
    .locals 13

    :try_start_0
    invoke-static {}, Lcom/anythink/china/common/c/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/anythink/china/common/a;->s:J

    array-length v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_4

    aget-object v9, v0, v8

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".apk"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {v10, v9}, Lcom/anythink/china/common/c/a;->b(Landroid/content/Context;Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_2

    :goto_1
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    add-long/2addr v10, v4

    cmp-long v12, v10, v2

    if-gez v12, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    if-ge v7, v0, :cond_5

    sget-object v2, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clean expired file -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/a/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/china/common/a;->k:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method
