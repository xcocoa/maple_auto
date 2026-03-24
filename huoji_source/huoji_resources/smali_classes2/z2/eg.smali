.class public final Lz2/eg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/interfaces/AppQuitListener;


# static fields
.field private static final OooO0o:I = 0x276c


# instance fields
.field private OooO00o:Landroid/net/LocalServerSocket;

.field private OooO0O0:Lz2/dg;

.field private OooO0OO:Landroid/content/Context;

.field private OooO0Oo:Z

.field public OooO0o0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/eg;->OooO00o:Landroid/net/LocalServerSocket;

    iput-object v0, p0, Lz2/eg;->OooO0O0:Lz2/dg;

    iput-object v0, p0, Lz2/eg;->OooO0OO:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/eg;->OooO0Oo:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/eg;->OooO0o0:Ljava/util/List;

    iput-object p1, p0, Lz2/eg;->OooO0OO:Landroid/content/Context;

    return-void
.end method

.method private OooO00o(Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;)V
    .locals 1

    iget-object v0, p0, Lz2/eg;->OooO0o0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private OooO0OO(Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;)V
    .locals 1

    iget-object v0, p0, Lz2/eg;->OooO0o0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final OooO0O0(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IpcServer listen start-1 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    new-instance v0, Landroid/net/LocalServerSocket;

    invoke-direct {v0, p1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lz2/eg;->OooO00o:Landroid/net/LocalServerSocket;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "IpcServer listen start-5 "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-boolean p1, p0, Lz2/eg;->OooO0Oo:Z

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "IpcServer listen start-6 "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lz2/eg;->OooO00o:Landroid/net/LocalServerSocket;

    invoke-virtual {p1}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IpcServer listen start-7 "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lz2/eg;->OooO0O0:Lz2/dg;

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lz2/dg;->OooO0o:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lz2/dg;->OooO0O0()V

    goto :goto_0

    :cond_0
    new-instance v0, Lz2/dg;

    iget-object v2, p0, Lz2/eg;->OooO0OO:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lz2/dg;-><init>(Landroid/content/Context;Landroid/net/LocalSocket;)V

    iput-object v0, p0, Lz2/eg;->OooO0O0:Lz2/dg;

    iget-object p1, p0, Lz2/eg;->OooO0o0:Ljava/util/List;

    iput-object p1, v0, Lz2/dg;->OooOO0o:Ljava/util/List;

    invoke-virtual {v0}, Lz2/dg;->OooOo0o()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lz2/eg;->OooO00o:Landroid/net/LocalServerSocket;

    invoke-virtual {p1}, Landroid/net/LocalServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public final onAppQuit()V
    .locals 2

    iget-boolean v0, p0, Lz2/eg;->OooO0Oo:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/eg;->OooO0Oo:Z

    :try_start_0
    iget-object v0, p0, Lz2/eg;->OooO0O0:Lz2/dg;

    if-eqz v0, :cond_0

    const v1, 0xffff

    invoke-static {v1}, Lz2/ne;->OooO0OO(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/dg;->OooOOOo(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method
