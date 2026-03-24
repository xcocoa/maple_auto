.class public final Lz2/ax;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/ax$OooO00o;
    }
.end annotation


# static fields
.field public static final OooO:Lz2/ax;

.field private static final OooO0o:[Lz2/xw;

.field private static final OooO0o0:[Lz2/xw;

.field public static final OooO0oO:Lz2/ax;

.field public static final OooO0oo:Lz2/ax;

.field public static final OooOO0:Lz2/ax;


# instance fields
.field public final OooO00o:Z

.field public final OooO0O0:Z

.field public final OooO0OO:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final OooO0Oo:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 24

    const/16 v0, 0xb

    new-array v1, v0, [Lz2/xw;

    sget-object v2, Lz2/xw;->o000:Lz2/xw;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v4, Lz2/xw;->o000O000:Lz2/xw;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    sget-object v6, Lz2/xw;->o000OoO:Lz2/xw;

    const/4 v7, 0x2

    aput-object v6, v1, v7

    sget-object v8, Lz2/xw;->o000O0o:Lz2/xw;

    const/4 v9, 0x3

    aput-object v8, v1, v9

    sget-object v10, Lz2/xw;->o000Ooo:Lz2/xw;

    const/4 v11, 0x4

    aput-object v10, v1, v11

    sget-object v12, Lz2/xw;->o0000OOO:Lz2/xw;

    const/4 v13, 0x5

    aput-object v12, v1, v13

    sget-object v14, Lz2/xw;->o0000OoO:Lz2/xw;

    const/4 v15, 0x6

    aput-object v14, v1, v15

    sget-object v16, Lz2/xw;->o0000OOo:Lz2/xw;

    const/16 v17, 0x7

    aput-object v16, v1, v17

    sget-object v18, Lz2/xw;->o0000o0:Lz2/xw;

    const/16 v19, 0x8

    aput-object v18, v1, v19

    sget-object v20, Lz2/xw;->o0000oOo:Lz2/xw;

    const/16 v21, 0x9

    aput-object v20, v1, v21

    sget-object v22, Lz2/xw;->o0000oOO:Lz2/xw;

    const/16 v23, 0xa

    aput-object v22, v1, v23

    sput-object v1, Lz2/ax;->OooO0o0:[Lz2/xw;

    const/16 v0, 0x12

    new-array v0, v0, [Lz2/xw;

    aput-object v2, v0, v3

    aput-object v4, v0, v5

    aput-object v6, v0, v7

    aput-object v8, v0, v9

    aput-object v10, v0, v11

    aput-object v12, v0, v13

    aput-object v14, v0, v15

    aput-object v16, v0, v17

    aput-object v18, v0, v19

    aput-object v20, v0, v21

    aput-object v22, v0, v23

    sget-object v2, Lz2/xw;->o00000Oo:Lz2/xw;

    const/16 v4, 0xb

    aput-object v2, v0, v4

    sget-object v2, Lz2/xw;->o00000o0:Lz2/xw;

    const/16 v4, 0xc

    aput-object v2, v0, v4

    sget-object v2, Lz2/xw;->OoooooO:Lz2/xw;

    const/16 v4, 0xd

    aput-object v2, v0, v4

    sget-object v2, Lz2/xw;->Ooooooo:Lz2/xw;

    const/16 v4, 0xe

    aput-object v2, v0, v4

    sget-object v2, Lz2/xw;->Oooo00O:Lz2/xw;

    const/16 v4, 0xf

    aput-object v2, v0, v4

    sget-object v2, Lz2/xw;->Oooo0OO:Lz2/xw;

    const/16 v4, 0x10

    aput-object v2, v0, v4

    sget-object v2, Lz2/xw;->OooOO0O:Lz2/xw;

    const/16 v4, 0x11

    aput-object v2, v0, v4

    sput-object v0, Lz2/ax;->OooO0o:[Lz2/xw;

    new-instance v2, Lz2/ax$OooO00o;

    invoke-direct {v2, v5}, Lz2/ax$OooO00o;-><init>(Z)V

    invoke-virtual {v2, v1}, Lz2/ax$OooO00o;->OooO0o0([Lz2/xw;)Lz2/ax$OooO00o;

    move-result-object v1

    new-array v2, v7, [Lokhttp3/TlsVersion;

    sget-object v4, Lokhttp3/TlsVersion;->TLS_1_3:Lokhttp3/TlsVersion;

    aput-object v4, v2, v3

    sget-object v6, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    aput-object v6, v2, v5

    invoke-virtual {v1, v2}, Lz2/ax$OooO00o;->OooO0oo([Lokhttp3/TlsVersion;)Lz2/ax$OooO00o;

    move-result-object v1

    invoke-virtual {v1, v5}, Lz2/ax$OooO00o;->OooO0o(Z)Lz2/ax$OooO00o;

    move-result-object v1

    invoke-virtual {v1}, Lz2/ax$OooO00o;->OooO0OO()Lz2/ax;

    move-result-object v1

    sput-object v1, Lz2/ax;->OooO0oO:Lz2/ax;

    new-instance v1, Lz2/ax$OooO00o;

    invoke-direct {v1, v5}, Lz2/ax$OooO00o;-><init>(Z)V

    invoke-virtual {v1, v0}, Lz2/ax$OooO00o;->OooO0o0([Lz2/xw;)Lz2/ax$OooO00o;

    move-result-object v1

    new-array v2, v11, [Lokhttp3/TlsVersion;

    aput-object v4, v2, v3

    aput-object v6, v2, v5

    sget-object v4, Lokhttp3/TlsVersion;->TLS_1_1:Lokhttp3/TlsVersion;

    aput-object v4, v2, v7

    sget-object v4, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;

    aput-object v4, v2, v9

    invoke-virtual {v1, v2}, Lz2/ax$OooO00o;->OooO0oo([Lokhttp3/TlsVersion;)Lz2/ax$OooO00o;

    move-result-object v1

    invoke-virtual {v1, v5}, Lz2/ax$OooO00o;->OooO0o(Z)Lz2/ax$OooO00o;

    move-result-object v1

    invoke-virtual {v1}, Lz2/ax$OooO00o;->OooO0OO()Lz2/ax;

    move-result-object v1

    sput-object v1, Lz2/ax;->OooO0oo:Lz2/ax;

    new-instance v1, Lz2/ax$OooO00o;

    invoke-direct {v1, v5}, Lz2/ax$OooO00o;-><init>(Z)V

    invoke-virtual {v1, v0}, Lz2/ax$OooO00o;->OooO0o0([Lz2/xw;)Lz2/ax$OooO00o;

    move-result-object v0

    new-array v1, v5, [Lokhttp3/TlsVersion;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lz2/ax$OooO00o;->OooO0oo([Lokhttp3/TlsVersion;)Lz2/ax$OooO00o;

    move-result-object v0

    invoke-virtual {v0, v5}, Lz2/ax$OooO00o;->OooO0o(Z)Lz2/ax$OooO00o;

    move-result-object v0

    invoke-virtual {v0}, Lz2/ax$OooO00o;->OooO0OO()Lz2/ax;

    move-result-object v0

    sput-object v0, Lz2/ax;->OooO:Lz2/ax;

    new-instance v0, Lz2/ax$OooO00o;

    invoke-direct {v0, v3}, Lz2/ax$OooO00o;-><init>(Z)V

    invoke-virtual {v0}, Lz2/ax$OooO00o;->OooO0OO()Lz2/ax;

    move-result-object v0

    sput-object v0, Lz2/ax;->OooOO0:Lz2/ax;

    return-void
.end method

.method public constructor <init>(Lz2/ax$OooO00o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lz2/ax$OooO00o;->OooO00o:Z

    iput-boolean v0, p0, Lz2/ax;->OooO00o:Z

    iget-object v0, p1, Lz2/ax$OooO00o;->OooO0O0:[Ljava/lang/String;

    iput-object v0, p0, Lz2/ax;->OooO0OO:[Ljava/lang/String;

    iget-object v0, p1, Lz2/ax$OooO00o;->OooO0OO:[Ljava/lang/String;

    iput-object v0, p0, Lz2/ax;->OooO0Oo:[Ljava/lang/String;

    iget-boolean p1, p1, Lz2/ax$OooO00o;->OooO0Oo:Z

    iput-boolean p1, p0, Lz2/ax;->OooO0O0:Z

    return-void
.end method

.method private OooO0o0(Ljavax/net/ssl/SSLSocket;Z)Lz2/ax;
    .locals 4

    iget-object v0, p0, Lz2/ax;->OooO0OO:[Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lz2/xw;->OooO0O0:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lz2/ax;->OooO0OO:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lz2/zx;->OooOoOO(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lz2/ax;->OooO0Oo:[Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lz2/zx;->OooOOo0:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lz2/ax;->OooO0Oo:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lz2/zx;->OooOoOO(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lz2/xw;->OooO0O0:Ljava/util/Comparator;

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-static {v2, p1, v3}, Lz2/zx;->OooOo(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz p2, :cond_2

    const/4 p2, -0x1

    if-eq v2, p2, :cond_2

    aget-object p1, p1, v2

    invoke-static {v0, p1}, Lz2/zx;->OooOO0([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance p1, Lz2/ax$OooO00o;

    invoke-direct {p1, p0}, Lz2/ax$OooO00o;-><init>(Lz2/ax;)V

    invoke-virtual {p1, v0}, Lz2/ax$OooO00o;->OooO0Oo([Ljava/lang/String;)Lz2/ax$OooO00o;

    move-result-object p1

    invoke-virtual {p1, v1}, Lz2/ax$OooO00o;->OooO0oO([Ljava/lang/String;)Lz2/ax$OooO00o;

    move-result-object p1

    invoke-virtual {p1}, Lz2/ax$OooO00o;->OooO0OO()Lz2/ax;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public OooO00o(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lz2/ax;->OooO0o0(Ljavax/net/ssl/SSLSocket;Z)Lz2/ax;

    move-result-object p2

    iget-object v0, p2, Lz2/ax;->OooO0Oo:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_0
    iget-object p2, p2, Lz2/ax;->OooO0OO:[Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public OooO0O0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz2/xw;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/ax;->OooO0OO:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lz2/xw;->OooO0O0([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public OooO0OO(Ljavax/net/ssl/SSLSocket;)Z
    .locals 4

    iget-boolean v0, p0, Lz2/ax;->OooO00o:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lz2/ax;->OooO0Oo:[Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v2, Lz2/zx;->OooOOo0:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lz2/zx;->OooOoo(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lz2/ax;->OooO0OO:[Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v2, Lz2/xw;->OooO0O0:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v0, p1}, Lz2/zx;->OooOoo(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public OooO0Oo()Z
    .locals 1

    iget-boolean v0, p0, Lz2/ax;->OooO00o:Z

    return v0
.end method

.method public OooO0o()Z
    .locals 1

    iget-boolean v0, p0, Lz2/ax;->OooO0O0:Z

    return v0
.end method

.method public OooO0oO()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/TlsVersion;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/ax;->OooO0Oo:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lokhttp3/TlsVersion;->forJavaNames([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lz2/ax;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lz2/ax;

    iget-boolean v2, p0, Lz2/ax;->OooO00o:Z

    iget-boolean v3, p1, Lz2/ax;->OooO00o:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    if-eqz v2, :cond_5

    iget-object v2, p0, Lz2/ax;->OooO0OO:[Ljava/lang/String;

    iget-object v3, p1, Lz2/ax;->OooO0OO:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lz2/ax;->OooO0Oo:[Ljava/lang/String;

    iget-object v3, p1, Lz2/ax;->OooO0Oo:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-boolean v2, p0, Lz2/ax;->OooO0O0:Z

    iget-boolean p1, p1, Lz2/ax;->OooO0O0:Z

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lz2/ax;->OooO00o:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20f

    iget-object v1, p0, Lz2/ax;->OooO0OO:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lz2/ax;->OooO0Oo:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lz2/ax;->OooO0O0:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lz2/ax;->OooO00o:Z

    if-nez v0, :cond_0

    const-string v0, "ConnectionSpec()"

    return-object v0

    :cond_0
    iget-object v0, p0, Lz2/ax;->OooO0OO:[Ljava/lang/String;

    const-string v1, "[all enabled]"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lz2/ax;->OooO0O0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lz2/ax;->OooO0Oo:[Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lz2/ax;->OooO0oO()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tlsVersions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", supportsTlsExtensions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lz2/ax;->OooO0O0:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
