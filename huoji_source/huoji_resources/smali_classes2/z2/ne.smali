.class public final Lz2/ne;
.super Lz2/oe;
.source ""


# instance fields
.field private OooO00o:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;


# direct methods
.method public constructor <init>(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .locals 1

    invoke-direct {p0}, Lz2/oe;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/ne;->OooO00o:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    iput-object p1, p0, Lz2/ne;->OooO00o:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-void
.end method

.method public static final OooO0OO(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .locals 1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final OooO00o()[B
    .locals 1

    iget-object v0, p0, Lz2/ne;->OooO00o:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
