.class public final Lz2/dg;
.super Lz2/cg;
.source ""


# static fields
.field private static final OooOoOO:I = 0x1000

.field private static final OooOoo0:I = 0x400


# instance fields
.field public OooO:Z

.field public OooO0o:Z

.field public OooO0o0:Z

.field private OooO0oO:Lz2/fg;

.field public OooO0oo:Landroid/content/Context;

.field public OooOO0:Z

.field public OooOO0O:Lz2/bg;

.field public OooOO0o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;",
            ">;"
        }
    .end annotation
.end field

.field public OooOOO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;

.field private OooOOO0:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/cyjh/mobileanjian/ipc/interfaces/ScriptStateObserver;",
            ">;"
        }
    .end annotation
.end field

.field public OooOOOO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

.field public OooOOOo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

.field public OooOOo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

.field public OooOOo0:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

.field public OooOOoo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;

.field public OooOo:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;",
            ">;"
        }
    .end annotation
.end field

.field public OooOo0:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

.field public OooOo00:Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;

.field public OooOo0O:Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;

.field public OooOo0o:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

.field public OooOoO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;

.field private final OooOoO0:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/LocalSocket;)V
    .locals 2

    invoke-direct {p0, p2}, Lz2/cg;-><init>(Landroid/net/LocalSocket;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lz2/dg;->OooO0o0:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lz2/dg;->OooO0o:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/dg;->OooO0oO:Lz2/fg;

    iput-object v0, p0, Lz2/dg;->OooO0oo:Landroid/content/Context;

    iput-boolean p2, p0, Lz2/dg;->OooO:Z

    iput-boolean p2, p0, Lz2/dg;->OooOO0:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lz2/dg;->OooOO0o:Ljava/util/List;

    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    iput-object p2, p0, Lz2/dg;->OooOOO0:Ljava/util/Vector;

    iput-object v0, p0, Lz2/dg;->OooOOO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;

    iput-object v0, p0, Lz2/dg;->OooOOOO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    iput-object v0, p0, Lz2/dg;->OooOOOo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

    iput-object v0, p0, Lz2/dg;->OooOOo0:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    iput-object v0, p0, Lz2/dg;->OooOOo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    new-instance p2, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x400

    invoke-direct {p2, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p2, p0, Lz2/dg;->OooOo:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance p2, Lz2/dg$OooO00o;

    const-string v1, "send_thread"

    invoke-direct {p2, p0, v1}, Lz2/dg$OooO00o;-><init>(Lz2/dg;Ljava/lang/String;)V

    iput-object p2, p0, Lz2/dg;->OooOoO0:Ljava/lang/Thread;

    iput-object v0, p0, Lz2/dg;->OooOoO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;

    iput-object p1, p0, Lz2/dg;->OooO0oo:Landroid/content/Context;

    new-instance p2, Lz2/fg;

    invoke-direct {p2, p1, p0}, Lz2/fg;-><init>(Landroid/content/Context;Lz2/dg;)V

    iput-object p2, p0, Lz2/dg;->OooO0oO:Lz2/fg;

    invoke-static {}, Lz2/o00O0O0$OooO0O0;->OooO00o()Lz2/o00O0O0;

    move-result-object p1

    invoke-virtual {p1}, Lz2/o00O0O0;->OooO00o()Lz2/o00O0O0O;

    move-result-object p1

    iget-object p1, p1, Lz2/o00O0O0O;->OooO00o:Lz2/o00O0OO;

    invoke-interface {p1, p0}, Lz2/o00O0OO;->OooO00o(Lz2/dg;)V

    return-void
.end method

.method private OooO(Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;)V
    .locals 0

    iput-object p1, p0, Lz2/dg;->OooOoO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;

    return-void
.end method

.method private OooO0o(Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;)V
    .locals 0

    iput-object p1, p0, Lz2/dg;->OooOo00:Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;

    return-void
.end method

.method private OooO0o0(Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;)V
    .locals 0

    iput-object p1, p0, Lz2/dg;->OooOOo0:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    return-void
.end method

.method private OooO0oO(Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;)V
    .locals 0

    iput-object p1, p0, Lz2/dg;->OooOOO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;

    return-void
.end method

.method private OooO0oo(Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;)V
    .locals 0

    iput-object p1, p0, Lz2/dg;->OooOOoo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;

    return-void
.end method

.method private OooOO0(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;)V
    .locals 0

    iput-object p1, p0, Lz2/dg;->OooOOOO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    return-void
.end method

.method private OooOO0O(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;)V
    .locals 0

    iput-object p1, p0, Lz2/dg;->OooOOo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    return-void
.end method

.method private OooOO0o(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;)V
    .locals 0

    iput-object p1, p0, Lz2/dg;->OooOOOo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

    return-void
.end method

.method private OooOOO(Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;)V
    .locals 0

    iput-object p1, p0, Lz2/dg;->OooOo0O:Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;

    return-void
.end method

.method private OooOOO0(Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;)V
    .locals 0

    iput-object p1, p0, Lz2/dg;->OooOo0o:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    return-void
.end method

.method private OooOOOO(Lcom/cyjh/mobileanjian/ipc/interfaces/ScriptStateObserver;)V
    .locals 1

    iget-object v0, p0, Lz2/dg;->OooOOO0:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private OooOOo(Lcom/cyjh/mq/sdk/inf/OnElfCallback;)V
    .locals 0

    iput-object p1, p0, Lz2/dg;->OooOo0:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    return-void
.end method

.method private OooOOo0(Lz2/bg;)V
    .locals 0

    iput-object p1, p0, Lz2/dg;->OooOO0O:Lz2/bg;

    return-void
.end method

.method private OooOOoo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz2/dg;->OooOO0o:Ljava/util/List;

    return-void
.end method

.method private OooOo(Z)V
    .locals 0

    iput-boolean p1, p0, Lz2/dg;->OooO:Z

    return-void
.end method

.method private static synthetic OooOo0(Lz2/dg;)Z
    .locals 0

    iget-boolean p0, p0, Lz2/dg;->OooO0o0:Z

    return p0
.end method

.method private OooOo00(Z)V
    .locals 0

    iput-boolean p1, p0, Lz2/dg;->OooOO0:Z

    return-void
.end method

.method private static synthetic OooOo0O(Lz2/dg;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 0

    iget-object p0, p0, Lz2/dg;->OooOo:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p0
.end method

.method private static synthetic OooOoO0(Lz2/dg;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lz2/dg;->OooOO0o:Ljava/util/List;

    return-object p0
.end method

.method private static synthetic OooOoOO(Lz2/dg;)Lz2/bg;
    .locals 0

    iget-object p0, p0, Lz2/dg;->OooOO0O:Lz2/bg;

    return-object p0
.end method

.method private OooOoo()I
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lz2/cg;->OooO00o([B)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method private OooOoo0()Z
    .locals 1

    iget-boolean v0, p0, Lz2/dg;->OooO0o:Z

    return v0
.end method

.method private static synthetic OooOooO(Lz2/dg;)Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;
    .locals 0

    iget-object p0, p0, Lz2/dg;->OooOOo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    return-object p0
.end method

.method private static synthetic OooOooo(Lz2/dg;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lz2/dg;->OooO0oo:Landroid/content/Context;

    return-object p0
.end method

.method private Oooo()Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;
    .locals 1

    iget-object v0, p0, Lz2/dg;->OooOOOo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

    return-object v0
.end method

.method private Oooo0()Z
    .locals 1

    iget-boolean v0, p0, Lz2/dg;->OooOO0:Z

    return v0
.end method

.method private Oooo000()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lz2/cg;->OooO00o([B)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    if-gez v0, :cond_1

    :goto_1
    invoke-virtual {p0}, Lz2/dg;->OooO0O0()V

    invoke-direct {p0}, Lz2/dg;->o000oOoO()V

    return-object v1

    :cond_1
    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lz2/cg;->OooO00o([B)I

    move-result v2

    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->parseFrom([B)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object v1
.end method

.method private Oooo00O()Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;
    .locals 1

    iget-object v0, p0, Lz2/dg;->OooOoO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;

    return-object v0
.end method

.method private Oooo00o()Lz2/bg;
    .locals 1

    iget-object v0, p0, Lz2/dg;->OooOO0O:Lz2/bg;

    return-object v0
.end method

.method private Oooo0O0()Z
    .locals 1

    iget-boolean v0, p0, Lz2/dg;->OooO:Z

    return v0
.end method

.method private Oooo0OO()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/cyjh/mobileanjian/ipc/interfaces/ScriptStateObserver;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/dg;->OooOOO0:Ljava/util/Vector;

    return-object v0
.end method

.method private Oooo0o()Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;
    .locals 1

    iget-object v0, p0, Lz2/dg;->OooOOo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    return-object v0
.end method

.method private Oooo0o0()Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;
    .locals 1

    iget-object v0, p0, Lz2/dg;->OooOOo0:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    return-object v0
.end method

.method private Oooo0oO()Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;
    .locals 1

    iget-object v0, p0, Lz2/dg;->OooOOO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;

    return-object v0
.end method

.method private Oooo0oo()Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;
    .locals 1

    iget-object v0, p0, Lz2/dg;->OooOOOO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    return-object v0
.end method

.method private OoooO()Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;
    .locals 1

    iget-object v0, p0, Lz2/dg;->OooOo0O:Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;

    return-object v0
.end method

.method private OoooO0()Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;
    .locals 1

    iget-object v0, p0, Lz2/dg;->OooOo00:Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;

    return-object v0
.end method

.method private OoooO00()Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;
    .locals 1

    iget-object v0, p0, Lz2/dg;->OooOOoo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;

    return-object v0
.end method

.method private OoooO0O()Lcom/cyjh/mq/sdk/inf/OnElfCallback;
    .locals 1

    iget-object v0, p0, Lz2/dg;->OooOo0:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    return-object v0
.end method

.method private OoooOO0()V
    .locals 1

    new-instance v0, Lz2/dg$OooO0O0;

    invoke-direct {v0, p0}, Lz2/dg$OooO0O0;-><init>(Lz2/dg;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private OoooOOO()Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;
    .locals 1

    iget-object v0, p0, Lz2/dg;->OooOo0o:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    return-object v0
.end method

.method private o000oOoO()V
    .locals 4

    new-instance v0, Lz2/he;

    invoke-direct {v0}, Lz2/he;-><init>()V

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v1

    invoke-virtual {v1}, Lz2/og;->isScriptStarted()Z

    move-result v1

    iput-boolean v1, v0, Lz2/he;->OooO00o:Z

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v1

    invoke-virtual {v1}, Lz2/og;->isScriptStarted()Z

    move-result v1

    const/16 v2, 0x3ea

    if-eqz v1, :cond_1

    iget-object v1, p0, Lz2/dg;->OooO0oO:Lz2/fg;

    iget-object v1, v1, Lz2/fg;->OooO0oO:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lz2/dg;->OooOOo0:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    if-eqz v1, :cond_0

    const-string v1, "JAVA_RUNNER"

    const-string v3, "ScriptRunnerLite WHAT_STOP root\u8fdb\u7a0b\u5f02\u5e38\u7ec8\u6b62"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lz2/dg;->OooOOo0:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    const-string v3, "root\u8fdb\u7a0b\u5f02\u5e38\u7ec8\u6b62"

    invoke-interface {v1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;->onStopScript(ILjava/lang/String;)V

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lz2/dg$OooO0OO;

    invoke-direct {v3, p0}, Lz2/dg$OooO0OO;-><init>(Lz2/dg;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-boolean v1, p0, Lz2/dg;->OooO:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lz2/dg;->OooOOOO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lz2/dg;->OooO:Z

    invoke-interface {v1, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;->onScreenShotFailed(I)V

    :cond_2
    iget-object v1, p0, Lz2/dg;->OooOO0o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;

    invoke-interface {v2, v0}, Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;->onCrash(Lz2/he;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final OooO0O0()V
    .locals 1

    invoke-super {p0}, Lz2/cg;->OooO0O0()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/dg;->OooO0o0:Z

    const/4 v0, 0x3

    invoke-static {v0}, Lz2/ne;->OooO0OO(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz2/dg;->OooOOOo(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public final declared-synchronized OooOOOo(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/dg;->OooOo:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final OooOo0o()V
    .locals 12

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lz2/dg;->OooO0o:Z

    iget-object v2, p0, Lz2/dg;->OooOoO0:Ljava/lang/Thread;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_1
    :pswitch_0
    iget-boolean v2, p0, Lz2/dg;->OooO0o0:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    invoke-direct {p0}, Lz2/dg;->Oooo000()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v2

    iget-object v4, p0, Lz2/dg;->OooO0oO:Lz2/fg;

    if-eqz v2, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "handMessage msg.getCmd() -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getCmd()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lz2/fg;->OooO0OO:Lz2/dg;

    iget-object v5, v5, Lz2/dg;->OooOOO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getCmd()I

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eq v6, v7, :cond_f

    const/4 v9, 0x5

    if-eq v6, v9, :cond_e

    const/4 v7, 0x3

    const/4 v10, 0x6

    if-eq v6, v10, :cond_b

    const/16 v9, 0x1b

    if-eq v6, v9, :cond_a

    const/16 v9, 0x1c

    const/16 v11, 0x10

    if-eq v6, v9, :cond_9

    sparse-switch v6, :sswitch_data_0

    const/16 v5, 0x18

    packed-switch v6, :pswitch_data_0

    packed-switch v6, :pswitch_data_1

    packed-switch v6, :pswitch_data_2

    packed-switch v6, :pswitch_data_3

    packed-switch v6, :pswitch_data_4

    goto :goto_1

    :pswitch_1
    if-lt v0, v5, :cond_0

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3(I)F

    move-result v4

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3(I)F

    move-result v5

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-static {v4, v5, v2}, Lcom/cyjh/event/Injector;->TapAB(FFI)V

    goto :goto_1

    :pswitch_2
    if-lt v0, v5, :cond_0

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3(I)F

    move-result v4

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3(I)F

    move-result v5

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3(I)F

    move-result v6

    invoke-virtual {v2, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3(I)F

    move-result v7

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-static {v4, v5, v6, v7, v2}, Lcom/cyjh/event/Injector;->SwipeAB(FFFFI)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cyjh/event/Injector;->dispatchGestureMoveAB(Ljava/lang/String;)V

    :pswitch_4
    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cyjh/event/Injector;->sendTextAB(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-static {v2}, Lcom/cyjh/event/Injector;->KeyPressAB(I)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, v4, Lz2/fg;->OooO00o:Landroid/content/Context;

    invoke-static {v2}, Lz2/jg;->OooO0O0(Landroid/content/Context;)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-static {v4, v5, v2}, Lz2/fg;->OooO0oO(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    iget-object v2, v4, Lz2/fg;->OooO0O0:Lz2/ge;

    invoke-virtual {v2}, Lz2/ge;->OooOo()V

    goto/16 :goto_1

    :pswitch_9
    iget-object v3, v4, Lz2/fg;->OooO0oO:Landroid/os/Handler;

    const/16 v4, 0x17

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2Bytes(I)Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v6

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-virtual {v4, v5, v3, v6, v2}, Lz2/fg;->OooO0O0(Lcom/google/protobuf/ByteString;III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "strOrcText:"

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "GET_OCR_TEXT"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v3

    const/16 v5, 0x6d

    goto :goto_2

    :pswitch_b
    iget-object v2, v4, Lz2/fg;->OooO0O0:Lz2/ge;

    invoke-virtual {v2}, Lz2/ge;->OooOo0o()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v3

    const/16 v5, 0x6c

    goto :goto_2

    :pswitch_c
    iget-object v5, v4, Lz2/fg;->OooO0O0:Lz2/ge;

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lz2/ge;->OooOOOO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v3

    const/16 v5, 0x6b

    goto :goto_2

    :pswitch_d
    iget-object v2, v4, Lz2/fg;->OooO0O0:Lz2/ge;

    invoke-virtual {v2}, Lz2/ge;->OooOo0O()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v3

    const/16 v5, 0x6a

    :goto_2
    invoke-virtual {v3, v5}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v2

    iget-object v3, v4, Lz2/fg;->OooO0OO:Lz2/dg;

    invoke-virtual {v3, v2}, Lz2/dg;->OooOOOo(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    if-ne v2, v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    iget-object v2, v4, Lz2/fg;->OooO0O0:Lz2/ge;

    iget-object v4, v2, Lz2/ge;->OooO00o:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "state"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, v2, Lz2/ge;->OooO00o:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    const/4 v3, 0x1

    :cond_2
    iget-object v2, v4, Lz2/fg;->OooO0O0:Lz2/ge;

    xor-int/2addr v3, v1

    iget-object v2, v2, Lz2/ge;->OooO00o:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "accelerometer_rotation"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    if-ne v2, v1, :cond_3

    const/4 v3, 0x1

    :cond_3
    iget-object v2, v4, Lz2/fg;->OooO00o:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lz2/fg;->OooO0o0(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, v4, Lz2/fg;->OooO00o:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "title"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_display_name"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "mime_type"

    const-string v7, "video/3gp"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "datetaken"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "date_modified"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "date_added"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_data"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v6, "_size"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v4, Lz2/fg;->OooO00o:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v4, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Lz2/fg;->OooO0o(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_14
    iget-object v4, v4, Lz2/fg;->OooO0oO:Landroid/os/Handler;

    const/16 v5, 0x16

    goto/16 :goto_8

    :pswitch_15
    iget-object v4, v4, Lz2/fg;->OooO0oO:Landroid/os/Handler;

    const/16 v5, 0x14

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    :pswitch_16
    iget-object v3, v4, Lz2/fg;->OooO0oO:Landroid/os/Handler;

    const/4 v4, 0x7

    goto :goto_3

    :pswitch_17
    iget-object v3, v4, Lz2/fg;->OooO0oO:Landroid/os/Handler;

    invoke-virtual {v3, v10, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_7

    :pswitch_18
    iget-object v3, v4, Lz2/fg;->OooO0oO:Landroid/os/Handler;

    const/16 v4, 0x12

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object v2

    :goto_3
    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_7

    :pswitch_19
    iget-object v4, v4, Lz2/fg;->OooO0O0:Lz2/ge;

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lz2/ge;->OooOOo0(I)V

    goto/16 :goto_1

    :pswitch_1a
    iget-object v4, v4, Lz2/fg;->OooO0O0:Lz2/ge;

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lz2/ge;->OooOOO0(I)V

    goto/16 :goto_1

    :pswitch_1b
    iget-object v4, v4, Lz2/fg;->OooO0O0:Lz2/ge;

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lz2/ge;->OooOO0(I)V

    goto/16 :goto_1

    :pswitch_1c
    iget-object v2, v4, Lz2/fg;->OooO0O0:Lz2/ge;

    invoke-virtual {v2}, Lz2/ge;->OooOo0()V

    goto/16 :goto_1

    :pswitch_1d
    iget-object v2, v4, Lz2/fg;->OooO0O0:Lz2/ge;

    invoke-virtual {v2}, Lz2/ge;->OooOo00()V

    goto/16 :goto_1

    :pswitch_1e
    iget-object v2, v4, Lz2/fg;->OooO00o:Landroid/content/Context;

    invoke-static {v2}, Lz2/jf;->OooO00o(Landroid/content/Context;)V

    goto/16 :goto_1

    :pswitch_1f
    iget-object v4, v4, Lz2/fg;->OooO00o:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lz2/jf;->OooO0O0(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_20
    iget-object v4, v4, Lz2/fg;->OooO00o:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v3, v5, v2}, Lz2/jf;->OooO0o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    :pswitch_21
    invoke-static {}, Lz2/ge;->OooOOo()V

    goto/16 :goto_1

    :pswitch_22
    iget-object v4, v4, Lz2/fg;->OooO0OO:Lz2/dg;

    iget-object v4, v4, Lz2/dg;->OooOoO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;->onRpcReturn(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_23
    iget-object v4, v4, Lz2/fg;->OooO0oO:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_4
    invoke-virtual {v4, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_7

    :pswitch_24
    iget-object v2, v4, Lz2/fg;->OooO0oO:Landroid/os/Handler;

    const/16 v3, 0x9

    goto :goto_5

    :pswitch_25
    iget-object v2, v4, Lz2/fg;->OooO0oO:Landroid/os/Handler;

    const/16 v3, 0x8

    :goto_5
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :pswitch_26
    iget-object v2, v4, Lz2/fg;->OooO0O0:Lz2/ge;

    invoke-virtual {v2}, Lz2/ge;->OooOOOo()V

    goto/16 :goto_1

    :pswitch_27
    iget-object v4, v4, Lz2/fg;->OooO0oO:Landroid/os/Handler;

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3(I)F

    move-result v6

    mul-float v6, v6, v5

    float-to-int v5, v6

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v11, v5, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_7

    :pswitch_28
    iget-object v4, v4, Lz2/fg;->OooO0O0:Lz2/ge;

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lz2/ge;->OooO0oo(Ljava/lang/String;)Z

    goto/16 :goto_1

    :pswitch_29
    iget-object v5, v4, Lz2/fg;->OooO0O0:Lz2/ge;

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lz2/ge;->OooOO0O(Ljava/lang/String;)V

    iget-object v2, v4, Lz2/fg;->OooO0OO:Lz2/dg;

    const/16 v3, 0x26

    invoke-static {v3}, Lz2/ne;->OooO0OO(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v3

    :goto_6
    invoke-virtual {v2, v3}, Lz2/dg;->OooOOOo(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    goto/16 :goto_1

    :pswitch_2a
    iget-object v4, v4, Lz2/fg;->OooO0O0:Lz2/ge;

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lz2/ge;->OooO0o(I)V

    goto/16 :goto_1

    :pswitch_2b
    iget-object v4, v4, Lz2/fg;->OooO0O0:Lz2/ge;

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lz2/ge;->OooO0Oo(Ljava/lang/String;)Z

    goto/16 :goto_1

    :pswitch_2c
    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lz2/ge;->OooOOO(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2d
    iget-object v4, v4, Lz2/fg;->OooO0O0:Lz2/ge;

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lz2/ge;->OooO0O0(I)V

    goto/16 :goto_1

    :pswitch_2e
    iget-object v3, v4, Lz2/fg;->OooO0oO:Landroid/os/Handler;

    invoke-virtual {v3, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    :goto_7
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :pswitch_2f
    iget-object v4, v4, Lz2/fg;->OooO0OO:Lz2/dg;

    iget-object v4, v4, Lz2/dg;->OooOOOo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;->onTracePrint(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_0
    iget-object v2, v4, Lz2/fg;->OooO0OO:Lz2/dg;

    invoke-virtual {v2}, Lz2/dg;->OooOoO()V

    goto/16 :goto_1

    :sswitch_1
    invoke-static {}, Lz2/o00O0O0$OooO0O0;->OooO00o()Lz2/o00O0O0;

    move-result-object v2

    iget-object v3, v2, Lz2/o00O0O0;->OooO0OO:Lz2/o00O0OO0;

    if-nez v3, :cond_4

    new-instance v3, Lz2/o00O0OO0;

    invoke-direct {v3}, Lz2/o00O0OO0;-><init>()V

    iput-object v3, v2, Lz2/o00O0O0;->OooO0OO:Lz2/o00O0OO0;

    :cond_4
    iget-object v2, v2, Lz2/o00O0O0;->OooO0OO:Lz2/o00O0OO0;

    invoke-static {}, Lz2/ag;->OooO0Oo()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v2, Lz2/o00O0OO0;->OooO00o:Lz2/o00O0OOO;

    if-eqz v2, :cond_0

    invoke-interface {v2, v3}, Lz2/o00O0OOO;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lz2/o00OO;->OooO00o(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v3

    const/16 v4, 0x120

    invoke-virtual {v3, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v2

    invoke-static {}, Lz2/o00O0O0$OooO0O0;->OooO00o()Lz2/o00O0O0;

    move-result-object v3

    invoke-virtual {v3}, Lz2/o00O0O0;->OooO00o()Lz2/o00O0O0O;

    move-result-object v3

    invoke-virtual {v3, v2}, Lz2/o00O0O0O;->OooO00o(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    goto/16 :goto_1

    :sswitch_2
    iget-object v3, v4, Lz2/fg;->OooO0OO:Lz2/dg;

    iget-object v3, v3, Lz2/dg;->OooOOOo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;->onDebugMessage(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_1

    :sswitch_3
    iget-object v4, v4, Lz2/fg;->OooO0oO:Landroid/os/Handler;

    const/16 v5, 0x11

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto :goto_7

    :sswitch_4
    iget-object v4, v4, Lz2/fg;->OooO0oO:Landroid/os/Handler;

    const/16 v5, 0x13

    goto :goto_8

    :sswitch_5
    iget-object v4, v4, Lz2/fg;->OooO0oO:Landroid/os/Handler;

    const/16 v5, 0x15

    :goto_8
    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v6

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v6, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_7

    :sswitch_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "RPC_UPWARD  msg.getPkgName() = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " msg.getMethodName() = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " msg.getTypesList() = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getTypesList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " msg.getParamsList() = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getParamsList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getTypesList()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getParamsList()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/cyjh/mobileanjian/ipc/rpc/Invocator;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "retObj = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getIsSyncCall()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getRetValue()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    move-result-object v5

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v6

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getCmd()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setIsSyncCall(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getWaitId()I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setWaitId(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v2

    :try_start_0
    sget-object v7, Lz2/fg$OooO0O0;->OooO00o:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_5

    goto :goto_a

    :pswitch_30
    if-nez v3, :cond_5

    const-string v3, ""

    goto :goto_9

    :cond_5
    check-cast v3, Ljava/lang/String;

    :goto_9
    invoke-virtual {v6, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValString(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    goto :goto_a

    :pswitch_31
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValDouble(D)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    goto :goto_a

    :pswitch_32
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v6, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValFloat(F)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    goto :goto_a

    :pswitch_33
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValLong(J)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    goto :goto_a

    :pswitch_34
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValInt(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    goto :goto_a

    :pswitch_35
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v6, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValBoolean(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a
    sget-object v3, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->VOID:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    if-eq v5, v3, :cond_6

    invoke-virtual {v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setRetValue(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    :cond_6
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v3
    :try_end_1
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_b
    if-eqz v3, :cond_0

    iget-object v2, v4, Lz2/fg;->OooO0OO:Lz2/dg;

    goto/16 :goto_6

    :sswitch_7
    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v5

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v6

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v7

    shl-int/2addr v5, v11

    or-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lz2/fg;->OooO0OO:Lz2/dg;

    iget-object v6, v4, Lz2/dg;->OooOOOO:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    if-nez v7, :cond_7

    iput-boolean v3, v4, Lz2/dg;->OooO:Z

    :cond_7
    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-interface {v6, v5, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;->onScreenShotDone(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_1

    :sswitch_8
    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v5, :cond_0

    invoke-interface {v5, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;->onFinishRecord(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_9
    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    if-eqz v5, :cond_0

    invoke-interface {v5, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;->onStartRecord(I)V

    goto/16 :goto_1

    :sswitch_a
    if-eqz v5, :cond_0

    invoke-interface {v5}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;->onOpenRecord()V

    goto/16 :goto_1

    :sswitch_b
    new-instance v5, Lz2/bg$OooO0O0;

    invoke-direct {v5}, Lz2/bg$OooO0O0;-><init>()V

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v6

    iput v6, v5, Lz2/bg$OooO0O0;->OooO00o:I

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v6

    iput v6, v5, Lz2/bg$OooO0O0;->OooO0O0:I

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_c

    :cond_8
    const/4 v2, 0x0

    :goto_c
    iput-boolean v2, v5, Lz2/bg$OooO0O0;->OooO0OO:Z

    new-instance v2, Lz2/bg;

    invoke-direct {v2, v5, v3}, Lz2/bg;-><init>(Lz2/bg$OooO0O0;B)V

    iget-object v3, v4, Lz2/fg;->OooO0OO:Lz2/dg;

    iput-object v2, v3, Lz2/dg;->OooOO0O:Lz2/bg;

    new-instance v2, Lz2/dg$OooO0O0;

    invoke-direct {v2, v3}, Lz2/dg$OooO0O0;-><init>(Lz2/dg;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v5

    shl-int/2addr v3, v11

    or-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v4, Lz2/fg;->OooO0OO:Lz2/dg;

    iget-object v4, v4, Lz2/dg;->OooOo0O:Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-interface {v4, v3, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;->onScreenShotDone(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_1

    :cond_a
    iget-object v4, v4, Lz2/fg;->OooO0OO:Lz2/dg;

    iget-object v4, v4, Lz2/dg;->OooOo0O:Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;->onUiElementback(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    iget-object v5, v4, Lz2/fg;->OooO0O0:Lz2/ge;

    invoke-virtual {v5}, Lz2/ge;->OooO00o()V

    invoke-static {}, Lz2/ge;->OooOOo()V

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v5

    iget-object v6, v4, Lz2/fg;->OooO0OO:Lz2/dg;

    iput-boolean v3, v6, Lz2/dg;->OooOO0:Z

    const/16 v6, 0x69

    if-eq v5, v6, :cond_c

    if-nez v5, :cond_d

    :cond_c
    sget v6, Lcom/cyjh/mqsdk/R$string;->toast_on_stop_script:I

    iget-object v8, v4, Lz2/fg;->OooO0oO:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    iput v6, v8, Landroid/os/Message;->arg1:I

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    iget-object v4, v4, Lz2/fg;->OooO0oO:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v7, v5, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_7

    :cond_e
    iget-object v2, v4, Lz2/fg;->OooO0oO:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_f
    iget-object v2, v4, Lz2/fg;->OooO0OO:Lz2/dg;

    iput-boolean v1, v2, Lz2/dg;->OooOO0:Z

    iget-object v2, v4, Lz2/fg;->OooO0oO:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_10
    iput-boolean v3, p0, Lz2/dg;->OooO0o:Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_b
        0x13 -> :sswitch_a
        0x15 -> :sswitch_9
        0x17 -> :sswitch_8
        0x19 -> :sswitch_7
        0x30 -> :sswitch_6
        0x51 -> :sswitch_5
        0x60 -> :sswitch_4
        0x81 -> :sswitch_3
        0x101 -> :sswitch_2
        0x120 -> :sswitch_1
        0xffff -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x40
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x62
        :pswitch_15
        :pswitch_14
        :pswitch_13
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
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x110
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch
.end method

.method public final OooOoO()V
    .locals 2

    iget-object v0, p0, Lz2/dg;->OooOO0o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;

    invoke-interface {v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;->onExit()V

    goto :goto_0

    :cond_0
    return-void
.end method
