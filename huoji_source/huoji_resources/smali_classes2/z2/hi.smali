.class public final Lz2/hi;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OooOOO:Lz2/hi;


# instance fields
.field private OooO:Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;

.field private OooO00o:Z

.field private OooO0O0:Lz2/gi;

.field private OooO0OO:I

.field private OooO0Oo:Z

.field private OooO0o:Lz2/li;

.field private OooO0o0:Lz2/ki;

.field private OooO0oO:Lz2/ji;

.field private OooO0oo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;

.field private OooOO0:Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;

.field private OooOO0O:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

.field private OooOO0o:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

.field private OooOOO0:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/hi;

    invoke-direct {v0}, Lz2/hi;-><init>()V

    sput-object v0, Lz2/hi;->OooOOO:Lz2/hi;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/hi;->OooO00o:Z

    new-instance v0, Lz2/hi$OooO00o;

    invoke-direct {v0, p0}, Lz2/hi$OooO00o;-><init>(Lz2/hi;)V

    iput-object v0, p0, Lz2/hi;->OooO0oo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;

    new-instance v0, Lz2/hi$OooO0O0;

    invoke-direct {v0, p0}, Lz2/hi$OooO0O0;-><init>(Lz2/hi;)V

    iput-object v0, p0, Lz2/hi;->OooO:Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;

    new-instance v0, Lz2/hi$OooO0OO;

    invoke-direct {v0, p0}, Lz2/hi$OooO0OO;-><init>(Lz2/hi;)V

    iput-object v0, p0, Lz2/hi;->OooOO0:Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;

    new-instance v0, Lz2/hi$OooO0o;

    invoke-direct {v0, p0}, Lz2/hi$OooO0o;-><init>(Lz2/hi;)V

    iput-object v0, p0, Lz2/hi;->OooOO0O:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    new-instance v0, Lz2/hi$OooO;

    invoke-direct {v0, p0}, Lz2/hi$OooO;-><init>(Lz2/hi;)V

    iput-object v0, p0, Lz2/hi;->OooOO0o:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    new-instance v0, Lz2/hi$OooOO0;

    invoke-direct {v0, p0}, Lz2/hi$OooOO0;-><init>(Lz2/hi;)V

    iput-object v0, p0, Lz2/hi;->OooOOO0:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    return-void
.end method

.method public static synthetic OooO00o(Lz2/hi;)Lz2/ji;
    .locals 0

    iget-object p0, p0, Lz2/hi;->OooO0oO:Lz2/ji;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lz2/hi;Z)Z
    .locals 0

    iput-boolean p1, p0, Lz2/hi;->OooO00o:Z

    return p1
.end method

.method public static OooO0OO()Lz2/hi;
    .locals 1

    sget-object v0, Lz2/hi;->OooOOO:Lz2/hi;

    return-object v0
.end method


# virtual methods
.method public OooO()V
    .locals 1

    iget-object v0, p0, Lz2/hi;->OooO0O0:Lz2/gi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/gi;->OooO0Oo()V

    :cond_0
    return-void
.end method

.method public OooO0Oo(Landroid/app/Application;)V
    .locals 0

    new-instance p1, Lz2/ki;

    invoke-direct {p1}, Lz2/ki;-><init>()V

    iput-object p1, p0, Lz2/hi;->OooO0o0:Lz2/ki;

    iput-object p1, p0, Lz2/hi;->OooO0O0:Lz2/gi;

    return-void
.end method

.method public OooO0o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lz2/hi;->OooO0O0:Lz2/gi;

    iget-object v1, p0, Lz2/hi;->OooOO0o:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    invoke-virtual {v0, p1, p2, p3, v1}, Lz2/gi;->OooO0O0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mq/sdk/inf/OnElfCallback;)V

    return-void
.end method

.method public OooO0o0(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz2/ji;)V
    .locals 7

    iput-object p5, p0, Lz2/hi;->OooO0oO:Lz2/ji;

    iget-object v4, p0, Lz2/hi;->OooO0oo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;

    new-instance v5, Lz2/hi$OooOO0O;

    invoke-direct {v5, p0}, Lz2/hi$OooOO0O;-><init>(Lz2/hi;)V

    iget-object v6, p0, Lz2/hi;->OooOO0:Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v6}, Lcom/cyjh/mq/sdk/MqBridge;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;)V

    iget-object p1, p0, Lz2/hi;->OooO0O0:Lz2/gi;

    iget-object p2, p0, Lz2/hi;->OooOOO0:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    invoke-virtual {p1, p2}, Lz2/gi;->OooO0oo(Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;)V

    iget-object p1, p0, Lz2/hi;->OooO0O0:Lz2/gi;

    iget-object p2, p0, Lz2/hi;->OooOO0O:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    invoke-virtual {p1, p2}, Lz2/gi;->OooO0oO(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;)V

    return-void
.end method

.method public OooO0oO()Z
    .locals 1

    iget-boolean v0, p0, Lz2/hi;->OooO00o:Z

    return v0
