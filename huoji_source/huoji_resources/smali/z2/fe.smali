.class public final Lz2/fe;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/ee;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/fe$OooO0O0;,
        Lz2/fe$OooO0o;,
        Lz2/fe$OooO0OO;
    }
.end annotation


# static fields
.field private static final OooOO0O:I = 0x1

.field private static final OooOO0o:I = 0x2

.field private static final OooOOO:I = 0x19

.field private static final OooOOO0:I = 0x3


# instance fields
.field private OooO:Landroid/os/Handler;

.field public volatile OooO00o:Z

.field public OooO0O0:Z

.field public OooO0OO:Z

.field public OooO0Oo:Lz2/fe$OooO0o;

.field private OooO0o:Lcom/cyjh/mqm/MQLanguageStub;

.field public OooO0o0:Lz2/pg;

.field public OooO0oO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

.field public OooO0oo:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lz2/fe$OooO0O0;",
            ">;"
        }
    .end annotation
.end field

.field private OooOO0:Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/fe;->OooO00o:Z

    iput-boolean v0, p0, Lz2/fe;->OooO0O0:Z

    iput-boolean v0, p0, Lz2/fe;->OooO0OO:Z

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lz2/fe;->OooO0oo:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v0, Lz2/fe$OooO00o;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lz2/fe$OooO00o;-><init>(Lz2/fe;Landroid/os/Looper;)V

    iput-object v0, p0, Lz2/fe;->OooO:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/fe;->OooOO0:Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;

    return-void
.end method

.method private static synthetic OooO(Lz2/fe;)Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;
    .locals 0

    iget-object p0, p0, Lz2/fe;->OooO0oO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    return-object p0
.end method

.method private OooO00o(II)V
    .locals 11

    :try_start_0
    new-instance v10, Lz2/fe$OooO0O0;

    const/4 v2, 0x3

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v9, ""

    move-object v0, v10

    move-object v1, p0

    move v7, p1

    move v8, p2

    invoke-direct/range {v0 .. v9}, Lz2/fe$OooO0O0;-><init>(Lz2/fe;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p1, p0, Lz2/fe;->OooO0oo:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v10}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

