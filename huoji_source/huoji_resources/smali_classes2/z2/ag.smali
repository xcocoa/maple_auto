.class public final Lz2/ag;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO:Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener; = null

.field public static final OooO00o:Ljava/lang/String; = "start_eventsrv"

.field public static final OooO0O0:Ljava/lang/String; = "start_eventsrvR"

.field public static final OooO0OO:Ljava/lang/String; = ".event.localserver"

.field public static final OooO0Oo:Ljava/lang/String; = "com.cyjh.mobileanjian.ipc.ClientService"

.field public static final OooO0o:Ljava/lang/String; = "libmqm.so"

.field public static final OooO0o0:Ljava/lang/String; = "DaemonClient.zip"

.field private static OooO0oO:Landroid/app/Application; = null

.field private static OooO0oo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener; = null

.field private static OooOO0:Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback; = null

.field public static OooOO0O:Ljava/lang/String; = ""


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO()Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;
    .locals 1

    sget-object v0, Lz2/ag;->OooOO0:Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;

    return-object v0
.end method

.method public static OooO00o()V
    .locals 3

    sget-object v0, Lz2/ag;->OooO0oO:Landroid/app/Application;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lz2/ag;->OooO0oO:Landroid/app/Application;

    const-class v2, Lcom/cyjh/mq/service/IpcService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lz2/ag;->OooO0oO:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public static OooO0O0(Landroid/app/Application;Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;)V
    .locals 1

    sget-object v0, Lz2/ag;->OooO0oO:Landroid/app/Application;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sput-object p0, Lz2/ag;->OooO0oO:Landroid/app/Application;

    sput-object p1, Lz2/ag;->OooO0oo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;

    sput-object p2, Lz2/ag;->OooO:Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;

    sput-object p3, Lz2/ag;->OooOO0:Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/Injector;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/rpc/AndroidHelper;->init(Landroid/content/Context;)V

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/cyjh/mq/service/IpcService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static OooO0OO(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lz2/ag;->OooOO0O:Ljava/lang/String;

    return-void
.end method

.method public static OooO0Oo()Landroid/app/Application;
    .locals 1

    sget-object v0, Lz2/ag;->OooO0oO:Landroid/app/Application;

    return-object v0
.end method

.method public static OooO0o()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    sget-object v1, Lz2/ag;->OooO0oO:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "start_eventsrvR"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static OooO0o0()Landroid/content/Context;
    .locals 1

    sget-object v0, Lz2/ag;->OooO0oO:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static OooO0oO()Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;
    .locals 1

    sget-object v0, Lz2/ag;->OooO0oo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;

    return-object v0
.end method

.method public static OooO0oo()Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;
    .locals 1

    sget-object v0, Lz2/ag;->OooO:Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;

    return-object v0
.end method

.method private static OooOO0()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    sget-object v1, Lz2/ag;->OooO0oO:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "start_eventsrv"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