.end method

.method public OooO0oo()Z
    .locals 1

    iget-object v0, p0, Lz2/hi;->OooO0O0:Lz2/gi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/gi;->OooO0OO()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public OooOO0()V
    .locals 1

    iget-object v0, p0, Lz2/hi;->OooO0O0:Lz2/gi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/gi;->OooO0o0()V

    :cond_0
    return-void
.end method

.method public OooOO0O(ZIIII)V
    .locals 6

    iget-object v0, p0, Lz2/hi;->OooO0O0:Lz2/gi;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lz2/gi;->OooO0o(ZIIII)V

    :cond_0
    return-void
.end method

.method public OooOO0o(Z)V
    .locals 0

    iput-boolean p1, p0, Lz2/hi;->OooO00o:Z

    return-void
.end method

.method public OooOOO(I)V
    .locals 0

    iput p1, p0, Lz2/hi;->OooO0OO:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lz2/hi;->OooO0o0:Lz2/ki;

    if-nez p1, :cond_0

    new-instance p1, Lz2/ki;

    invoke-direct {p1}, Lz2/ki;-><init>()V

    iput-object p1, p0, Lz2/hi;->OooO0o0:Lz2/ki;

    :cond_0
    iget-object p1, p0, Lz2/hi;->OooO0o0:Lz2/ki;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lz2/hi;->OooO0o:Lz2/li;

    if-nez p1, :cond_2

    new-instance p1, Lz2/li;

    invoke-direct {p1}, Lz2/li;-><init>()V

    iput-object p1, p0, Lz2/hi;->OooO0o:Lz2/li;

    :cond_2
    iget-object p1, p0, Lz2/hi;->OooO0o:Lz2/li;

    :goto_0
    iput-object p1, p0, Lz2/hi;->OooO0O0:Lz2/gi;

    return-void
.end method

.method public OooOOO0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lz2/hi;->OooO0O0:Lz2/gi;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lz2/gi;->OooO(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public OooOOOO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lz2/pg;

    invoke-direct {v0}, Lz2/pg;-><init>()V

    invoke-virtual {v0, p1}, Lz2/pg;->OooOo0O(Ljava/lang/String;)Lz2/tg;

    invoke-virtual {v0, p2}, Lz2/pg;->OooOo(Ljava/lang/String;)Lz2/tg;

    invoke-virtual {v0, p3}, Lz2/pg;->OooOOOo(Ljava/lang/String;)Lz2/tg;

    invoke-virtual {v0, p7}, Lz2/pg;->OooO0oO(Ljava/lang/String;)Lz2/tg;

    invoke-virtual {v0, p8}, Lz2/pg;->OooO0o0(Ljava/lang/String;)Lz2/tg;

    iput p4, v0, Lz2/pg;->OooooOO:I

    iput-wide p5, v0, Lz2/pg;->Oooooo:J

    iput-object p9, v0, Lz2/pg;->Ooooo0o:Ljava/lang/String;

    iput-object p10, v0, Lz2/pg;->OooooO0:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lz2/pg;->OoooooO:Z

    iget-object p1, p0, Lz2/hi;->OooO0O0:Lz2/gi;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lz2/gi;->OooOO0(Lz2/pg;)V

    :cond_0
    return-void
.end method

.method public OooOOOo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lz2/pg;

    invoke-direct {v0}, Lz2/pg;-><init>()V

    invoke-virtual {v0, p1}, Lz2/pg;->OooOo0O(Ljava/lang/String;)Lz2/tg;

    invoke-virtual {v0, p2}, Lz2/pg;->OooOo(Ljava/lang/String;)Lz2/tg;

    invoke-virtual {v0, p3}, Lz2/pg;->OooOOOo(Ljava/lang/String;)Lz2/tg;

    invoke-virtual {v0, p4}, Lz2/pg;->OooO0oO(Ljava/lang/String;)Lz2/tg;

    invoke-virtual {v0, p5}, Lz2/pg;->OooO0o0(Ljava/lang/String;)Lz2/tg;

    iget-object p1, p0, Lz2/hi;->OooO0O0:Lz2/gi;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lz2/gi;->OooOO0(Lz2/pg;)V

    :cond_0
    return-void
.end method

.method public OooOOo()V
    .locals 1

    iget-object v0, p0, Lz2/hi;->OooO0O0:Lz2/gi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/gi;->OooOO0o()V

    :cond_0
    return-void
.end method

.method public OooOOo0()V
    .locals 2

    iget-object v0, p0, Lz2/hi;->OooO0O0:Lz2/gi;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz2/hi;->OooOOO0:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    invoke-virtual {v0, v1}, Lz2/gi;->OooO0oo(Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;)V

    iget-object v0, p0, Lz2/hi;->OooO0O0:Lz2/gi;

    invoke-virtual {v0}, Lz2/gi;->OooOO0O()V

    :cond_0
    return-void
.end method
