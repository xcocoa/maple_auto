.class public final Lcom/anythink/expressad/exoplayer/scheduler/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/scheduler/b$a;,
        Lcom/anythink/expressad/exoplayer/scheduler/b$b;,
        Lcom/anythink/expressad/exoplayer/scheduler/b$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "RequirementsWatcher"


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/anythink/expressad/exoplayer/scheduler/b$c;

.field private final d:Lcom/anythink/expressad/exoplayer/scheduler/a;

.field private e:Lcom/anythink/expressad/exoplayer/scheduler/b$b;

.field private f:Z

.field private g:Lcom/anythink/expressad/exoplayer/scheduler/b$a;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/anythink/expressad/exoplayer/scheduler/b$c;Lcom/anythink/expressad/exoplayer/scheduler/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->d:Lcom/anythink/expressad/exoplayer/scheduler/a;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->c:Lcom/anythink/expressad/exoplayer/scheduler/b$c;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->b:Landroid/content/Context;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " created"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private a()V
    .locals 6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/scheduler/b;->a(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->d:Lcom/anythink/expressad/exoplayer/scheduler/a;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/scheduler/a;->a()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-eqz v1, :cond_1

    sget v1, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    if-lt v1, v3, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->b:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v4

    new-instance v5, Lcom/anythink/expressad/exoplayer/scheduler/b$a;

    invoke-direct {v5, p0, v2}, Lcom/anythink/expressad/exoplayer/scheduler/b$a;-><init>(Lcom/anythink/expressad/exoplayer/scheduler/b;B)V

    iput-object v5, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->g:Lcom/anythink/expressad/exoplayer/scheduler/b$a;

    invoke-virtual {v1, v4, v5}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    :cond_0
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->d:Lcom/anythink/expressad/exoplayer/scheduler/a;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/scheduler/a;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->d:Lcom/anythink/expressad/exoplayer/scheduler/a;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/scheduler/a;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    if-lt v1, v3, :cond_3

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    goto :goto_1

    :cond_3
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_4
    new-instance v1, Lcom/anythink/expressad/exoplayer/scheduler/b$b;

    invoke-direct {v1, p0, v2}, Lcom/anythink/expressad/exoplayer/scheduler/b$b;-><init>(Lcom/anythink/expressad/exoplayer/scheduler/b;B)V

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->e:Lcom/anythink/expressad/exoplayer/scheduler/b$b;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->b:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " started"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/scheduler/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/scheduler/b;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->d:Lcom/anythink/expressad/exoplayer/scheduler/a;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/scheduler/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->f:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->f:Z

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->e:Lcom/anythink/expressad/exoplayer/scheduler/b$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->e:Lcom/anythink/expressad/exoplayer/scheduler/b$b;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->g:Lcom/anythink/expressad/exoplayer/scheduler/b$a;

    if-eqz v1, :cond_0

    sget v1, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->b:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->g:Lcom/anythink/expressad/exoplayer/scheduler/b$a;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->g:Lcom/anythink/expressad/exoplayer/scheduler/b$a;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private c()Lcom/anythink/expressad/exoplayer/scheduler/a;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->d:Lcom/anythink/expressad/exoplayer/scheduler/a;

    return-object v0
.end method

.method private d()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->b:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    new-instance v2, Lcom/anythink/expressad/exoplayer/scheduler/b$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/anythink/expressad/exoplayer/scheduler/b$a;-><init>(Lcom/anythink/expressad/exoplayer/scheduler/b;B)V

    iput-object v2, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->g:Lcom/anythink/expressad/exoplayer/scheduler/b$a;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private e()V
    .locals 2

    sget v0, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->b:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->g:Lcom/anythink/expressad/exoplayer/scheduler/b$a;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/scheduler/b;->g:Lcom/anythink/expressad/exoplayer/scheduler/b$a;

    :cond_0
    return-void
.end method

.method private static f()V
    .locals 0

    return-void
.end method

.method private static synthetic g()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
