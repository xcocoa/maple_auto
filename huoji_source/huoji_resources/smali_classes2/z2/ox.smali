.class public Lz2/ox;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lz2/tw$OooO00o;
.implements Lz2/vx$OooO00o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/ox$OooO0O0;
    }
.end annotation


# static fields
.field public static final o000OOo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/ax;",
            ">;"
        }
    .end annotation
.end field

.field public static final o0O0O00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final OoooOoO:Lz2/ex;

.field public final OoooOoo:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final Ooooo00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field public final Ooooo0o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/ax;",
            ">;"
        }
    .end annotation
.end field

.field public final OooooO0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/lx;",
            ">;"
        }
    .end annotation
.end field

.field public final OooooOO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/lx;",
            ">;"
        }
    .end annotation
.end field

.field public final OooooOo:Lz2/gx$OooO0OO;

.field public final Oooooo:Lz2/cx;

.field public final Oooooo0:Ljava/net/ProxySelector;

.field public final OoooooO:Lz2/rw;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final Ooooooo:Lz2/hy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final o00O0O:Lz2/yz;

.field public final o00Oo0:Ljavax/net/ssl/HostnameVerifier;

.field public final o00Ooo:Lz2/vw;

.field public final o00o0O:Lz2/qw;

.field public final o00oO0O:Z

.field public final o00oO0o:Lz2/fx;

.field public final o00ooo:Lz2/qw;

.field public final o0OO00O:I

.field public final o0OOO0o:I

.field public final o0Oo0oo:I

.field public final o0OoOo0:Ljavax/net/SocketFactory;

.field public final o0ooOO0:Z

.field public final o0ooOOo:Z

.field public final o0ooOoO:I

.field public final oo000o:Lz2/zw;

.field public final oo0o0Oo:I

