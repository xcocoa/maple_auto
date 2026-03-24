.class public final Lz2/ox$OooO0O0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0O0"
.end annotation


# instance fields
.field public OooO:Lz2/cx;

.field public OooO00o:Lz2/ex;

.field public OooO0O0:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public OooO0OO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0Oo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/ax;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/lx;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0o0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/lx;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0oO:Lz2/gx$OooO0OO;

.field public OooO0oo:Ljava/net/ProxySelector;

.field public OooOO0:Lz2/rw;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public OooOO0O:Lz2/hy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public OooOO0o:Ljavax/net/SocketFactory;

.field public OooOOO:Lz2/yz;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public OooOOO0:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public OooOOOO:Ljavax/net/ssl/HostnameVerifier;

.field public OooOOOo:Lz2/vw;

.field public OooOOo:Lz2/qw;

.field public OooOOo0:Lz2/qw;

.field public OooOOoo:Lz2/zw;

.field public OooOo:I

.field public OooOo0:Z

.field public OooOo00:Lz2/fx;

.field public OooOo0O:Z

.field public OooOo0o:Z

.field public OooOoO:I

.field public OooOoO0:I

.field public OooOoOO:I

.field public OooOoo0:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooO0o0:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooO0o:Ljava/util/List;

    new-instance v0, Lz2/ex;

    invoke-direct {v0}, Lz2/ex;-><init>()V

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooO00o:Lz2/ex;

    sget-object v0, Lz2/ox;->o0O0O00:Ljava/util/List;

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooO0OO:Ljava/util/List;

    sget-object v0, Lz2/ox;->o000OOo:Ljava/util/List;

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooO0Oo:Ljava/util/List;

    sget-object v0, Lz2/gx;->OooO00o:Lz2/gx;

    invoke-static {v0}, Lz2/gx;->OooOO0O(Lz2/gx;)Lz2/gx$OooO0OO;

    move-result-object v0

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooO0oO:Lz2/gx$OooO0OO;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooO0oo:Ljava/net/ProxySelector;

    if-nez v0, :cond_0

    new-instance v0, Lz2/vz;

    invoke-direct {v0}, Lz2/vz;-><init>()V

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooO0oo:Ljava/net/ProxySelector;

    :cond_0
    sget-object v0, Lz2/cx;->OooO00o:Lz2/cx;

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooO:Lz2/cx;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooOO0o:Ljavax/net/SocketFactory;

    sget-object v0, Lz2/a00;->OooO00o:Lz2/a00;

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooOOOO:Ljavax/net/ssl/HostnameVerifier;

    sget-object v0, Lz2/vw;->OooO0OO:Lz2/vw;

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooOOOo:Lz2/vw;

    sget-object v0, Lz2/qw;->OooO00o:Lz2/qw;

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooOOo0:Lz2/qw;

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooOOo:Lz2/qw;

    new-instance v0, Lz2/zw;

    invoke-direct {v0}, Lz2/zw;-><init>()V

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooOOoo:Lz2/zw;

    sget-object v0, Lz2/fx;->OooO00o:Lz2/fx;

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooOo00:Lz2/fx;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/ox$OooO0O0;->OooOo0:Z

    iput-boolean v0, p0, Lz2/ox$OooO0O0;->OooOo0O:Z

    iput-boolean v0, p0, Lz2/ox$OooO0O0;->OooOo0o:Z

    const/4 v0, 0x0

    iput v0, p0, Lz2/ox$OooO0O0;->OooOo:I

    const/16 v1, 0x2710

    iput v1, p0, Lz2/ox$OooO0O0;->OooOoO0:I

    iput v1, p0, Lz2/ox$OooO0O0;->OooOoO:I

    iput v1, p0, Lz2/ox$OooO0O0;->OooOoOO:I

    iput v0, p0, Lz2/ox$OooO0O0;->OooOoo0:I

    return-void
.end method

