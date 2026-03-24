.class public Lz2/ox$OooO00o;
.super Lz2/xx;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/xx;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/jx$OooO00o;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Lz2/jx$OooO00o;->OooO0o0(Ljava/lang/String;)Lz2/jx$OooO00o;

    return-void
.end method

.method public OooO0O0(Lz2/jx$OooO00o;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lz2/jx$OooO00o;->OooO0o(Ljava/lang/String;Ljava/lang/String;)Lz2/jx$OooO00o;

    return-void
.end method

.method public OooO0OO(Lz2/ax;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lz2/ax;->OooO00o(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public OooO0Oo(Lz2/sx$OooO00o;)I
    .locals 0

    iget p1, p1, Lz2/sx$OooO00o;->OooO0OO:I

    return p1
.end method

.method public OooO0o(Lz2/zw;Lz2/pw;Lz2/py;)Ljava/net/Socket;
    .locals 0

    invoke-virtual {p1, p2, p3}, Lz2/zw;->OooO0Oo(Lz2/pw;Lz2/py;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public OooO0o0(Lz2/zw;Lz2/my;)Z
    .locals 0

    invoke-virtual {p1, p2}, Lz2/zw;->OooO0O0(Lz2/my;)Z

    move-result p1

    return p1
.end method

.method public OooO0oO(Lz2/pw;Lz2/pw;)Z
    .locals 0

    invoke-virtual {p1, p2}, Lz2/pw;->OooO0Oo(Lz2/pw;)Z

    move-result p1

    return p1
.end method

.method public OooO0oo(Lz2/zw;Lz2/pw;Lz2/py;Lz2/ux;)Lz2/my;
    .locals 0

    invoke-virtual {p1, p2, p3, p4}, Lz2/zw;->OooO0o(Lz2/pw;Lz2/py;Lz2/ux;)Lz2/my;

    move-result-object p1

    return-object p1
.end method

.method public OooOO0(Ljava/lang/IllegalArgumentException;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid URL host"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public OooOO0O(Lz2/ox;Lz2/qx;)Lz2/tw;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lz2/px;->OooO0o0(Lz2/ox;Lz2/qx;Z)Lz2/px;

    move-result-object p1

    return-object p1
.end method

.method public OooOO0o(Lz2/zw;Lz2/my;)V
    .locals 0

    invoke-virtual {p1, p2}, Lz2/zw;->OooO(Lz2/my;)V

    return-void
.end method

.method public OooOOO(Lz2/ox$OooO0O0;Lz2/hy;)V
    .locals 0

    invoke-virtual {p1, p2}, Lz2/ox$OooO0O0;->Oooo000(Lz2/hy;)V

    return-void
.end method

.method public OooOOO0(Lz2/zw;)Lz2/ny;
    .locals 0

    iget-object p1, p1, Lz2/zw;->OooO0o0:Lz2/ny;

    return-object p1
.end method

.method public OooOOOO(Lz2/tw;)Lz2/py;
    .locals 0

    check-cast p1, Lz2/px;

    invoke-virtual {p1}, Lz2/px;->OooO0oO()Lz2/py;

    move-result-object p1

    return-object p1
.end method

.method public OooOOOo(Lz2/tw;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0
    .param p2    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    check-cast p1, Lz2/px;

    invoke-virtual {p1, p2}, Lz2/px;->OooO0oo(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method
