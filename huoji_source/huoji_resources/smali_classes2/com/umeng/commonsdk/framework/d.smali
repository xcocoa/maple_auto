.class public Lcom/umeng/commonsdk/framework/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/framework/d$a;
    }
.end annotation


# static fields
.field private static a:Landroid/os/HandlerThread; = null

.field private static b:Landroid/os/Handler; = null

.field private static c:Landroid/os/Handler; = null

.field private static final d:I = 0x111

.field private static final e:I = 0x200

.field private static final f:I = 0x301

.field private static g:Lcom/umeng/commonsdk/framework/d$a;

.field private static h:Landroid/net/ConnectivityManager;

.field private static i:Landroid/net/NetworkInfo;

.field private static j:Landroid/content/IntentFilter;

.field private static k:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

.field private static l:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

.field private static m:Z

.field private static n:Landroid/content/BroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/umeng/commonsdk/framework/d$1;

    invoke-direct {v0}, Lcom/umeng/commonsdk/framework/d$1;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/d;->n:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p2, Lcom/umeng/commonsdk/framework/d;->c:Landroid/os/Handler;

    sget-object p2, Lcom/umeng/commonsdk/framework/d;->a:Landroid/os/HandlerThread;

    if-nez p2, :cond_3

    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "NetWorkSender"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object p2, Lcom/umeng/commonsdk/framework/d;->a:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    sget-object p2, Lcom/umeng/commonsdk/framework/d;->g:Lcom/umeng/commonsdk/framework/d$a;

    if-nez p2, :cond_0

    new-instance p2, Lcom/umeng/commonsdk/framework/d$a;

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/umeng/commonsdk/framework/d$a;-><init>(Ljava/lang/String;)V

    sput-object p2, Lcom/umeng/commonsdk/framework/d;->g:Lcom/umeng/commonsdk/framework/d$a;

    invoke-virtual {p2}, Landroid/os/FileObserver;->startWatching()V

    const-string p2, "--->>> FileMonitor has already started!"

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->a()Landroid/content/Context;

    move-result-object p2

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p2, v0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/umeng/commonsdk/framework/d;->j:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/d;->j:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/umeng/commonsdk/framework/d;->n:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/umeng/commonsdk/framework/d;->j:Landroid/content/IntentFilter;

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    sget-object p2, Lcom/umeng/commonsdk/framework/d;->k:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    if-nez p2, :cond_2

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object p2

    sput-object p2, Lcom/umeng/commonsdk/framework/d;->k:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->getService(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/internal/StatTracer;)Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    move-result-object p1

    sput-object p1, Lcom/umeng/commonsdk/framework/d;->l:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    :cond_2
    sget-object p1, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    if-nez p1, :cond_3

    new-instance p1, Lcom/umeng/commonsdk/framework/d$2;

    sget-object p2, Lcom/umeng/commonsdk/framework/d;->a:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/umeng/commonsdk/framework/d$2;-><init>(Lcom/umeng/commonsdk/framework/d;Landroid/os/Looper;)V

    sput-object p1, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    :cond_3
    return-void
.end method

