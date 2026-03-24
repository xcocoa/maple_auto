.class public Lz2/aj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/aj$OooO0O0;,
        Lz2/aj$OooO0o;,
        Lz2/aj$OooO0OO;
    }
.end annotation


# static fields
.field private static final OooO:Ljava/lang/String; = "z2.aj"

.field private static OooOO0:Lz2/aj;


# instance fields
.field private final OooO00o:Ljava/lang/String;

.field private final OooO0O0:Ljava/lang/String;

.field private OooO0OO:Landroid/content/Context;

.field private OooO0Oo:Ljava/security/KeyPair;

.field private OooO0o:Lz2/aj$OooO0O0;

.field private OooO0o0:Lz2/aj$OooO0OO;

.field private OooO0oO:Ljava/lang/String;

.field private OooO0oo:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "publicKey"

    iput-object v0, p0, Lz2/aj;->OooO00o:Ljava/lang/String;

    const-string v0, "privateKey"

    iput-object v0, p0, Lz2/aj;->OooO0O0:Ljava/lang/String;

    const-string v0, "logcat -v time"

    iput-object v0, p0, Lz2/aj;->OooO0oo:Ljava/lang/String;

    return-void
.end method

.method public static synthetic OooO00o(Lz2/aj;)Ljava/security/KeyPair;
    .locals 0

    iget-object p0, p0, Lz2/aj;->OooO0Oo:Ljava/security/KeyPair;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lz2/aj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz2/aj;->OooO0oo:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic OooO0OO(Lz2/aj;)Lz2/aj$OooO0OO;
    .locals 0

    iget-object p0, p0, Lz2/aj;->OooO0o0:Lz2/aj$OooO0OO;

    return-object p0
.end method

.method public static synthetic OooO0Oo(Lz2/aj;)Lz2/aj$OooO0O0;
    .locals 0

    iget-object p0, p0, Lz2/aj;->OooO0o:Lz2/aj$OooO0O0;

    return-object p0
.end method

.method public static synthetic OooO0o0(Lz2/aj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz2/aj;->OooO0oO:Ljava/lang/String;

    return-object p0
.end method

.method public static OooO0oO()Lz2/aj;
    .locals 2

    sget-object v0, Lz2/aj;->OooOO0:Lz2/aj;

    if-nez v0, :cond_1

    const-class v0, Lz2/aj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/aj;->OooOO0:Lz2/aj;

    if-nez v1, :cond_0

    new-instance v1, Lz2/aj;

    invoke-direct {v1}, Lz2/aj;-><init>()V

    sput-object v1, Lz2/aj;->OooOO0:Lz2/aj;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lz2/aj;->OooOO0:Lz2/aj;

    return-object v0
.end method

.method private OooO0oo()Ljava/security/KeyPair;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    iget-object v0, p0, Lz2/aj;->OooO0OO:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "publicKey"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "RSA"

    const-string v4, "privateKey"

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    const/4 v6, 0x0

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    new-instance v2, Ljava/security/KeyPair;

    invoke-direct {v2, v1, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    iput-object v2, p0, Lz2/aj;->OooO0Oo:Ljava/security/KeyPair;

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Ljava/security/KeyPairGenerator;->initialize(I)V

    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v2

    iput-object v2, p0, Lz2/aj;->OooO0Oo:Ljava/security/KeyPair;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lz2/aj;->OooO0Oo:Ljava/security/KeyPair;

    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lz2/aj;->OooO0Oo:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    iget-object v0, p0, Lz2/aj;->OooO0Oo:Ljava/security/KeyPair;

    return-object v0
.end method


# virtual methods
.method public OooO(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lz2/aj;->OooO0OO:Landroid/content/Context;

    :try_start_0
    invoke-direct {p0}, Lz2/aj;->OooO0oo()Ljava/security/KeyPair;

    move-result-object p1

    iput-object p1, p0, Lz2/aj;->OooO0Oo:Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lz2/aj;->OooO:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public OooO0o()V
    .locals 2

    :try_start_0
    const-string v0, "logcat"

    const-string v1, "-c"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public OooOO0(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lz2/aj;->OooO0oo:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lz2/aj;->OooOO0o()V

    new-instance p1, Lz2/aj$OooO0OO;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lz2/aj$OooO0OO;-><init>(Lz2/aj;Lz2/aj$OooO00o;)V

    iput-object p1, p0, Lz2/aj;->OooO0o0:Lz2/aj$OooO0OO;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".txt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lz2/aj;->OooO0oO:Ljava/lang/String;

    return-void
.end method

.method public OooOO0O(Lz2/aj$OooO0O0;)V
    .locals 0

    iput-object p1, p0, Lz2/aj;->OooO0o:Lz2/aj$OooO0O0;

    return-void
.end method

.method public OooOO0o()V
    .locals 2

    iget-object v0, p0, Lz2/aj;->OooO0o0:Lz2/aj$OooO0OO;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/aj;->OooO0o0:Lz2/aj$OooO0OO;

    invoke-virtual {p0}, Lz2/aj;->OooO0o()V

    iput-object v0, p0, Lz2/aj;->OooO0o:Lz2/aj$OooO0O0;

    :cond_0
    return-void
.end method
