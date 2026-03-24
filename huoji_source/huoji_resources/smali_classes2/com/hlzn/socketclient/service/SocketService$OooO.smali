.class public Lcom/hlzn/socketclient/service/SocketService$OooO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hlzn/socketclient/service/SocketService;->OooOoO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lcom/hlzn/socketclient/service/SocketService;


# direct methods
.method public constructor <init>(Lcom/hlzn/socketclient/service/SocketService;)V
    .locals 0

    iput-object p1, p0, Lcom/hlzn/socketclient/service/SocketService$OooO;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "createConnection --> exception="

    :try_start_0
    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService$OooO;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    invoke-static {v1, v2}, Lcom/hlzn/socketclient/service/SocketService;->OooO0O0(Lcom/hlzn/socketclient/service/SocketService;Ljava/net/Socket;)Ljava/net/Socket;

    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService$OooO;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    new-instance v2, Ljava/net/InetSocketAddress;

    sget-object v3, Lz2/bu;->OooOOOo:Ljava/lang/String;

    sget v4, Lz2/bu;->OooOOo0:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-static {v1, v2}, Lcom/hlzn/socketclient/service/SocketService;->OooO0o0(Lcom/hlzn/socketclient/service/SocketService;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService$OooO;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v1}, Lcom/hlzn/socketclient/service/SocketService;->OooO00o(Lcom/hlzn/socketclient/service/SocketService;)Ljava/net/Socket;

    move-result-object v1

    iget-object v2, p0, Lcom/hlzn/socketclient/service/SocketService$OooO;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v2}, Lcom/hlzn/socketclient/service/SocketService;->OooO0OO(Lcom/hlzn/socketclient/service/SocketService;)Ljava/net/InetSocketAddress;

    move-result-object v2

    const/16 v3, 0x4e20

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService$OooO;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v1}, Lcom/hlzn/socketclient/service/SocketService;->OooO00o(Lcom/hlzn/socketclient/service/SocketService;)Ljava/net/Socket;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService$OooO;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v1}, Lcom/hlzn/socketclient/service/SocketService;->OooO00o(Lcom/hlzn/socketclient/service/SocketService;)Ljava/net/Socket;

    move-result-object v1

    const/16 v3, 0x2800

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setSendBufferSize(I)V

    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService$OooO;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v1}, Lcom/hlzn/socketclient/service/SocketService;->OooO00o(Lcom/hlzn/socketclient/service/SocketService;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setKeepAlive(Z)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/NetworkOnMainThreadException;->printStackTrace()V

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/NetworkOnMainThreadException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lz2/ju;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
