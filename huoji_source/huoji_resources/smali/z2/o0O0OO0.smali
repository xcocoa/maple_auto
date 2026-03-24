.class public final Lz2/o0O0OO0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/o0O0OO0$OooO0O0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final OooO0o0:Lz2/o0O0OO0$OooO0O0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o0O0OO0$OooO0O0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final OooO00o:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final OooO0O0:Lz2/o0O0OO0$OooO0O0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o0O0OO0$OooO0O0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final OooO0OO:Ljava/lang/String;

.field private volatile OooO0Oo:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/o0O0OO0$OooO00o;

    invoke-direct {v0}, Lz2/o0O0OO0$OooO00o;-><init>()V

    sput-object v0, Lz2/o0O0OO0;->OooO0o0:Lz2/o0O0OO0$OooO0O0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lz2/o0O0OO0$OooO0O0;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lz2/o0O0OO0$OooO0O0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lz2/o0O0OO0$OooO0O0<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lz2/r2;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lz2/o0O0OO0;->OooO0OO:Ljava/lang/String;

    iput-object p2, p0, Lz2/o0O0OO0;->OooO00o:Ljava/lang/Object;

    invoke-static {p3}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o0O0OO0$OooO0O0;

    iput-object p1, p0, Lz2/o0O0OO0;->OooO0O0:Lz2/o0O0OO0$OooO0O0;

    return-void
.end method

.method public static OooO00o(Ljava/lang/String;Lz2/o0O0OO0$OooO0O0;)Lz2/o0O0OO0;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lz2/o0O0OO0$OooO0O0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lz2/o0O0OO0$OooO0O0<",
            "TT;>;)",
            "Lz2/o0O0OO0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lz2/o0O0OO0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lz2/o0O0OO0;-><init>(Ljava/lang/String;Ljava/lang/Object;Lz2/o0O0OO0$OooO0O0;)V

    return-object v0
.end method

.method public static OooO0O0(Ljava/lang/String;Ljava/lang/Object;Lz2/o0O0OO0$OooO0O0;)Lz2/o0O0OO0;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lz2/o0O0OO0$OooO0O0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lz2/o0O0OO0$OooO0O0<",
            "TT;>;)",
            "Lz2/o0O0OO0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lz2/o0O0OO0;

    invoke-direct {v0, p0, p1, p2}, Lz2/o0O0OO0;-><init>(Ljava/lang/String;Ljava/lang/Object;Lz2/o0O0OO0$OooO0O0;)V

    return-object v0
.end method

.method private static OooO0OO()Lz2/o0O0OO0$OooO0O0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lz2/o0O0OO0$OooO0O0<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lz2/o0O0OO0;->OooO0o0:Lz2/o0O0OO0$OooO0O0;

    return-object v0
.end method

.method public static OooO0o(Ljava/lang/String;)Lz2/o0O0OO0;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lz2/o0O0OO0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lz2/o0O0OO0;

    invoke-static {}, Lz2/o0O0OO0;->OooO0OO()Lz2/o0O0OO0$OooO0O0;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lz2/o0O0OO0;-><init>(Ljava/lang/String;Ljava/lang/Object;Lz2/o0O0OO0$OooO0O0;)V

    return-object v0
.end method

.method private OooO0o0()[B
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/o0O0OO0;->OooO0Oo:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/o0O0OO0;->OooO0OO:Ljava/lang/String;

    sget-object v1, Lz2/o0O0O0Oo;->OooO0O0:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lz2/o0O0OO0;->OooO0Oo:[B

    :cond_0
    iget-object v0, p0, Lz2/o0O0OO0;->OooO0Oo:[B

    return-object v0
.end method

.method public static OooO0oO(Ljava/lang/String;Ljava/lang/Object;)Lz2/o0O0OO0;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lz2/o0O0OO0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lz2/o0O0OO0;

    invoke-static {}, Lz2/o0O0OO0;->OooO0OO()Lz2/o0O0OO0$OooO0O0;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lz2/o0O0OO0;-><init>(Ljava/lang/String;Ljava/lang/Object;Lz2/o0O0OO0$OooO0O0;)V

    return-object v0
.end method


# virtual methods
.method public OooO0Oo()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o0O0OO0;->OooO00o:Ljava/lang/Object;

    return-object v0
.end method

.method public OooO0oo(Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/security/MessageDigest;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lz2/o0O0OO0;->OooO0O0:Lz2/o0O0OO0$OooO0O0;

    invoke-direct {p0}, Lz2/o0O0OO0;->OooO0o0()[B

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lz2/o0O0OO0$OooO0O0;->OooO00o([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lz2/o0O0OO0;

    if-eqz v0, :cond_0

    check-cast p1, Lz2/o0O0OO0;

    iget-object v0, p0, Lz2/o0O0OO0;->OooO0OO:Ljava/lang/String;

    iget-object p1, p1, Lz2/o0O0OO0;->OooO0OO:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lz2/o0O0OO0;->OooO0OO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Option{key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/o0O0OO0;->OooO0OO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
