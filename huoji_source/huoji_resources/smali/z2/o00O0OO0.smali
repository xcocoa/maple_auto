.class public final Lz2/o00O0OO0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public OooO00o:Lz2/o00O0OOO;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/o00OO000;

    invoke-direct {v0}, Lz2/o00OO000;-><init>()V

    iput-object v0, p0, Lz2/o00O0OO0;->OooO00o:Lz2/o00O0OOO;

    return-void
.end method

.method private OooO00o(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lz2/o00O0OO0;->OooO00o:Lz2/o00O0OOO;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lz2/o00O0OOO;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lz2/o00OO;->OooO00o(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    const/16 v1, 0x120

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    invoke-static {}, Lz2/o00O0O0$OooO0O0;->OooO00o()Lz2/o00O0O0;

    move-result-object v0

    invoke-virtual {v0}, Lz2/o00O0O0;->OooO00o()Lz2/o00O0O0O;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/o00O0O0O;->OooO00o(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    :cond_0
    return-void
.end method
