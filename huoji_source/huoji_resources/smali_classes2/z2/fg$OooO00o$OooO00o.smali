.class public final Lz2/fg$OooO00o$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/se$OooO0o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/fg$OooO00o;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/fg$OooO00o;


# direct methods
.method public constructor <init>(Lz2/fg$OooO00o;)V
    .locals 0

    iput-object p1, p0, Lz2/fg$OooO00o$OooO00o;->OooO00o:Lz2/fg$OooO00o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    iget-object v0, p0, Lz2/fg$OooO00o$OooO00o;->OooO00o:Lz2/fg$OooO00o;

    iget-object v0, v0, Lz2/fg$OooO00o;->OooO0O0:Lz2/fg;

    iget-object v0, v0, Lz2/fg;->OooO0OO:Lz2/dg;

    invoke-virtual {v0, p1}, Lz2/dg;->OooOOOo(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method
