.class public final Lcom/cyjh/mq/service/IpcService$OooO00o;
.super Landroid/os/HandlerThread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mq/service/IpcService;->OooOO0()V
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

    iput-object p1, p0, Lcom/cyjh/mq/service/IpcService$OooO00o;->OoooOoO:Lcom/cyjh/mq/service/IpcService;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onLooperPrepared()V
    .locals 3

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    invoke-static {}, Lz2/o00O0O0$OooO0O0;->OooO00o()Lz2/o00O0O0;

    invoke-static {}, Lcom/cyjh/mqm/MQLanguageStub;->enginInit()V

    iget-object v0, p0, Lcom/cyjh/mq/service/IpcService$OooO00o;->OoooOoO:Lcom/cyjh/mq/service/IpcService;

    new-instance v1, Lz2/eg;

    invoke-direct {v1, v0}, Lz2/eg;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/cyjh/mq/service/IpcService;->OooO0O0(Lcom/cyjh/mq/service/IpcService;Lz2/eg;)Lz2/eg;

    iget-object v0, p0, Lcom/cyjh/mq/service/IpcService$OooO00o;->OoooOoO:Lcom/cyjh/mq/service/IpcService;

    invoke-static {v0}, Lcom/cyjh/mq/service/IpcService;->OooO00o(Lcom/cyjh/mq/service/IpcService;)Lz2/eg;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v1

    iget-object v0, v0, Lz2/eg;->OooO0o0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cyjh/mq/service/IpcService$OooO00o;->OoooOoO:Lcom/cyjh/mq/service/IpcService;

    invoke-static {v0}, Lcom/cyjh/mq/service/IpcService;->OooO00o(Lcom/cyjh/mq/service/IpcService;)Lz2/eg;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mq/service/IpcService$OooO00o;->OoooOoO:Lcom/cyjh/mq/service/IpcService;

    invoke-static {v1}, Lcom/cyjh/mq/service/IpcService;->OooO0Oo(Lcom/cyjh/mq/service/IpcService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cyjh/mq/service/IpcService$OooO00o;->OoooOoO:Lcom/cyjh/mq/service/IpcService;

    invoke-static {v2}, Lcom/cyjh/mq/service/IpcService;->OooO0o(Lcom/cyjh/mq/service/IpcService;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lz2/eg;->OooO0O0(Ljava/lang/String;I)V

    return-void
.end method
