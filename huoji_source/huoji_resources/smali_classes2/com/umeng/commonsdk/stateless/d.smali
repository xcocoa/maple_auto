.class public Lcom/umeng/commonsdk/stateless/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:I = 0x111

.field private static b:Landroid/content/Context; = null

.field private static c:Landroid/os/HandlerThread; = null

.field private static d:Landroid/os/Handler; = null

.field private static e:Ljava/lang/Object; = null

.field private static final f:I = 0x200

.field private static g:Landroid/content/IntentFilter;

.field private static h:Z

.field private static i:Landroid/content/BroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/stateless/d;->e:Ljava/lang/Object;

    new-instance v0, Lcom/umeng/commonsdk/stateless/d$1;

    invoke-direct {v0}, Lcom/umeng/commonsdk/stateless/d$1;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/stateless/d;->i:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/umeng/commonsdk/stateless/d;->e:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/umeng/commonsdk/stateless/d;->b:Landroid/content/Context;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/umeng/commonsdk/stateless/d;->c:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SL-NetWorkSender"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/umeng/commonsdk/stateless/d;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    sget-object v1, Lcom/umeng/commonsdk/stateless/d;->d:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/umeng/commonsdk/stateless/d$2;

    sget-object v2, Lcom/umeng/commonsdk/stateless/d;->c:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/umeng/commonsdk/stateless/d$2;-><init>(Lcom/umeng/commonsdk/stateless/d;Landroid/os/Looper;)V

    sput-object v1, Lcom/umeng/commonsdk/stateless/d;->d:Landroid/os/Handler;

    :cond_0
    sget-object v1, Lcom/umeng/commonsdk/stateless/d;->b:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "walle"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "[stateless] begin register receiver"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/umeng/commonsdk/stateless/d;->g:Landroid/content/IntentFilter;

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    sput-object v1, Lcom/umeng/commonsdk/stateless/d;->g:Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/umeng/commonsdk/stateless/d;->i:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    const-string v1, "walle"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "[stateless] register receiver ok"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/umeng/commonsdk/stateless/d;->b:Landroid/content/Context;

    sget-object v2, Lcom/umeng/commonsdk/stateless/d;->i:Landroid/content/BroadcastReceiver;

    sget-object v3, Lcom/umeng/commonsdk/stateless/d;->g:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {p1, v1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public static synthetic a(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    sput-object p0, Lcom/umeng/commonsdk/stateless/d;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static a()V
    .locals 1

    const/16 v0, 0x200

    invoke-static {v0}, Lcom/umeng/commonsdk/stateless/d;->b(I)V

    return-void
.end method

.method public static a(I)V
    .locals 1

    sget-boolean v0, Lcom/umeng/commonsdk/stateless/d;->h:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/stateless/d;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p0, v0, Landroid/os/Message;->what:I

    sget-object p0, Lcom/umeng/commonsdk/stateless/d;->d:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/umeng/commonsdk/stateless/d;->h:Z

    return p0
.end method

.method public static synthetic b()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/umeng/commonsdk/stateless/d;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static b(I)V
    .locals 4

    :try_start_0
    sget-boolean v0, Lcom/umeng/commonsdk/stateless/d;->h:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/stateless/d;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "walle"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[stateless] sendMsgOnce !!!!"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/umeng/commonsdk/stateless/d;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p0, v0, Landroid/os/Message;->what:I

    sget-object p0, Lcom/umeng/commonsdk/stateless/d;->d:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/umeng/commonsdk/stateless/d;->b:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic c()V
    .locals 0

    invoke-static {}, Lcom/umeng/commonsdk/stateless/d;->e()V

    return-void
.end method

.method public static synthetic d()V
    .locals 0

    invoke-static {}, Lcom/umeng/commonsdk/stateless/d;->f()V

    return-void
.end method

.method private static e()V
    .locals 9

    const-string v0, "walle"

    sget-boolean v1, Lcom/umeng/commonsdk/stateless/d;->h:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/umeng/commonsdk/stateless/d;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/umeng/commonsdk/stateless/f;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/umeng/commonsdk/stateless/e;

    sget-object v3, Lcom/umeng/commonsdk/stateless/d;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/umeng/commonsdk/stateless/e;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[stateless] handleProcessNext, pathUrl is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v0, v6}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/umeng/commonsdk/stateless/f;->a(Ljava/lang/String;)[B

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    invoke-virtual {v2, v6, v3}, Lcom/umeng/commonsdk/stateless/e;->a([BLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "[stateless] Send envelope file success, delete it."

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    new-array v1, v4, [Ljava/lang/Object;

    const-string v3, "[stateless] Failed to delete already processed file. We try again after delete failed."

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    const/16 v0, 0x111

    invoke-static {v0}, Lcom/umeng/commonsdk/stateless/d;->b(I)V

    goto :goto_0

    :cond_2
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "[stateless] Send envelope file failed, abandon and wait next trigger!"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/umeng/commonsdk/stateless/d;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static f()V
    .locals 3

    sget-object v0, Lcom/umeng/commonsdk/stateless/d;->g:Landroid/content/IntentFilter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/umeng/commonsdk/stateless/d;->i:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/umeng/commonsdk/stateless/d;->b:Landroid/content/Context;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    sput-object v1, Lcom/umeng/commonsdk/stateless/d;->i:Landroid/content/BroadcastReceiver;

    :cond_1
    sput-object v1, Lcom/umeng/commonsdk/stateless/d;->g:Landroid/content/IntentFilter;

    :cond_2
    sget-object v0, Lcom/umeng/commonsdk/stateless/d;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    sget-object v0, Lcom/umeng/commonsdk/stateless/d;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    sput-object v1, Lcom/umeng/commonsdk/stateless/d;->c:Landroid/os/HandlerThread;

    :cond_3
    sget-object v0, Lcom/umeng/commonsdk/stateless/d;->d:Landroid/os/Handler;

    if-eqz v0, :cond_4

    sput-object v1, Lcom/umeng/commonsdk/stateless/d;->d:Landroid/os/Handler;

    :cond_4
    return-void
.end method
