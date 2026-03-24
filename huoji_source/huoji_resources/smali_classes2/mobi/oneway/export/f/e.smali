.class public Lmobi/oneway/export/f/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/oneway/export/f/e$a;
    }
.end annotation


# static fields
.field private static g:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Lmobi/oneway/export/enums/AdType;

.field private c:Ljava/lang/String;

.field private d:Lmobi/oneway/export/f/a;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lmobi/oneway/export/f/e;->g:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lmobi/oneway/export/enums/AdType;Lmobi/oneway/export/f/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/f/e;->a:Ljava/lang/Long;

    iput-object p1, p0, Lmobi/oneway/export/f/e;->b:Lmobi/oneway/export/enums/AdType;

    iput-object p2, p0, Lmobi/oneway/export/f/e;->d:Lmobi/oneway/export/f/a;

    invoke-virtual {p2}, Lmobi/oneway/export/f/a;->g()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/oneway/export/f/e;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lmobi/oneway/export/f/a;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/oneway/export/f/e;->f:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "cid"

    iget-object v3, p0, Lmobi/oneway/export/f/e;->d:Lmobi/oneway/export/f/a;

    invoke-virtual {v3}, Lmobi/oneway/export/f/a;->a()I

    move-result v3

    iget-object v4, p0, Lmobi/oneway/export/f/e;->e:Ljava/lang/String;

    iget-object v5, p0, Lmobi/oneway/export/f/e;->f:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lmobi/oneway/export/f/b;->a(ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "v"

    iget-object v3, p0, Lmobi/oneway/export/f/e;->d:Lmobi/oneway/export/f/a;

    invoke-virtual {v3}, Lmobi/oneway/export/f/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sv"

    const-string v3, "2.4.7"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ssv"

    invoke-static {}, Lmobi/oneway/export/g/f;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "wv"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "did"

    invoke-static {}, Lmobi/oneway/export/g/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "bdid"

    invoke-static {}, Lmobi/oneway/export/g/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dos"

    const-string v3, "Android"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ua"

    invoke-static {}, Lmobi/oneway/export/g/f;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ct"

    invoke-static {}, Lmobi/oneway/export/g/f;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "nt"

    invoke-static {}, Lmobi/oneway/export/g/f;->g()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "osv"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dmd"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dmk"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "aid"

    invoke-static {}, Lmobi/oneway/export/g/f;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "bssid"

    invoke-static {}, Lmobi/oneway/export/g/f;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ssid"

    invoke-static {}, Lmobi/oneway/export/g/f;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "simopt"

    invoke-static {}, Lmobi/oneway/export/g/f;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "simoptn"

    invoke-static {}, Lmobi/oneway/export/g/f;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "lng"

    invoke-static {}, Lmobi/oneway/export/g/l;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "lat"

    invoke-static {}, Lmobi/oneway/export/g/l;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "adp"

    iget-object v3, p0, Lmobi/oneway/export/f/e;->d:Lmobi/oneway/export/f/a;

    invoke-virtual {v3}, Lmobi/oneway/export/f/a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "ip"

    invoke-static {}, Lmobi/oneway/export/a/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lmobi/oneway/export/g/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "adts"

    iget-object v3, p0, Lmobi/oneway/export/f/e;->a:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "crc"

    iget-object v3, p0, Lmobi/oneway/export/f/e;->d:Lmobi/oneway/export/f/a;

    invoke-virtual {v3}, Lmobi/oneway/export/f/a;->b()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "sc"

    invoke-static {}, Lmobi/oneway/export/a/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "slt"

    iget-object v3, p0, Lmobi/oneway/export/f/e;->d:Lmobi/oneway/export/f/a;

    invoke-virtual {v3}, Lmobi/oneway/export/f/a;->c()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "dt"

    iget-object v3, p0, Lmobi/oneway/export/f/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "pid"

    iget-object v3, p0, Lmobi/oneway/export/f/e;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "thirdPid"

    iget-object v3, p0, Lmobi/oneway/export/f/e;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "oaid"

    invoke-direct {p0}, Lmobi/oneway/export/f/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lmobi/oneway/export/a/b;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmobi/oneway/export/a/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmobi/oneway/export/a/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lmobi/oneway/export/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static synthetic a(Lmobi/oneway/export/f/e;)Lmobi/oneway/export/enums/AdType;
    .locals 0

    iget-object p0, p0, Lmobi/oneway/export/f/e;->b:Lmobi/oneway/export/enums/AdType;

    return-object p0
.end method

.method public static synthetic b(Lmobi/oneway/export/f/e;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lmobi/oneway/export/f/e;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/f/e;->a:Ljava/lang/Long;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/oneway/export/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/oneway/export/f/e;->b:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v2}, Lmobi/oneway/export/enums/AdType;->value()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/oneway/export/f/e;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/oneway/export/g/e;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lmobi/oneway/export/f/e;->d:Lmobi/oneway/export/f/a;

    invoke-virtual {v1}, Lmobi/oneway/export/f/a;->a()I

    move-result v1

    iget-object v2, p0, Lmobi/oneway/export/f/e;->e:Ljava/lang/String;

    iget-object v3, p0, Lmobi/oneway/export/f/e;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lmobi/oneway/export/f/b;->a(ILjava/lang/String;Ljava/lang/String;J)V

    const-string v0, ""

    iput-object v0, p0, Lmobi/oneway/export/f/e;->c:Ljava/lang/String;

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lmobi/oneway/export/f/e;->d:Lmobi/oneway/export/f/a;

    invoke-virtual {v1}, Lmobi/oneway/export/f/a;->e()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "mobi.oneway.third_common.util.oaid.OaidHolder"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "oaid"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Lmobi/oneway/export/enums/EventType;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lmobi/oneway/export/f/e;->d:Lmobi/oneway/export/f/a;

    invoke-virtual {v0}, Lmobi/oneway/export/f/a;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lmobi/oneway/export/f/e$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lmobi/oneway/export/f/e;->b()V

    iput-object p2, p0, Lmobi/oneway/export/f/e;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lmobi/oneway/export/f/e;->b:Lmobi/oneway/export/enums/AdType;

    sget-object v0, Lmobi/oneway/export/enums/AdType;->splash:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    invoke-direct {p0}, Lmobi/oneway/export/f/e;->b()V

    :cond_4
    :goto_0
    sget-object p2, Lmobi/oneway/export/f/e;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lmobi/oneway/export/f/e$a;

    invoke-direct {v0, p0, p1}, Lmobi/oneway/export/f/e$a;-><init>(Lmobi/oneway/export/f/e;Lmobi/oneway/export/enums/EventType;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lmobi/oneway/export/enums/EventType;Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "--"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmobi/oneway/export/f/e;->a(Lmobi/oneway/export/enums/EventType;Ljava/lang/String;)V

    return-void
.end method
