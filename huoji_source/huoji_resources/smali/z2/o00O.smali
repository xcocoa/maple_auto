.class public final Lz2/o00O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o00O0OO;


# instance fields
.field private OooO00o:Lz2/dg;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO00o(Lz2/dg;)V
    .locals 0

    iput-object p1, p0, Lz2/o00O;->OooO00o:Lz2/dg;

    return-void
.end method

.method public final OooO0O0(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .locals 1

    iget-object v0, p0, Lz2/o00O;->OooO00o:Lz2/dg;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lz2/dg;->OooOOOo(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    :cond_0
    return-void
.end method
