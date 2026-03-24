.class public Lmobi/oneway/export/Ad/OnewaySdk;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lmobi/oneway/export/Ad/OnewaySdk;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSdkConfigured()V
    .locals 1

    invoke-static {}, Lmobi/oneway/export/Ad/OnewaySdk;->isConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " OnewaySdk.configure method has not invoked first "

    invoke-static {v0}, Lmobi/oneway/export/g/m;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static configure(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lmobi/oneway/export/Ad/OnewaySdk;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "config method has been called"

    invoke-static {p0}, Lmobi/oneway/export/g/m;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "Context must not be null"

    invoke-static {p0}, Lmobi/oneway/export/g/m;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p1}, Lmobi/oneway/export/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmobi/oneway/export/a/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lmobi/oneway/export/c/c;->a()Lmobi/oneway/export/c/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/oneway/export/c/c;->a(Landroid/content/Context;)V

    invoke-static {}, Lmobi/oneway/export/e/b;->a()Lmobi/oneway/export/e/b;

    move-result-object p0

    invoke-virtual {p0}, Lmobi/oneway/export/e/b;->b()V

    new-instance p0, Lmobi/oneway/export/e/a;

    invoke-direct {p0, p1}, Lmobi/oneway/export/e/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.4.7"

    return-object v0
.end method

.method public static isConfigured()Z
    .locals 1

    sget-object v0, Lmobi/oneway/export/Ad/OnewaySdk;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static setDebugMode(Z)V
    .locals 0

    invoke-static {p0}, Lmobi/oneway/export/g/m;->a(Z)V

    return-void
.end method
