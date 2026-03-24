.class public Lz2/j3;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO:Ljava/lang/String; = null

.field public static OooO00o:[Ljava/lang/String; = null

.field public static OooO0O0:Ljava/lang/String; = ""

.field public static OooO0OO:[Ljava/lang/String; = null

.field public static OooO0Oo:[Ljava/lang/String; = null

.field private static OooO0o:Ljava/lang/String; = null

.field private static final OooO0o0:Ljava/lang/String; = "http"

.field private static OooO0oO:J = 0x0L

.field private static OooO0oo:J = 0x0L

.field private static OooOO0:Ljava/lang/String; = null

.field private static OooOO0O:Ljava/lang/String; = null

.field private static OooOO0o:Ljava/lang/String; = null

.field public static OooOOO:Z = false

.field private static OooOOO0:I = 0x0

.field private static OooOOOO:Ljava/lang/String; = null

.field public static OooOOOo:Ljava/lang/String; = null

.field private static OooOOo0:Ljava/lang/String; = "http://auth2.mobileanjian.com/"


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-string v0, "a6cd931d"

    const-string v1, "1dcf44bf"

    const-string v2, "650e59d7"

    const-string v3, "3460d8da"

    const-string v4, "21fbt87f"

    const-string v5, "317e5900"

    const-string v6, "ed1139f0"

    const-string v7, "c99f6f94"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/j3;->OooO00o:[Ljava/lang/String;

    const-string v1, "c6bd901f"

    const-string v2, "0ddf44be"

    const-string v3, "950e5927"

    const-string v4, "6460d8df"

    const-string v5, "11fb887f"

    const-string v6, "117e4900"

    const-string v7, "bd113950"

    const-string v8, "a99f6f97"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/j3;->OooO0OO:[Ljava/lang/String;

    const-string v1, "a6cd931d"

    const-string v2, "1dcf44bf"

    const-string v3, "650e59d7"

    const-string v4, "3460d8da"

    const-string v5, "21fbt87f"

    const-string v6, "317e5900"

    const-string v7, "ed1139f0"

    const-string v8, "c99f6f94"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/j3;->OooO0Oo:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static OooO00o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/j3;->OooOOOo:Ljava/lang/String;

    return-object v0
.end method

.method public static OooO0O0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/j3;->OooOOo0:Ljava/lang/String;

    return-object v0
.end method

.method public static OooO0OO()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/j3;->OooOOOO:Ljava/lang/String;

    return-object v0
.end method

.method public static OooO0Oo()I
    .locals 1

    sget v0, Lz2/j3;->OooOOO0:I

    return v0
.end method

.method public static OooO0o()J
    .locals 2

    sget-wide v0, Lz2/j3;->OooO0oo:J

    return-wide v0
.end method

.method public static OooO0o0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/j3;->OooO:Ljava/lang/String;

    return-object v0
.end method

.method public static OooO0oO(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lz2/j3;->OooO0o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0oo(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lz2/j3;->OooO0o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static OooOO0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/j3;->OooOO0O:Ljava/lang/String;

    return-object v0
.end method

.method public static OooOO0O()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/j3;->OooOO0o:Ljava/lang/String;

    return-object v0
.end method

.method public static OooOO0o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/j3;->OooOO0:Ljava/lang/String;

    return-object v0
.end method

.method public static OooOOO(ZLjava/lang/String;JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lz2/j3;->OooO0o:Ljava/lang/String;

    sput-boolean p0, Lz2/j3;->OooOOO:Z

    sput-wide p2, Lz2/j3;->OooO0oo:J

    sput-wide p4, Lz2/j3;->OooO0oO:J

    sput-object p6, Lz2/j3;->OooO:Ljava/lang/String;

    sput p7, Lz2/j3;->OooOOO0:I

    sput-object p8, Lz2/j3;->OooOO0:Ljava/lang/String;

    sput-object p9, Lz2/j3;->OooOO0O:Ljava/lang/String;

    sput-object p10, Lz2/j3;->OooOO0o:Ljava/lang/String;

    sput-object p11, Lz2/j3;->OooOOOO:Ljava/lang/String;

    return-void
.end method

.method public static OooOOO0()J
    .locals 2

    sget-wide v0, Lz2/j3;->OooO0oO:J

    return-wide v0
.end method

.method public static OooOOOO()Z
    .locals 1

    sget-boolean v0, Lz2/j3;->OooOOO:Z

    return v0
.end method

.method public static OooOOOo(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lz2/j3;->OooOOOo:Ljava/lang/String;

    return-void
.end method

.method public static OooOOo(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    sput-object p0, Lz2/j3;->OooO0o:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static OooOOo0(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lz2/j3;->OooOOo0:Ljava/lang/String;

    return-void
.end method
