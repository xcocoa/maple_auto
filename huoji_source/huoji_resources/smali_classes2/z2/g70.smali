.class public Lz2/g70;
.super Lz2/w20;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Throwable;",
        ">",
        "Lz2/w20<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final Ooooo00:Lz2/r20;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/r20<",
            "+",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/r20;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/r20<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lz2/w20;-><init>()V

    iput-object p1, p0, Lz2/g70;->Ooooo00:Lz2/r20;

    return-void
.end method

.method public static OooO0oO(Lz2/r20;)Lz2/r20;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lz2/r20<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lz2/r20<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    new-instance v0, Lz2/g70;

    invoke-direct {v0, p0}, Lz2/g70;-><init>(Lz2/r20;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic OooO0Oo(Ljava/lang/Object;Lz2/n20;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lz2/g70;->OooO0o(Ljava/lang/Throwable;Lz2/n20;)V

    return-void
.end method

.method public OooO0o(Ljava/lang/Throwable;Lz2/n20;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lz2/n20;",
            ")V"
        }
    .end annotation

    const-string v0, "cause "

    invoke-interface {p2, v0}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    iget-object v0, p0, Lz2/g70;->Ooooo00:Lz2/r20;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lz2/r20;->OooO00o(Ljava/lang/Object;Lz2/n20;)V

    return-void
.end method

.method public bridge synthetic OooO0o0(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lz2/g70;->OooO0oo(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public OooO0oo(Ljava/lang/Throwable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lz2/g70;->Ooooo00:Lz2/r20;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {v0, p1}, Lz2/r20;->OooO0O0(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public describeTo(Lz2/n20;)V
    .locals 1

    const-string v0, "exception with cause "

    invoke-interface {p1, v0}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    iget-object v0, p0, Lz2/g70;->Ooooo00:Lz2/r20;

    invoke-interface {p1, v0}, Lz2/n20;->OooO0O0(Lz2/t20;)Lz2/n20;

    return-void
.end method
