.class public final Lz2/my;
.super Lz2/hz$OooOOO0;
.source ""

# interfaces
.implements Lz2/yw;


# static fields
.field private static final OooOOOo:Ljava/lang/String; = "throw with null exception"

.field private static final OooOOo0:I = 0x15


# instance fields
.field private OooO:Lz2/l00;

.field private final OooO0O0:Lz2/zw;

.field private final OooO0OO:Lz2/ux;

.field private OooO0Oo:Ljava/net/Socket;

.field private OooO0o:Lz2/ix;

.field private OooO0o0:Ljava/net/Socket;

.field private OooO0oO:Lokhttp3/Protocol;

.field private OooO0oo:Lz2/hz;

.field private OooOO0:Lz2/k00;

.field public OooOO0O:Z

.field public OooOO0o:I

.field public final OooOOO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lz2/py;",
            ">;>;"
        }
    .end annotation
.end field

.field public OooOOO0:I

.field public OooOOOO:J


# direct methods
.method public constructor <init>(Lz2/zw;Lz2/ux;)V
    .locals 2

    invoke-direct {p0}, Lz2/hz$OooOOO0;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lz2/my;->OooOOO0:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/my;->OooOOO:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lz2/my;->OooOOOO:J

    iput-object p1, p0, Lz2/my;->OooO0O0:Lz2/zw;

    iput-object p2, p0, Lz2/my;->OooO0OO:Lz2/ux;

    return-void
.end method

