.class public final Lz2/je$OooO0OO;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/je;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0OO"
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/je;


# direct methods
.method private constructor <init>(Lz2/je;)V
    .locals 0

    iput-object p1, p0, Lz2/je$OooO0OO;->OoooOoO:Lz2/je;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/je;B)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/je$OooO0OO;-><init>(Lz2/je;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lz2/je$OooO0OO;->OoooOoO:Lz2/je;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "xu"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    iput-object v2, v1, Lz2/je;->OooO0o:Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestRoot(xu) --:  Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/je$OooO0OO;->OoooOoO:Lz2/je;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "su"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    iput-object v2, v1, Lz2/je;->OooO0o:Ljava/lang/Process;

    :goto_0
    iget-object v1, p0, Lz2/je$OooO0OO;->OoooOoO:Lz2/je;

    new-instance v2, Ljava/io/DataOutputStream;

    iget-object v3, p0, Lz2/je$OooO0OO;->OoooOoO:Lz2/je;

    iget-object v3, v3, Lz2/je;->OooO0o:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, v1, Lz2/je;->OooO0Oo:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lz2/je$OooO0OO;->OoooOoO:Lz2/je;

    iget-object v2, v1, Lz2/je;->OooO0o:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, v1, Lz2/je;->OooO0o0:Ljava/io/InputStream;

    iget-object v1, p0, Lz2/je$OooO0OO;->OoooOoO:Lz2/je;

    iget-object v1, v1, Lz2/je;->OooO0Oo:Ljava/io/DataOutputStream;

    const-string v2, "echo \"rootOK\"\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    iget-object v1, p0, Lz2/je$OooO0OO;->OoooOoO:Lz2/je;

    iget-object v1, v1, Lz2/je;->OooO0Oo:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    iget-object v1, p0, Lz2/je$OooO0OO;->OoooOoO:Lz2/je;

    iget-object v2, v1, Lz2/je;->OooO0o:Ljava/lang/Process;

    new-instance v3, Lz2/je$OooO00o;

    invoke-direct {v3, v1, v0, v2}, Lz2/je$OooO00o;-><init>(Lz2/je;Ljava/lang/String;Ljava/lang/Process;)V

    new-instance v2, Lz2/je$OooO0O0;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lz2/je$OooO0O0;-><init>(Lz2/je;Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "go straight here, mRoot = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v1, Lz2/je;->OooO0OO:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v0, v1, Lz2/je;->OooO0OO:Z

    if-nez v0, :cond_1

    iget-object v0, v1, Lz2/je;->OooO0o:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    iget-object v0, v1, Lz2/je;->OooO00o:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;->onRefused()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_0
    :try_start_4
    iget-object v0, v1, Lz2/je;->OooO0Oo:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    return-void

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestRoot() --:  Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/je$OooO0OO;->OoooOoO:Lz2/je;

    iget-object v1, v1, Lz2/je;->OooO0o:Ljava/lang/Process;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_2
    iget-object v1, p0, Lz2/je$OooO0OO;->OoooOoO:Lz2/je;

    iget-object v1, v1, Lz2/je;->OooO00o:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;->onRefused()V

    :cond_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method
