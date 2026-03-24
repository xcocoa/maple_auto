.class public Lcom/umeng/commonsdk/proguard/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "UMSysLocation"

.field private static final c:I = 0x2710


# instance fields
.field private b:Landroid/location/LocationManager;

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Landroid/location/LocationListener;

.field private g:Lcom/umeng/commonsdk/proguard/i;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/commonsdk/proguard/g;->d:Z

    new-instance v0, Lcom/umeng/commonsdk/proguard/g$1;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/proguard/g$1;-><init>(Lcom/umeng/commonsdk/proguard/g;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->f:Landroid/location/LocationListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/commonsdk/proguard/g;->d:Z

    new-instance v0, Lcom/umeng/commonsdk/proguard/g$1;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/proguard/g$1;-><init>(Lcom/umeng/commonsdk/proguard/g;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->f:Landroid/location/LocationListener;

    if-nez p1, :cond_0

    const-string p1, "Context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/g;->b:Landroid/location/LocationManager;

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/umeng/commonsdk/proguard/g;)Lcom/umeng/commonsdk/proguard/i;
    .locals 0

    iget-object p0, p0, Lcom/umeng/commonsdk/proguard/g;->g:Lcom/umeng/commonsdk/proguard/i;

    return-object p0
.end method

.method public static synthetic a(Lcom/umeng/commonsdk/proguard/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/umeng/commonsdk/proguard/g;->d:Z

    return p1
.end method

.method public static synthetic b(Lcom/umeng/commonsdk/proguard/g;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/umeng/commonsdk/proguard/g;->e:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic c(Lcom/umeng/commonsdk/proguard/g;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/umeng/commonsdk/proguard/g;->d:Z

    return p0
.end method

.method public static synthetic d(Lcom/umeng/commonsdk/proguard/g;)Landroid/location/LocationManager;
    .locals 0

    iget-object p0, p0, Lcom/umeng/commonsdk/proguard/g;->b:Landroid/location/LocationManager;

    return-object p0
.end method

.method public static synthetic e(Lcom/umeng/commonsdk/proguard/g;)Landroid/location/LocationListener;
    .locals 0

    iget-object p0, p0, Lcom/umeng/commonsdk/proguard/g;->f:Landroid/location/LocationListener;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "UMSysLocation"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "destroy"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->e:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->e:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/g;->f:Landroid/location/LocationListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :catchall_0
    :cond_1
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->b:Landroid/location/LocationManager;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/g;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/umeng/commonsdk/proguard/i;)V
    .locals 14

    monitor-enter p0

    :try_start_0
    const-string v0, "UMSysLocation"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getSystemLocation"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/g;->g:Lcom/umeng/commonsdk/proguard/i;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->e:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v3}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    :try_start_1
    iput-boolean v1, p0, Lcom/umeng/commonsdk/proguard/g;->d:Z

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->b:Landroid/location/LocationManager;

    const-wide/16 v5, 0x2710

    if-eqz v0, :cond_2

    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "UMSysLocation"

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "NETWORK_PROVIDER"

    aput-object v7, v3, v4

    invoke-static {v0, v3}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/umeng/commonsdk/proguard/g;->b:Landroid/location/LocationManager;

    const-string v9, "network"

    const-wide/16 v10, 0x3e8

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/umeng/commonsdk/proguard/g;->f:Landroid/location/LocationListener;

    invoke-virtual/range {v8 .. v13}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/umeng/commonsdk/proguard/g$2;

    invoke-direct {v3, p0, v0}, Lcom/umeng/commonsdk/proguard/g$2;-><init>(Lcom/umeng/commonsdk/proguard/g;Ljava/util/Timer;)V

    :goto_0
    invoke-virtual {v0, v3, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->b:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "UMSysLocation"

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "GPS_PROVIDER"

    aput-object v7, v3, v4

    invoke-static {v0, v3}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/umeng/commonsdk/proguard/g;->b:Landroid/location/LocationManager;

    const-string v9, "gps"

    const-wide/16 v10, 0x3e8

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/umeng/commonsdk/proguard/g;->f:Landroid/location/LocationListener;

    invoke-virtual/range {v8 .. v13}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/umeng/commonsdk/proguard/g$3;

    invoke-direct {v3, p0, v0}, Lcom/umeng/commonsdk/proguard/g$3;-><init>(Lcom/umeng/commonsdk/proguard/g;Ljava/util/Timer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v3, "UMSysLocation"

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v3, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_3

    :try_start_3
    invoke-virtual {p1, v2}, Lcom/umeng/commonsdk/proguard/i;->a(Landroid/location/Location;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/g;->e:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/g;->e:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :cond_5
    :goto_3
    :try_start_5
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/g;->g:Lcom/umeng/commonsdk/proguard/i;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v2}, Lcom/umeng/commonsdk/proguard/i;->a(Landroid/location/Location;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_6
    monitor-exit p0

    return-void

    :cond_7
    :goto_4
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method
