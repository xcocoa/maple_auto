.class public final Lz2/dg$OooO0O0;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/dg;->OoooOO0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/dg;


# direct methods
.method public constructor <init>(Lz2/dg;)V
    .locals 0

    iput-object p1, p0, Lz2/dg$OooO0O0;->OoooOoO:Lz2/dg;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lz2/dg$OooO0O0;->OoooOoO:Lz2/dg;

    iget-object v0, v0, Lz2/dg;->OooOO0o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;

    iget-object v2, p0, Lz2/dg$OooO0O0;->OoooOoO:Lz2/dg;

    invoke-interface {v1, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;->onConnected(Lz2/dg;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lz2/ag;->OooO()Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lz2/ag;->OooO()Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;

    move-result-object v0

    iget-object v1, p0, Lz2/dg$OooO0O0;->OoooOoO:Lz2/dg;

    iget-object v1, v1, Lz2/dg;->OooOO0O:Lz2/bg;

    iget v1, v1, Lz2/bg;->OooO00o:I

    invoke-interface {v0, v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;->onEngineStart(I)V

    :cond_1
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0}, Lz2/og;->notifyRotationStatus()V

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mq/sdk/MqRunnerLite;->notifyRotationStatus()V

    return-void
.end method
