.class public final Lz2/fg$OooO00o;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/fg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private OooO00o:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

.field public final synthetic OooO0O0:Lz2/fg;


# direct methods
.method public constructor <init>(Lz2/fg;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lz2/fg$OooO00o;->OooO00o:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object v0, v0, Lz2/fg;->OooO0OO:Lz2/dg;

    iget-object v0, v0, Lz2/dg;->OooOOo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz v0, :cond_a

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;->onSetControlBarVisiable(I)V

    return-void

    :pswitch_1
    new-instance v0, Lz2/xf;

    iget-object v3, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object v3, v3, Lz2/fg;->OooO00o:Landroid/content/Context;

    invoke-direct {v0, v3}, Lz2/xf;-><init>(Landroid/content/Context;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v3

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, v1, p1}, Lz2/xf;->OooO0O0(IILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object v0, v0, Lz2/fg;->OooO0OO:Lz2/dg;

    iget-object v0, v0, Lz2/dg;->OooOo0o:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    if-eqz v0, :cond_a

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;->doSpecialFuction(ILjava/lang/String;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object v0, v0, Lz2/fg;->OooO0OO:Lz2/dg;

    iget-object v0, v0, Lz2/dg;->OooOo0:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    if-eqz v0, :cond_a

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/cyjh/mq/sdk/inf/OnElfCallback;->callback(ILjava/lang/String;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object v0, v0, Lz2/fg;->OooO0OO:Lz2/dg;

    iget-object v0, v0, Lz2/dg;->OooOo00:Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;

    if-eqz v0, :cond_a

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;->callback(Ljava/lang/String;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object v0, v0, Lz2/fg;->OooO0OO:Lz2/dg;

    iget-object v0, v0, Lz2/dg;->OooOOoo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;

    if-eqz v0, :cond_a

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;->onCallback(ILjava/lang/String;)V

    return-void

    :pswitch_6
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object v0, v0, Lz2/fg;->OooO0Oo:Lz2/ye;

    invoke-virtual {v0, p1}, Lz2/ye;->OooO0OO(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :pswitch_7
    invoke-static {}, Lz2/ag;->OooO0oO()Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;

    move-result-object v0

    if-eqz v0, :cond_a

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;->onKeyEvent(I)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object v0, v0, Lz2/fg;->OooO0OO:Lz2/dg;

    iget-object v0, v0, Lz2/dg;->OooOOo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz v0, :cond_a

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;->onUpdateControlBarPos(FII)V

    return-void

    :pswitch_9
    iget-object p1, p0, Lz2/fg$OooO00o;->OooO00o:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->hide()V

    return-void

    :pswitch_a
    iget-object p1, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object p1, p1, Lz2/fg;->OooO0OO:Lz2/dg;

    iget-object p1, p1, Lz2/dg;->OooOOo0:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;->onResume()V

    :cond_1
    iget-object p1, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object p1, p1, Lz2/fg;->OooO0OO:Lz2/dg;

    iget-object p1, p1, Lz2/dg;->OooOOo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;->onResume()V

    return-void

    :pswitch_b
    iget-object p1, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object p1, p1, Lz2/fg;->OooO0OO:Lz2/dg;

    iget-object p1, p1, Lz2/dg;->OooOOo0:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;->onPause()V

    :cond_2
    iget-object p1, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object p1, p1, Lz2/fg;->OooO0OO:Lz2/dg;

    iget-object p1, p1, Lz2/dg;->OooOOo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;->onPause()V

    return-void

    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    new-instance p1, Lz2/te;

    iget-object v1, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object v1, v1, Lz2/fg;->OooO00o:Landroid/content/Context;

    new-instance v2, Lz2/fg$OooO00o$OooO0O0;

    invoke-direct {v2, p0}, Lz2/fg$OooO00o$OooO0O0;-><init>(Lz2/fg$OooO00o;)V

    invoke-direct {p1, v1, v0, v2}, Lz2/te;-><init>(Landroid/content/Context;Ljava/lang/String;Lz2/te$OooO0O0;)V

    invoke-virtual {p1}, Lz2/te;->OooO0O0()V

    return-void

    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    new-instance p1, Lz2/se;

    iget-object v2, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object v2, v2, Lz2/fg;->OooO00o:Landroid/content/Context;

    new-instance v3, Lz2/fg$OooO00o$OooO00o;

    invoke-direct {v3, p0}, Lz2/fg$OooO00o$OooO00o;-><init>(Lz2/fg$OooO00o;)V

    invoke-direct {p1, v2, v0, v1, v3}, Lz2/se;-><init>(Landroid/content/Context;Ljava/lang/String;ILz2/se$OooO0o;)V

    invoke-virtual {p1}, Lz2/se;->OooO00o()V

    return-void

    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_3

    iget-object v0, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object v0, v0, Lz2/fg;->OooO00o:Landroid/content/Context;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    iget-object p1, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object p1, p1, Lz2/fg;->OooO00o:Landroid/content/Context;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_f
    iget-object p1, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object p1, p1, Lz2/fg;->OooO0OO:Lz2/dg;

    iget-object p1, p1, Lz2/dg;->OooOOo0:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;->onScriptIsRunning()V

    :cond_4
    iget-object p1, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object p1, p1, Lz2/fg;->OooO0OO:Lz2/dg;

    iget-object p1, p1, Lz2/dg;->OooOOo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;->onScriptIsRunning()V

    return-void

    :pswitch_10
    const-string v0, "JAVA_RUNNER"

    const-string v3, "ScriptRunnerLite WHAT_STOP SCRIPT_STOPPED"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object v3, v3, Lz2/fg;->OooO0Oo:Lz2/ye;

    iget-object v4, v3, Lz2/ye;->Oooooo:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    iget-object v4, v3, Lz2/ye;->OoooooO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    iget-object v4, v3, Lz2/ye;->Ooooooo:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v3}, Lz2/ye;->OooO00o()V

    iput v2, v3, Lz2/ye;->OoooOoo:I

    iput v1, v3, Lz2/ye;->ooOO:I

    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0x20

    if-ge v1, v4, :cond_6

    iget-object v4, v3, Lz2/ye;->OoooOoO:[Lz2/af;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    iget-object v4, v3, Lz2/ye;->OooooOO:[Ljava/util/HashMap;

    aget-object v5, v4, v1

    if-eqz v5, :cond_5

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    new-array v1, v4, [Lcom/cyjh/mobileanjian/ipc/ui/j;

    iput-object v1, v3, Lz2/ye;->OooooOo:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iput v2, v3, Lz2/ye;->Oooooo0:I

    iget-object v1, p0, Lz2/fg$OooO00o;->OooO00o:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->hide()V

    :cond_7
    iget-object v1, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object v1, v1, Lz2/fg;->OooO0OO:Lz2/dg;

    iget-object v1, v1, Lz2/dg;->OooOOo0:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    if-eqz v1, :cond_8

    const-string v1, "ScriptRunnerLite WHAT_STOP mConnection.getBasicScriptListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object v1, v1, Lz2/fg;->OooO0OO:Lz2/dg;

    iget-object v1, v1, Lz2/dg;->OooOOo0:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;->onStopScript(ILjava/lang/String;)V

    :cond_8
    iget-object v1, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object v1, v1, Lz2/fg;->OooO0OO:Lz2/dg;

    iget-object v1, v1, Lz2/dg;->OooOOo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz v1, :cond_a

    const-string v1, "ScriptRunnerLite WHAT_STOP mConnection.getOnScriptListener() != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object v0, v0, Lz2/fg;->OooO0OO:Lz2/dg;

    iget-object v0, v0, Lz2/dg;->OooOOo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;->onStopScript(ILjava/lang/String;)V

    return-void

    :pswitch_11
    iget-object p1, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object p1, p1, Lz2/fg;->OooO0OO:Lz2/dg;

    iget-object p1, p1, Lz2/dg;->OooOOo0:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;->onStartScript()V

    :cond_9
    iget-object p1, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object p1, p1, Lz2/fg;->OooO0OO:Lz2/dg;

    iget-object p1, p1, Lz2/dg;->OooOOo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;->onStartScript()V

    :cond_a
    :goto_1
    return-void

    :pswitch_12
    iget-object v0, p0, Lz2/fg$OooO00o;->OooO00o:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    if-nez v0, :cond_b

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    iget-object v3, p0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object v3, v3, Lz2/fg;->OooO00o:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lz2/fg$OooO00o;->OooO00o:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    :cond_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    iget-object v0, p0, Lz2/fg$OooO00o;->OooO00o:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result p1

    invoke-virtual {v0, v3, v2, v1, p1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->show(Ljava/lang/CharSequence;III)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
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
