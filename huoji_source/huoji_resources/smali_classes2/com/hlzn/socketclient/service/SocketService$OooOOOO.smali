.class public Lcom/hlzn/socketclient/service/SocketService$OooOOOO;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hlzn/socketclient/service/SocketService;->Oooo0o0()V
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

    iput-object p1, p0, Lcom/hlzn/socketclient/service/SocketService$OooOOOO;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$ScriptStop;->newBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$ScriptStop$Builder;

    move-result-object v0

    invoke-static {}, Lz2/au;->OooO0oo()Lz2/au;

    move-result-object v1

    iget-object v2, p0, Lcom/hlzn/socketclient/service/SocketService$OooOOOO;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v2}, Lcom/hlzn/socketclient/service/SocketService;->OooO00o(Lcom/hlzn/socketclient/service/SocketService;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$ScriptStop$Builder;->build()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$ScriptStop;

    move-result-object v0

    const/16 v3, 0x2716

    invoke-virtual {v1, v2, v0, v3}, Lz2/au;->OooOO0O(Ljava/net/Socket;Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$ScriptStop;I)V

    return-void
.end method
