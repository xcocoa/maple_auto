.class public final Lz2/u00;
.super Lz2/p00;
.source ""


# instance fields
.field private final OoooOoO:Ljava/security/MessageDigest;

.field private final OoooOoo:Ljavax/crypto/Mac;


# direct methods
.method private constructor <init>(Lz2/e10;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/p00;-><init>(Lz2/e10;)V

    :try_start_0
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lz2/u00;->OoooOoO:Ljava/security/MessageDigest;

    const/4 p1, 0x0

    iput-object p1, p0, Lz2/u00;->OoooOoo:Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private constructor <init>(Lz2/e10;Lokio/ByteString;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lz2/p00;-><init>(Lz2/e10;)V

    :try_start_0
    invoke-static {p3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    iput-object p1, p0, Lz2/u00;->OoooOoo:Ljavax/crypto/Mac;

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-direct {v0, p2, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lz2/u00;->OoooOoO:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public static OooooOo(Lz2/e10;Lokio/ByteString;)Lz2/u00;
    .locals 2

    new-instance v0, Lz2/u00;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p0, p1, v1}, Lz2/u00;-><init>(Lz2/e10;Lokio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static Oooooo(Lz2/e10;)Lz2/u00;
    .locals 2

    new-instance v0, Lz2/u00;

    const-string v1, "MD5"

    invoke-direct {v0, p0, v1}, Lz2/u00;-><init>(Lz2/e10;Ljava/lang/String;)V

    return-object v0
.end method

.method public static Oooooo0(Lz2/e10;Lokio/ByteString;)Lz2/u00;
    .locals 2

    new-instance v0, Lz2/u00;

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p0, p1, v1}, Lz2/u00;-><init>(Lz2/e10;Lokio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static OoooooO(Lz2/e10;)Lz2/u00;
    .locals 2

    new-instance v0, Lz2/u00;

    const-string v1, "SHA-1"

    invoke-direct {v0, p0, v1}, Lz2/u00;-><init>(Lz2/e10;Ljava/lang/String;)V

    return-object v0
.end method

.method public static Ooooooo(Lz2/e10;)Lz2/u00;
    .locals 2

    new-instance v0, Lz2/u00;

    const-string v1, "SHA-256"

    invoke-direct {v0, p0, v1}, Lz2/u00;-><init>(Lz2/e10;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final OooOO0()Lokio/ByteString;
    .locals 1

    iget-object v0, p0, Lz2/u00;->OoooOoO:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/u00;->OoooOoo:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public read(Lz2/j00;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lz2/p00;->read(Lz2/j00;J)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-eqz v2, :cond_2

    iget-wide v0, p1, Lz2/j00;->OoooOoo:J

    sub-long v2, v0, p2

    iget-object v4, p1, Lz2/j00;->OoooOoO:Lz2/b10;

    :goto_0
    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    iget-object v4, v4, Lz2/b10;->OooO0oO:Lz2/b10;

    iget v5, v4, Lz2/b10;->OooO0OO:I

    iget v6, v4, Lz2/b10;->OooO0O0:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    sub-long/2addr v0, v5

    goto :goto_0

    :cond_0
    :goto_1
    iget-wide v5, p1, Lz2/j00;->OoooOoo:J

    cmp-long v7, v0, v5

    if-gez v7, :cond_2

    iget v5, v4, Lz2/b10;->OooO0O0:I

    int-to-long v5, v5

    add-long/2addr v5, v2

    sub-long/2addr v5, v0

    long-to-int v2, v5

    iget-object v3, p0, Lz2/u00;->OoooOoO:Ljava/security/MessageDigest;

    if-eqz v3, :cond_1

    iget-object v5, v4, Lz2/b10;->OooO00o:[B

    iget v6, v4, Lz2/b10;->OooO0OO:I

    sub-int/2addr v6, v2

    invoke-virtual {v3, v5, v2, v6}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lz2/u00;->OoooOoo:Ljavax/crypto/Mac;

    iget-object v5, v4, Lz2/b10;->OooO00o:[B

    iget v6, v4, Lz2/b10;->OooO0OO:I

    sub-int/2addr v6, v2

    invoke-virtual {v3, v5, v2, v6}, Ljavax/crypto/Mac;->update([BII)V

    :goto_2
    iget v2, v4, Lz2/b10;->OooO0OO:I

    iget v3, v4, Lz2/b10;->OooO0O0:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    iget-object v4, v4, Lz2/b10;->OooO0o:Lz2/b10;

    move-wide v0, v2

    goto :goto_1

    :cond_2
    return-wide p2
.end method
