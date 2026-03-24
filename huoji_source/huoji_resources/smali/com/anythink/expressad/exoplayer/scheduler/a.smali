.class public final Lcom/anythink/expressad/exoplayer/scheduler/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/scheduler/a$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field private static final f:I = 0x8

.field private static final g:I = 0x10

.field private static final h:I = 0x7

.field private static final i:Ljava/lang/String; = "Requirements"

.field private static final j:[Ljava/lang/String;


# instance fields
.field private final k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/anythink/expressad/exoplayer/scheduler/a;->k:I

    return-void
.end method

.method private constructor <init>(IZZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/16 p2, 0x10

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    if-eqz p3, :cond_1

    const/16 v0, 0x8

    :cond_1
    or-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/scheduler/a;-><init>(I)V

    return-void
.end method

.method private static a(Landroid/net/ConnectivityManager;)Z
    .locals 3

    sget v0, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_3

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-nez p0, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method private static a(Landroid/net/ConnectivityManager;Landroid/net/NetworkInfo;)Z
    .locals 2

    sget v0, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private b(Landroid/content/Context;)Z
    .locals 8

    iget v0, p0, Lcom/anythink/expressad/exoplayer/scheduler/a;->k:I

    const/4 v1, 0x7

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    :cond_0
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_5

    :cond_1
    sget v5, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    const/16 v6, 0x17

    const/16 v7, 0x10

    if-ge v5, v6, :cond_2

    :goto_0
    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {p1, v6}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v6, 0x1

    :goto_2
    if-nez v6, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_6

    return v4

    :cond_6
    if-ne v0, v2, :cond_7

    return v2

    :cond_7
    const/4 v6, 0x3

    if-ne v0, v6, :cond_9

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v4

    :cond_9
    if-lt v5, v7, :cond_a

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p1

    goto :goto_4

    :cond_a
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-eq p1, v2, :cond_b

    if-eq p1, v1, :cond_b

    const/16 v1, 0x9

    if-eq p1, v1, :cond_b

    const/4 p1, 0x1

    goto :goto_4

    :cond_b
    const/4 p1, 0x0

    :goto_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v4

    :cond_d
    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    return p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_f
    :goto_5
    return v4
.end method

.method private c(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/scheduler/a;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 v2, -0x1

    const-string v3, "status"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method private d(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/scheduler/a;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    sget v0, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-lt v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    return v3

    :cond_2
    const/16 v2, 0x14

    if-lt v0, v2, :cond_4

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v3

    :cond_4
    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v3
.end method

.method private static e()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/scheduler/a;->k:I

    and-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 11

    iget v0, p0, Lcom/anythink/expressad/exoplayer/scheduler/a;->k:I

    const/4 v1, 0x7

    and-int/2addr v0, v1

    const/4 v2, 0x2

    const/16 v3, 0x17

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_0

    :goto_0
    const/4 v1, 0x1

    goto/16 :goto_7

    :cond_0
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_6

    :cond_1
    sget v8, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    const/16 v9, 0x10

    if-ge v8, v3, :cond_2

    :goto_1
    const/4 v10, 0x1

    goto :goto_4

    :cond_2
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v6, v10}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v10, v9}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v10, 0x1

    :goto_3
    if-nez v10, :cond_5

    goto :goto_1

    :cond_5
    const/4 v10, 0x0

    :goto_4
    if-nez v10, :cond_6

    goto :goto_6

    :cond_6
    if-ne v0, v5, :cond_7

    goto :goto_0

    :cond_7
    const/4 v10, 0x3

    if-ne v0, v10, :cond_8

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_8
    if-lt v8, v9, :cond_9

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v1

    goto :goto_5

    :cond_9
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-eq v6, v5, :cond_a

    if-eq v6, v1, :cond_a

    const/16 v1, 0x9

    if-eq v6, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    :goto_5
    if-ne v0, v2, :cond_b

    if-nez v1, :cond_d

    goto :goto_0

    :cond_b
    const/4 v6, 0x4

    if-ne v0, v6, :cond_c

    goto :goto_7

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_d
    :goto_6
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/scheduler/a;->b()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    :goto_8
    const/4 v0, 0x1

    goto :goto_9

    :cond_f
    const/4 v0, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v1, -0x1

    const-string v6, "status"

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_e

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    goto :goto_8

    :cond_10
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/scheduler/a;->c()Z

    move-result v0

    if-nez v0, :cond_11

    :goto_a
    const/4 p1, 0x1

    goto :goto_b

    :cond_11
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    sget v0, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    if-lt v0, v3, :cond_13

    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_a

    :cond_12
    const/4 p1, 0x0

    goto :goto_b

    :cond_13
    const/16 v1, 0x14

    if-lt v0, v1, :cond_14

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_a

    :cond_14
    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_a

    :goto_b
    if-eqz p1, :cond_15

    return v5

    :cond_15
    return v4
.end method

.method public final b()Z
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/scheduler/a;->k:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/scheduler/a;->k:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/scheduler/a;->k:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