.method public constructor <init>(Lz2/ox;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooO0o0:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lz2/ox$OooO0O0;->OooO0o:Ljava/util/List;

    iget-object v2, p1, Lz2/ox;->OoooOoO:Lz2/ex;

    iput-object v2, p0, Lz2/ox$OooO0O0;->OooO00o:Lz2/ex;

    iget-object v2, p1, Lz2/ox;->OoooOoo:Ljava/net/Proxy;

    iput-object v2, p0, Lz2/ox$OooO0O0;->OooO0O0:Ljava/net/Proxy;

    iget-object v2, p1, Lz2/ox;->Ooooo00:Ljava/util/List;

    iput-object v2, p0, Lz2/ox$OooO0O0;->OooO0OO:Ljava/util/List;

    iget-object v2, p1, Lz2/ox;->Ooooo0o:Ljava/util/List;

    iput-object v2, p0, Lz2/ox$OooO0O0;->OooO0Oo:Ljava/util/List;

    iget-object v2, p1, Lz2/ox;->OooooO0:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lz2/ox;->OooooOO:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lz2/ox;->OooooOo:Lz2/gx$OooO0OO;

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooO0oO:Lz2/gx$OooO0OO;

    iget-object v0, p1, Lz2/ox;->Oooooo0:Ljava/net/ProxySelector;

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooO0oo:Ljava/net/ProxySelector;

    iget-object v0, p1, Lz2/ox;->Oooooo:Lz2/cx;

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooO:Lz2/cx;

    iget-object v0, p1, Lz2/ox;->Ooooooo:Lz2/hy;

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooOO0O:Lz2/hy;

    iget-object v0, p1, Lz2/ox;->OoooooO:Lz2/rw;

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooOO0:Lz2/rw;

    iget-object v0, p1, Lz2/ox;->o0OoOo0:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooOO0o:Ljavax/net/SocketFactory;

    iget-object v0, p1, Lz2/ox;->ooOO:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooOOO0:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Lz2/ox;->o00O0O:Lz2/yz;

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooOOO:Lz2/yz;

    iget-object v0, p1, Lz2/ox;->o00Oo0:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooOOOO:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Lz2/ox;->o00Ooo:Lz2/vw;

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooOOOo:Lz2/vw;

    iget-object v0, p1, Lz2/ox;->o00o0O:Lz2/qw;

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooOOo0:Lz2/qw;

    iget-object v0, p1, Lz2/ox;->o00ooo:Lz2/qw;

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooOOo:Lz2/qw;

    iget-object v0, p1, Lz2/ox;->oo000o:Lz2/zw;

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooOOoo:Lz2/zw;

    iget-object v0, p1, Lz2/ox;->o00oO0o:Lz2/fx;

    iput-object v0, p0, Lz2/ox$OooO0O0;->OooOo00:Lz2/fx;

    iget-boolean v0, p1, Lz2/ox;->o00oO0O:Z

    iput-boolean v0, p0, Lz2/ox$OooO0O0;->OooOo0:Z

    iget-boolean v0, p1, Lz2/ox;->o0ooOO0:Z

    iput-boolean v0, p0, Lz2/ox$OooO0O0;->OooOo0O:Z

    iget-boolean v0, p1, Lz2/ox;->o0ooOOo:Z

    iput-boolean v0, p0, Lz2/ox$OooO0O0;->OooOo0o:Z

    iget v0, p1, Lz2/ox;->o0ooOoO:I

    iput v0, p0, Lz2/ox$OooO0O0;->OooOo:I

    iget v0, p1, Lz2/ox;->o0OOO0o:I

    iput v0, p0, Lz2/ox$OooO0O0;->OooOoO0:I

    iget v0, p1, Lz2/ox;->o0Oo0oo:I

    iput v0, p0, Lz2/ox$OooO0O0;->OooOoO:I

    iget v0, p1, Lz2/ox;->o0OO00O:I

    iput v0, p0, Lz2/ox$OooO0O0;->OooOoOO:I

    iget p1, p1, Lz2/ox;->oo0o0Oo:I

    iput p1, p0, Lz2/ox$OooO0O0;->OooOoo0:I

    return-void
.end method


# virtual methods
.method public OooO(JLjava/util/concurrent/TimeUnit;)Lz2/ox$OooO0O0;
    .locals 1

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lz2/zx;->OooO0o0(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lz2/ox$OooO0O0;->OooOoO0:I

    return-object p0
.end method

.method public OooO00o(Lz2/lx;)Lz2/ox$OooO0O0;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lz2/ox$OooO0O0;->OooO0o0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "interceptor == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooO0O0(Lz2/lx;)Lz2/ox$OooO0O0;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lz2/ox$OooO0O0;->OooO0o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "interceptor == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooO0OO(Lz2/qw;)Lz2/ox$OooO0O0;
    .locals 1

    const-string v0, "authenticator == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lz2/ox$OooO0O0;->OooOOo:Lz2/qw;

    return-object p0
.end method

.method public OooO0Oo()Lz2/ox;
    .locals 1

    new-instance v0, Lz2/ox;

    invoke-direct {v0, p0}, Lz2/ox;-><init>(Lz2/ox$OooO0O0;)V

    return-object v0
.end method

.method public OooO0o(JLjava/util/concurrent/TimeUnit;)Lz2/ox$OooO0O0;
    .locals 1

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lz2/zx;->OooO0o0(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lz2/ox$OooO0O0;->OooOo:I

    return-object p0
.end method

.method public OooO0o0(Lz2/rw;)Lz2/ox$OooO0O0;
    .locals 0
    .param p1    # Lz2/rw;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lz2/ox$OooO0O0;->OooOO0:Lz2/rw;

    const/4 p1, 0x0

    iput-object p1, p0, Lz2/ox$OooO0O0;->OooOO0O:Lz2/hy;

    return-object p0
.end method

.method public OooO0oO(Ljava/time/Duration;)Lz2/ox$OooO0O0;
    .locals 3
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "timeout"

    invoke-static {v2, v0, v1, p1}, Lz2/zx;->OooO0o0(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lz2/ox$OooO0O0;->OooOo:I

    return-object p0
.end method

.method public OooO0oo(Lz2/vw;)Lz2/ox$OooO0O0;
    .locals 1

    const-string v0, "certificatePinner == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lz2/ox$OooO0O0;->OooOOOo:Lz2/vw;

    return-object p0
.end method

.method public OooOO0(Ljava/time/Duration;)Lz2/ox$OooO0O0;
    .locals 3
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "timeout"

    invoke-static {v2, v0, v1, p1}, Lz2/zx;->OooO0o0(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lz2/ox$OooO0O0;->OooOoO0:I

    return-object p0
.end method

.method public OooOO0O(Lz2/zw;)Lz2/ox$OooO0O0;
    .locals 1

    const-string v0, "connectionPool == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lz2/ox$OooO0O0;->OooOOoo:Lz2/zw;

    return-object p0
.end method

.method public OooOO0o(Ljava/util/List;)Lz2/ox$OooO0O0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz2/ax;",
            ">;)",
            "Lz2/ox$OooO0O0;"
        }
    .end annotation

    invoke-static {p1}, Lz2/zx;->OooOo0(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lz2/ox$OooO0O0;->OooO0Oo:Ljava/util/List;

    return-object p0
.end method

.method public OooOOO(Lz2/ex;)Lz2/ox$OooO0O0;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lz2/ox$OooO0O0;->OooO00o:Lz2/ex;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dispatcher == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooOOO0(Lz2/cx;)Lz2/ox$OooO0O0;
    .locals 1

    const-string v0, "cookieJar == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lz2/ox$OooO0O0;->OooO:Lz2/cx;

    return-object p0
.end method

.method public OooOOOO(Lz2/fx;)Lz2/ox$OooO0O0;
    .locals 1

    const-string v0, "dns == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lz2/ox$OooO0O0;->OooOo00:Lz2/fx;

    return-object p0
.end method

.method public OooOOOo(Lz2/gx;)Lz2/ox$OooO0O0;
    .locals 1

    const-string v0, "eventListener == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lz2/gx;->OooOO0O(Lz2/gx;)Lz2/gx$OooO0OO;

    move-result-object p1

    iput-object p1, p0, Lz2/ox$OooO0O0;->OooO0oO:Lz2/gx$OooO0OO;

    return-object p0
.end method

.method public OooOOo(Z)Lz2/ox$OooO0O0;
    .locals 0

    iput-boolean p1, p0, Lz2/ox$OooO0O0;->OooOo0O:Z

    return-object p0
.end method

.method public OooOOo0(Lz2/gx$OooO0OO;)Lz2/ox$OooO0O0;
    .locals 1

    const-string v0, "eventListenerFactory == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lz2/ox$OooO0O0;->OooO0oO:Lz2/gx$OooO0OO;

    return-object p0
.end method

.method public OooOOoo(Z)Lz2/ox$OooO0O0;
    .locals 0

    iput-boolean p1, p0, Lz2/ox$OooO0O0;->OooOo0:Z

    return-object p0
.end method

.method public OooOo(Ljava/time/Duration;)Lz2/ox$OooO0O0;
    .locals 3
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "timeout"

    invoke-static {v2, v0, v1, p1}, Lz2/zx;->OooO0o0(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lz2/ox$OooO0O0;->OooOoo0:I

    return-object p0
.end method

.method public OooOo0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz2/lx;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/ox$OooO0O0;->OooO0o0:Ljava/util/List;

    return-object v0
.end method

.method public OooOo00(Ljavax/net/ssl/HostnameVerifier;)Lz2/ox$OooO0O0;
    .locals 1

    const-string v0, "hostnameVerifier == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lz2/ox$OooO0O0;->OooOOOO:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public OooOo0O()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz2/lx;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/ox$OooO0O0;->OooO0o:Ljava/util/List;

    return-object v0
.end method

.method public OooOo0o(JLjava/util/concurrent/TimeUnit;)Lz2/ox$OooO0O0;
    .locals 1

    const-string v0, "interval"

    invoke-static {v0, p1, p2, p3}, Lz2/zx;->OooO0o0(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lz2/ox$OooO0O0;->OooOoo0:I

    return-object p0
.end method

.method public OooOoO(Ljava/net/Proxy;)Lz2/ox$OooO0O0;
    .locals 0
    .param p1    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lz2/ox$OooO0O0;->OooO0O0:Ljava/net/Proxy;

    return-object p0
.end method

.method public OooOoO0(Ljava/util/List;)Lz2/ox$OooO0O0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;)",
            "Lz2/ox$OooO0O0;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p1, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols must contain h2_prior_knowledge or http/1.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols containing h2_prior_knowledge cannot use other protocols: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    sget-object p1, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lz2/ox$OooO0O0;->OooO0OO:Ljava/util/List;

    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "protocols must not contain null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols must not contain http/1.0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooOoOO(Lz2/qw;)Lz2/ox$OooO0O0;
    .locals 1

    const-string v0, "proxyAuthenticator == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lz2/ox$OooO0O0;->OooOOo0:Lz2/qw;

    return-object p0
.end method

.method public OooOoo(JLjava/util/concurrent/TimeUnit;)Lz2/ox$OooO0O0;
    .locals 1

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lz2/zx;->OooO0o0(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lz2/ox$OooO0O0;->OooOoO:I

    return-object p0
.end method

.method public OooOoo0(Ljava/net/ProxySelector;)Lz2/ox$OooO0O0;
    .locals 1

    const-string v0, "proxySelector == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lz2/ox$OooO0O0;->OooO0oo:Ljava/net/ProxySelector;

    return-object p0
.end method

.method public OooOooO(Ljava/time/Duration;)Lz2/ox$OooO0O0;
    .locals 3
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "timeout"

    invoke-static {v2, v0, v1, p1}, Lz2/zx;->OooO0o0(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lz2/ox$OooO0O0;->OooOoO:I

    return-object p0
.end method

.method public OooOooo(Z)Lz2/ox$OooO0O0;
    .locals 0

    iput-boolean p1, p0, Lz2/ox$OooO0O0;->OooOo0o:Z

    return-object p0
.end method

.method public Oooo0(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lz2/ox$OooO0O0;
    .locals 1

    const-string v0, "sslSocketFactory == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "trustManager == null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lz2/ox$OooO0O0;->OooOOO0:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {p2}, Lz2/yz;->OooO0O0(Ljavax/net/ssl/X509TrustManager;)Lz2/yz;

    move-result-object p1

    iput-object p1, p0, Lz2/ox$OooO0O0;->OooOOO:Lz2/yz;

    return-object p0
.end method

.method public Oooo000(Lz2/hy;)V
    .locals 0
    .param p1    # Lz2/hy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lz2/ox$OooO0O0;->OooOO0O:Lz2/hy;

    const/4 p1, 0x0

    iput-object p1, p0, Lz2/ox$OooO0O0;->OooOO0:Lz2/rw;

    return-void
.end method

.method public Oooo00O(Ljavax/net/SocketFactory;)Lz2/ox$OooO0O0;
    .locals 1

    const-string v0, "socketFactory == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lz2/ox$OooO0O0;->OooOO0o:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method public Oooo00o(Ljavax/net/ssl/SSLSocketFactory;)Lz2/ox$OooO0O0;
    .locals 1

    const-string v0, "sslSocketFactory == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lz2/ox$OooO0O0;->OooOOO0:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {}, Lz2/uz;->OooOO0O()Lz2/uz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/uz;->OooO0OO(Ljavax/net/ssl/SSLSocketFactory;)Lz2/yz;

    move-result-object p1

    iput-object p1, p0, Lz2/ox$OooO0O0;->OooOOO:Lz2/yz;

    return-object p0
.end method

.method public Oooo0O0(JLjava/util/concurrent/TimeUnit;)Lz2/ox$OooO0O0;
    .locals 1

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lz2/zx;->OooO0o0(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lz2/ox$OooO0O0;->OooOoOO:I

    return-object p0
.end method

.method public Oooo0OO(Ljava/time/Duration;)Lz2/ox$OooO0O0;
    .locals 3
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "timeout"

    invoke-static {v2, v0, v1, p1}, Lz2/zx;->OooO0o0(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lz2/ox$OooO0O0;->OooOoOO:I

    return-object p0
.end method
