.class public final Lcom/cyjh/mq/service/IpcService$OooO0O0;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mq/service/IpcService;->OooOO0o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lcom/cyjh/mq/service/IpcService;


# direct methods
.method public constructor <init>(Lcom/cyjh/mq/service/IpcService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/mq/service/IpcService$OooO0O0;->OoooOoO:Lcom/cyjh/mq/service/IpcService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/cyjh/mq/service/IpcService$OooO0O0;->OoooOoO:Lcom/cyjh/mq/service/IpcService;

    invoke-static {v0}, Lcom/cyjh/mq/service/IpcService;->OooO(Lcom/cyjh/mq/service/IpcService;)V

    iget-object v0, p0, Lcom/cyjh/mq/service/IpcService$OooO0O0;->OoooOoO:Lcom/cyjh/mq/service/IpcService;

    invoke-static {v0}, Lcom/cyjh/mq/service/IpcService;->OooOO0O(Lcom/cyjh/mq/service/IpcService;)V

    iget-object v0, p0, Lcom/cyjh/mq/service/IpcService$OooO0O0;->OoooOoO:Lcom/cyjh/mq/service/IpcService;

    invoke-static {v0}, Lcom/cyjh/mq/service/IpcService;->OooOOO0(Lcom/cyjh/mq/service/IpcService;)V

    invoke-static {}, Lz2/je;->OooO00o()Lz2/je;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/je;->OooO0o(Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;)V

    return-void
.end method
