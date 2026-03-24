.class public abstract Lz2/og;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;
.implements Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;
.implements Lcom/cyjh/mq/sdk/inf/IRunner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/og$OooO0O0;
    }
.end annotation


# static fields
.field public static final OooO0oo:I = 0x100


# instance fields
.field public OooO00o:Lz2/dg;

.field public OooO0O0:Lz2/pg;

.field public OooO0OO:Landroid/os/Handler;

.field private OooO0Oo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

.field private OooO0o:Z

.field public OooO0o0:Z

.field public OooO0oO:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/og;->OooO00o:Lz2/dg;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/og;->OooO0o0:Z

    iput-boolean v0, p0, Lz2/og;->OooO0o:Z

    iput-boolean v0, p0, Lz2/og;->OooO0oO:Z

    new-instance v0, Lz2/og$OooO00o;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lz2/og$OooO00o;-><init>(Lz2/og;Landroid/os/Looper;)V

    iput-object v0, p0, Lz2/og;->OooO0OO:Landroid/os/Handler;

    return-void
.end method

.method private OooOOO0(Lz2/pg;)V
    .locals 3

    new-instance v0, Lz2/og$OooO0O0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lz2/og$OooO0O0;-><init>(Lz2/og;B)V

    const/4 v2, 0x1

    new-array v2, v2, [Lz2/pg;

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public final OooO(Lcom/google/protobuf/ByteString;)V
    .locals 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setFileData(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/og;->OooOO0o(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public final OooO0O0(Lcom/google/protobuf/ByteString;)V
    .locals 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    const/16 v1, 0x104

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setFileData(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/og;->OooOO0o(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public final OooO0Oo(Lcom/google/protobuf/ByteString;)V
    .locals 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setFileData(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/og;->OooOO0o(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public final OooOO0O()V
    .locals 4

    iget-boolean v0, p0, Lz2/og;->OooO0o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/og;->OooO0o:Z

    invoke-static {}, Lz2/ag;->OooO0o()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lz2/je;->OooO00o()Lz2/je;

    move-result-object v1

    const-string v2, "setenforce 0"

    invoke-virtual {v1, v2}, Lz2/je;->OooO0oo(Ljava/lang/String;)Z

    invoke-static {}, Lz2/je;->OooO00o()Lz2/je;

    move-result-object v1

    const-string v2, "chmod 677 /dev/input/*"

    invoke-virtual {v1, v2}, Lz2/je;->OooO0oo(Ljava/lang/String;)Z

    invoke-static {}, Lz2/je;->OooO00o()Lz2/je;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lz2/je;->OooO0oo(Ljava/lang/String;)Z

    iget-object v0, p0, Lz2/og;->OooO0OO:Landroid/os/Handler;

    const/16 v1, 0x100

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final OooOO0o(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .locals 1

    iget-boolean v0, p0, Lz2/og;->OooO0o0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/og;->OooO00o:Lz2/dg;

    invoke-virtual {v0, p1}, Lz2/dg;->OooOOOo(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    const/16 v1, 0x105

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/og;->OooOO0o(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public isScriptStarted()Z
    .locals 1

    iget-object v0, p0, Lz2/og;->OooO00o:Lz2/dg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, v0, Lz2/dg;->OooOO0:Z

    return v0
.end method

.method public notifyRotationStatus()V
    .locals 3

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

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz2/og;->OooOO0o(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public onConnected(Lz2/dg;)V
    .locals 2

    iget-object v0, p0, Lz2/og;->OooO0OO:Landroid/os/Handler;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/og;->OooO0o0:Z

    iput-object p1, p0, Lz2/og;->OooO00o:Lz2/dg;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz2/og;->OooO0o:Z

    iget-object p1, p0, Lz2/og;->OooO0Oo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    invoke-virtual {p0, p1}, Lz2/og;->setOnScriptListener(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;)Lcom/cyjh/mq/sdk/inf/IRunner;

    return-void
.end method

.method public onObtained()V
    .locals 3

    const-string v0, "JAVA_RUNNER"

    const-string v1, "onObtained()1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RootUtil;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/og;->OooO0OO:Landroid/os/Handler;

    const/4 v1, 0x6

    const-string v2, "ROOT SUCCESS"

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    invoke-virtual {p0}, Lz2/og;->OooOO0O()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/og;->OooO0oO:Z

    return-void
.end method

.method public onRefused()V
    .locals 3

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RootUtil;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/og;->OooO0OO:Landroid/os/Handler;

    const/4 v1, 0x4

    const-string v2, "User refused root."

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/og;->OooO0oO:Z

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lz2/ne;->OooO0OO(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz2/og;->OooOO0o(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public resume()V
    .locals 1

    const/16 v0, 0x9

    invoke-static {v0}, Lz2/ne;->OooO0OO(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz2/og;->OooOO0o(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public setOnScriptListener(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;)Lcom/cyjh/mq/sdk/inf/IRunner;
    .locals 1

    iput-object p1, p0, Lz2/og;->OooO0Oo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    iget-object v0, p0, Lz2/og;->OooO00o:Lz2/dg;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lz2/dg;->OooOOo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    :cond_0
    return-object p0
.end method

.method public setScript(Lz2/pg;)Lcom/cyjh/mq/sdk/inf/IRunner;
    .locals 1

    iput-object p1, p0, Lz2/og;->OooO0O0:Lz2/pg;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lz2/pg;->OooOOOO(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/og;->OooOO0o(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-object p0
.end method

.method public stop()V
    .locals 2

    const-string v0, "JAVA_RUNNER"

    const-string v1, "GeneralMqRunner stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    invoke-static {v0}, Lz2/ne;->OooO0OO(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz2/og;->OooOO0o(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method
