.class public Lz2/oOo0o0oO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0O0O0Oo;


# static fields
.field private static final OooOO0:Ljava/lang/String; = "@#&=*+-_.,:!?()/~\'%;$"


# instance fields
.field private OooO:I

.field private final OooO0OO:Lz2/ooOOO0Oo;

.field private final OooO0Oo:Ljava/net/URL;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooO0o:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final OooO0o0:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooO0oO:Ljava/net/URL;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile OooO0oo:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lz2/ooOOO0Oo;->OooO0O0:Lz2/ooOOO0Oo;

    invoke-direct {p0, p1, v0}, Lz2/oOo0o0oO;-><init>(Ljava/lang/String;Lz2/ooOOO0Oo;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lz2/ooOOO0Oo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/oOo0o0oO;->OooO0Oo:Ljava/net/URL;

    invoke-static {p1}, Lz2/r2;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lz2/oOo0o0oO;->OooO0o0:Ljava/lang/String;

    invoke-static {p2}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/ooOOO0Oo;

    iput-object p1, p0, Lz2/oOo0o0oO;->OooO0OO:Lz2/ooOOO0Oo;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    sget-object v0, Lz2/ooOOO0Oo;->OooO0O0:Lz2/ooOOO0Oo;

    invoke-direct {p0, p1, v0}, Lz2/oOo0o0oO;-><init>(Ljava/net/URL;Lz2/ooOOO0Oo;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lz2/ooOOO0Oo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URL;

    iput-object p1, p0, Lz2/oOo0o0oO;->OooO0Oo:Ljava/net/URL;

    const/4 p1, 0x0

    iput-object p1, p0, Lz2/oOo0o0oO;->OooO0o0:Ljava/lang/String;

    invoke-static {p2}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/ooOOO0Oo;

    iput-object p1, p0, Lz2/oOo0o0oO;->OooO0OO:Lz2/ooOOO0Oo;

    return-void
.end method

.method private OooO0Oo()[B
    .locals 2

    iget-object v0, p0, Lz2/oOo0o0oO;->OooO0oo:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lz2/oOo0o0oO;->OooO0OO()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lz2/o0O0O0Oo;->OooO0O0:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lz2/oOo0o0oO;->OooO0oo:[B

    :cond_0
    iget-object v0, p0, Lz2/oOo0o0oO;->OooO0oo:[B

    return-object v0
.end method

.method private OooO0o()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lz2/oOo0o0oO;->OooO0o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/oOo0o0oO;->OooO0o0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lz2/oOo0o0oO;->OooO0Oo:Ljava/net/URL;

    invoke-static {v0}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "@#&=*+-_.,:!?()/~\'%;$"

    invoke-static {v0, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lz2/oOo0o0oO;->OooO0o:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lz2/oOo0o0oO;->OooO0o:Ljava/lang/String;

    return-object v0
.end method

.method private OooO0oO()Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    iget-object v0, p0, Lz2/oOo0o0oO;->OooO0oO:Ljava/net/URL;

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/URL;

    invoke-direct {p0}, Lz2/oOo0o0oO;->OooO0o()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lz2/oOo0o0oO;->OooO0oO:Ljava/net/URL;

    :cond_0
    iget-object v0, p0, Lz2/oOo0o0oO;->OooO0oO:Ljava/net/URL;

    return-object v0
.end method


# virtual methods
.method public OooO()Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-direct {p0}, Lz2/oOo0o0oO;->OooO0oO()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public OooO00o(Ljava/security/MessageDigest;)V
    .locals 1
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lz2/oOo0o0oO;->OooO0Oo()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public OooO0OO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/oOo0o0oO;->OooO0o0:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/oOo0o0oO;->OooO0Oo:Ljava/net/URL;

    invoke-static {v0}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public OooO0o0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/oOo0o0oO;->OooO0OO:Lz2/ooOOO0Oo;

    invoke-interface {v0}, Lz2/ooOOO0Oo;->OooO00o()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public OooO0oo()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lz2/oOo0o0oO;->OooO0o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lz2/oOo0o0oO;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lz2/oOo0o0oO;

    invoke-virtual {p0}, Lz2/oOo0o0oO;->OooO0OO()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lz2/oOo0o0oO;->OooO0OO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/oOo0o0oO;->OooO0OO:Lz2/ooOOO0Oo;

    iget-object p1, p1, Lz2/oOo0o0oO;->OooO0OO:Lz2/ooOOO0Oo;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lz2/oOo0o0oO;->OooO:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lz2/oOo0o0oO;->OooO0OO()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lz2/oOo0o0oO;->OooO:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lz2/oOo0o0oO;->OooO0OO:Lz2/ooOOO0Oo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lz2/oOo0o0oO;->OooO:I

    :cond_0
    iget v0, p0, Lz2/oOo0o0oO;->OooO:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lz2/oOo0o0oO;->OooO0OO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
