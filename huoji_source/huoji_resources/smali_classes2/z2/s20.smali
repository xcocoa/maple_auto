.class public Lz2/s20;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o(Ljava/lang/Object;Lz2/r20;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lz2/r20<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {v0, p0, p1}, Lz2/s20;->OooO0O0(Ljava/lang/String;Ljava/lang/Object;Lz2/r20;)V

    return-void
.end method

.method public static OooO0O0(Ljava/lang/String;Ljava/lang/Object;Lz2/r20;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lz2/r20<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-interface {p2, p1}, Lz2/r20;->OooO0O0(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lz2/u20;

    invoke-direct {v0}, Lz2/u20;-><init>()V

    invoke-interface {v0, p0}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    move-result-object p0

    const-string v1, "\nExpected: "

    invoke-interface {p0, v1}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    move-result-object p0

    invoke-interface {p0, p2}, Lz2/n20;->OooO0O0(Lz2/t20;)Lz2/n20;

    move-result-object p0

    const-string v1, "\n     but: "

    invoke-interface {p0, v1}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    invoke-interface {p2, p1, v0}, Lz2/r20;->OooO00o(Ljava/lang/Object;Lz2/n20;)V

    new-instance p0, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static OooO0OO(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
