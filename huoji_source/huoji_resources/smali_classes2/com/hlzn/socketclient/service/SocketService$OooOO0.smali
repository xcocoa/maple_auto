.class public Lcom/hlzn/socketclient/service/SocketService$OooOO0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hlzn/socketclient/service/SocketService;->Oooo0()V
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

    iput-object p1, p0, Lcom/hlzn/socketclient/service/SocketService$OooOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    :goto_0
    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService$OooOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    iget-boolean v1, v0, Lcom/hlzn/socketclient/service/SocketService;->o00oO0o:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/hlzn/socketclient/service/SocketService;->OooO00o(Lcom/hlzn/socketclient/service/SocketService;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService$OooOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v0}, Lcom/hlzn/socketclient/service/SocketService;->OooO00o(Lcom/hlzn/socketclient/service/SocketService;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lz2/au;->OooO0oo()Lz2/au;

    move-result-object v0

    iget-object v3, p0, Lcom/hlzn/socketclient/service/SocketService$OooOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v3}, Lcom/hlzn/socketclient/service/SocketService;->OooO00o(Lcom/hlzn/socketclient/service/SocketService;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v0, v3}, Lz2/au;->OooO(Ljava/net/Socket;)Ljava/io/DataInputStream;

    move-result-object v0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz v0, :cond_a

    const/4 v3, 0x4

    const/4 v4, 0x2

    new-array v5, v4, [B

    new-array v6, v3, [B

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v8

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "receiveMsg --> 1 cmd_length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",content="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v11, v5, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget-byte v11, v5, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v8, v4, :cond_9

    invoke-static {v5}, Lz2/gu;->OooO([B)[B

    move-result-object v4

    invoke-static {v4}, Lz2/gu;->OooO0o0([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lz2/gu;->OooOO0O(Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "receiveMsg --> 2 hexStr="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",cmd="

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    const/16 v4, 0x2712

    const/4 v8, -0x1

    if-eq v5, v4, :cond_8

    const/16 v4, 0x2714

    if-eq v5, v4, :cond_7

    const/16 v4, 0x2775

    if-eq v5, v4, :cond_6

    const/16 v4, 0x2777

    if-eq v5, v4, :cond_5

    const/16 v4, 0x2779

    if-eq v5, v4, :cond_4

    const/16 v4, 0x277b

    if-eq v5, v4, :cond_3

    const/16 v4, 0x277d

    if-eq v5, v4, :cond_2

    const/16 v4, 0x277f

    if-eq v5, v4, :cond_1

    const/16 v4, 0x2781

    if-eq v5, v4, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v5

    const-string v9, "\u670d\u52a1\u7aef\u547d\u4ee4:\u4fee\u6539\u8bbe\u5907\u540d --> 1"

    invoke-static {v5, v9}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7, v3}, Ljava/io/DataInputStream;->read([BII)I

    invoke-static {v6}, Lz2/gu;->OooO([B)[B

    move-result-object v3

    invoke-static {v3}, Lz2/gu;->OooO0o0([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lz2/gu;->OooOO0O(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lz2/mu;->OooO0OO(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u670d\u52a1\u7aef\u547d\u4ee4:\u4fee\u6539\u8bbe\u5907\u540d --> 2 cmdRenameDeviceNameDataArrayLen = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdRenameDeviceName;->parseFrom([B)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdRenameDeviceName;

    move-result-object v0

    iget-object v3, p0, Lcom/hlzn/socketclient/service/SocketService$OooOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v3}, Lcom/hlzn/socketclient/service/SocketService;->OooO0Oo(Lcom/hlzn/socketclient/service/SocketService;)Ljava/util/Queue;

    move-result-object v3

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdRenameDeviceName;->getRpcId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u670d\u52a1\u7aef\u547d\u4ee4:\u4fee\u6539\u8bbe\u5907\u540d --> 3 RpcId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdRenameDeviceName;->getRpcId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lz2/cu;

    const-string v5, "\u670d\u52a1\u7aef\u547d\u4ee4:\u4fee\u6539\u8bbe\u5907\u540d"

    invoke-direct {v3, v4, v5}, Lz2/cu;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdRenameDeviceName;->getNewDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lz2/cu;->OooOO0(Ljava/lang/String;)V

    invoke-static {}, Lz2/zt;->OooOO0()Lz2/zt;

    move-result-object v0

    invoke-virtual {v0}, Lz2/zt;->OooOO0O()Lz2/du;

    move-result-object v0

    invoke-interface {v0, v3}, Lz2/du;->OooO00o(Lz2/cu;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lz2/zt;->OooOO0()Lz2/zt;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u670d\u52a1\u7aef\u547d\u4ee4:\u4fee\u6539\u8bbe\u5907\u540d\u5931\u8d25:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Lz2/zt;->OooO00o(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    goto/16 :goto_2

    :cond_1
    :try_start_3
    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v5

    const-string v9, "\u670d\u52a1\u7aef\u547d\u4ee4:\u89e3\u7ed1\u5de5\u4f5c\u5ba4\u9879\u76ee  --> 1"

    invoke-static {v5, v9}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7, v3}, Ljava/io/DataInputStream;->read([BII)I

    invoke-static {v6}, Lz2/gu;->OooO([B)[B

    move-result-object v3

    invoke-static {v3}, Lz2/gu;->OooO0o0([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lz2/gu;->OooOO0O(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lz2/mu;->OooO0OO(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u670d\u52a1\u7aef\u547d\u4ee4:\u89e3\u7ed1\u5de5\u4f5c\u5ba4\u9879\u76ee  --> 2 cmdUnBindStudioProjectDataArrayLen = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdUnBindStudioProject;->parseFrom([B)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdUnBindStudioProject;

    move-result-object v0

    iget-object v3, p0, Lcom/hlzn/socketclient/service/SocketService$OooOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v3}, Lcom/hlzn/socketclient/service/SocketService;->OooOOo(Lcom/hlzn/socketclient/service/SocketService;)Ljava/util/Queue;

    move-result-object v3

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdUnBindStudioProject;->getRpcId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u670d\u52a1\u7aef\u547d\u4ee4:\u89e3\u7ed1\u5de5\u4f5c\u5ba4\u9879\u76ee  --> 3 RpcId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdUnBindStudioProject;->getRpcId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lz2/zt;->OooOO0()Lz2/zt;

    move-result-object v0

    invoke-virtual {v0}, Lz2/zt;->OooOO0O()Lz2/du;

    move-result-object v0

    new-instance v3, Lz2/cu;

    const-string v5, "\u670d\u52a1\u7aef\u547d\u4ee4:\u89e3\u7ed1\u5de5\u4f5c\u5ba4\u9879\u76ee"

    invoke-direct {v3, v4, v5}, Lz2/cu;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3}, Lz2/du;->OooO00o(Lz2/cu;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lz2/zt;->OooOO0()Lz2/zt;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u670d\u52a1\u7aef\u547d\u4ee4:\u89e3\u7ed1\u5de5\u4f5c\u5ba4\u9879\u76ee\u5931\u8d25:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Lz2/zt;->OooO0oo(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    goto/16 :goto_2

    :cond_2
    :try_start_5
    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v5

    const-string v9, "\u670d\u52a1\u7aef\u547d\u4ee4:\u4e0a\u4f20\u622a\u5c4f --> 1"

    invoke-static {v5, v9}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7, v3}, Ljava/io/DataInputStream;->read([BII)I

    invoke-static {v6}, Lz2/gu;->OooO([B)[B

    move-result-object v3

    invoke-static {v3}, Lz2/gu;->OooO0o0([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lz2/gu;->OooOO0O(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lz2/mu;->OooO0OO(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u670d\u52a1\u7aef\u547d\u4ee4:\u4e0a\u4f20\u622a\u5c4f --> 2 cmScreenCaptureDataArrayLen = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScreenCapture;->parseFrom([B)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScreenCapture;

    move-result-object v0

    iget-object v3, p0, Lcom/hlzn/socketclient/service/SocketService$OooOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v3}, Lcom/hlzn/socketclient/service/SocketService;->OooOOo0(Lcom/hlzn/socketclient/service/SocketService;)Ljava/util/Queue;

    move-result-object v3

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScreenCapture;->getRpcId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u670d\u52a1\u7aef\u547d\u4ee4:\u4e0a\u4f20\u622a\u5c4f --> 3 RpcId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScreenCapture;->getRpcId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lz2/zt;->OooOO0()Lz2/zt;

    move-result-object v0

    invoke-virtual {v0}, Lz2/zt;->OooOO0O()Lz2/du;

    move-result-object v0

    new-instance v3, Lz2/cu;

    const-string v5, "\u670d\u52a1\u7aef\u547d\u4ee4:\u4e0a\u4f20\u622a\u5c4f"

    invoke-direct {v3, v4, v5}, Lz2/cu;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3}, Lz2/du;->OooO00o(Lz2/cu;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lz2/zt;->OooOO0()Lz2/zt;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u670d\u52a1\u7aef\u547d\u4ee4:\u4e0a\u4f20\u622a\u5c4f\u5931\u8d25:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Lz2/zt;->OooO0O0(ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    goto/16 :goto_2

    :cond_3
    :try_start_7
    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v5

    const-string v9, "\u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u8bbe\u7f6e\u66f4\u65b0 --> 1"

    invoke-static {v5, v9}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7, v3}, Ljava/io/DataInputStream;->read([BII)I

    invoke-static {v6}, Lz2/gu;->OooO([B)[B

    move-result-object v3

    invoke-static {v3}, Lz2/gu;->OooO0o0([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u8bbe\u7f6e\u66f4\u65b0 --> cmScriptSettingsBufferHexStr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lz2/gu;->OooOO0O(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lz2/mu;->OooO0OO(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u8bbe\u7f6e\u66f4\u65b0 --> 2 cmScriptSettingsDataArrayLen = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;->parseFrom([B)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;

    move-result-object v0

    iget-object v3, p0, Lcom/hlzn/socketclient/service/SocketService$OooOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v3}, Lcom/hlzn/socketclient/service/SocketService;->OooOOOo(Lcom/hlzn/socketclient/service/SocketService;)Ljava/util/Queue;

    move-result-object v3

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;->getRpcId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u8bbe\u7f6e\u66f4\u65b0 --> 3 RpcId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;->getRpcId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ",scriptSettings = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;->getScriptSettings()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lz2/zt;->OooOO0()Lz2/zt;

    move-result-object v3

    invoke-virtual {v3}, Lz2/zt;->OooOO0O()Lz2/du;

    move-result-object v3

    new-instance v5, Lz2/cu;

    const-string v6, "\u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u8bbe\u7f6e\u66f4\u65b0"

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;->getScriptSettings()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v4, v6, v0}, Lz2/cu;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Lz2/du;->OooO00o(Lz2/cu;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lz2/zt;->OooOO0()Lz2/zt;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u811a\u672c\u8bbe\u7f6e\u66f4\u65b0\u5931\u8d25:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Lz2/zt;->OooO0OO(ILjava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_2

    :cond_4
    :try_start_9
    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u66f4\u65b0 --> 1"

    invoke-static {v4, v5}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7, v3}, Ljava/io/DataInputStream;->read([BII)I

    invoke-static {v6}, Lz2/gu;->OooO([B)[B

    move-result-object v3

    invoke-static {v3}, Lz2/gu;->OooO0o0([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lz2/gu;->OooOO0O(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lz2/mu;->OooO0OO(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u66f4\u65b0 --> 2 cmScriptUpgradeDataArrayLen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgrade;->parseFrom([B)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgrade;

    move-result-object v0

    iget-object v3, p0, Lcom/hlzn/socketclient/service/SocketService$OooOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v3}, Lcom/hlzn/socketclient/service/SocketService;->OooOOOO(Lcom/hlzn/socketclient/service/SocketService;)Ljava/util/Queue;

    move-result-object v3

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgrade;->getRpcId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u66f4\u65b0 --> 3 RpcId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgrade;->getRpcId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ",ScriptVersion = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgrade;->getScriptVersion()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ",ScriptFileUrl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgrade;->getScriptFileUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lz2/zt;->OooOO0()Lz2/zt;

    move-result-object v3

    invoke-virtual {v3}, Lz2/zt;->OooOO0O()Lz2/du;

    move-result-object v3

    new-instance v4, Lz2/cu;

    const/16 v10, 0x2779

    const-string v11, "\u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u66f4\u65b0"

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgrade;->getScriptVersion()J

    move-result-wide v12

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgrade;->getScriptFileUrl()Ljava/lang/String;

    move-result-object v14

    move-object v9, v4

    invoke-direct/range {v9 .. v14}, Lz2/cu;-><init>(ILjava/lang/String;JLjava/lang/String;)V

    invoke-interface {v3, v4}, Lz2/du;->OooO00o(Lz2/cu;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_2

    :catch_4
    move-exception v0

    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lz2/zt;->OooOO0()Lz2/zt;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u66f4\u65b0\u5931\u8d25:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Lz2/zt;->OooO0o(ILjava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_2

    :cond_5
    :try_start_b
    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v5

    const-string v9, "\u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u505c\u6b62 --> 1"

    invoke-static {v5, v9}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7, v3}, Ljava/io/DataInputStream;->read([BII)I

    invoke-static {v6}, Lz2/gu;->OooO([B)[B

    move-result-object v3

    invoke-static {v3}, Lz2/gu;->OooO0o0([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lz2/gu;->OooOO0O(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lz2/mu;->OooO0OO(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u505c\u6b62 --> 2 cmScriptStopDataArrayLen = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStop;->parseFrom([B)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStop;

    move-result-object v0

    iget-object v3, p0, Lcom/hlzn/socketclient/service/SocketService$OooOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v3}, Lcom/hlzn/socketclient/service/SocketService;->OooOOO(Lcom/hlzn/socketclient/service/SocketService;)Ljava/util/Queue;

    move-result-object v3

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStop;->getRpcId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u505c\u6b62 --> 3 RpcId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStop;->getRpcId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lz2/zt;->OooOO0()Lz2/zt;

    move-result-object v0

    invoke-virtual {v0}, Lz2/zt;->OooOO0O()Lz2/du;

    move-result-object v0

    new-instance v3, Lz2/cu;

    const-string v5, "\u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u505c\u6b62"

    invoke-direct {v3, v4, v5}, Lz2/cu;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3}, Lz2/du;->OooO00o(Lz2/cu;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v0

    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lz2/zt;->OooOO0()Lz2/zt;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u505c\u6b62\u5931\u8d25:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Lz2/zt;->OooO0o0(ILjava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_2

    :cond_6
    :try_start_d
    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v5

    const-string v9, "\u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u542f\u52a8 --> 1"

    invoke-static {v5, v9}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7, v3}, Ljava/io/DataInputStream;->read([BII)I

    invoke-static {v6}, Lz2/gu;->OooO([B)[B

    move-result-object v3

    invoke-static {v3}, Lz2/gu;->OooO0o0([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lz2/gu;->OooOO0O(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lz2/mu;->OooO0OO(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u542f\u52a8 --> 2 cmScriptStartDataArrayLen = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->parseFrom([B)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;

    move-result-object v0

    iget-object v3, p0, Lcom/hlzn/socketclient/service/SocketService$OooOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v3}, Lcom/hlzn/socketclient/service/SocketService;->OooOOO0(Lcom/hlzn/socketclient/service/SocketService;)Ljava/util/Queue;

    move-result-object v3

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->getRpcId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u542f\u52a8 --> 3 RpcId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->getRpcId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lz2/zt;->OooOO0()Lz2/zt;

    move-result-object v0

    invoke-virtual {v0}, Lz2/zt;->OooOO0O()Lz2/du;

    move-result-object v0

    new-instance v3, Lz2/cu;

    const-string v5, "\u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u542f\u52a8"

    invoke-direct {v3, v4, v5}, Lz2/cu;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3}, Lz2/du;->OooO00o(Lz2/cu;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v0

    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lz2/zt;->OooOO0()Lz2/zt;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u670d\u52a1\u7aef\u547d\u4ee4:\u811a\u672c\u542f\u52a8\u5931\u8d25:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Lz2/zt;->OooO0Oo(ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v5

    const-string v9, "\u5fc3\u8df3\u8fd4\u56de --> 1"

    invoke-static {v5, v9}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7, v3}, Ljava/io/DataInputStream;->read([BII)I

    invoke-static {v6}, Lz2/gu;->OooO([B)[B

    move-result-object v3

    invoke-static {v3}, Lz2/gu;->OooO0o0([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lz2/gu;->OooOO0O(Ljava/lang/String;)I

    move-result v3

    new-array v5, v3, [B

    invoke-virtual {v0, v5, v7, v3}, Ljava/io/DataInputStream;->read([BII)I

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5fc3\u8df3\u8fd4\u56de --> 2 heartDataArrayLen = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$HeartbeatResult;->parseFrom([B)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$HeartbeatResult;

    move-result-object v0

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5fc3\u8df3\u8fd4\u56de --> 3 disabled ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$HeartbeatResult;->getDisabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lz2/cu;

    const-string v5, "\u5fc3\u8df3\u54cd\u5e94"

    invoke-direct {v3, v4, v5}, Lz2/cu;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$HeartbeatResult;->getDisabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lz2/cu;->OooOO0O(Z)V

    invoke-static {}, Lz2/zt;->OooOO0()Lz2/zt;

    move-result-object v4

    invoke-virtual {v4}, Lz2/zt;->OooOO0O()Lz2/du;

    move-result-object v4

    invoke-interface {v4, v3}, Lz2/du;->OooO00o(Lz2/cu;)V

    iget-object v3, p0, Lcom/hlzn/socketclient/service/SocketService$OooOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v3}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0o(Lcom/hlzn/socketclient/service/SocketService;)Lz2/yt;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lz2/yt;->OooO0O0(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hlzn/socketclient/service/SocketService$OooOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v3}, Lz2/ku;->OooO0OO(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5fc3\u8df3\u8fd4\u56de -->  disabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$HeartbeatResult;->getDisabled()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1, v2}, Lz2/ku;->OooO0o(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_2

    :cond_8
    :try_start_f
    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v5

    const-string v9, "\u767b\u9646\u54cd\u5e94 --> 1"

    invoke-static {v5, v9}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7, v3}, Ljava/io/DataInputStream;->read([BII)I

    invoke-static {v6}, Lz2/gu;->OooO([B)[B

    move-result-object v3

    invoke-static {v3}, Lz2/gu;->OooO0o0([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lz2/gu;->OooOO0O(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lz2/mu;->OooO0OO(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u767b\u9646\u54cd\u5e94 --> 2 dataArrayLen = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$LoginResult;->parseFrom([B)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$LoginResult;

    move-result-object v0

    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u767b\u9646\u54cd\u5e94 --> 3 code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$LoginResult;->getError()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",message = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$LoginResult;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lz2/cu;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$LoginResult;->getError()I

    move-result v5

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$LoginResult;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lz2/cu;-><init>(IILjava/lang/String;)V

    invoke-static {}, Lz2/zt;->OooOO0()Lz2/zt;

    move-result-object v4

    invoke-virtual {v4}, Lz2/zt;->OooOO0O()Lz2/du;

    move-result-object v4

    invoke-interface {v4, v3}, Lz2/du;->OooO00o(Lz2/cu;)V

    iget-object v3, p0, Lcom/hlzn/socketclient/service/SocketService$OooOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v3}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0o(Lcom/hlzn/socketclient/service/SocketService;)Lz2/yt;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lz2/yt;->OooO0O0(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hlzn/socketclient/service/SocketService$OooOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v3}, Lz2/ku;->OooO0OO(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u767b\u9646\u54cd\u5e94 -->  code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$LoginResult;->getError()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",message="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$LoginResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1, v2}, Lz2/ku;->OooO0o(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_2

    :catch_7
    move-exception v0

    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u670d\u52a1\u5668\u91cd\u542f\u2026\u2026"

    invoke-static {v0, v3}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService$OooOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    :goto_1
    invoke-static {v0}, Lcom/hlzn/socketclient/service/SocketService;->OooO0o(Lcom/hlzn/socketclient/service/SocketService;)V

    goto :goto_2

    :cond_a
    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u51fa\u9519\u91cd\u8fde\u2026\u2026"

    invoke-static {v0, v3}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService$OooOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    goto :goto_1

    :cond_b
    invoke-static {}, Lcom/hlzn/socketclient/service/SocketService;->OooOO0O()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u91cd\u8fde\u2026\u2026"

    invoke-static {v0, v3}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService$OooOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    goto :goto_1

    :catch_8
    move-exception v0

    iget-object v3, p0, Lcom/hlzn/socketclient/service/SocketService$OooOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v3}, Lz2/ku;->OooO0OO(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Lz2/ku;->OooO0o(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Z

    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService$OooOO0;->OoooOoO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-static {v1}, Lcom/hlzn/socketclient/service/SocketService;->OooO0o(Lcom/hlzn/socketclient/service/SocketService;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    const-wide/16 v0, 0x32

    :try_start_11
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_9

    goto/16 :goto_0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :cond_c
    return-void
.end method
