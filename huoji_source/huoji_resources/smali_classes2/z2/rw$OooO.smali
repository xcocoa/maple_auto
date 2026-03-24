.class public final Lz2/rw$OooO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/rw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO"
.end annotation


# static fields
.field private static final OooOO0O:Ljava/lang/String;

.field private static final OooOO0o:Ljava/lang/String;


# instance fields
.field private final OooO:J

.field private final OooO00o:Ljava/lang/String;

.field private final OooO0O0:Lz2/jx;

.field private final OooO0OO:Ljava/lang/String;

.field private final OooO0Oo:Lokhttp3/Protocol;

.field private final OooO0o:Ljava/lang/String;

.field private final OooO0o0:I

.field private final OooO0oO:Lz2/jx;

.field private final OooO0oo:Lz2/ix;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final OooOO0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lz2/uz;->OooOO0O()Lz2/uz;

    move-result-object v1

    invoke-virtual {v1}, Lz2/uz;->OooOO0o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/rw$OooO;->OooOO0O:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lz2/uz;->OooOO0O()Lz2/uz;

    move-result-object v1

    invoke-virtual {v1}, Lz2/uz;->OooOO0o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/rw$OooO;->OooOO0o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lz2/e10;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Lz2/w00;->OooO0Oo(Lz2/e10;)Lz2/l00;

    move-result-object v0

    invoke-interface {v0}, Lz2/l00;->Oooo0OO()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lz2/rw$OooO;->OooO00o:Ljava/lang/String;

    invoke-interface {v0}, Lz2/l00;->Oooo0OO()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lz2/rw$OooO;->OooO0OO:Ljava/lang/String;

    new-instance v1, Lz2/jx$OooO00o;

    invoke-direct {v1}, Lz2/jx$OooO00o;-><init>()V

    invoke-static {v0}, Lz2/rw;->o00ooo(Lz2/l00;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-interface {v0}, Lz2/l00;->Oooo0OO()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lz2/jx$OooO00o;->OooO0o0(Ljava/lang/String;)Lz2/jx$OooO00o;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lz2/jx$OooO00o;->OooO0oo()Lz2/jx;

    move-result-object v1

    iput-object v1, p0, Lz2/rw$OooO;->OooO0O0:Lz2/jx;

    invoke-interface {v0}, Lz2/l00;->Oooo0OO()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lz2/az;->OooO0O0(Ljava/lang/String;)Lz2/az;

    move-result-object v1

    iget-object v2, v1, Lz2/az;->OooO00o:Lokhttp3/Protocol;

    iput-object v2, p0, Lz2/rw$OooO;->OooO0Oo:Lokhttp3/Protocol;

    iget v2, v1, Lz2/az;->OooO0O0:I

    iput v2, p0, Lz2/rw$OooO;->OooO0o0:I

    iget-object v1, v1, Lz2/az;->OooO0OO:Ljava/lang/String;

    iput-object v1, p0, Lz2/rw$OooO;->OooO0o:Ljava/lang/String;

    new-instance v1, Lz2/jx$OooO00o;

    invoke-direct {v1}, Lz2/jx$OooO00o;-><init>()V

    invoke-static {v0}, Lz2/rw;->o00ooo(Lz2/l00;)I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-interface {v0}, Lz2/l00;->Oooo0OO()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lz2/jx$OooO00o;->OooO0o0(Ljava/lang/String;)Lz2/jx$OooO00o;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sget-object v2, Lz2/rw$OooO;->OooOO0O:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lz2/jx$OooO00o;->OooO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lz2/rw$OooO;->OooOO0o:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lz2/jx$OooO00o;->OooO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2}, Lz2/jx$OooO00o;->OooOO0(Ljava/lang/String;)Lz2/jx$OooO00o;

    invoke-virtual {v1, v4}, Lz2/jx$OooO00o;->OooOO0(Ljava/lang/String;)Lz2/jx$OooO00o;

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_2

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_2

    :cond_2
    move-wide v2, v6

    :goto_2
    iput-wide v2, p0, Lz2/rw$OooO;->OooO:J

    if-eqz v5, :cond_3

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    :cond_3
    iput-wide v6, p0, Lz2/rw$OooO;->OooOO0:J

    invoke-virtual {v1}, Lz2/jx$OooO00o;->OooO0oo()Lz2/jx;

    move-result-object v1

    iput-object v1, p0, Lz2/rw$OooO;->OooO0oO:Lz2/jx;

    invoke-direct {p0}, Lz2/rw$OooO;->OooO00o()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Lz2/l00;->Oooo0OO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_5

    invoke-interface {v0}, Lz2/l00;->Oooo0OO()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lz2/xw;->OooO00o(Ljava/lang/String;)Lz2/xw;

    move-result-object v1

    invoke-direct {p0, v0}, Lz2/rw$OooO;->OooO0OO(Lz2/l00;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0}, Lz2/rw$OooO;->OooO0OO(Lz2/l00;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0}, Lz2/l00;->OooOOO()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v0}, Lz2/l00;->Oooo0OO()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v0

    goto :goto_3

    :cond_4
    sget-object v0, Lokhttp3/TlsVersion;->SSL_3_0:Lokhttp3/TlsVersion;

    :goto_3
    invoke-static {v0, v1, v2, v3}, Lz2/ix;->OooO0OO(Lokhttp3/TlsVersion;Lz2/xw;Ljava/util/List;Ljava/util/List;)Lz2/ix;

    move-result-object v0

    iput-object v0, p0, Lz2/rw$OooO;->OooO0oo:Lz2/ix;

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \"\" but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lz2/rw$OooO;->OooO0oo:Lz2/ix;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    invoke-interface {p1}, Lz2/e10;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lz2/e10;->close()V

    throw v0
