.class public final Lz2/je;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/je$OooO0OO;
    }
.end annotation


# static fields
.field private static final OooO0oO:Ljava/lang/String; = "echo \"rootOK\"\n"

.field public static OooO0oo:Lz2/je;


# instance fields
.field public OooO00o:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

.field public OooO0O0:Lz2/je$OooO0OO;

.field public OooO0OO:Z

.field public OooO0Oo:Ljava/io/DataOutputStream;

.field public OooO0o:Ljava/lang/Process;

.field public OooO0o0:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/je;->OooO00o:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

    iput-object v0, p0, Lz2/je;->OooO0O0:Lz2/je$OooO0OO;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lz2/je;->OooO0OO:Z

    iput-object v0, p0, Lz2/je;->OooO0Oo:Ljava/io/DataOutputStream;

    iput-object v0, p0, Lz2/je;->OooO0o0:Ljava/io/InputStream;

    iput-object v0, p0, Lz2/je;->OooO0o:Ljava/lang/Process;

    return-void
.end method

.method private static synthetic OooO(Lz2/je;)Ljava/io/DataOutputStream;
    .locals 0

    iget-object p0, p0, Lz2/je;->OooO0Oo:Ljava/io/DataOutputStream;

    return-object p0
.end method

.method public static declared-synchronized OooO00o()Lz2/je;
    .locals 2

    const-class v0, Lz2/je;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/je;->OooO0oo:Lz2/je;

    if-nez v1, :cond_0

    new-instance v1, Lz2/je;

    invoke-direct {v1}, Lz2/je;-><init>()V

    sput-object v1, Lz2/je;->OooO0oo:Lz2/je;

    :cond_0
    sget-object v1, Lz2/je;->OooO0oo:Lz2/je;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static synthetic OooO0O0(Lz2/je;Ljava/io/DataOutputStream;)Ljava/io/DataOutputStream;
    .locals 0

    iput-object p1, p0, Lz2/je;->OooO0Oo:Ljava/io/DataOutputStream;

    return-object p1
.end method

.method private static synthetic OooO0OO(Lz2/je;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    iput-object p1, p0, Lz2/je;->OooO0o0:Ljava/io/InputStream;

    return-object p1
.end method

.method private static synthetic OooO0Oo(Lz2/je;)Ljava/lang/Process;
    .locals 0

    iget-object p0, p0, Lz2/je;->OooO0o:Ljava/lang/Process;

    return-object p0
.end method

.method private static synthetic OooO0o0(Lz2/je;Ljava/lang/Process;)Ljava/lang/Process;
    .locals 0

    iput-object p1, p0, Lz2/je;->OooO0o:Ljava/lang/Process;

    return-object p1
.end method

.method private OooO0oO(Ljava/lang/Process;Z)V
    .locals 2

    new-instance v0, Lz2/je$OooO00o;

    const-string v1, ""

    invoke-direct {v0, p0, v1, p1}, Lz2/je$OooO00o;-><init>(Lz2/je;Ljava/lang/String;Ljava/lang/Process;)V

    new-instance p1, Lz2/je$OooO0O0;

    invoke-direct {p1, p0, v1, p2}, Lz2/je$OooO0O0;-><init>(Lz2/je;Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Thread;->join()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "go straight here, mRoot = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lz2/je;->OooO0OO:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lz2/je;->OooO0OO:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lz2/je;->OooO0o:Ljava/lang/Process;

    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    iget-object p1, p0, Lz2/je;->OooO00o:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;->onRefused()V

    :cond_2
    :try_start_2
    iget-object p1, p0, Lz2/je;->OooO0Oo:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    return-void
.end method

.method private static synthetic OooOO0(Lz2/je;Ljava/lang/Process;)V
    .locals 2

    new-instance v0, Lz2/je$OooO00o;

    const-string v1, ""

    invoke-direct {v0, p0, v1, p1}, Lz2/je$OooO00o;-><init>(Lz2/je;Ljava/lang/String;Ljava/lang/Process;)V

    new-instance p1, Lz2/je$OooO0O0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v1, v0}, Lz2/je$OooO0O0;-><init>(Lz2/je;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "go straight here, mRoot = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lz2/je;->OooO0OO:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lz2/je;->OooO0OO:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lz2/je;->OooO0o:Ljava/lang/Process;

    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    iget-object p1, p0, Lz2/je;->OooO00o:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;->onRefused()V

    :cond_0
    :try_start_1
    iget-object p0, p0, Lz2/je;->OooO0Oo:Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private OooOO0O()Z
    .locals 1

    iget-boolean v0, p0, Lz2/je;->OooO0OO:Z

    return v0
.end method

.method private static synthetic OooOO0o(Lz2/je;)Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;
    .locals 0

    iget-object p0, p0, Lz2/je;->OooO00o:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

    return-object p0
.end method

.method private static synthetic OooOOO(Lz2/je;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lz2/je;->OooO0o0:Ljava/io/InputStream;

    return-object p0
.end method

.method private OooOOO0()V
    .locals 1

    iget-boolean v0, p0, Lz2/je;->OooO0OO:Z

    if-eqz v0, :cond_1

    const-string v0, "exit"

    invoke-virtual {p0, v0}, Lz2/je;->OooO0oo(Ljava/lang/String;)Z

    iget-object v0, p0, Lz2/je;->OooO0O0:Lz2/je$OooO0OO;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/je;->OooO0O0:Lz2/je$OooO0OO;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lz2/je;->OooO0Oo:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lz2/je;->OooO0oo:Lz2/je;

    return-void
.end method

.method private OooOOOO()V
    .locals 2

    new-instance v0, Lz2/je$OooO0OO;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lz2/je$OooO0OO;-><init>(Lz2/je;B)V

    iput-object v0, p0, Lz2/je;->OooO0O0:Lz2/je$OooO0OO;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static synthetic OooOOOo(Lz2/je;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/je;->OooO0OO:Z

    return v0
.end method


# virtual methods
.method public final OooO0o(Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;)V
    .locals 1

    iget-boolean v0, p0, Lz2/je;->OooO0OO:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;->onObtained()V

    return-void

    :cond_0
    iput-object p1, p0, Lz2/je;->OooO00o:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

    invoke-direct {p0}, Lz2/je;->OooOOOO()V

    return-void
.end method

.method public final OooO0oo(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lz2/je;->OooO0OO:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lz2/je;->OooO0Oo:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    iget-object p1, p0, Lz2/je;->OooO0Oo:Ljava/io/DataOutputStream;

    const-string v0, "\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-object p1, p0, Lz2/je;->OooO0Oo:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
