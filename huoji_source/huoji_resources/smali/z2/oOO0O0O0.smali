.class public Lz2/oOO0O0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO0o0000;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/oOO0O0O0$OooO00o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/oO0o0000<",
        "Ljava/net/URL;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final OooO00o:Lz2/oO0o0000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oO0o0000<",
            "Lz2/oOo0o0oO;",
            "Ljava/io/InputStream;",
            ">;"
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
            "Lz2/oOo0o0oO;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/oOO0O0O0;->OooO00o:Lz2/oO0o0000;

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO00o(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/net/URL;

    invoke-virtual {p0, p1}, Lz2/oOO0O0O0;->OooO0Oo(Ljava/net/URL;)Z

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

    check-cast p1, Ljava/net/URL;

    invoke-virtual {p0, p1, p2, p3, p4}, Lz2/oOO0O0O0;->OooO0OO(Ljava/net/URL;IILz2/o0O0OOO0;)Lz2/oO0o0000$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public OooO0OO(Ljava/net/URL;IILz2/o0O0OOO0;)Lz2/oO0o0000$OooO00o;
    .locals 2
    .param p1    # Ljava/net/URL;
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
            "Ljava/net/URL;",
            "II",
            "Lz2/o0O0OOO0;",
            ")",
            "Lz2/oO0o0000$OooO00o<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/oOO0O0O0;->OooO00o:Lz2/oO0o0000;

    new-instance v1, Lz2/oOo0o0oO;

    invoke-direct {v1, p1}, Lz2/oOo0o0oO;-><init>(Ljava/net/URL;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lz2/oO0o0000;->OooO0O0(Ljava/lang/Object;IILz2/o0O0OOO0;)Lz2/oO0o0000$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public OooO0Oo(Ljava/net/URL;)Z
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method
