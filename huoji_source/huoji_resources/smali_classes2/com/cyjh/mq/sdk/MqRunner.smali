.class public Lcom/cyjh/mq/sdk/MqRunner;
.super Lz2/og;
.source ""

# interfaces
.implements Lz2/qg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mq/sdk/MqRunner$OooO00o;
    }
.end annotation


# instance fields
.field private OooO:Ljava/lang/String;

.field private OooOO0:Ljava/lang/String;

.field private OooOO0O:Ljava/lang/String;

.field private OooOO0o:Ljava/lang/String;

.field private OooOOO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;

.field private OooOOO0:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

.field private OooOOOO:Z

.field private OooOOOo:I

.field private OooOOo:I

.field private OooOOo0:I

.field private OooOOoo:I

.field private OooOo00:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lz2/og;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->OooO:Ljava/lang/String;

    iput-object v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->OooOO0:Ljava/lang/String;

    iput-object v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->OooOO0O:Ljava/lang/String;

    iput-object v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->OooOO0o:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->OooOOOO:Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/cyjh/mq/sdk/MqRunner;
    .locals 2

    const-class v0, Lcom/cyjh/mq/sdk/MqRunner;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner$OooO00o;->OooO00o()Lcom/cyjh/mq/sdk/MqRunner;

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
.method public OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mq/sdk/inf/OnElfCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/cyjh/mq/sdk/MqRunner;->OooOO0:Ljava/lang/String;

    iput-object p2, p0, Lcom/cyjh/mq/sdk/MqRunner;->OooOO0O:Ljava/lang/String;

    iput-object p3, p0, Lcom/cyjh/mq/sdk/MqRunner;->OooOO0o:Ljava/lang/String;

    iput-object p4, p0, Lcom/cyjh/mq/sdk/MqRunner;->OooOOO0:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    invoke-static {}, Lz2/ag;->OooO0Oo()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/cyjh/mqm/MQLanguageStub;->InitElf(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lz2/og;->OooO0o0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/og;->OooO00o:Lz2/dg;

    iput-object p4, v0, Lz2/dg;->OooOo0:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p4

    const/16 v0, 0x50

    invoke-virtual {p4, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/og;->OooOO0o(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    :cond_0
    return-void
.end method

.method public OooO0OO(IILcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;)V
    .locals 1

    iget-object v0, p0, Lz2/og;->OooO00o:Lz2/dg;

    if-nez v0, :cond_0

    iput p1, p0, Lcom/cyjh/mq/sdk/MqRunner;->OooOOo:I

    iput p2, p0, Lcom/cyjh/mq/sdk/MqRunner;->OooOOoo:I

    iput-object p3, p0, Lcom/cyjh/mq/sdk/MqRunner;->OooOo00:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    return-void

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, v0, Lz2/dg;->OooO:Z

    iput-object p3, v0, Lz2/dg;->OooOOOO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p2

    const/16 p3, 0x18

    invoke-virtual {p2, p3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    iget-object p2, p0, Lz2/og;->OooO00o:Lz2/dg;

    invoke-virtual {p2, p1}, Lz2/dg;->OooOOOo(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public OooO0o(II)V
    .locals 2

    iput p1, p0, Lcom/cyjh/mq/sdk/MqRunner;->OooOOOo:I

    iput p2, p0, Lcom/cyjh/mq/sdk/MqRunner;->OooOOo0:I

    iget-boolean v0, p0, Lz2/og;->OooO0o0:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/og;->OooOO0o(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    :cond_0
    return-void
.end method

.method public OooO0o0(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/og;->OooOO0o(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public OooO0oO(Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;)V
    .locals 1

    iget-boolean v0, p0, Lz2/og;->OooO0o0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/og;->OooO00o:Lz2/dg;

    iput-object p1, v0, Lz2/dg;->OooOo0o:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    :cond_0
    return-void
.end method

.method public OooO0oo(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/cyjh/mqm/MQLanguageStub;->InitHost(Ljava/lang/String;)V

    iget-boolean v0, p0, Lz2/og;->OooO0o0:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/og;->OooOO0o(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/cyjh/mq/sdk/MqRunner;->OooO:Ljava/lang/String;

    return-void
.end method

.method public OooOO0(Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/cyjh/mq/sdk/MqRunner;->OooOOO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;

    iget-object v0, p0, Lz2/og;->OooO00o:Lz2/dg;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lz2/dg;->OooOo00:Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;

    :cond_0
    return-void
.end method

.method public final b()Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lcom/cyjh/mq/sdk/inf/OnElfCallback;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onConnected(Lz2/dg;)V
    .locals 1

    invoke-super {p0, p1}, Lz2/og;->onConnected(Lz2/dg;)V

    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->OooOOO0:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    iput-object v0, p1, Lz2/dg;->OooOo0:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    iget-object p1, p0, Lcom/cyjh/mq/sdk/MqRunner;->OooOOO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;

    invoke-virtual {p0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->OooOO0(Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;)V

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->OooOO0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->OooOO0O:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->OooOO0o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/og;->OooOO0o(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    iget p1, p0, Lcom/cyjh/mq/sdk/MqRunner;->OooOOOo:I

    iget v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->OooOOo0:I

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/mq/sdk/MqRunner;->OooO0o(II)V

    return-void
.end method

.method public onCrash(Lz2/he;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz2/og;->OooO0o0:Z

    invoke-virtual {p0}, Lz2/og;->OooOO0O()V

    return-void
.end method

.method public onExit()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/og;->OooO0o0:Z

    return-void
.end method

.method public start()V
    .locals 4

    iget-boolean v0, p0, Lz2/og;->OooO0o0:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lz2/ag;->OooO0o0()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lz2/ag;->OooO0o0()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$string;->toast_script_engine_failed_start:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lz2/og;->notifyRotationStatus()V

    invoke-static {v1}, Lz2/ne;->OooO0OO(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz2/og;->OooOO0o(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method
