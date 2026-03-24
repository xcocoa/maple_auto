.class public final Lz2/ie;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO:Lz2/ie; = null

.field public static final OooO0oO:I = 0x1

.field public static final OooO0oo:I = 0x2

.field private static final OooOO0:Ljava/lang/String; = "3rd.need.or.not.m"


# instance fields
.field private OooO00o:Landroid/os/Handler;

.field private OooO0O0:Z

.field private OooO0OO:Z

.field private OooO0Oo:Z

.field private OooO0o:I

.field private OooO0o0:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/ie;->OooO0O0:Z

    iput-boolean v0, p0, Lz2/ie;->OooO0OO:Z

    iput-boolean v0, p0, Lz2/ie;->OooO0Oo:Z

    iput-boolean v0, p0, Lz2/ie;->OooO0o0:Z

    new-instance v0, Lz2/ie$OooO00o;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lz2/ie$OooO00o;-><init>(Lz2/ie;Landroid/os/Looper;)V

    iput-object v0, p0, Lz2/ie;->OooO00o:Landroid/os/Handler;

    return-void
.end method

.method private static declared-synchronized OooO00o()Lz2/ie;
    .locals 2

    const-class v0, Lz2/ie;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/ie;->OooO:Lz2/ie;

    if-nez v1, :cond_0

    new-instance v1, Lz2/ie;

    invoke-direct {v1}, Lz2/ie;-><init>()V

    sput-object v1, Lz2/ie;->OooO:Lz2/ie;

    :cond_0
    sget-object v1, Lz2/ie;->OooO:Lz2/ie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private OooO0O0(I)V
    .locals 0

    iput p1, p0, Lz2/ie;->OooO0o:I

    return-void
.end method

.method private OooO0OO()Z
    .locals 1

    iget-boolean v0, p0, Lz2/ie;->OooO0o0:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lz2/ie;->OooO0Oo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private OooO0Oo()V
    .locals 3

    iget-boolean v0, p0, Lz2/ie;->OooO0OO:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/ie;->OooO0OO:Z

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RootUtil;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lz2/je;->OooO00o()Lz2/je;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/je;->OooO0o(Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz2/ie;->OooO00o:Landroid/os/Handler;

    const/4 v1, 0x4

    const-string v2, "User refused root."

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/ie;->OooO0OO:Z

    return-void
.end method
