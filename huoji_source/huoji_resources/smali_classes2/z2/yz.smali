.class public abstract Lz2/yz;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO0O0(Ljavax/net/ssl/X509TrustManager;)Lz2/yz;
    .locals 1

    invoke-static {}, Lz2/uz;->OooOO0O()Lz2/uz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/uz;->OooO0Oo(Ljavax/net/ssl/X509TrustManager;)Lz2/yz;

    move-result-object p0

    return-object p0
.end method

.method public static varargs OooO0OO([Ljava/security/cert/X509Certificate;)Lz2/yz;
    .locals 2

    new-instance v0, Lz2/wz;

    new-instance v1, Lz2/xz;

    invoke-direct {v1, p0}, Lz2/xz;-><init>([Ljava/security/cert/X509Certificate;)V

    invoke-direct {v0, v1}, Lz2/wz;-><init>(Lz2/b00;)V

    return-object v0
.end method


# virtual methods
.method public abstract OooO00o(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method