.field public final ooOO:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Lokhttp3/Protocol;

    sget-object v2, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lz2/zx;->OooOo0O([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lz2/ox;->o0O0O00:Ljava/util/List;

    new-array v0, v0, [Lz2/ax;

    sget-object v1, Lz2/ax;->OooO0oo:Lz2/ax;

    aput-object v1, v0, v3

    sget-object v1, Lz2/ax;->OooOO0:Lz2/ax;

    aput-object v1, v0, v4

    invoke-static {v0}, Lz2/zx;->OooOo0O([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lz2/ox;->o000OOo:Ljava/util/List;

    new-instance v0, Lz2/ox$OooO00o;

    invoke-direct {v0}, Lz2/ox$OooO00o;-><init>()V

    sput-object v0, Lz2/xx;->OooO00o:Lz2/xx;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lz2/ox$OooO0O0;

    invoke-direct {v0}, Lz2/ox$OooO0O0;-><init>()V

    invoke-direct {p0, v0}, Lz2/ox;-><init>(Lz2/ox$OooO0O0;)V

    return-void
.end method

.method public constructor <init>(Lz2/ox$OooO0O0;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lz2/ox$OooO0O0;->OooO00o:Lz2/ex;

    iput-object v0, p0, Lz2/ox;->OoooOoO:Lz2/ex;

    iget-object v0, p1, Lz2/ox$OooO0O0;->OooO0O0:Ljava/net/Proxy;

    iput-object v0, p0, Lz2/ox;->OoooOoo:Ljava/net/Proxy;

    iget-object v0, p1, Lz2/ox$OooO0O0;->OooO0OO:Ljava/util/List;

    iput-object v0, p0, Lz2/ox;->Ooooo00:Ljava/util/List;

    iget-object v0, p1, Lz2/ox$OooO0O0;->OooO0Oo:Ljava/util/List;

    iput-object v0, p0, Lz2/ox;->Ooooo0o:Ljava/util/List;

    iget-object v1, p1, Lz2/ox$OooO0O0;->OooO0o0:Ljava/util/List;

    invoke-static {v1}, Lz2/zx;->OooOo0(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lz2/ox;->OooooO0:Ljava/util/List;

    iget-object v1, p1, Lz2/ox$OooO0O0;->OooO0o:Ljava/util/List;

    invoke-static {v1}, Lz2/zx;->OooOo0(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lz2/ox;->OooooOO:Ljava/util/List;

    iget-object v1, p1, Lz2/ox$OooO0O0;->OooO0oO:Lz2/gx$OooO0OO;

    iput-object v1, p0, Lz2/ox;->OooooOo:Lz2/gx$OooO0OO;

    iget-object v1, p1, Lz2/ox$OooO0O0;->OooO0oo:Ljava/net/ProxySelector;

    iput-object v1, p0, Lz2/ox;->Oooooo0:Ljava/net/ProxySelector;

    iget-object v1, p1, Lz2/ox$OooO0O0;->OooO:Lz2/cx;

    iput-object v1, p0, Lz2/ox;->Oooooo:Lz2/cx;

    iget-object v1, p1, Lz2/ox$OooO0O0;->OooOO0:Lz2/rw;

    iput-object v1, p0, Lz2/ox;->OoooooO:Lz2/rw;

    iget-object v1, p1, Lz2/ox$OooO0O0;->OooOO0O:Lz2/hy;

    iput-object v1, p0, Lz2/ox;->Ooooooo:Lz2/hy;

    iget-object v1, p1, Lz2/ox$OooO0O0;->OooOO0o:Ljavax/net/SocketFactory;

    iput-object v1, p0, Lz2/ox;->o0OoOo0:Ljavax/net/SocketFactory;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz2/ax;

    if-nez v2, :cond_1

    invoke-virtual {v3}, Lz2/ax;->OooO0Oo()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lz2/ox$OooO0O0;->OooOOO0:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lz2/zx;->OooOooO()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-static {v0}, Lz2/ox;->OooOo0O(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lz2/ox;->ooOO:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, Lz2/yz;->OooO0O0(Ljavax/net/ssl/X509TrustManager;)Lz2/yz;

    move-result-object v0

    goto :goto_2

    :cond_4
    :goto_1
    iput-object v0, p0, Lz2/ox;->ooOO:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Lz2/ox$OooO0O0;->OooOOO:Lz2/yz;

    :goto_2
    iput-object v0, p0, Lz2/ox;->o00O0O:Lz2/yz;

    iget-object v0, p0, Lz2/ox;->ooOO:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_5

    invoke-static {}, Lz2/uz;->OooOO0O()Lz2/uz;

    move-result-object v0

    iget-object v1, p0, Lz2/ox;->ooOO:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Lz2/uz;->OooO0oO(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_5
    iget-object v0, p1, Lz2/ox$OooO0O0;->OooOOOO:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lz2/ox;->o00Oo0:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Lz2/ox$OooO0O0;->OooOOOo:Lz2/vw;

    iget-object v1, p0, Lz2/ox;->o00O0O:Lz2/yz;

    invoke-virtual {v0, v1}, Lz2/vw;->OooO0oO(Lz2/yz;)Lz2/vw;

    move-result-object v0

    iput-object v0, p0, Lz2/ox;->o00Ooo:Lz2/vw;

    iget-object v0, p1, Lz2/ox$OooO0O0;->OooOOo0:Lz2/qw;

    iput-object v0, p0, Lz2/ox;->o00o0O:Lz2/qw;

    iget-object v0, p1, Lz2/ox$OooO0O0;->OooOOo:Lz2/qw;

    iput-object v0, p0, Lz2/ox;->o00ooo:Lz2/qw;

    iget-object v0, p1, Lz2/ox$OooO0O0;->OooOOoo:Lz2/zw;

    iput-object v0, p0, Lz2/ox;->oo000o:Lz2/zw;

    iget-object v0, p1, Lz2/ox$OooO0O0;->OooOo00:Lz2/fx;

    iput-object v0, p0, Lz2/ox;->o00oO0o:Lz2/fx;

    iget-boolean v0, p1, Lz2/ox$OooO0O0;->OooOo0:Z

    iput-boolean v0, p0, Lz2/ox;->o00oO0O:Z

    iget-boolean v0, p1, Lz2/ox$OooO0O0;->OooOo0O:Z

    iput-boolean v0, p0, Lz2/ox;->o0ooOO0:Z

    iget-boolean v0, p1, Lz2/ox$OooO0O0;->OooOo0o:Z

    iput-boolean v0, p0, Lz2/ox;->o0ooOOo:Z

    iget v0, p1, Lz2/ox$OooO0O0;->OooOo:I

    iput v0, p0, Lz2/ox;->o0ooOoO:I

    iget v0, p1, Lz2/ox$OooO0O0;->OooOoO0:I

    iput v0, p0, Lz2/ox;->o0OOO0o:I

    iget v0, p1, Lz2/ox$OooO0O0;->OooOoO:I

    iput v0, p0, Lz2/ox;->o0Oo0oo:I

    iget v0, p1, Lz2/ox$OooO0O0;->OooOoOO:I

    iput v0, p0, Lz2/ox;->o0OO00O:I

    iget p1, p1, Lz2/ox$OooO0O0;->OooOoo0:I

    iput p1, p0, Lz2/ox;->oo0o0Oo:I

    iget-object p1, p0, Lz2/ox;->OooooO0:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lz2/ox;->OooooOO:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null network interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/ox;->OooooOO:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/ox;->OooooO0:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static OooOo0O(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    :try_start_0
    invoke-static {}, Lz2/uz;->OooOO0O()Lz2/uz;

    move-result-object v0

    invoke-virtual {v0}, Lz2/uz;->OooOOO0()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1, p0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "No System TLS"

    invoke-static {v0, p0}, Lz2/zx;->OooO0O0(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public OooO()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz2/ax;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/ox;->Ooooo0o:Ljava/util/List;

    return-object v0
.end method

.method public OooO00o(Lz2/qx;)Lz2/tw;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lz2/px;->OooO0o0(Lz2/ox;Lz2/qx;Z)Lz2/px;

    move-result-object p1

    return-object p1
.end method

.method public OooO0O0(Lz2/qx;Lz2/wx;)Lz2/vx;
    .locals 7

    new-instance v6, Lz2/c00;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iget v0, p0, Lz2/ox;->oo0o0Oo:I

    int-to-long v4, v0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lz2/c00;-><init>(Lz2/qx;Lz2/wx;Ljava/util/Random;J)V

    invoke-virtual {v6, p0}, Lz2/c00;->OooOOO0(Lz2/ox;)V

    return-object v6
.end method

.method public OooO0OO()Lz2/qw;
    .locals 1

    iget-object v0, p0, Lz2/ox;->o00ooo:Lz2/qw;

    return-object v0
.end method

.method public OooO0Oo()Lz2/rw;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/ox;->OoooooO:Lz2/rw;

    return-object v0
.end method

.method public OooO0o()Lz2/vw;
    .locals 1

    iget-object v0, p0, Lz2/ox;->o00Ooo:Lz2/vw;

    return-object v0
.end method

.method public OooO0o0()I
    .locals 1

    iget v0, p0, Lz2/ox;->o0ooOoO:I

    return v0
.end method

.method public OooO0oO()I
    .locals 1

    iget v0, p0, Lz2/ox;->o0OOO0o:I

    return v0
.end method

.method public OooO0oo()Lz2/zw;
    .locals 1

    iget-object v0, p0, Lz2/ox;->oo000o:Lz2/zw;

    return-object v0
.end method

.method public OooOO0O()Lz2/cx;
    .locals 1

    iget-object v0, p0, Lz2/ox;->Oooooo:Lz2/cx;

    return-object v0
.end method

.method public OooOO0o()Lz2/ex;
    .locals 1

    iget-object v0, p0, Lz2/ox;->OoooOoO:Lz2/ex;

    return-object v0
.end method

.method public OooOOO()Lz2/gx$OooO0OO;
    .locals 1

    iget-object v0, p0, Lz2/ox;->OooooOo:Lz2/gx$OooO0OO;

    return-object v0
.end method

.method public OooOOO0()Lz2/fx;
    .locals 1

    iget-object v0, p0, Lz2/ox;->o00oO0o:Lz2/fx;

    return-object v0
.end method

.method public OooOOOO()Z
    .locals 1

    iget-boolean v0, p0, Lz2/ox;->o0ooOO0:Z

    return v0
.end method

.method public OooOOOo()Z
    .locals 1

    iget-boolean v0, p0, Lz2/ox;->o00oO0O:Z

    return v0
.end method

.method public OooOOo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz2/lx;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/ox;->OooooO0:Ljava/util/List;

    return-object v0
.end method

.method public OooOOo0()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lz2/ox;->o00Oo0:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public OooOOoo()Lz2/hy;
    .locals 1

    iget-object v0, p0, Lz2/ox;->OoooooO:Lz2/rw;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lz2/rw;->OoooOoO:Lz2/hy;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/ox;->Ooooooo:Lz2/hy;

    :goto_0
    return-object v0
.end method

.method public OooOo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/ox;->Ooooo00:Ljava/util/List;

    return-object v0
.end method

.method public OooOo0()Lz2/ox$OooO0O0;
    .locals 1

    new-instance v0, Lz2/ox$OooO0O0;

    invoke-direct {v0, p0}, Lz2/ox$OooO0O0;-><init>(Lz2/ox;)V

    return-object v0
.end method

.method public OooOo00()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz2/lx;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/ox;->OooooOO:Ljava/util/List;

    return-object v0
.end method

.method public OooOo0o()I
    .locals 1

    iget v0, p0, Lz2/ox;->oo0o0Oo:I

    return v0
.end method

.method public OooOoO()Lz2/qw;
    .locals 1

    iget-object v0, p0, Lz2/ox;->o00o0O:Lz2/qw;

    return-object v0
.end method

.method public OooOoO0()Ljava/net/Proxy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/ox;->OoooOoo:Ljava/net/Proxy;

    return-object v0
.end method

.method public OooOoOO()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Lz2/ox;->Oooooo0:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public OooOoo()Z
    .locals 1

    iget-boolean v0, p0, Lz2/ox;->o0ooOOo:Z

    return v0
.end method

.method public OooOoo0()I
    .locals 1

    iget v0, p0, Lz2/ox;->o0Oo0oo:I

    return v0
.end method

.method public OooOooO()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lz2/ox;->o0OoOo0:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public OooOooo()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lz2/ox;->ooOO:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public Oooo000()I
    .locals 1

    iget v0, p0, Lz2/ox;->o0OO00O:I

    return v0
.end method
