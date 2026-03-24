.class public final Lz2/o00O0O0O;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public OooO00o:Lz2/o00O0OO;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/o00O;

    invoke-direct {v0}, Lz2/o00O;-><init>()V

    iput-object v0, p0, Lz2/o00O0O0O;->OooO00o:Lz2/o00O0OO;

    return-void
.end method

.method private OooO0O0(Lz2/dg;)V
    .locals 1

    iget-object v0, p0, Lz2/o00O0O0O;->OooO00o:Lz2/o00O0OO;

    invoke-interface {v0, p1}, Lz2/o00O0OO;->OooO00o(Lz2/dg;)V

    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .locals 1

    iget-object v0, p0, Lz2/o00O0O0O;->OooO00o:Lz2/o00O0OO;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lz2/o00O0OO;->OooO0O0(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    :cond_0
    return-void
.end method
