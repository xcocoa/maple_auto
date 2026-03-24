.class public Lz2/oOO000o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO0o0000;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/oOO000o$OooO00o;,
        Lz2/oOO000o$OooO0O0;,
        Lz2/oOO000o$OooO0OO;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/oO0o0000<",
        "Ljava/lang/String;",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final OooO00o:Lz2/oO0o0000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oO0o0000<",
            "Landroid/net/Uri;",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/oO0o0000;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0o0000<",
            "Landroid/net/Uri;",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/oOO000o;->OooO00o:Lz2/oO0o0000;

    return-void
.end method

.method private static OooO0o(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static OooO0o0(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    :goto_0
    invoke-static {p0}, Lz2/oOO000o;->OooO0o(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public bridge synthetic OooO00o(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lz2/oOO000o;->OooO0Oo(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic OooO0O0(Ljava/lang/Object;IILz2/o0O0OOO0;)Lz2/oO0o0000$OooO00o;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lz2/oOO000o;->OooO0OO(Ljava/lang/String;IILz2/o0O0OOO0;)Lz2/oO0o0000$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public OooO0OO(Ljava/lang/String;IILz2/o0O0OOO0;)Lz2/oO0o0000$OooO00o;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lz2/o0O0OOO0;",
            ")",
            "Lz2/oO0o0000$OooO00o<",
            "TData;>;"
        }
    .end annotation

    invoke-static {p1}, Lz2/oOO000o;->OooO0o0(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lz2/oOO000o;->OooO00o:Lz2/oO0o0000;

    invoke-interface {v0, p1}, Lz2/oO0o0000;->OooO00o(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/oOO000o;->OooO00o:Lz2/oO0o0000;

    invoke-interface {v0, p1, p2, p3, p4}, Lz2/oO0o0000;->OooO0O0(Ljava/lang/Object;IILz2/o0O0OOO0;)Lz2/oO0o0000$OooO00o;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public OooO0Oo(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method