.method public static synthetic OooO0O0(Lz2/fe;)V
    .locals 12

    iget-object v0, p0, Lz2/fe;->OooO0o0:Lz2/pg;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/fe;->OooO00o:Z

    iget-object v1, p0, Lz2/fe;->OooO:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0}, Lz2/fe;->OooOOo0()V

    invoke-virtual {p0}, Lz2/fe;->OooOOO()Lcom/cyjh/mqm/MQLanguageStub;

    move-result-object v2

    iget-object v1, p0, Lz2/fe;->OooO0o0:Lz2/pg;

    invoke-virtual {v1}, Lz2/pg;->OooO00o()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lz2/fe;->OooO0o0:Lz2/pg;

    invoke-virtual {v1}, Lz2/pg;->OooOo00()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lz2/fe;->OooO0o0:Lz2/pg;

    invoke-virtual {v1}, Lz2/pg;->OooO0Oo()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lz2/fe;->OooO0o0:Lz2/pg;

    invoke-virtual {v1}, Lz2/pg;->getAppId()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lz2/fe;->OooO0o0:Lz2/pg;

    invoke-virtual {v1}, Lz2/pg;->OooOO0O()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lz2/fe;->OooO0o0:Lz2/pg;

    invoke-virtual {v1}, Lz2/pg;->OooOOO0()Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lz2/fe;->OooO0o0:Lz2/pg;

    invoke-virtual {v1}, Lz2/pg;->OooO0OO()I

    move-result v9

    iget-object v1, p0, Lz2/fe;->OooO0o0:Lz2/pg;

    invoke-virtual {v1}, Lz2/pg;->OooOoOO()J

    move-result-wide v10

    invoke-virtual/range {v2 .. v11}, Lcom/cyjh/mqm/MQLanguageStub;->Run(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)I

    move-result v1

    const/16 v2, 0x66

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lz2/ag;->OooO0o0()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/cyjh/mqsdk/R$string;->toast_run_failed:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lz2/fe;->OooOO0o(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lz2/fe;->OooO:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/log/NativeLog;->getExtraLog()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lz2/fe;->OooO:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    invoke-static {}, Lz2/ag;->OooO0o0()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/cyjh/mqsdk/R$string;->toast_on_stop_script:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lz2/fe;->OooOO0o(Ljava/lang/String;)V

    invoke-static {}, Lz2/eb;->OooO0o0()V

    invoke-static {}, Lcom/cyjh/event/Injector;->release()V

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/log/NativeLog;->reset()V

    iput-boolean v3, p0, Lz2/fe;->OooO00o:Z

    :cond_2
    return-void
.end method

.method private OooO0OO(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lz2/fe;->OooO0oO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    :cond_0
    return-void
.end method

.method private OooO0Oo(Lz2/pg;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lz2/fe;->OooO0o0:Lz2/pg;

    :cond_0
    return-void
.end method

.method private OooO0o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    :try_start_0
    new-instance v10, Lz2/fe$OooO0O0;

    const/4 v2, 0x2

    const-string v3, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    move-object v0, v10

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v9}, Lz2/fe$OooO0O0;-><init>(Lz2/fe;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p1, p0, Lz2/fe;->OooO0oo:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v10}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

.method private OooO0o0(Ljava/lang/String;)V
    .locals 11

    :try_start_0
    iget-boolean v0, p0, Lz2/fe;->OooO0OO:Z

    if-nez v0, :cond_0

    new-instance v0, Lz2/fe$OooO0o;

    const-string v1, "ScriptRunnerLite_Request"

    invoke-direct {v0, p0, v1}, Lz2/fe$OooO0o;-><init>(Lz2/fe;Ljava/lang/String;)V

    iput-object v0, p0, Lz2/fe;->OooO0Oo:Lz2/fe$OooO0o;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    new-instance v10, Lz2/fe$OooO0O0;

    const/4 v2, 0x1

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Lz2/fe$OooO0O0;-><init>(Lz2/fe;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p1, p0, Lz2/fe;->OooO0oo:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v10}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

.method private OooO0oO(ZIIII)V
    .locals 6

    invoke-virtual {p0}, Lz2/fe;->OooOOOo()Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;->SetImageCrop(ZIIII)V

    return-void
.end method

.method private static synthetic OooO0oo(Lz2/fe;Z)Z
    .locals 0

    iput-boolean p1, p0, Lz2/fe;->OooO0OO:Z

    return p1
.end method

.method private OooOO0(Ljava/lang/String;)V
    .locals 11

    :try_start_0
    new-instance v10, Lz2/fe$OooO0O0;

    const/4 v2, 0x4

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lz2/fe$OooO0O0;-><init>(Lz2/fe;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p1, p0, Lz2/fe;->OooO0oo:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v10}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

.method private static synthetic OooOO0O(Lz2/fe;)Lz2/pg;
    .locals 0

    iget-object p0, p0, Lz2/fe;->OooO0o0:Lz2/pg;

    return-object p0
.end method

.method private OooOO0o(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lz2/fe;->OooO:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static synthetic OooOOO0(Lz2/fe;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 0

    iget-object p0, p0, Lz2/fe;->OooO0oo:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p0
.end method

.method private static synthetic OooOOOO(Lz2/fe;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/fe;->OooO0O0:Z

    return v0
.end method

.method private OooOOoo()V
    .locals 12

    iget-object v0, p0, Lz2/fe;->OooO0o0:Lz2/pg;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/fe;->OooO00o:Z

    iget-object v1, p0, Lz2/fe;->OooO:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0}, Lz2/fe;->OooOOo0()V

    invoke-virtual {p0}, Lz2/fe;->OooOOO()Lcom/cyjh/mqm/MQLanguageStub;

    move-result-object v2

    iget-object v1, p0, Lz2/fe;->OooO0o0:Lz2/pg;

    invoke-virtual {v1}, Lz2/pg;->OooO00o()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lz2/fe;->OooO0o0:Lz2/pg;

    invoke-virtual {v1}, Lz2/pg;->OooOo00()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lz2/fe;->OooO0o0:Lz2/pg;

    invoke-virtual {v1}, Lz2/pg;->OooO0Oo()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lz2/fe;->OooO0o0:Lz2/pg;

    invoke-virtual {v1}, Lz2/pg;->getAppId()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lz2/fe;->OooO0o0:Lz2/pg;

    invoke-virtual {v1}, Lz2/pg;->OooOO0O()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lz2/fe;->OooO0o0:Lz2/pg;

    invoke-virtual {v1}, Lz2/pg;->OooOOO0()Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lz2/fe;->OooO0o0:Lz2/pg;

    invoke-virtual {v1}, Lz2/pg;->OooO0OO()I

    move-result v9

    iget-object v1, p0, Lz2/fe;->OooO0o0:Lz2/pg;

    invoke-virtual {v1}, Lz2/pg;->OooOoOO()J

    move-result-wide v10

    invoke-virtual/range {v2 .. v11}, Lcom/cyjh/mqm/MQLanguageStub;->Run(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)I

    move-result v1

    const/16 v2, 0x66

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lz2/ag;->OooO0o0()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/cyjh/mqsdk/R$string;->toast_run_failed:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lz2/fe;->OooOO0o(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lz2/fe;->OooO:Landroid/os/Handler;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/log/NativeLog;->getExtraLog()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lz2/fe;->OooO:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    invoke-static {}, Lz2/ag;->OooO0o0()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/cyjh/mqsdk/R$string;->toast_on_stop_script:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lz2/fe;->OooOO0o(Ljava/lang/String;)V

    invoke-static {}, Lz2/eb;->OooO0o0()V

    invoke-static {}, Lcom/cyjh/event/Injector;->release()V

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/log/NativeLog;->reset()V

    iput-boolean v3, p0, Lz2/fe;->OooO00o:Z

    return-void
.end method


# virtual methods
.method public final OooOOO()Lcom/cyjh/mqm/MQLanguageStub;
    .locals 7

    iget-object v0, p0, Lz2/fe;->OooO0o:Lcom/cyjh/mqm/MQLanguageStub;

    if-nez v0, :cond_1

    new-instance v0, Lcom/cyjh/mqm/MQLanguageStub;

    invoke-direct {v0}, Lcom/cyjh/mqm/MQLanguageStub;-><init>()V

    iput-object v0, p0, Lz2/fe;->OooO0o:Lcom/cyjh/mqm/MQLanguageStub;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Application: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lz2/ag;->OooO0Oo()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lz2/ag;->OooO0Oo()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    iget-object v1, p0, Lz2/fe;->OooO0o:Lcom/cyjh/mqm/MQLanguageStub;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lz2/ag;->OooO0o0()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-static {}, Lz2/ag;->OooO0o0()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    const-string v6, "lib"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/cyjh/mqm/MQLanguageStub;->SetLocalDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lz2/fe;->OooO0o:Lcom/cyjh/mqm/MQLanguageStub;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cyjh/mqm/MQLanguageStub;->SetWriteLog2File(Z)V

    :cond_1
    iget-object v0, p0, Lz2/fe;->OooO0o:Lcom/cyjh/mqm/MQLanguageStub;

    return-object v0
.end method

.method public final OooOOOo()Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;
    .locals 2

    iget-object v0, p0, Lz2/fe;->OooOO0:Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;

    invoke-virtual {p0}, Lz2/fe;->OooOOO()Lcom/cyjh/mqm/MQLanguageStub;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;-><init>(Lcom/cyjh/mqm/MQLanguageStub;)V

    iput-object v0, p0, Lz2/fe;->OooOO0:Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;

    :cond_0
    iget-object v0, p0, Lz2/fe;->OooOO0:Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;

    return-object v0
.end method

.method public final declared-synchronized OooOOo()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lz2/fe;->OooO00o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final OooOOo0()V
    .locals 2

    invoke-static {}, Lz2/ag;->OooO0Oo()Landroid/app/Application;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-virtual {p0}, Lz2/fe;->OooOOOo()Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;->SetScreenRotation(I)V

    return-void
.end method

.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lz2/fe;->OooO00o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/fe;->OooO0oO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;->onScriptIsRunning()V

    return-void

    :cond_0
    new-instance v0, Lz2/fe$OooO0OO;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lz2/fe$OooO0OO;-><init>(Lz2/fe;B)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    invoke-virtual {p0}, Lz2/fe;->OooOOO()Lcom/cyjh/mqm/MQLanguageStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mqm/MQLanguageStub;->Resume()I

    return-void
.end method

.method public final c()V
    .locals 1

    invoke-virtual {p0}, Lz2/fe;->OooOOO()Lcom/cyjh/mqm/MQLanguageStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mqm/MQLanguageStub;->Pause()I

    return-void
.end method

.method public final d()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stop: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lz2/fe;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz2/fe;->OooOOO()Lcom/cyjh/mqm/MQLanguageStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mqm/MQLanguageStub;->Stop()I

    return-void
.end method
