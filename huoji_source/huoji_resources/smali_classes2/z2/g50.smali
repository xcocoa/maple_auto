.class public Lz2/g50;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO(Z)V
    .locals 1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lz2/k20;->OooOooo(Ljava/lang/Object;)Lz2/r20;

    move-result-object v0

    invoke-static {p0, v0}, Lz2/g50;->OooO0o(Ljava/lang/Object;Lz2/r20;)V

    return-void
.end method

.method public static OooO00o(Ljava/lang/String;Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lz2/g50;->OooO0oo(Ljava/lang/String;Z)V

    return-void
.end method

.method public static OooO0O0(Z)V
    .locals 0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lz2/g50;->OooO(Z)V

    return-void
.end method

.method public static OooO0OO(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lz2/k20;->Oooo0o0()Lz2/r20;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lz2/g50;->OooO0oO(Ljava/lang/String;Ljava/lang/Object;Lz2/r20;)V

    return-void
.end method

.method public static OooO0Oo(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lz2/k20;->Oooo0o0()Lz2/r20;

    move-result-object v0

    invoke-static {p0, v0}, Lz2/g50;->OooO0o(Ljava/lang/Object;Lz2/r20;)V

    return-void
.end method

.method public static OooO0o(Ljava/lang/Object;Lz2/r20;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lz2/r20<",
            "TT;>;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Lz2/r20;->OooO0O0(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/junit/AssumptionViolatedException;

    invoke-direct {v0, p0, p1}, Lorg/junit/AssumptionViolatedException;-><init>(Ljava/lang/Object;Lz2/r20;)V

    throw v0
.end method

.method public static varargs OooO0o0([Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lz2/k20;->Oooo0O0()Lz2/r20;

    move-result-object v0

    invoke-static {v0}, Lz2/k20;->OooOo(Lz2/r20;)Lz2/r20;

    move-result-object v0

    invoke-static {p0, v0}, Lz2/g50;->OooO0o(Ljava/lang/Object;Lz2/r20;)V

    return-void
.end method

.method public static OooO0oO(Ljava/lang/String;Ljava/lang/Object;Lz2/r20;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lz2/r20<",
            "TT;>;)V"
        }
    .end annotation

    invoke-interface {p2, p1}, Lz2/r20;->OooO0O0(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/junit/AssumptionViolatedException;

    invoke-direct {v0, p0, p1, p2}, Lorg/junit/AssumptionViolatedException;-><init>(Ljava/lang/String;Ljava/lang/Object;Lz2/r20;)V

    throw v0
.end method

.method public static OooO0oo(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/junit/AssumptionViolatedException;

    invoke-direct {p1, p0}, Lorg/junit/AssumptionViolatedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