.method public static synthetic a(Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .locals 0

    sput-object p0, Lcom/umeng/commonsdk/framework/d;->h:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public static synthetic a(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    sput-object p0, Lcom/umeng/commonsdk/framework/d;->i:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method public static a()V
    .locals 1

    const/16 v0, 0x200

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/d;->c(I)V

    return-void
.end method

.method public static synthetic a(I)V
    .locals 0

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/d;->c(I)V

    return-void
.end method

.method private static a(II)V
    .locals 3

    sget-boolean v0, Lcom/umeng/commonsdk/framework/d;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/framework/d;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/umeng/commonsdk/framework/d;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p0, v0, Landroid/os/Message;->what:I

    sget-object p0, Lcom/umeng/commonsdk/framework/d;->c:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private static a(IJ)V
    .locals 1

    sget-boolean v0, Lcom/umeng/commonsdk/framework/d;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p0, v0, Landroid/os/Message;->what:I

    sget-object p0, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/umeng/commonsdk/framework/d;->m:Z

    return p0
.end method

.method public static b()V
    .locals 1

    const/16 v0, 0x111

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/d;->b(I)V

    return-void
.end method

.method private static b(I)V
    .locals 1

    sget-boolean v0, Lcom/umeng/commonsdk/framework/d;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p0, v0, Landroid/os/Message;->what:I

    sget-object p0, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public static c()V
    .locals 2

    const/16 v0, 0x301

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/framework/d;->a(II)V

    return-void
.end method

.method private static c(I)V
    .locals 1

    sget-boolean v0, Lcom/umeng/commonsdk/framework/d;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p0, v0, Landroid/os/Message;->what:I

    sget-object p0, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public static synthetic d()Landroid/net/ConnectivityManager;
    .locals 1

    sget-object v0, Lcom/umeng/commonsdk/framework/d;->h:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static synthetic e()Landroid/net/NetworkInfo;
    .locals 1

    sget-object v0, Lcom/umeng/commonsdk/framework/d;->i:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public static synthetic f()V
    .locals 0

    invoke-static {}, Lcom/umeng/commonsdk/framework/d;->j()V

    return-void
.end method

.method public static synthetic g()V
    .locals 0

    invoke-static {}, Lcom/umeng/commonsdk/framework/d;->i()V

    return-void
.end method

.method private static h()V
    .locals 2

    sget-object v0, Lcom/umeng/commonsdk/framework/d;->a:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lcom/umeng/commonsdk/framework/d;->a:Landroid/os/HandlerThread;

    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1

    sput-object v1, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    :cond_1
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->c:Landroid/os/Handler;

    if-eqz v0, :cond_2

    sput-object v1, Lcom/umeng/commonsdk/framework/d;->c:Landroid/os/Handler;

    :cond_2
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->l:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    if-eqz v0, :cond_3

    sput-object v1, Lcom/umeng/commonsdk/framework/d;->l:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    :cond_3
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->k:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    if-eqz v0, :cond_4

    sput-object v1, Lcom/umeng/commonsdk/framework/d;->k:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    :cond_4
    return-void
.end method

.method private static i()V
    .locals 3

    sget-object v0, Lcom/umeng/commonsdk/framework/d;->g:Lcom/umeng/commonsdk/framework/d$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    sput-object v1, Lcom/umeng/commonsdk/framework/d;->g:Lcom/umeng/commonsdk/framework/d$a;

    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->j:Landroid/content/IntentFilter;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/umeng/commonsdk/framework/d;->n:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/umeng/commonsdk/framework/d;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sput-object v1, Lcom/umeng/commonsdk/framework/d;->n:Landroid/content/BroadcastReceiver;

    :cond_1
    sput-object v1, Lcom/umeng/commonsdk/framework/d;->j:Landroid/content/IntentFilter;

    :cond_2
    const-string v0, "--->>> handleQuit: Quit sender thread."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/umeng/commonsdk/framework/d;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    invoke-static {}, Lcom/umeng/commonsdk/framework/d;->h()V

    :cond_3
    return-void
.end method

.method private static j()V
    .locals 8

    const-string v0, "--->>> handleProcessNext: Enter..."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    sget-boolean v0, Lcom/umeng/commonsdk/framework/d;->m:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->a()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/b;->c(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, "--->>> The envelope file exists."

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/b;->c(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    const-string v1, "--->>> Number of envelope files is greater than 100, remove old files first."

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/b;->d(Landroid/content/Context;)V

    :cond_1
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/b;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--->>> Ready to send envelope file ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    new-instance v2, Lcom/umeng/commonsdk/statistics/d;

    invoke-direct {v2, v0}, Lcom/umeng/commonsdk/statistics/d;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/umeng/commonsdk/framework/d;->l:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->isLatentActivite()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/umeng/commonsdk/framework/d;->l:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentDeactivite()V

    sget-object v3, Lcom/umeng/commonsdk/framework/d;->l:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->getDelayTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start lacency policy, wait ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "] milliseconds ."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_2
    invoke-static {v0, v3}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    invoke-virtual {v2, v1}, Lcom/umeng/commonsdk/statistics/d;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "--->>> Send envelope file success, delete it."

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/umeng/commonsdk/framework/b;->a(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "--->>> Failed to delete already processed file. We try again after delete failed."

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/umeng/commonsdk/framework/b;->a(Ljava/io/File;)Z

    :cond_3
    const/16 v1, 0x111

    invoke-static {v1}, Lcom/umeng/commonsdk/framework/d;->c(I)V

    return-void

    :cond_4
    const-string v1, "--->>> Send envelope file failed, abandon and wait next trigger!"

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v1, "--->>> The envelope file not exists, start auto process for module cache data."

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/umeng/commonsdk/framework/d;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
