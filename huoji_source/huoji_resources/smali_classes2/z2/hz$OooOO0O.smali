.class public Lz2/hz$OooOO0O;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/hz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooOO0O"
.end annotation


# instance fields
.field public OooO00o:Ljava/net/Socket;

.field public OooO0O0:Ljava/lang/String;

.field public OooO0OO:Lz2/l00;

.field public OooO0Oo:Lz2/k00;

.field public OooO0o:Lz2/mz;

.field public OooO0o0:Lz2/hz$OooOOO0;

.field public OooO0oO:Z

.field public OooO0oo:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lz2/hz$OooOOO0;->OooO00o:Lz2/hz$OooOOO0;

    iput-object v0, p0, Lz2/hz$OooOO0O;->OooO0o0:Lz2/hz$OooOOO0;

    sget-object v0, Lz2/mz;->OooO00o:Lz2/mz;

    iput-object v0, p0, Lz2/hz$OooOO0O;->OooO0o:Lz2/mz;

    iput-boolean p1, p0, Lz2/hz$OooOO0O;->OooO0oO:Z

    return-void
.end method


# virtual methods
.method public OooO00o()Lz2/hz;
    .locals 1

    new-instance v0, Lz2/hz;

    invoke-direct {v0, p0}, Lz2/hz;-><init>(Lz2/hz$OooOO0O;)V

    return-object v0
.end method

.method public OooO0O0(Lz2/hz$OooOOO0;)Lz2/hz$OooOO0O;
    .locals 0

    iput-object p1, p0, Lz2/hz$OooOO0O;->OooO0o0:Lz2/hz$OooOOO0;

    return-object p0
.end method

.method public OooO0OO(I)Lz2/hz$OooOO0O;
    .locals 0

    iput p1, p0, Lz2/hz$OooOO0O;->OooO0oo:I

    return-object p0
.end method

.method public OooO0Oo(Lz2/mz;)Lz2/hz$OooOO0O;
    .locals 0

    iput-object p1, p0, Lz2/hz$OooOO0O;->OooO0o:Lz2/mz;

    return-object p0
.end method

.method public OooO0o(Ljava/net/Socket;Ljava/lang/String;Lz2/l00;Lz2/k00;)Lz2/hz$OooOO0O;
    .locals 0

    iput-object p1, p0, Lz2/hz$OooOO0O;->OooO00o:Ljava/net/Socket;

    iput-object p2, p0, Lz2/hz$OooOO0O;->OooO0O0:Ljava/lang/String;

    iput-object p3, p0, Lz2/hz$OooOO0O;->OooO0OO:Lz2/l00;

    iput-object p4, p0, Lz2/hz$OooOO0O;->OooO0Oo:Lz2/k00;

    return-object p0
.end method

.method public OooO0o0(Ljava/net/Socket;)Lz2/hz$OooOO0O;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lz2/w00;->OooOOO(Ljava/net/Socket;)Lz2/e10;

    move-result-object v1

    invoke-static {v1}, Lz2/w00;->OooO0Oo(Lz2/e10;)Lz2/l00;

    move-result-object v1

    invoke-static {p1}, Lz2/w00;->OooO(Ljava/net/Socket;)Lz2/d10;

    move-result-object v2

    invoke-static {v2}, Lz2/w00;->OooO0OO(Lz2/d10;)Lz2/k00;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lz2/hz$OooOO0O;->OooO0o(Ljava/net/Socket;Ljava/lang/String;Lz2/l00;Lz2/k00;)Lz2/hz$OooOO0O;

    move-result-object p1

    return-object p1
.end method
