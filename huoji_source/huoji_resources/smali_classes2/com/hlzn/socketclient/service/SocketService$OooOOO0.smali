.class public Lcom/hlzn/socketclient/service/SocketService$OooOOO0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hlzn/socketclient/service/SocketService;->Oooo00O()V
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

    iput-object p1, p0, Lcom/hlzn/socketclient/service/SocketService$OooOOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->newBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v0

    invoke-static {}, Lz2/hu;->OooO00o()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->setRpcId(J)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/hlzn/socketclient/service/SocketService$OooOOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v2}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0(Lcom/hlzn/socketclient/service/SocketService;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->setAppId(J)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/hlzn/socketclient/service/SocketService$OooOOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v2}, Lcom/hlzn/socketclient/service/SocketService;->OooO(Lcom/hlzn/socketclient/service/SocketService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->setScriptId(Ljava/lang/String;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/hlzn/socketclient/service/SocketService$OooOOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v2}, Lcom/hlzn/socketclient/service/SocketService;->OooO0oo(Lcom/hlzn/socketclient/service/SocketService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->setDeviceId(Ljava/lang/String;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/hlzn/socketclient/service/SocketService$OooOOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v2}, Lcom/hlzn/socketclient/service/SocketService;->OooO0oO(Lcom/hlzn/socketclient/service/SocketService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->setIMToken(Ljava/lang/String;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/hlzn/socketclient/service/SocketService$OooOOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    iget-boolean v2, v2, Lcom/hlzn/socketclient/service/SocketService;->o0ooOOo:Z

    invoke-virtual {v1, v2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->setScriptRunning(Z)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->build()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    move-result-object v0

    invoke-static {}, Lz2/au;->OooO0oo()Lz2/au;

    move-result-object v1

    iget-object v2, p0, Lcom/hlzn/socketclient/service/SocketService$OooOOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v2}, Lcom/hlzn/socketclient/service/SocketService;->OooO00o(Lcom/hlzn/socketclient/service/SocketService;)Ljava/net/Socket;

    move-result-object v2

    const/16 v3, 0x2711

    invoke-virtual {v1, v2, v0, v3}, Lz2/au;->OooOOO0(Ljava/net/Socket;Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;I)V

    return-void
.end method
