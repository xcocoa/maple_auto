.class public Lz2/xt$OooO0O0;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/xt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0O0"
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/xt;


# direct methods
.method private constructor <init>(Lz2/xt;)V
    .locals 0

    iput-object p1, p0, Lz2/xt$OooO0O0;->OoooOoO:Lz2/xt;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/xt;Lz2/xt$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/xt$OooO0O0;-><init>(Lz2/xt;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lz2/xt$OooO0O0;->OoooOoO:Lz2/xt;

    invoke-static {v0}, Lz2/xt;->OooO00o(Lz2/xt;)Lcom/hlzn/socketclient/service/SocketService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hlzn/socketclient/service/SocketService;->Oooo000()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/xt$OooO0O0;->OoooOoO:Lz2/xt;

    invoke-static {v0}, Lz2/xt;->OooO00o(Lz2/xt;)Lcom/hlzn/socketclient/service/SocketService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hlzn/socketclient/service/SocketService;->OooOoo0()Lz2/yt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/xt$OooO0O0;->OoooOoO:Lz2/xt;

    invoke-static {v0}, Lz2/xt;->OooO00o(Lz2/xt;)Lcom/hlzn/socketclient/service/SocketService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hlzn/socketclient/service/SocketService;->OooOoo0()Lz2/yt;

    move-result-object v0

    iget-object v1, p0, Lz2/xt$OooO0O0;->OoooOoO:Lz2/xt;

    invoke-static {v1}, Lz2/xt;->OooO0O0(Lz2/xt;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/yt;->OooO0O0(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lz2/xt$OooO0O0;->OoooOoO:Lz2/xt;

    invoke-static {v0}, Lz2/xt;->OooO0o0(Lz2/xt;)I

    iget-object v0, p0, Lz2/xt$OooO0O0;->OoooOoO:Lz2/xt;

    invoke-static {v0}, Lz2/xt;->OooO0OO(Lz2/xt;)I

    move-result v0

    iget-object v1, p0, Lz2/xt$OooO0O0;->OoooOoO:Lz2/xt;

    invoke-static {v1}, Lz2/xt;->OooO00o(Lz2/xt;)Lcom/hlzn/socketclient/service/SocketService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hlzn/socketclient/service/SocketService;->OooOoo()I

    move-result v1

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lz2/xt$OooO0O0;->OoooOoO:Lz2/xt;

    invoke-static {v1}, Lz2/xt;->OooO00o(Lz2/xt;)Lcom/hlzn/socketclient/service/SocketService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hlzn/socketclient/service/SocketService;->OooOoo0()Lz2/yt;

    move-result-object v1

    iget-object v2, p0, Lz2/xt$OooO0O0;->OoooOoO:Lz2/xt;

    invoke-static {v2}, Lz2/xt;->OooO0O0(Lz2/xt;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lz2/yt;->OooO0O0(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lz2/xt$OooO0O0;->OoooOoO:Lz2/xt;

    invoke-static {v1}, Lz2/xt;->OooO00o(Lz2/xt;)Lcom/hlzn/socketclient/service/SocketService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hlzn/socketclient/service/SocketService;->Oooo0O0()V

    iget-object v1, p0, Lz2/xt$OooO0O0;->OoooOoO:Lz2/xt;

    invoke-static {v1, v0}, Lz2/xt;->OooO0Oo(Lz2/xt;I)I

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lz2/xt$OooO0O0;->OoooOoO:Lz2/xt;

    invoke-static {v2}, Lz2/xt;->OooO00o(Lz2/xt;)Lcom/hlzn/socketclient/service/SocketService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hlzn/socketclient/service/SocketService;->Oooo0O0()V

    iget-object v2, p0, Lz2/xt$OooO0O0;->OoooOoO:Lz2/xt;

    invoke-static {v2, v0}, Lz2/xt;->OooO0Oo(Lz2/xt;I)I

    throw v1

    :cond_2
    :goto_0
    return-void
.end method
