.class public Lz2/wt;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private OooO00o:Lz2/eu;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;)V
    .locals 1

    iget-object v0, p0, Lz2/wt;->OooO00o:Lz2/eu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lz2/eu;->OooO0OO(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;)V

    return-void
.end method

.method public OooO0O0(Lz2/eu;)V
    .locals 0

    iput-object p1, p0, Lz2/wt;->OooO00o:Lz2/eu;

    return-void
.end method