.end method

.method public constructor <init>(Lz2/sx;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lz2/sx;->o0OOO0o()Lz2/qx;

    move-result-object v0

    invoke-virtual {v0}, Lz2/qx;->OooOO0O()Lz2/kx;

    move-result-object v0

    invoke-virtual {v0}, Lz2/kx;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lz2/rw$OooO;->OooO00o:Ljava/lang/String;

    invoke-static {p1}, Lz2/uy;->OooOo0(Lz2/sx;)Lz2/jx;

    move-result-object v0

    iput-object v0, p0, Lz2/rw$OooO;->OooO0O0:Lz2/jx;

    invoke-virtual {p1}, Lz2/sx;->o0OOO0o()Lz2/qx;

    move-result-object v0

    invoke-virtual {v0}, Lz2/qx;->OooO0oO()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lz2/rw$OooO;->OooO0OO:Ljava/lang/String;

    invoke-virtual {p1}, Lz2/sx;->o0ooOOo()Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lz2/rw$OooO;->OooO0Oo:Lokhttp3/Protocol;

    invoke-virtual {p1}, Lz2/sx;->OoooooO()I

    move-result v0

    iput v0, p0, Lz2/rw$OooO;->OooO0o0:I

    invoke-virtual {p1}, Lz2/sx;->o00ooo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lz2/rw$OooO;->OooO0o:Ljava/lang/String;

    invoke-virtual {p1}, Lz2/sx;->o00Oo0()Lz2/jx;

    move-result-object v0

    iput-object v0, p0, Lz2/rw$OooO;->OooO0oO:Lz2/jx;

    invoke-virtual {p1}, Lz2/sx;->Ooooooo()Lz2/ix;

    move-result-object v0

    iput-object v0, p0, Lz2/rw$OooO;->OooO0oo:Lz2/ix;

    invoke-virtual {p1}, Lz2/sx;->o0Oo0oo()J

    move-result-wide v0

    iput-wide v0, p0, Lz2/rw$OooO;->OooO:J

    invoke-virtual {p1}, Lz2/sx;->o0ooOoO()J

    move-result-wide v0

    iput-wide v0, p0, Lz2/rw$OooO;->OooOO0:J

    return-void
.end method

.method private OooO00o()Z
    .locals 2

    iget-object v0, p0, Lz2/rw$OooO;->OooO00o:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private OooO0OO(Lz2/l00;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/l00;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lz2/rw;->o00ooo(Lz2/l00;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-interface {p1}, Lz2/l00;->Oooo0OO()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lz2/j00;

    invoke-direct {v5}, Lz2/j00;-><init>()V

    invoke-static {v4}, Lokio/ByteString;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v5, v4}, Lz2/j00;->o00000o0(Lokio/ByteString;)Lz2/j00;

    invoke-virtual {v5}, Lz2/j00;->OooooO0()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private OooO0o0(Lz2/k00;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/k00;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lz2/k00;->OoooOoO(J)Lz2/k00;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v3

    invoke-interface {v3, v1}, Lz2/k00;->OooOOOO(I)Lz2/k00;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public OooO0O0(Lz2/qx;Lz2/sx;)Z
    .locals 2

    iget-object v0, p0, Lz2/rw$OooO;->OooO00o:Ljava/lang/String;

    invoke-virtual {p1}, Lz2/qx;->OooOO0O()Lz2/kx;

    move-result-object v1

    invoke-virtual {v1}, Lz2/kx;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/rw$OooO;->OooO0OO:Ljava/lang/String;

    invoke-virtual {p1}, Lz2/qx;->OooO0oO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/rw$OooO;->OooO0O0:Lz2/jx;

    invoke-static {p2, v0, p1}, Lz2/uy;->OooOo0O(Lz2/sx;Lz2/jx;Lz2/qx;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public OooO0Oo(Lz2/fy$OooOO0;)Lz2/sx;
    .locals 5

    iget-object v0, p0, Lz2/rw$OooO;->OooO0oO:Lz2/jx;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lz2/jx;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz2/rw$OooO;->OooO0oO:Lz2/jx;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lz2/jx;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lz2/qx$OooO00o;

    invoke-direct {v2}, Lz2/qx$OooO00o;-><init>()V

    iget-object v3, p0, Lz2/rw$OooO;->OooO00o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lz2/qx$OooO00o;->OooOOo0(Ljava/lang/String;)Lz2/qx$OooO00o;

    move-result-object v2

    iget-object v3, p0, Lz2/rw$OooO;->OooO0OO:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lz2/qx$OooO00o;->OooOO0(Ljava/lang/String;Lz2/rx;)Lz2/qx$OooO00o;

    move-result-object v2

    iget-object v3, p0, Lz2/rw$OooO;->OooO0O0:Lz2/jx;

    invoke-virtual {v2, v3}, Lz2/qx$OooO00o;->OooO(Lz2/jx;)Lz2/qx$OooO00o;

    move-result-object v2

    invoke-virtual {v2}, Lz2/qx$OooO00o;->OooO0O0()Lz2/qx;

    move-result-object v2

    new-instance v3, Lz2/sx$OooO00o;

    invoke-direct {v3}, Lz2/sx$OooO00o;-><init>()V

    invoke-virtual {v3, v2}, Lz2/sx$OooO00o;->OooOOo0(Lz2/qx;)Lz2/sx$OooO00o;

    move-result-object v2

    iget-object v3, p0, Lz2/rw$OooO;->OooO0Oo:Lokhttp3/Protocol;

    invoke-virtual {v2, v3}, Lz2/sx$OooO00o;->OooOOO(Lokhttp3/Protocol;)Lz2/sx$OooO00o;

    move-result-object v2

    iget v3, p0, Lz2/rw$OooO;->OooO0o0:I

    invoke-virtual {v2, v3}, Lz2/sx$OooO00o;->OooO0oO(I)Lz2/sx$OooO00o;

    move-result-object v2

    iget-object v3, p0, Lz2/rw$OooO;->OooO0o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lz2/sx$OooO00o;->OooOO0O(Ljava/lang/String;)Lz2/sx$OooO00o;

    move-result-object v2

    iget-object v3, p0, Lz2/rw$OooO;->OooO0oO:Lz2/jx;

    invoke-virtual {v2, v3}, Lz2/sx$OooO00o;->OooOO0(Lz2/jx;)Lz2/sx$OooO00o;

    move-result-object v2

    new-instance v3, Lz2/rw$OooO0o;

    invoke-direct {v3, p1, v0, v1}, Lz2/rw$OooO0o;-><init>(Lz2/fy$OooOO0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lz2/sx$OooO00o;->OooO0O0(Lz2/tx;)Lz2/sx$OooO00o;

    move-result-object p1

    iget-object v0, p0, Lz2/rw$OooO;->OooO0oo:Lz2/ix;

    invoke-virtual {p1, v0}, Lz2/sx$OooO00o;->OooO0oo(Lz2/ix;)Lz2/sx$OooO00o;

    move-result-object p1

    iget-wide v0, p0, Lz2/rw$OooO;->OooO:J

    invoke-virtual {p1, v0, v1}, Lz2/sx$OooO00o;->OooOOo(J)Lz2/sx$OooO00o;

    move-result-object p1

    iget-wide v0, p0, Lz2/rw$OooO;->OooOO0:J

    invoke-virtual {p1, v0, v1}, Lz2/sx$OooO00o;->OooOOOO(J)Lz2/sx$OooO00o;

    move-result-object p1

    invoke-virtual {p1}, Lz2/sx$OooO00o;->OooO0OO()Lz2/sx;

    move-result-object p1

    return-object p1
.end method

.method public OooO0o(Lz2/fy$OooO0o;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lz2/fy$OooO0o;->OooO0o0(I)Lz2/d10;

    move-result-object p1

    invoke-static {p1}, Lz2/w00;->OooO0OO(Lz2/d10;)Lz2/k00;

    move-result-object p1

    iget-object v1, p0, Lz2/rw$OooO;->OooO00o:Ljava/lang/String;

    invoke-interface {p1, v1}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    iget-object v1, p0, Lz2/rw$OooO;->OooO0OO:Ljava/lang/String;

    invoke-interface {p1, v1}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v1

    invoke-interface {v1, v2}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    iget-object v1, p0, Lz2/rw$OooO;->OooO0O0:Lz2/jx;

    invoke-virtual {v1}, Lz2/jx;->OooOO0o()I

    move-result v1

    int-to-long v3, v1

    invoke-interface {p1, v3, v4}, Lz2/k00;->OoooOoO(J)Lz2/k00;

    move-result-object v1

    invoke-interface {v1, v2}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    iget-object v1, p0, Lz2/rw$OooO;->OooO0O0:Lz2/jx;

    invoke-virtual {v1}, Lz2/jx;->OooOO0o()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    const-string v4, ": "

    if-ge v3, v1, :cond_0

    iget-object v5, p0, Lz2/rw$OooO;->OooO0O0:Lz2/jx;

    invoke-virtual {v5, v3}, Lz2/jx;->OooO0oO(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v5

    invoke-interface {v5, v4}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v4

    iget-object v5, p0, Lz2/rw$OooO;->OooO0O0:Lz2/jx;

    invoke-virtual {v5, v3}, Lz2/jx;->OooOOO(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v4

    invoke-interface {v4, v2}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lz2/az;

    iget-object v3, p0, Lz2/rw$OooO;->OooO0Oo:Lokhttp3/Protocol;

    iget v5, p0, Lz2/rw$OooO;->OooO0o0:I

    iget-object v6, p0, Lz2/rw$OooO;->OooO0o:Ljava/lang/String;

    invoke-direct {v1, v3, v5, v6}, Lz2/az;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V

    invoke-virtual {v1}, Lz2/az;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v1

    invoke-interface {v1, v2}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    iget-object v1, p0, Lz2/rw$OooO;->OooO0oO:Lz2/jx;

    invoke-virtual {v1}, Lz2/jx;->OooOO0o()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    int-to-long v5, v1

    invoke-interface {p1, v5, v6}, Lz2/k00;->OoooOoO(J)Lz2/k00;

    move-result-object v1

    invoke-interface {v1, v2}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    iget-object v1, p0, Lz2/rw$OooO;->OooO0oO:Lz2/jx;

    invoke-virtual {v1}, Lz2/jx;->OooOO0o()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lz2/rw$OooO;->OooO0oO:Lz2/jx;

    invoke-virtual {v3, v0}, Lz2/jx;->OooO0oO(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v3

    invoke-interface {v3, v4}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v3

    iget-object v5, p0, Lz2/rw$OooO;->OooO0oO:Lz2/jx;

    invoke-virtual {v5, v0}, Lz2/jx;->OooOOO(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v3

    invoke-interface {v3, v2}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lz2/rw$OooO;->OooOO0O:Ljava/lang/String;

    invoke-interface {p1, v0}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v0

    invoke-interface {v0, v4}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v0

    iget-wide v5, p0, Lz2/rw$OooO;->OooO:J

    invoke-interface {v0, v5, v6}, Lz2/k00;->OoooOoO(J)Lz2/k00;

    move-result-object v0

    invoke-interface {v0, v2}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    sget-object v0, Lz2/rw$OooO;->OooOO0o:Ljava/lang/String;

    invoke-interface {p1, v0}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v0

    invoke-interface {v0, v4}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v0

    iget-wide v3, p0, Lz2/rw$OooO;->OooOO0:J

    invoke-interface {v0, v3, v4}, Lz2/k00;->OoooOoO(J)Lz2/k00;

    move-result-object v0

    invoke-interface {v0, v2}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    invoke-direct {p0}, Lz2/rw$OooO;->OooO00o()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v2}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    iget-object v0, p0, Lz2/rw$OooO;->OooO0oo:Lz2/ix;

    invoke-virtual {v0}, Lz2/ix;->OooO00o()Lz2/xw;

    move-result-object v0

    invoke-virtual {v0}, Lz2/xw;->OooO0Oo()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v0

    invoke-interface {v0, v2}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    iget-object v0, p0, Lz2/rw$OooO;->OooO0oo:Lz2/ix;

    invoke-virtual {v0}, Lz2/ix;->OooO0o()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lz2/rw$OooO;->OooO0o0(Lz2/k00;Ljava/util/List;)V

    iget-object v0, p0, Lz2/rw$OooO;->OooO0oo:Lz2/ix;

    invoke-virtual {v0}, Lz2/ix;->OooO0Oo()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lz2/rw$OooO;->OooO0o0(Lz2/k00;Ljava/util/List;)V

    iget-object v0, p0, Lz2/rw$OooO;->OooO0oo:Lz2/ix;

    invoke-virtual {v0}, Lz2/ix;->OooO0oo()Lokhttp3/TlsVersion;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/TlsVersion;->javaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v0

    invoke-interface {v0, v2}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    :cond_2
    invoke-interface {p1}, Lz2/d10;->close()V

    return-void
.end method