.method private OooO(IILz2/tw;Lz2/gx;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v0}, Lz2/ux;->OooO0O0()Ljava/net/Proxy;

    move-result-object v0

    iget-object v1, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v1}, Lz2/ux;->OooO00o()Lz2/pw;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lz2/pw;->OooOO0()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lz2/my;->OooO0Oo:Ljava/net/Socket;

    iget-object v1, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v1}, Lz2/ux;->OooO0Oo()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {p4, p3, v1, v0}, Lz2/gx;->OooO0o(Lz2/tw;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    iget-object p3, p0, Lz2/my;->OooO0Oo:Ljava/net/Socket;

    invoke-virtual {p3, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_0
    invoke-static {}, Lz2/uz;->OooOO0O()Lz2/uz;

    move-result-object p2

    iget-object p3, p0, Lz2/my;->OooO0Oo:Ljava/net/Socket;

    iget-object p4, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {p4}, Lz2/ux;->OooO0Oo()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p2, p3, p4, p1}, Lz2/uz;->OooO(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p1, p0, Lz2/my;->OooO0Oo:Ljava/net/Socket;

    invoke-static {p1}, Lz2/w00;->OooOOO(Ljava/net/Socket;)Lz2/e10;

    move-result-object p1

    invoke-static {p1}, Lz2/w00;->OooO0Oo(Lz2/e10;)Lz2/l00;

    move-result-object p1

    iput-object p1, p0, Lz2/my;->OooO:Lz2/l00;

    iget-object p1, p0, Lz2/my;->OooO0Oo:Ljava/net/Socket;

    invoke-static {p1}, Lz2/w00;->OooO(Ljava/net/Socket;)Lz2/d10;

    move-result-object p1

    invoke-static {p1}, Lz2/w00;->OooO0OO(Lz2/d10;)Lz2/k00;

    move-result-object p1

    iput-object p1, p0, Lz2/my;->OooOO0:Lz2/k00;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "throw with null exception"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :goto_2
    return-void

    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/net/ConnectException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to connect to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {p4}, Lz2/ux;->OooO0Oo()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method private OooOO0(Lz2/ly;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v0}, Lz2/ux;->OooO00o()Lz2/pw;

    move-result-object v0

    invoke-virtual {v0}, Lz2/pw;->OooOO0O()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lz2/my;->OooO0Oo:Ljava/net/Socket;

    invoke-virtual {v0}, Lz2/pw;->OooOO0o()Lz2/kx;

    move-result-object v4

    invoke-virtual {v4}, Lz2/kx;->OooOOOo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lz2/pw;->OooOO0o()Lz2/kx;

    move-result-object v5

    invoke-virtual {v5}, Lz2/kx;->OooOooo()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v1}, Lz2/ly;->OooO00o(Ljavax/net/ssl/SSLSocket;)Lz2/ax;

    move-result-object p1

    invoke-virtual {p1}, Lz2/ax;->OooO0o()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lz2/uz;->OooOO0O()Lz2/uz;

    move-result-object v3

    invoke-virtual {v0}, Lz2/pw;->OooOO0o()Lz2/kx;

    move-result-object v4

    invoke-virtual {v4}, Lz2/kx;->OooOOOo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lz2/pw;->OooO0o()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Lz2/uz;->OooO0oo(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-static {v3}, Lz2/ix;->OooO0O0(Ljavax/net/ssl/SSLSession;)Lz2/ix;

    move-result-object v4

    invoke-virtual {v0}, Lz2/pw;->OooO0o0()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-virtual {v0}, Lz2/pw;->OooOO0o()Lz2/kx;

    move-result-object v6

    invoke-virtual {v6}, Lz2/kx;->OooOOOo()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lz2/pw;->OooO00o()Lz2/vw;

    move-result-object v3

    invoke-virtual {v0}, Lz2/pw;->OooOO0o()Lz2/kx;

    move-result-object v0

    invoke-virtual {v0}, Lz2/kx;->OooOOOo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lz2/ix;->OooO0o()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lz2/vw;->OooO00o(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1}, Lz2/ax;->OooO0o()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lz2/uz;->OooOO0O()Lz2/uz;

    move-result-object p1

    invoke-virtual {p1, v1}, Lz2/uz;->OooOOO(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iput-object v1, p0, Lz2/my;->OooO0o0:Ljava/net/Socket;

    invoke-static {v1}, Lz2/w00;->OooOOO(Ljava/net/Socket;)Lz2/e10;

    move-result-object p1

    invoke-static {p1}, Lz2/w00;->OooO0Oo(Lz2/e10;)Lz2/l00;

    move-result-object p1

    iput-object p1, p0, Lz2/my;->OooO:Lz2/l00;

    iget-object p1, p0, Lz2/my;->OooO0o0:Ljava/net/Socket;

    invoke-static {p1}, Lz2/w00;->OooO(Ljava/net/Socket;)Lz2/d10;

    move-result-object p1

    invoke-static {p1}, Lz2/w00;->OooO0OO(Lz2/d10;)Lz2/k00;

    move-result-object p1

    iput-object p1, p0, Lz2/my;->OooOO0:Lz2/k00;

    iput-object v4, p0, Lz2/my;->OooO0o:Lz2/ix;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lokhttp3/Protocol;->get(Ljava/lang/String;)Lokhttp3/Protocol;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object p1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    :goto_0
    iput-object p1, p0, Lz2/my;->OooO0oO:Lokhttp3/Protocol;
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    invoke-static {}, Lz2/uz;->OooOO0O()Lz2/uz;

    move-result-object p1

    invoke-virtual {p1, v1}, Lz2/uz;->OooO00o(Ljavax/net/ssl/SSLSocket;)V

    :cond_3
    return-void

    :cond_4
    :try_start_2
    invoke-virtual {v4}, Lz2/ix;->OooO0o()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hostname "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lz2/pw;->OooOO0o()Lz2/kx;

    move-result-object v0

    invoke-virtual {v0}, Lz2/kx;->OooOOOo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n    certificate: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lz2/vw;->OooO0Oo(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    DN: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    subjectAltNames: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lz2/a00;->OooO00o(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_1
    :try_start_3
    invoke-static {p1}, Lz2/zx;->OooOoo0(Ljava/lang/AssertionError;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v2, :cond_6

    invoke-static {}, Lz2/uz;->OooOO0O()Lz2/uz;

    move-result-object v0

    invoke-virtual {v0, v2}, Lz2/uz;->OooO00o(Ljavax/net/ssl/SSLSocket;)V

    :cond_6
    invoke-static {v2}, Lz2/zx;->OooO(Ljava/net/Socket;)V

    throw p1
.end method

.method private OooOO0O(IIILz2/tw;Lz2/gx;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lz2/my;->OooOOO0()Lz2/qx;

    move-result-object v0

    invoke-virtual {v0}, Lz2/qx;->OooOO0O()Lz2/kx;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    invoke-direct {p0, p1, p2, p4, p5}, Lz2/my;->OooO(IILz2/tw;Lz2/gx;)V

    invoke-direct {p0, p2, p3, v0, v1}, Lz2/my;->OooOO0o(IILz2/qx;Lz2/kx;)Lz2/qx;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lz2/my;->OooO0Oo:Ljava/net/Socket;

    invoke-static {v3}, Lz2/zx;->OooO(Ljava/net/Socket;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lz2/my;->OooO0Oo:Ljava/net/Socket;

    iput-object v3, p0, Lz2/my;->OooOO0:Lz2/k00;

    iput-object v3, p0, Lz2/my;->OooO:Lz2/l00;

    iget-object v4, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v4}, Lz2/ux;->OooO0Oo()Ljava/net/InetSocketAddress;

    move-result-object v4

    iget-object v5, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v5}, Lz2/ux;->OooO0O0()Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {p5, p4, v4, v5, v3}, Lz2/gx;->OooO0Oo(Lz2/tw;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private OooOO0o(IILz2/qx;Lz2/kx;)Lz2/qx;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lz2/zx;->OooOo00(Lz2/kx;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_0
    new-instance v0, Lz2/cz;

    iget-object v1, p0, Lz2/my;->OooO:Lz2/l00;

    iget-object v2, p0, Lz2/my;->OooOO0:Lz2/k00;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lz2/cz;-><init>(Lz2/ox;Lz2/py;Lz2/l00;Lz2/k00;)V

    iget-object v1, p0, Lz2/my;->OooO:Lz2/l00;

    invoke-interface {v1}, Lz2/e10;->timeout()Lz2/f10;

    move-result-object v1

    int-to-long v4, p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lz2/f10;->OooO0oo(JLjava/util/concurrent/TimeUnit;)Lz2/f10;

    iget-object v1, p0, Lz2/my;->OooOO0:Lz2/k00;

    invoke-interface {v1}, Lz2/d10;->timeout()Lz2/f10;

    move-result-object v1

    int-to-long v4, p2

    invoke-virtual {v1, v4, v5, v2}, Lz2/f10;->OooO0oo(JLjava/util/concurrent/TimeUnit;)Lz2/f10;

    invoke-virtual {p3}, Lz2/qx;->OooO0o0()Lz2/jx;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lz2/cz;->OooOOOo(Lz2/jx;Ljava/lang/String;)V

    invoke-virtual {v0}, Lz2/cz;->OooO00o()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz2/cz;->OooO0Oo(Z)Lz2/sx$OooO00o;

    move-result-object v1

    invoke-virtual {v1, p3}, Lz2/sx$OooO00o;->OooOOo0(Lz2/qx;)Lz2/sx$OooO00o;

    move-result-object p3

    invoke-virtual {p3}, Lz2/sx$OooO00o;->OooO0OO()Lz2/sx;

    move-result-object p3

    invoke-static {p3}, Lz2/uy;->OooO0O0(Lz2/sx;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    const-wide/16 v4, 0x0

    :cond_0
    invoke-virtual {v0, v4, v5}, Lz2/cz;->OooOO0o(J)Lz2/e10;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-static {v0, v1, v2}, Lz2/zx;->OooOooo(Lz2/e10;ILjava/util/concurrent/TimeUnit;)Z

    invoke-interface {v0}, Lz2/e10;->close()V

    invoke-virtual {p3}, Lz2/sx;->OoooooO()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x197

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v0}, Lz2/ux;->OooO00o()Lz2/pw;

    move-result-object v0

    invoke-virtual {v0}, Lz2/pw;->OooO0oo()Lz2/qw;

    move-result-object v0

    iget-object v1, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-interface {v0, v1, p3}, Lz2/qw;->OooO00o(Lz2/ux;Lz2/sx;)Lz2/qx;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Connection"

    invoke-virtual {p3, v1}, Lz2/sx;->o0OoOo0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "close"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object v0

    :cond_1
    move-object p3, v0

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected response code for CONNECT: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lz2/sx;->OoooooO()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object p1, p0, Lz2/my;->OooO:Lz2/l00;

    invoke-interface {p1}, Lz2/l00;->OooO00o()Lz2/j00;

    move-result-object p1

    invoke-virtual {p1}, Lz2/j00;->OooOOO()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lz2/my;->OooOO0:Lz2/k00;

    invoke-interface {p1}, Lz2/k00;->OooO00o()Lz2/j00;

    move-result-object p1

    invoke-virtual {p1}, Lz2/j00;->OooOOO()Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v3

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private OooOOO(Lz2/ly;ILz2/tw;Lz2/gx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v0}, Lz2/ux;->OooO00o()Lz2/pw;

    move-result-object v0

    invoke-virtual {v0}, Lz2/pw;->OooOO0O()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {p1}, Lz2/ux;->OooO00o()Lz2/pw;

    move-result-object p1

    invoke-virtual {p1}, Lz2/pw;->OooO0o()Ljava/util/List;

    move-result-object p1

    sget-object p3, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/my;->OooO0Oo:Ljava/net/Socket;

    iput-object p1, p0, Lz2/my;->OooO0o0:Ljava/net/Socket;

    iput-object p3, p0, Lz2/my;->OooO0oO:Lokhttp3/Protocol;

    invoke-direct {p0, p2}, Lz2/my;->OooOo00(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lz2/my;->OooO0Oo:Ljava/net/Socket;

    iput-object p1, p0, Lz2/my;->OooO0o0:Ljava/net/Socket;

    sget-object p1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    iput-object p1, p0, Lz2/my;->OooO0oO:Lokhttp3/Protocol;

    return-void

    :cond_1
    invoke-virtual {p4, p3}, Lz2/gx;->OooOo0(Lz2/tw;)V

    invoke-direct {p0, p1}, Lz2/my;->OooOO0(Lz2/ly;)V

    iget-object p1, p0, Lz2/my;->OooO0o:Lz2/ix;

    invoke-virtual {p4, p3, p1}, Lz2/gx;->OooOo00(Lz2/tw;Lz2/ix;)V

    iget-object p1, p0, Lz2/my;->OooO0oO:Lokhttp3/Protocol;

    sget-object p3, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne p1, p3, :cond_2

    invoke-direct {p0, p2}, Lz2/my;->OooOo00(I)V

    :cond_2
    return-void
.end method

.method private OooOOO0()Lz2/qx;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lz2/qx$OooO00o;

    invoke-direct {v0}, Lz2/qx$OooO00o;-><init>()V

    iget-object v1, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v1}, Lz2/ux;->OooO00o()Lz2/pw;

    move-result-object v1

    invoke-virtual {v1}, Lz2/pw;->OooOO0o()Lz2/kx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/qx$OooO00o;->OooOOoo(Lz2/kx;)Lz2/qx$OooO00o;

    move-result-object v0

    const-string v1, "CONNECT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lz2/qx$OooO00o;->OooOO0(Ljava/lang/String;Lz2/rx;)Lz2/qx$OooO00o;

    move-result-object v0

    iget-object v1, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v1}, Lz2/ux;->OooO00o()Lz2/pw;

    move-result-object v1

    invoke-virtual {v1}, Lz2/pw;->OooOO0o()Lz2/kx;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lz2/zx;->OooOo00(Lz2/kx;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Lz2/qx$OooO00o;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/qx$OooO00o;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lz2/qx$OooO00o;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/qx$OooO00o;

    move-result-object v0

    invoke-static {}, Lz2/ay;->OooO00o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Lz2/qx$OooO00o;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/qx$OooO00o;

    move-result-object v0

    invoke-virtual {v0}, Lz2/qx$OooO00o;->OooO0O0()Lz2/qx;

    move-result-object v0

    new-instance v1, Lz2/sx$OooO00o;

    invoke-direct {v1}, Lz2/sx$OooO00o;-><init>()V

    invoke-virtual {v1, v0}, Lz2/sx$OooO00o;->OooOOo0(Lz2/qx;)Lz2/sx$OooO00o;

    move-result-object v1

    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-virtual {v1, v2}, Lz2/sx$OooO00o;->OooOOO(Lokhttp3/Protocol;)Lz2/sx$OooO00o;

    move-result-object v1

    const/16 v2, 0x197

    invoke-virtual {v1, v2}, Lz2/sx$OooO00o;->OooO0oO(I)Lz2/sx$OooO00o;

    move-result-object v1

    const-string v2, "Preemptive Authenticate"

    invoke-virtual {v1, v2}, Lz2/sx$OooO00o;->OooOO0O(Ljava/lang/String;)Lz2/sx$OooO00o;

    move-result-object v1

    sget-object v2, Lz2/zx;->OooO0OO:Lz2/tx;

    invoke-virtual {v1, v2}, Lz2/sx$OooO00o;->OooO0O0(Lz2/tx;)Lz2/sx$OooO00o;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lz2/sx$OooO00o;->OooOOo(J)Lz2/sx$OooO00o;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lz2/sx$OooO00o;->OooOOOO(J)Lz2/sx$OooO00o;

    move-result-object v1

    const-string v2, "Proxy-Authenticate"

    const-string v3, "OkHttp-Preemptive"

    invoke-virtual {v1, v2, v3}, Lz2/sx$OooO00o;->OooO(Ljava/lang/String;Ljava/lang/String;)Lz2/sx$OooO00o;

    move-result-object v1

    invoke-virtual {v1}, Lz2/sx$OooO00o;->OooO0OO()Lz2/sx;

    move-result-object v1

    iget-object v2, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v2}, Lz2/ux;->OooO00o()Lz2/pw;

    move-result-object v2

    invoke-virtual {v2}, Lz2/pw;->OooO0oo()Lz2/qw;

    move-result-object v2

    iget-object v3, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-interface {v2, v3, v1}, Lz2/qw;->OooO00o(Lz2/ux;Lz2/sx;)Lz2/qx;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method private OooOo00(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/my;->OooO0o0:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v0, Lz2/hz$OooOO0O;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lz2/hz$OooOO0O;-><init>(Z)V

    iget-object v1, p0, Lz2/my;->OooO0o0:Ljava/net/Socket;

    iget-object v2, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v2}, Lz2/ux;->OooO00o()Lz2/pw;

    move-result-object v2

    invoke-virtual {v2}, Lz2/pw;->OooOO0o()Lz2/kx;

    move-result-object v2

    invoke-virtual {v2}, Lz2/kx;->OooOOOo()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lz2/my;->OooO:Lz2/l00;

    iget-object v4, p0, Lz2/my;->OooOO0:Lz2/k00;

    invoke-virtual {v0, v1, v2, v3, v4}, Lz2/hz$OooOO0O;->OooO0o(Ljava/net/Socket;Ljava/lang/String;Lz2/l00;Lz2/k00;)Lz2/hz$OooOO0O;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/hz$OooOO0O;->OooO0O0(Lz2/hz$OooOOO0;)Lz2/hz$OooOO0O;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/hz$OooOO0O;->OooO0OO(I)Lz2/hz$OooOO0O;

    move-result-object p1

    invoke-virtual {p1}, Lz2/hz$OooOO0O;->OooO00o()Lz2/hz;

    move-result-object p1

    iput-object p1, p0, Lz2/my;->OooO0oo:Lz2/hz;

    invoke-virtual {p1}, Lz2/hz;->o000OOo()V

    return-void
.end method

.method public static OooOo0O(Lz2/zw;Lz2/ux;Ljava/net/Socket;J)Lz2/my;
    .locals 1

    new-instance v0, Lz2/my;

    invoke-direct {v0, p0, p1}, Lz2/my;-><init>(Lz2/zw;Lz2/ux;)V

    iput-object p2, v0, Lz2/my;->OooO0o0:Ljava/net/Socket;

    iput-wide p3, v0, Lz2/my;->OooOOOO:J

    return-object v0
.end method


# virtual methods
.method public OooO00o()Lokhttp3/Protocol;
    .locals 1

    iget-object v0, p0, Lz2/my;->OooO0oO:Lokhttp3/Protocol;

    return-object v0
.end method

.method public OooO0O0()Lz2/ux;
    .locals 1

    iget-object v0, p0, Lz2/my;->OooO0OO:Lz2/ux;

    return-object v0
.end method

.method public OooO0OO()Lz2/ix;
    .locals 1

    iget-object v0, p0, Lz2/my;->OooO0o:Lz2/ix;

    return-object v0
.end method

.method public OooO0Oo()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lz2/my;->OooO0o0:Ljava/net/Socket;

    return-object v0
.end method

.method public OooO0o(Lz2/jz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Lz2/jz;->OooO0o(Lokhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public OooO0o0(Lz2/hz;)V
    .locals 1

    iget-object v0, p0, Lz2/my;->OooO0O0:Lz2/zw;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lz2/hz;->o00Ooo()I

    move-result p1

    iput p1, p0, Lz2/my;->OooOOO0:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooO0oO()V
    .locals 1

    iget-object v0, p0, Lz2/my;->OooO0Oo:Ljava/net/Socket;

    invoke-static {v0}, Lz2/zx;->OooO(Ljava/net/Socket;)V

    return-void
.end method

.method public OooO0oo(IIIIZLz2/tw;Lz2/gx;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    iget-object v0, v7, Lz2/my;->OooO0oO:Lokhttp3/Protocol;

    if-nez v0, :cond_b

    iget-object v0, v7, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v0}, Lz2/ux;->OooO00o()Lz2/pw;

    move-result-object v0

    invoke-virtual {v0}, Lz2/pw;->OooO0O0()Ljava/util/List;

    move-result-object v0

    new-instance v10, Lz2/ly;

    invoke-direct {v10, v0}, Lz2/ly;-><init>(Ljava/util/List;)V

    iget-object v1, v7, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v1}, Lz2/ux;->OooO00o()Lz2/pw;

    move-result-object v1

    invoke-virtual {v1}, Lz2/pw;->OooOO0O()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lz2/ax;->OooOO0:Lz2/ax;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v7, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v0}, Lz2/ux;->OooO00o()Lz2/pw;

    move-result-object v0

    invoke-virtual {v0}, Lz2/pw;->OooOO0o()Lz2/kx;

    move-result-object v0

    invoke-virtual {v0}, Lz2/kx;->OooOOOo()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lz2/uz;->OooOO0O()Lz2/uz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lz2/uz;->OooOOOo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lokhttp3/internal/connection/RouteException;

    new-instance v2, Ljava/net/UnknownServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEARTEXT communication to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not permitted by network security policy"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_1
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_2
    iget-object v0, v7, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v0}, Lz2/ux;->OooO00o()Lz2/pw;

    move-result-object v0

    invoke-virtual {v0}, Lz2/pw;->OooO0o()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_0
    const/4 v11, 0x0

    move-object v12, v11

    :goto_1
    :try_start_0
    iget-object v0, v7, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v0}, Lz2/ux;->OooO0OO()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lz2/my;->OooOO0O(IIILz2/tw;Lz2/gx;)V

    iget-object v0, v7, Lz2/my;->OooO0Oo:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v13, p1

    move/from16 v14, p2

    goto :goto_2

    :cond_4
    move/from16 v13, p1

    move/from16 v14, p2

    :try_start_1
    invoke-direct {v7, v13, v14, v8, v9}, Lz2/my;->OooO(IILz2/tw;Lz2/gx;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move/from16 v15, p4

    :try_start_2
    invoke-direct {v7, v10, v15, v8, v9}, Lz2/my;->OooOOO(Lz2/ly;ILz2/tw;Lz2/gx;)V

    iget-object v0, v7, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v0}, Lz2/ux;->OooO0Oo()Ljava/net/InetSocketAddress;

    move-result-object v0

    iget-object v1, v7, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v1}, Lz2/ux;->OooO0O0()Ljava/net/Proxy;

    move-result-object v1

    iget-object v2, v7, Lz2/my;->OooO0oO:Lokhttp3/Protocol;

    invoke-virtual {v9, v8, v0, v1, v2}, Lz2/gx;->OooO0Oo(Lz2/tw;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    iget-object v0, v7, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v0}, Lz2/ux;->OooO0OO()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lz2/my;->OooO0Oo:Ljava/net/Socket;

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Too many tunnel connections attempted: 21"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    new-instance v1, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v1, v0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_6
    :goto_4
    iget-object v0, v7, Lz2/my;->OooO0oo:Lz2/hz;

    if-eqz v0, :cond_7

    iget-object v1, v7, Lz2/my;->OooO0O0:Lz2/zw;

    monitor-enter v1

    :try_start_3
    iget-object v0, v7, Lz2/my;->OooO0oo:Lz2/hz;

    invoke-virtual {v0}, Lz2/hz;->o00Ooo()I

    move-result v0

    iput v0, v7, Lz2/my;->OooOOO0:I

    monitor-exit v1

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_7
    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move/from16 v13, p1

    move/from16 v14, p2

    :goto_6
    move/from16 v15, p4

    :goto_7
    iget-object v1, v7, Lz2/my;->OooO0o0:Ljava/net/Socket;

    invoke-static {v1}, Lz2/zx;->OooO(Ljava/net/Socket;)V

    iget-object v1, v7, Lz2/my;->OooO0Oo:Ljava/net/Socket;

    invoke-static {v1}, Lz2/zx;->OooO(Ljava/net/Socket;)V

    iput-object v11, v7, Lz2/my;->OooO0o0:Ljava/net/Socket;

    iput-object v11, v7, Lz2/my;->OooO0Oo:Ljava/net/Socket;

    iput-object v11, v7, Lz2/my;->OooO:Lz2/l00;

    iput-object v11, v7, Lz2/my;->OooOO0:Lz2/k00;

    iput-object v11, v7, Lz2/my;->OooO0o:Lz2/ix;

    iput-object v11, v7, Lz2/my;->OooO0oO:Lokhttp3/Protocol;

    iput-object v11, v7, Lz2/my;->OooO0oo:Lz2/hz;

    iget-object v1, v7, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v1}, Lz2/ux;->OooO0Oo()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v1, v7, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v1}, Lz2/ux;->OooO0O0()Ljava/net/Proxy;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lz2/gx;->OooO0o0(Lz2/tw;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    if-nez v12, :cond_8

    new-instance v12, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v12, v0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    goto :goto_8

    :cond_8
    invoke-virtual {v12, v0}, Lokhttp3/internal/connection/RouteException;->addConnectException(Ljava/io/IOException;)V

    :goto_8
    if-eqz p5, :cond_9

    invoke-virtual {v10, v0}, Lz2/ly;->OooO0O0(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_1

    :cond_9
    throw v12

    :cond_a
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooOOOO(Lz2/pw;Lz2/ux;)Z
    .locals 4
    .param p2    # Lz2/ux;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/my;->OooOOO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lz2/my;->OooOOO0:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_a

    iget-boolean v0, p0, Lz2/my;->OooOO0O:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lz2/xx;->OooO00o:Lz2/xx;

    iget-object v1, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v1}, Lz2/ux;->OooO00o()Lz2/pw;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lz2/xx;->OooO0oO(Lz2/pw;Lz2/pw;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lz2/pw;->OooOO0o()Lz2/kx;

    move-result-object v0

    invoke-virtual {v0}, Lz2/kx;->OooOOOo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lz2/my;->OooO0O0()Lz2/ux;

    move-result-object v1

    invoke-virtual {v1}, Lz2/ux;->OooO00o()Lz2/pw;

    move-result-object v1

    invoke-virtual {v1}, Lz2/pw;->OooOO0o()Lz2/kx;

    move-result-object v1

    invoke-virtual {v1}, Lz2/kx;->OooOOOo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lz2/my;->OooO0oo:Lz2/hz;

    if-nez v0, :cond_3

    return v2

    :cond_3
    if-nez p2, :cond_4

    return v2

    :cond_4
    invoke-virtual {p2}, Lz2/ux;->OooO0O0()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_5

    return v2

    :cond_5
    iget-object v0, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v0}, Lz2/ux;->OooO0O0()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_6

    return v2

    :cond_6
    iget-object v0, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v0}, Lz2/ux;->OooO0Oo()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2}, Lz2/ux;->OooO0Oo()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    :cond_7
    invoke-virtual {p2}, Lz2/ux;->OooO00o()Lz2/pw;

    move-result-object p2

    invoke-virtual {p2}, Lz2/pw;->OooO0o0()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p2

    sget-object v0, Lz2/a00;->OooO00o:Lz2/a00;

    if-eq p2, v0, :cond_8

    return v2

    :cond_8
    invoke-virtual {p1}, Lz2/pw;->OooOO0o()Lz2/kx;

    move-result-object p2

    invoke-virtual {p0, p2}, Lz2/my;->OooOo0(Lz2/kx;)Z

    move-result p2

    if-nez p2, :cond_9

    return v2

    :cond_9
    :try_start_0
    invoke-virtual {p1}, Lz2/pw;->OooO00o()Lz2/vw;

    move-result-object p2

    invoke-virtual {p1}, Lz2/pw;->OooOO0o()Lz2/kx;

    move-result-object p1

    invoke-virtual {p1}, Lz2/kx;->OooOOOo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lz2/my;->OooO0OO()Lz2/ix;

    move-result-object v0

    invoke-virtual {v0}, Lz2/ix;->OooO0o()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lz2/vw;->OooO00o(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_a
    :goto_0
    return v2
.end method

.method public OooOOOo(Z)Z
    .locals 4

    iget-object v0, p0, Lz2/my;->OooO0o0:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lz2/my;->OooO0o0:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lz2/my;->OooO0o0:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/my;->OooO0oo:Lz2/hz;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lz2/hz;->o00Oo0()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_1
    if-eqz p1, :cond_3

    :try_start_0
    iget-object p1, p0, Lz2/my;->OooO0o0:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lz2/my;->OooO0o0:Ljava/net/Socket;

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lz2/my;->OooO:Lz2/l00;

    invoke-interface {v0}, Lz2/l00;->OooOOO()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lz2/my;->OooO0o0:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    :cond_2
    iget-object v0, p0, Lz2/my;->OooO0o0:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v2

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lz2/my;->OooO0o0:Ljava/net/Socket;

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v1

    :catch_1
    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method public OooOOo(Lz2/ox;Lz2/lx$OooO00o;Lz2/py;)Lz2/sy;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lz2/my;->OooO0oo:Lz2/hz;

    if-eqz v0, :cond_0

    new-instance v0, Lz2/gz;

    iget-object v1, p0, Lz2/my;->OooO0oo:Lz2/hz;

    invoke-direct {v0, p1, p2, p3, v1}, Lz2/gz;-><init>(Lz2/ox;Lz2/lx$OooO00o;Lz2/py;Lz2/hz;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lz2/my;->OooO0o0:Ljava/net/Socket;

    invoke-interface {p2}, Lz2/lx$OooO00o;->OooO0O0()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lz2/my;->OooO:Lz2/l00;

    invoke-interface {v0}, Lz2/e10;->timeout()Lz2/f10;

    move-result-object v0

    invoke-interface {p2}, Lz2/lx$OooO00o;->OooO0O0()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lz2/f10;->OooO0oo(JLjava/util/concurrent/TimeUnit;)Lz2/f10;

    iget-object v0, p0, Lz2/my;->OooOO0:Lz2/k00;

    invoke-interface {v0}, Lz2/d10;->timeout()Lz2/f10;

    move-result-object v0

    invoke-interface {p2}, Lz2/lx$OooO00o;->OooO0OO()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2, v3}, Lz2/f10;->OooO0oo(JLjava/util/concurrent/TimeUnit;)Lz2/f10;

    new-instance p2, Lz2/cz;

    iget-object v0, p0, Lz2/my;->OooO:Lz2/l00;

    iget-object v1, p0, Lz2/my;->OooOO0:Lz2/k00;

    invoke-direct {p2, p1, p3, v0, v1}, Lz2/cz;-><init>(Lz2/ox;Lz2/py;Lz2/l00;Lz2/k00;)V

    return-object p2
.end method

.method public OooOOo0()Z
    .locals 1

    iget-object v0, p0, Lz2/my;->OooO0oo:Lz2/hz;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooOOoo(Lz2/py;)Lz2/c00$OooOO0O;
    .locals 7

    new-instance v6, Lz2/my$OooO00o;

    iget-object v3, p0, Lz2/my;->OooO:Lz2/l00;

    iget-object v4, p0, Lz2/my;->OooOO0:Lz2/k00;

    const/4 v2, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lz2/my$OooO00o;-><init>(Lz2/my;ZLz2/l00;Lz2/k00;Lz2/py;)V

    return-object v6
.end method

.method public OooOo0(Lz2/kx;)Z
    .locals 4

    invoke-virtual {p1}, Lz2/kx;->OooOooo()I

    move-result v0

    iget-object v1, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v1}, Lz2/ux;->OooO00o()Lz2/pw;

    move-result-object v1

    invoke-virtual {v1}, Lz2/pw;->OooOO0o()Lz2/kx;

    move-result-object v1

    invoke-virtual {v1}, Lz2/kx;->OooOooo()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lz2/kx;->OooOOOo()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v1}, Lz2/ux;->OooO00o()Lz2/pw;

    move-result-object v1

    invoke-virtual {v1}, Lz2/pw;->OooOO0o()Lz2/kx;

    move-result-object v1

    invoke-virtual {v1}, Lz2/kx;->OooOOOo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lz2/my;->OooO0o:Lz2/ix;

    if-eqz v0, :cond_1

    sget-object v0, Lz2/a00;->OooO00o:Lz2/a00;

    invoke-virtual {p1}, Lz2/kx;->OooOOOo()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lz2/my;->OooO0o:Lz2/ix;

    invoke-virtual {v3}, Lz2/ix;->OooO0o()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1, v3}, Lz2/a00;->OooO0OO(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v1}, Lz2/ux;->OooO00o()Lz2/pw;

    move-result-object v1

    invoke-virtual {v1}, Lz2/pw;->OooOO0o()Lz2/kx;

    move-result-object v1

    invoke-virtual {v1}, Lz2/kx;->OooOOOo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v1}, Lz2/ux;->OooO00o()Lz2/pw;

    move-result-object v1

    invoke-virtual {v1}, Lz2/pw;->OooOO0o()Lz2/kx;

    move-result-object v1

    invoke-virtual {v1}, Lz2/kx;->OooOooo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v1}, Lz2/ux;->OooO0O0()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/my;->OooO0OO:Lz2/ux;

    invoke-virtual {v1}, Lz2/ux;->OooO0Oo()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/my;->OooO0o:Lz2/ix;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lz2/ix;->OooO00o()Lz2/xw;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/my;->OooO0oO:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
