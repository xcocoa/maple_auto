.class public Lcom/hlzn/socketclient/service/SocketService$OooOo;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hlzn/socketclient/service/SocketService;->OooOo0o(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:I

.field public final synthetic OoooOoo:Ljava/lang/String;

.field public final synthetic Ooooo00:Lcom/hlzn/socketclient/service/SocketService;


# direct methods
.method public constructor <init>(Lcom/hlzn/socketclient/service/SocketService;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hlzn/socketclient/service/SocketService$OooOo;->Ooooo00:Lcom/hlzn/socketclient/service/SocketService;

    iput p2, p0, Lcom/hlzn/socketclient/service/SocketService$OooOo;->OoooOoO:I

    iput-object p3, p0, Lcom/hlzn/socketclient/service/SocketService$OooOo;->OoooOoo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStopResult;->newBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStopResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService$OooOo;->Ooooo00:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v1}, Lcom/hlzn/socketclient/service/SocketService;->OooOOO(Lcom/hlzn/socketclient/service/SocketService;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStopResult$Builder;->setRpcId(J)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStopResult$Builder;

    move-result-object v1

    iget v2, p0, Lcom/hlzn/socketclient/service/SocketService$OooOo;->OoooOoO:I

    invoke-virtual {v1, v2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStopResult$Builder;->setError(I)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStopResult$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/hlzn/socketclient/service/SocketService$OooOo;->OoooOoo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStopResult$Builder;->setMessage(Ljava/lang/String;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStopResult$Builder;

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmdScriptStopSuccessOperate --> rpcId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStopResult$Builder;->getRpcId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hlzn/socketclient/service/SocketService$OooOo;->OoooOoO:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hlzn/socketclient/service/SocketService$OooOo;->OoooOoo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lz2/au;->OooO0oo()Lz2/au;

    move-result-object v1

    iget-object v2, p0, Lcom/hlzn/socketclient/service/SocketService$OooOo;->Ooooo00:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v2}, Lcom/hlzn/socketclient/service/SocketService;->OooO00o(Lcom/hlzn/socketclient/service/SocketService;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStopResult$Builder;->build()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStopResult;

    move-result-object v0

    const/16 v3, 0x2778

    invoke-virtual {v1, v2, v0, v3}, Lz2/au;->OooO0o0(Ljava/net/Socket;Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStopResult;I)V

    return-void
.end method
