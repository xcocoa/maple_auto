.class public abstract Lz2/z80;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO(Ljava/lang/Class;Ljava/lang/String;)Lz2/z80;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lz2/z80;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/junit/runner/Description;->createTestDescription(Ljava/lang/Class;Ljava/lang/String;)Lorg/junit/runner/Description;

    move-result-object p1

    invoke-static {p0}, Lz2/z80;->OooO00o(Ljava/lang/Class;)Lz2/z80;

    move-result-object p0

    invoke-virtual {p0, p1}, Lz2/z80;->OooO0o(Lorg/junit/runner/Description;)Lz2/z80;

    move-result-object p0

    return-object p0
.end method

.method public static OooO00o(Ljava/lang/Class;)Lz2/z80;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lz2/z80;"
        }
    .end annotation

    new-instance v0, Lz2/j70;

    invoke-direct {v0, p0}, Lz2/j70;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static OooO0O0(Ljava/lang/Class;)Lz2/z80;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lz2/z80;"
        }
    .end annotation

    new-instance v0, Lz2/j70;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lz2/j70;-><init>(Ljava/lang/Class;Z)V

    return-object v0
.end method

.method public static varargs OooO0OO(Lz2/v80;[Ljava/lang/Class;)Lz2/z80;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/v80;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lz2/z80;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lz2/x60;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lz2/x60;-><init>(Z)V

    invoke-virtual {p0, v0, p1}, Lz2/v80;->OooO0O0(Lz2/u90;[Ljava/lang/Class;)Lz2/b90;

    move-result-object p0

    invoke-static {p0}, Lz2/z80;->OooOO0(Lz2/b90;)Lz2/z80;

    move-result-object p0
    :try_end_0
    .catch Lorg/junit/runners/model/InitializationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Bug in saff\'s brain: Suite constructor, called as above, should always complete"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs OooO0Oo([Ljava/lang/Class;)Lz2/z80;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lz2/z80;"
        }
    .end annotation

    invoke-static {}, Lorg/junit/runner/JUnitCore;->OooO0O0()Lz2/v80;

    move-result-object v0

    invoke-static {v0, p0}, Lz2/z80;->OooO0OO(Lz2/v80;[Ljava/lang/Class;)Lz2/z80;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0o0(Ljava/lang/Class;Ljava/lang/Throwable;)Lz2/z80;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lz2/z80;"
        }
    .end annotation

    new-instance v0, Lz2/n70;

    invoke-direct {v0, p0, p1}, Lz2/n70;-><init>(Ljava/lang/Class;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lz2/z80;->OooOO0(Lz2/b90;)Lz2/z80;

    move-result-object p0

    return-object p0
.end method

.method public static OooOO0(Lz2/b90;)Lz2/z80;
    .locals 1

    new-instance v0, Lz2/z80$OooO00o;

    invoke-direct {v0, p0}, Lz2/z80$OooO00o;-><init>(Lz2/b90;)V

    return-object v0
.end method


# virtual methods
.method public OooO0o(Lorg/junit/runner/Description;)Lz2/z80;
    .locals 0

    invoke-static {p1}, Lz2/c90;->OooO0Oo(Lorg/junit/runner/Description;)Lz2/c90;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/z80;->OooO0oO(Lz2/c90;)Lz2/z80;

    move-result-object p1

    return-object p1
.end method

.method public OooO0oO(Lz2/c90;)Lz2/z80;
    .locals 1

    new-instance v0, Lz2/k70;

    invoke-direct {v0, p0, p1}, Lz2/k70;-><init>(Lz2/z80;Lz2/c90;)V

    return-object v0
.end method

.method public abstract OooO0oo()Lz2/b90;
.end method

.method public OooOO0O(Ljava/util/Comparator;)Lz2/z80;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lorg/junit/runner/Description;",
            ">;)",
            "Lz2/z80;"
        }
    .end annotation

    new-instance v0, Lz2/l70;

    invoke-direct {v0, p0, p1}, Lz2/l70;-><init>(Lz2/z80;Ljava/util/Comparator;)V

    return-object v0
.end method
