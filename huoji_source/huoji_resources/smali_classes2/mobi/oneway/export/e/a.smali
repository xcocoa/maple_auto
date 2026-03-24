.class public Lmobi/oneway/export/e/a;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/didi/virtualapk/PluginManager;

.field private c:Lmobi/oneway/export/f/g;

.field private d:Z

.field private e:Ljava/util/concurrent/CountDownLatch;

.field private final f:J

.field private g:Ljava/util/Timer;

.field private h:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/oneway/export/e/a;->d:Z

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lmobi/oneway/export/e/a;->f:J

    iput-object p1, p0, Lmobi/oneway/export/e/a;->a:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lmobi/oneway/export/e/a;->e:Ljava/util/concurrent/CountDownLatch;

    :try_start_0
    invoke-direct {p0}, Lmobi/oneway/export/e/a;->c()V

    invoke-static {}, Lmobi/oneway/export/a/b;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object p1

    iput-object p1, p0, Lmobi/oneway/export/e/a;->b:Lcom/didi/virtualapk/PluginManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/oneway/export/a/b;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "plugin"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lorg/json/JSONArray;I)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "adp"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne p2, v3, :cond_0

    const-string p1, "appId"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static synthetic a(Lmobi/oneway/export/e/a;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lmobi/oneway/export/e/a;->e:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private a()Lmobi/oneway/export/f/g;
    .locals 4

    invoke-direct {p0}, Lmobi/oneway/export/e/a;->d()V

    iget-object v0, p0, Lmobi/oneway/export/e/a;->c:Lmobi/oneway/export/f/g;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmobi/oneway/export/e/a;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/oneway/export/e/a;->d:Z

    invoke-static {}, Lmobi/oneway/export/b;->a()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "mobi.oneway.sdk.OnewayAd"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Lmobi/oneway/export/f/g;

    invoke-direct {v3}, Lmobi/oneway/export/f/g;-><init>()V

    iput-object v3, p0, Lmobi/oneway/export/e/a;->c:Lmobi/oneway/export/f/g;

    invoke-virtual {v3, v2}, Lmobi/oneway/export/f/g;->a(Ljava/lang/Class;)V

    iget-object v2, p0, Lmobi/oneway/export/e/a;->c:Lmobi/oneway/export/f/g;

    invoke-virtual {v2, v0}, Lmobi/oneway/export/f/g;->a(I)V

    iget-object v0, p0, Lmobi/oneway/export/e/a;->c:Lmobi/oneway/export/f/g;

    invoke-virtual {v0, v1}, Lmobi/oneway/export/f/g;->a(Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Lmobi/oneway/export/e/a;->c:Lmobi/oneway/export/f/g;

    invoke-static {}, Lmobi/oneway/export/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/oneway/export/f/g;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lmobi/oneway/export/enums/PluginErrorType;->shell_error_reflectClass:Lmobi/oneway/export/enums/PluginErrorType;

    invoke-static {v0}, Lmobi/oneway/export/g/g;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/oneway/export/e/c;->a(Lmobi/oneway/export/enums/PluginErrorType;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lmobi/oneway/export/e/a;->e()V

    iget-object v0, p0, Lmobi/oneway/export/e/a;->c:Lmobi/oneway/export/f/g;

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;Lorg/json/JSONArray;)Lmobi/oneway/export/f/g;
    .locals 2

    const-string v0, "adp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lmobi/oneway/export/e/a;->a()Lmobi/oneway/export/f/g;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lmobi/oneway/export/e/a;->b(Lorg/json/JSONObject;Lorg/json/JSONArray;)Lmobi/oneway/export/f/g;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 3

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/oneway/export/f/d;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lmobi/oneway/export/f/c;

    invoke-direct {v2, v1}, Lmobi/oneway/export/f/c;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v2}, Lmobi/oneway/export/f/d;->a(Lmobi/oneway/export/f/c;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 3

    invoke-static {}, Lmobi/oneway/export/b/a;->a()Lmobi/oneway/export/b/a;

    move-result-object v0

    const-string v1, "cacheAd"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmobi/oneway/export/b/a;->a(Z)V

    const-string v1, "reqExpireTime"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/b/a;->a(J)V

    return-void
.end method

.method private b(Lorg/json/JSONObject;Lorg/json/JSONArray;)Lmobi/oneway/export/f/g;
    .locals 6

    invoke-direct {p0}, Lmobi/oneway/export/e/a;->d()V

    const-string v0, "adp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "apkpkg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "verison"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "adcl"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    iget-object v4, p0, Lmobi/oneway/export/e/a;->b:Lcom/didi/virtualapk/PluginManager;

    new-instance v5, Ljava/io/File;

    invoke-direct {p0, v3}, Lmobi/oneway/export/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/didi/virtualapk/PluginManager;->loadPlugin(Ljava/io/File;)V

    iget-object v3, p0, Lmobi/oneway/export/e/a;->b:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v3, v1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p2, v0}, Lmobi/oneway/export/e/a;->a(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    new-instance v3, Lmobi/oneway/export/f/g;

    invoke-direct {v3}, Lmobi/oneway/export/f/g;-><init>()V

    invoke-virtual {v3, v1}, Lmobi/oneway/export/f/g;->a(Ljava/lang/ClassLoader;)V

    invoke-virtual {v3, v0}, Lmobi/oneway/export/f/g;->a(I)V

    invoke-virtual {v3, p1}, Lmobi/oneway/export/f/g;->a(Ljava/lang/Class;)V

    invoke-virtual {v3, v2}, Lmobi/oneway/export/f/g;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lmobi/oneway/export/f/g;->a(J)V

    invoke-virtual {v3, p2}, Lmobi/oneway/export/f/g;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lmobi/oneway/export/e/a;->e()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private b()V
    .locals 1

    invoke-direct {p0}, Lmobi/oneway/export/e/a;->a()Lmobi/oneway/export/f/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lmobi/oneway/export/f/d;->a(Lmobi/oneway/export/f/g;)V

    :cond_0
    invoke-static {}, Lmobi/oneway/export/e/b;->a()Lmobi/oneway/export/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/oneway/export/e/b;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lmobi/oneway/export/e/b;->a()Lmobi/oneway/export/e/b;

    move-result-object v0

    new-instance v1, Lmobi/oneway/export/e/a$1;

    invoke-direct {v1, p0}, Lmobi/oneway/export/e/a$1;-><init>(Lmobi/oneway/export/e/a;)V

    invoke-virtual {v0, v1}, Lmobi/oneway/export/e/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private d()V
    .locals 4

    invoke-direct {p0}, Lmobi/oneway/export/e/a;->e()V

    new-instance v0, Lmobi/oneway/export/e/a$2;

    invoke-direct {v0, p0}, Lmobi/oneway/export/e/a$2;-><init>(Lmobi/oneway/export/e/a;)V

    iput-object v0, p0, Lmobi/oneway/export/e/a;->h:Ljava/util/TimerTask;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lmobi/oneway/export/e/a;->g:Ljava/util/Timer;

    iget-object v1, p0, Lmobi/oneway/export/e/a;->h:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/e/a;->h:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lmobi/oneway/export/e/a;->h:Ljava/util/TimerTask;

    :cond_0
    iget-object v0, p0, Lmobi/oneway/export/e/a;->g:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lmobi/oneway/export/e/a;->g:Ljava/util/Timer;

    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :try_start_0
    iget-object v0, p0, Lmobi/oneway/export/e/a;->e:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    :cond_0
    new-instance v0, Lmobi/oneway/export/d/f;

    sget-object v1, Lmobi/oneway/export/a/a;->f:[Ljava/lang/String;

    const-string v2, "/v4/sdkConfig"

    invoke-direct {v0, v1, v2}, Lmobi/oneway/export/d/f;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publishId"

    iget-object v2, p0, Lmobi/oneway/export/e/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/d/f;

    move-result-object v0

    const-string v1, "shellVersion"

    const-string v2, "2.4.7"

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/d/f;

    move-result-object v0

    const-string v1, "dmd"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/d/f;

    move-result-object v0

    const-string v1, "dmk"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/d/f;

    move-result-object v0

    const-string v1, "ip"

    invoke-static {}, Lmobi/oneway/export/a/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmobi/oneway/export/g/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/d/f;

    move-result-object v0

    const-string v1, "osv"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/d/f;

    move-result-object v0

    const-string v1, "osl"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/d/f;

    move-result-object v0

    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/d/f;

    move-result-object v0

    const-string v1, "osi"

    invoke-static {}, Lmobi/oneway/export/f/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/d/f;

    move-result-object v0

    const-string v1, "pkg"

    invoke-static {}, Lmobi/oneway/export/a/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/d/f;

    move-result-object v0

    const-string v1, "did"

    invoke-static {}, Lmobi/oneway/export/g/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/d/f;

    move-result-object v0

    const-string v1, "aid"

    invoke-static {}, Lmobi/oneway/export/g/f;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/oneway/export/d/f;->m()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "upgrade"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "e"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "appToken"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sc"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "plugins"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const-string v6, "appIdConfigs"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "placements"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v3}, Lmobi/oneway/export/a/b;->b(Ljava/lang/String;)V

    invoke-static {v2}, Lmobi/oneway/export/a/b;->a(Z)V

    invoke-static {v4}, Lmobi/oneway/export/a/b;->c(Ljava/lang/String;)V

    if-eqz v1, :cond_8

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-direct {p0, v7}, Lmobi/oneway/export/e/a;->a(Lorg/json/JSONArray;)V

    invoke-direct {p0, v0}, Lmobi/oneway/export/e/a;->a(Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "hash"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "adp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "url"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    if-ne v3, v7, :cond_2

    const-string v3, "OnewaySdk2.4.7.jar"

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".apk"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    new-instance v7, Ljava/io/File;

    invoke-direct {p0, v3}, Lmobi/oneway/export/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lmobi/oneway/export/g/h;->e(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7}, Lmobi/oneway/export/g/p;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    new-instance v3, Lmobi/oneway/export/d/f;

    invoke-direct {v3, v4}, Lmobi/oneway/export/d/f;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x7d0

    invoke-virtual {v3, v4}, Lmobi/oneway/export/d/f;->a(I)Lmobi/oneway/export/d/f;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/oneway/export/d/f;->l()[B

    move-result-object v3

    invoke-static {v3}, Lmobi/oneway/export/g/p;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v7, v3}, Lmobi/oneway/export/g/h;->a(Ljava/io/File;[B)Z

    :cond_5
    :goto_3
    invoke-direct {p0, v1, v6}, Lmobi/oneway/export/e/a;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;)Lmobi/oneway/export/f/g;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Lmobi/oneway/export/f/d;->a(Lmobi/oneway/export/f/g;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lmobi/oneway/export/e/b;->a()Lmobi/oneway/export/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/oneway/export/e/b;->c()V

    goto :goto_6

    :cond_8
    :goto_4
    invoke-direct {p0}, Lmobi/oneway/export/e/a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    invoke-direct {p0}, Lmobi/oneway/export/e/a;->b()V

    :goto_6
    return-void
.end method
