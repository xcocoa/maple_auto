.class public Lcom/cyjh/mq/sdk/MqRunnerLite;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/qg;
.implements Lz2/rg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mq/sdk/MqRunnerLite$OooO0O0;
    }
.end annotation


# instance fields
.field private OooO00o:Lz2/pg;

.field private OooO0O0:Lz2/fe;

.field public OooO0OO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

.field public OooO0Oo:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

.field public OooO0o:Z

.field public OooO0o0:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;

.field public OooO0oO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

.field public OooO0oo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0Oo:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    iput-object v0, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0o0:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0o:Z

    new-instance v0, Lz2/fe;

    invoke-direct {v0}, Lz2/fe;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0O0:Lz2/fe;

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/cyjh/mq/sdk/MqRunnerLite;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;
    .locals 2

    const-class v0, Lcom/cyjh/mq/sdk/MqRunnerLite;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite$OooO0O0;->OooO00o()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final OooO(Lcom/google/protobuf/ByteString;)V
    .locals 0

    return-void
.end method

.method public OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mq/sdk/inf/OnElfCallback;)V
    .locals 11

    iput-object p4, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0Oo:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    iget-object p4, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0O0:Lz2/fe;

    :try_start_0
    new-instance v10, Lz2/fe$OooO0O0;

    const/4 v2, 0x2

    const-string v3, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    move-object v0, v10

    move-object v1, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v9}, Lz2/fe$OooO0O0;-><init>(Lz2/fe;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p1, p4, Lz2/fe;->OooO0oo:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v10}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

.method public final OooO0O0(Lcom/google/protobuf/ByteString;)V
    .locals 0

    return-void
.end method

.method public OooO0OO(IILcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;)V
    .locals 0

    return-void
.end method

.method public final OooO0Oo(Lcom/google/protobuf/ByteString;)V
    .locals 0

    return-void
.end method

.method public OooO0o(II)V
    .locals 12

    iget-object v10, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0O0:Lz2/fe;

    :try_start_0
    new-instance v11, Lz2/fe$OooO0O0;

    const/4 v2, 0x3

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v9, ""

    move-object v0, v11

    move-object v1, v10

    move v7, p1

    move v8, p2

    invoke-direct/range {v0 .. v9}, Lz2/fe$OooO0O0;-><init>(Lz2/fe;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p1, v10, Lz2/fe;->OooO0oo:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v11}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

.method public OooO0o0(Ljava/lang/String;)V
    .locals 12

    iget-object v10, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0O0:Lz2/fe;

    :try_start_0
    new-instance v11, Lz2/fe$OooO0O0;

    const/4 v2, 0x4

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v11

    move-object v1, v10

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lz2/fe$OooO0O0;-><init>(Lz2/fe;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p1, v10, Lz2/fe;->OooO0oo:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v11}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

.method public OooO0oO(Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0oO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    return-void
.end method

.method public OooO0oo(Ljava/lang/String;)V
    .locals 12

    iget-object v10, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0O0:Lz2/fe;

    :try_start_0
    iget-boolean v0, v10, Lz2/fe;->OooO0OO:Z

    if-nez v0, :cond_0

    new-instance v0, Lz2/fe$OooO0o;

    const-string v1, "ScriptRunnerLite_Request"

    invoke-direct {v0, v10, v1}, Lz2/fe$OooO0o;-><init>(Lz2/fe;Ljava/lang/String;)V

    iput-object v0, v10, Lz2/fe;->OooO0Oo:Lz2/fe$OooO0o;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    new-instance v11, Lz2/fe$OooO0O0;

    const/4 v2, 0x1

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    move-object v0, v11

    move-object v1, v10

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Lz2/fe$OooO0O0;-><init>(Lz2/fe;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p1, v10, Lz2/fe;->OooO0oo:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v11}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

.method public OooOO0(Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0oo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0o:Z

    return v0
.end method

.method public final b()Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0o0:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;

    return-object v0
.end method

.method public final c()Lcom/cyjh/mq/sdk/inf/OnElfCallback;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0Oo:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    return-object v0
.end method

.method public final d()Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0OO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    return-object v0
.end method

.method public final e()Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0oO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    return-object v0
.end method

.method public final f()Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0oo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;

    return-object v0
.end method

.method public isScriptStarted()Z
    .locals 1

    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0O0:Lz2/fe;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lz2/fe;->OooOOo()Z

    move-result v0

    return v0
.end method

.method public notifyRotationStatus()V
    .locals 1

    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0O0:Lz2/fe;

    invoke-virtual {v0}, Lz2/fe;->OooOOo0()V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0O0:Lz2/fe;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/fe;->OooOOO()Lcom/cyjh/mqm/MQLanguageStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mqm/MQLanguageStub;->Pause()I

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0O0:Lz2/fe;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/fe;->OooOOO()Lcom/cyjh/mqm/MQLanguageStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mqm/MQLanguageStub;->Resume()I

    :cond_0
    return-void
.end method

.method public setImageCrop(ZIIII)V
    .locals 7

    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0O0:Lz2/fe;

    invoke-virtual {v0}, Lz2/fe;->OooOOOo()Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;->SetImageCrop(ZIIII)V

    return-void
.end method

.method public setOnScriptListener(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;)Lcom/cyjh/mq/sdk/inf/IRunner;
    .locals 1

    iput-object p1, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0OO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0O0:Lz2/fe;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iput-object p1, v0, Lz2/fe;->OooO0oO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    :cond_0
    return-object p0
.end method

.method public setScript(Lz2/pg;)Lcom/cyjh/mq/sdk/inf/IRunner;
    .locals 1

    iput-object p1, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO00o:Lz2/pg;

    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0O0:Lz2/fe;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iput-object p1, v0, Lz2/fe;->OooO0o0:Lz2/pg;

    :cond_0
    return-object p0
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0O0:Lz2/fe;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lz2/fe;->OooO00o:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lz2/fe;->OooO0oO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;->onScriptIsRunning()V

    return-void

    :cond_0
    new-instance v1, Lz2/fe$OooO0OO;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lz2/fe$OooO0OO;-><init>(Lz2/fe;B)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0O0:Lz2/fe;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stop: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lz2/fe;->OooOOO()Lcom/cyjh/mqm/MQLanguageStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mqm/MQLanguageStub;->Stop()I

    :cond_0
    return-void
.end method
