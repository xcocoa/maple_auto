.class public final Lcom/cyjh/event/Injector$OooO00o;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/event/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lz2/db;

    invoke-static {p1}, Lcom/cyjh/event/Injector;->OooOo0(Lz2/db;)V

    return-void

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lz2/db;

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0o:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0o0:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0o0:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;

    iget v1, p1, Lz2/db;->OooO00o:I

    iget-object v2, p1, Lz2/db;->OooO0Oo:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;->onCallback(ILjava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0Oo:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->OooO0Oo:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    iget v1, p1, Lz2/db;->OooO00o:I

    iget-object p1, p1, Lz2/db;->OooO0Oo:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/cyjh/mq/sdk/inf/OnElfCallback;->callback(ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    goto :goto_0

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {p1}, Lcom/cyjh/event/Injector;->OooO([B)V

    return-void

    :pswitch_3
    invoke-static {}, Lcom/cyjh/event/Injector;->OooO0Oo()V

    return-void

    :pswitch_4
    invoke-static {}, Lcom/cyjh/event/Injector;->OooOO0O()V

    return-void

    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lz2/db;

    invoke-static {p1}, Lcom/cyjh/event/Injector;->OooOOoo(Lz2/db;)V

    return-void

    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lz2/db;

    invoke-static {p1}, Lcom/cyjh/event/Injector;->OooOOOo(Lz2/db;)V

    return-void

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lz2/db;

    invoke-static {p1}, Lcom/cyjh/event/Injector;->OooOO0o(Lz2/db;)V

    return-void

    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lz2/db;

    invoke-static {p1}, Lcom/cyjh/event/Injector;->OooO0oo(Lz2/db;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
