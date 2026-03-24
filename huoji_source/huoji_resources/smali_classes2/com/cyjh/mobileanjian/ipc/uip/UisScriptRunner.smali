.class public Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO0O0:Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;

.field private static OooO0OO:Z


# instance fields
.field private OooO00o:Lcom/cyjh/mqm/MQUipStub;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cyjh/mqm/MQUipStub;

    invoke-direct {v0}, Lcom/cyjh/mqm/MQUipStub;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->OooO00o:Lcom/cyjh/mqm/MQUipStub;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;)Lcom/cyjh/mqm/MQUipStub;
    .locals 0

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->OooO00o:Lcom/cyjh/mqm/MQUipStub;

    return-object p0
.end method

.method private static OooO0O0()V
    .locals 2

    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

.method public static synthetic OooO0OO(Z)Z
    .locals 0

    sput-boolean p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->OooO0OO:Z

    return p0
.end method

.method public static getInstance()Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;
    .locals 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->OooO0O0:Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;-><init>()V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->OooO0O0:Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;

    :cond_0
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->OooO0O0:Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;

    return-object v0
.end method


# virtual methods
.method public startLoop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 9

    sget-boolean v0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->OooO0OO:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->stopLoop()V

    :goto_0
    sget-boolean v0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->OooO0OO:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner$OooO00o;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p4

    move-object v6, p2

    move-object v7, p3

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner$OooO00o;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stopLoop()V
    .locals 3

    sget-boolean v0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->OooO0OO:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->OooO00o:Lcom/cyjh/mqm/MQUipStub;

    invoke-virtual {v0}, Lcom/cyjh/mqm/MQUipStub;->StopLoop()Z

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    const-string v1, "stop_id"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLOSE_EXIT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v1

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessageLite;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->hasEvent(Lcom/google/protobuf/ByteString;)V

    :cond_0
    return-void
.end method
