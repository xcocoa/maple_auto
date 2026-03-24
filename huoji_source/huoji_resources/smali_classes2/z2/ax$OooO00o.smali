.class public final Lz2/ax$OooO00o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation


# instance fields
.field public OooO00o:Z

.field public OooO0O0:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public OooO0OO:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public OooO0Oo:Z


# direct methods
.method public constructor <init>(Lz2/ax;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lz2/ax;->OooO00o:Z

    iput-boolean v0, p0, Lz2/ax$OooO00o;->OooO00o:Z

    iget-object v0, p1, Lz2/ax;->OooO0OO:[Ljava/lang/String;

    iput-object v0, p0, Lz2/ax$OooO00o;->OooO0O0:[Ljava/lang/String;

    iget-object v0, p1, Lz2/ax;->OooO0Oo:[Ljava/lang/String;

    iput-object v0, p0, Lz2/ax$OooO00o;->OooO0OO:[Ljava/lang/String;

    iget-boolean p1, p1, Lz2/ax;->OooO0O0:Z

    iput-boolean p1, p0, Lz2/ax$OooO00o;->OooO0Oo:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lz2/ax$OooO00o;->OooO00o:Z

    return-void
.end method


# virtual methods
.method public OooO00o()Lz2/ax$OooO00o;
    .locals 2

    iget-boolean v0, p0, Lz2/ax$OooO00o;->OooO00o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/ax$OooO00o;->OooO0O0:[Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooO0O0()Lz2/ax$OooO00o;
    .locals 2

    iget-boolean v0, p0, Lz2/ax$OooO00o;->OooO00o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/ax$OooO00o;->OooO0OO:[Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooO0OO()Lz2/ax;
    .locals 1

    new-instance v0, Lz2/ax;

    invoke-direct {v0, p0}, Lz2/ax;-><init>(Lz2/ax$OooO00o;)V

    return-object v0
.end method

.method public varargs OooO0Oo([Ljava/lang/String;)Lz2/ax$OooO00o;
    .locals 1

    iget-boolean v0, p0, Lz2/ax$OooO00o;->OooO00o:Z

    if-eqz v0, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lz2/ax$OooO00o;->OooO0O0:[Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one cipher suite is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooO0o(Z)Lz2/ax$OooO00o;
    .locals 1

    iget-boolean v0, p0, Lz2/ax$OooO00o;->OooO00o:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lz2/ax$OooO00o;->OooO0Oo:Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS extensions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs OooO0o0([Lz2/xw;)Lz2/ax$OooO00o;
    .locals 3

    iget-boolean v0, p0, Lz2/ax$OooO00o;->OooO00o:Z

    if-eqz v0, :cond_1

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    iget-object v2, v2, Lz2/xw;->OooO00o:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lz2/ax$OooO00o;->OooO0Oo([Ljava/lang/String;)Lz2/ax$OooO00o;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs OooO0oO([Ljava/lang/String;)Lz2/ax$OooO00o;
    .locals 1

    iget-boolean v0, p0, Lz2/ax$OooO00o;->OooO00o:Z

    if-eqz v0, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lz2/ax$OooO00o;->OooO0OO:[Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one TLS version is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs OooO0oo([Lokhttp3/TlsVersion;)Lz2/ax$OooO00o;
    .locals 3

    iget-boolean v0, p0, Lz2/ax$OooO00o;->OooO00o:Z

    if-eqz v0, :cond_1

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    iget-object v2, v2, Lokhttp3/TlsVersion;->javaName:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lz2/ax$OooO00o;->OooO0oO([Ljava/lang/String;)Lz2/ax$OooO00o;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
