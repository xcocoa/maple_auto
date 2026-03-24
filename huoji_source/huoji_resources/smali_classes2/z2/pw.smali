.class public final Lz2/pw;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final OooO:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final OooO00o:Lz2/kx;

.field public final OooO0O0:Lz2/fx;

.field public final OooO0OO:Ljavax/net/SocketFactory;

.field public final OooO0Oo:Lz2/qw;

.field public final OooO0o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/ax;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0o0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0oO:Ljava/net/ProxySelector;

.field public final OooO0oo:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final OooOO0:Ljavax/net/ssl/HostnameVerifier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final OooOO0O:Lz2/vw;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILz2/fx;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lz2/vw;Lz2/qw;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 2
    .param p5    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljavax/net/ssl/HostnameVerifier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lz2/vw;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lz2/fx;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lz2/vw;",
            "Lz2/qw;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;",
            "Ljava/util/List<",
            "Lz2/ax;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/kx$OooO00o;

    invoke-direct {v0}, Lz2/kx$OooO00o;-><init>()V

    if-eqz p5, :cond_0

    const-string v1, "https"

    goto :goto_0

    :cond_0
    const-string v1, "http"

    :goto_0
    invoke-virtual {v0, v1}, Lz2/kx$OooO00o;->Oooo00o(Ljava/lang/String;)Lz2/kx$OooO00o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/kx$OooO00o;->OooOOo0(Ljava/lang/String;)Lz2/kx$OooO00o;

    move-result-object p1

    invoke-virtual {p1, p2}, Lz2/kx$OooO00o;->OooOo(I)Lz2/kx$OooO00o;

    move-result-object p1

    invoke-virtual {p1}, Lz2/kx$OooO00o;->OooO0oo()Lz2/kx;

    move-result-object p1

    iput-object p1, p0, Lz2/pw;->OooO00o:Lz2/kx;

    const-string p1, "dns == null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lz2/pw;->OooO0O0:Lz2/fx;

    const-string p1, "socketFactory == null"

    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p4, p0, Lz2/pw;->OooO0OO:Ljavax/net/SocketFactory;

    const-string p1, "proxyAuthenticator == null"

    invoke-static {p8, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p8, p0, Lz2/pw;->OooO0Oo:Lz2/qw;

    const-string p1, "protocols == null"

    invoke-static {p10, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p10}, Lz2/zx;->OooOo0(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lz2/pw;->OooO0o0:Ljava/util/List;

    const-string p1, "connectionSpecs == null"

    invoke-static {p11, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p11}, Lz2/zx;->OooOo0(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lz2/pw;->OooO0o:Ljava/util/List;

    const-string p1, "proxySelector == null"

    invoke-static {p12, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p12, p0, Lz2/pw;->OooO0oO:Ljava/net/ProxySelector;

    iput-object p9, p0, Lz2/pw;->OooO0oo:Ljava/net/Proxy;

    iput-object p5, p0, Lz2/pw;->OooO:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p6, p0, Lz2/pw;->OooOO0:Ljavax/net/ssl/HostnameVerifier;

    iput-object p7, p0, Lz2/pw;->OooOO0O:Lz2/vw;

    return-void
.end method


# virtual methods
.method public OooO()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Lz2/pw;->OooO0oO:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public OooO00o()Lz2/vw;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/pw;->OooOO0O:Lz2/vw;

    return-object v0
.end method

.method public OooO0O0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz2/ax;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/pw;->OooO0o:Ljava/util/List;

    return-object v0
.end method

.method public OooO0OO()Lz2/fx;
    .locals 1

    iget-object v0, p0, Lz2/pw;->OooO0O0:Lz2/fx;

    return-object v0
.end method

.method public OooO0Oo(Lz2/pw;)Z
    .locals 2

    iget-object v0, p0, Lz2/pw;->OooO0O0:Lz2/fx;

    iget-object v1, p1, Lz2/pw;->OooO0O0:Lz2/fx;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/pw;->OooO0Oo:Lz2/qw;

    iget-object v1, p1, Lz2/pw;->OooO0Oo:Lz2/qw;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/pw;->OooO0o0:Ljava/util/List;

    iget-object v1, p1, Lz2/pw;->OooO0o0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/pw;->OooO0o:Ljava/util/List;

    iget-object v1, p1, Lz2/pw;->OooO0o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/pw;->OooO0oO:Ljava/net/ProxySelector;

    iget-object v1, p1, Lz2/pw;->OooO0oO:Ljava/net/ProxySelector;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/pw;->OooO0oo:Ljava/net/Proxy;

    iget-object v1, p1, Lz2/pw;->OooO0oo:Ljava/net/Proxy;

    invoke-static {v0, v1}, Lz2/zx;->OooOOo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/pw;->OooO:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Lz2/pw;->OooO:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0, v1}, Lz2/zx;->OooOOo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/pw;->OooOO0:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p1, Lz2/pw;->OooOO0:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0, v1}, Lz2/zx;->OooOOo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/pw;->OooOO0O:Lz2/vw;

    iget-object v1, p1, Lz2/pw;->OooOO0O:Lz2/vw;

    invoke-static {v0, v1}, Lz2/zx;->OooOOo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/pw;->OooOO0o()Lz2/kx;

    move-result-object v0

    invoke-virtual {v0}, Lz2/kx;->OooOooo()I

    move-result v0

    invoke-virtual {p1}, Lz2/pw;->OooOO0o()Lz2/kx;

    move-result-object p1

    invoke-virtual {p1}, Lz2/kx;->OooOooo()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public OooO0o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/pw;->OooO0o0:Ljava/util/List;

    return-object v0
.end method

.method public OooO0o0()Ljavax/net/ssl/HostnameVerifier;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/pw;->OooOO0:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public OooO0oO()Ljava/net/Proxy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/pw;->OooO0oo:Ljava/net/Proxy;

    return-object v0
.end method

.method public OooO0oo()Lz2/qw;
    .locals 1

    iget-object v0, p0, Lz2/pw;->OooO0Oo:Lz2/qw;

    return-object v0
.end method

.method public OooOO0()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lz2/pw;->OooO0OO:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public OooOO0O()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/pw;->OooO:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public OooOO0o()Lz2/kx;
    .locals 1

    iget-object v0, p0, Lz2/pw;->OooO00o:Lz2/kx;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lz2/pw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/pw;->OooO00o:Lz2/kx;

    check-cast p1, Lz2/pw;

    iget-object v1, p1, Lz2/pw;->OooO00o:Lz2/kx;

    invoke-virtual {v0, v1}, Lz2/kx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lz2/pw;->OooO0Oo(Lz2/pw;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lz2/pw;->OooO00o:Lz2/kx;

    invoke-virtual {v0}, Lz2/kx;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lz2/pw;->OooO0O0:Lz2/fx;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lz2/pw;->OooO0Oo:Lz2/qw;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lz2/pw;->OooO0o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lz2/pw;->OooO0o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lz2/pw;->OooO0oO:Ljava/net/ProxySelector;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lz2/pw;->OooO0oo:Ljava/net/Proxy;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lz2/pw;->OooO:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lz2/pw;->OooOO0:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lz2/pw;->OooOO0O:Lz2/vw;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lz2/vw;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/pw;->OooO00o:Lz2/kx;

    invoke-virtual {v1}, Lz2/kx;->OooOOOo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/pw;->OooO00o:Lz2/kx;

    invoke-virtual {v1}, Lz2/kx;->OooOooo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/pw;->OooO0oo:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/pw;->OooO0oo:Ljava/net/Proxy;

    goto :goto_0

    :cond_0
    const-string v1, ", proxySelector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/pw;->OooO0oO:Ljava/net/ProxySelector;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
