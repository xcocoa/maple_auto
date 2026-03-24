.class public Lorg/junit/runner/JUnitCore;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:Lz2/h90;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/h90;

    invoke-direct {v0}, Lz2/h90;-><init>()V

    iput-object v0, p0, Lorg/junit/runner/JUnitCore;->OooO00o:Lz2/h90;

    return-void
.end method

.method public static OooO0O0()Lz2/v80;
    .locals 1

    new-instance v0, Lz2/v80;

    invoke-direct {v0}, Lz2/v80;-><init>()V

    return-object v0
.end method

.method public static varargs OooOO0(Lz2/v80;[Ljava/lang/Class;)Lorg/junit/runner/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/v80;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Result;"
        }
    .end annotation

    new-instance v0, Lorg/junit/runner/JUnitCore;

    invoke-direct {v0}, Lorg/junit/runner/JUnitCore;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/junit/runner/JUnitCore;->OooO0o(Lz2/v80;[Ljava/lang/Class;)Lorg/junit/runner/Result;

    move-result-object p0

    return-object p0
.end method

.method public static varargs OooOO0O([Ljava/lang/Class;)Lorg/junit/runner/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Result;"
        }
    .end annotation

    invoke-static {}, Lorg/junit/runner/JUnitCore;->OooO0O0()Lz2/v80;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/junit/runner/JUnitCore;->OooOO0(Lz2/v80;[Ljava/lang/Class;)Lorg/junit/runner/Result;

    move-result-object p0

    return-object p0
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/junit/runner/JUnitCore;

    invoke-direct {v0}, Lorg/junit/runner/JUnitCore;-><init>()V

    new-instance v1, Lz2/u60;

    invoke-direct {v1}, Lz2/u60;-><init>()V

    invoke-virtual {v0, v1, p0}, Lorg/junit/runner/JUnitCore;->OooOO0o(Lz2/s60;[Ljava/lang/String;)Lorg/junit/runner/Result;

    move-result-object p0

    invoke-virtual {p0}, Lorg/junit/runner/Result;->wasSuccessful()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method public varargs OooO([Ljava/lang/Class;)Lorg/junit/runner/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Result;"
        }
    .end annotation

    invoke-static {}, Lorg/junit/runner/JUnitCore;->OooO0O0()Lz2/v80;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/junit/runner/JUnitCore;->OooO0o(Lz2/v80;[Ljava/lang/Class;)Lorg/junit/runner/Result;

    move-result-object p1

    return-object p1
.end method

.method public OooO00o(Lz2/g90;)V
    .locals 1

    iget-object v0, p0, Lorg/junit/runner/JUnitCore;->OooO00o:Lz2/h90;

    invoke-virtual {v0, p1}, Lz2/h90;->OooO0Oo(Lz2/g90;)V

    return-void
.end method

.method public OooO0OO()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljunit/runner/Version;->OooO00o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooO0Oo(Lz2/g90;)V
    .locals 1

    iget-object v0, p0, Lorg/junit/runner/JUnitCore;->OooO00o:Lz2/h90;

    invoke-virtual {v0, p1}, Lz2/h90;->OooOOO(Lz2/g90;)V

    return-void
.end method

.method public varargs OooO0o(Lz2/v80;[Ljava/lang/Class;)Lorg/junit/runner/Result;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/v80;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Result;"
        }
    .end annotation

    invoke-static {p1, p2}, Lz2/z80;->OooO0OO(Lz2/v80;[Ljava/lang/Class;)Lz2/z80;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/junit/runner/JUnitCore;->OooO0oO(Lz2/z80;)Lorg/junit/runner/Result;

    move-result-object p1

    return-object p1
.end method

.method public OooO0o0(Lz2/gw;)Lorg/junit/runner/Result;
    .locals 1

    new-instance v0, Lz2/o70;

    invoke-direct {v0, p1}, Lz2/o70;-><init>(Lz2/gw;)V

    invoke-virtual {p0, v0}, Lorg/junit/runner/JUnitCore;->OooO0oo(Lz2/b90;)Lorg/junit/runner/Result;

    move-result-object p1

    return-object p1
.end method

.method public OooO0oO(Lz2/z80;)Lorg/junit/runner/Result;
    .locals 0

    invoke-virtual {p1}, Lz2/z80;->OooO0oo()Lz2/b90;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/junit/runner/JUnitCore;->OooO0oo(Lz2/b90;)Lorg/junit/runner/Result;

    move-result-object p1

    return-object p1
.end method

.method public OooO0oo(Lz2/b90;)Lorg/junit/runner/Result;
    .locals 4

    new-instance v0, Lorg/junit/runner/Result;

    invoke-direct {v0}, Lorg/junit/runner/Result;-><init>()V

    invoke-virtual {v0}, Lorg/junit/runner/Result;->createListener()Lz2/g90;

    move-result-object v1

    iget-object v2, p0, Lorg/junit/runner/JUnitCore;->OooO00o:Lz2/h90;

    invoke-virtual {v2, v1}, Lz2/h90;->OooO0OO(Lz2/g90;)V

    :try_start_0
    iget-object v2, p0, Lorg/junit/runner/JUnitCore;->OooO00o:Lz2/h90;

    invoke-virtual {p1}, Lz2/b90;->getDescription()Lorg/junit/runner/Description;

    move-result-object v3

    invoke-virtual {v2, v3}, Lz2/h90;->OooOO0O(Lorg/junit/runner/Description;)V

    iget-object v2, p0, Lorg/junit/runner/JUnitCore;->OooO00o:Lz2/h90;

    invoke-virtual {p1, v2}, Lz2/b90;->OooO00o(Lz2/h90;)V

    iget-object p1, p0, Lorg/junit/runner/JUnitCore;->OooO00o:Lz2/h90;

    invoke-virtual {p1, v0}, Lz2/h90;->OooOO0(Lorg/junit/runner/Result;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lorg/junit/runner/JUnitCore;->OooO0Oo(Lz2/g90;)V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v1}, Lorg/junit/runner/JUnitCore;->OooO0Oo(Lz2/g90;)V

    throw p1
.end method

.method public varargs OooOO0o(Lz2/s60;[Ljava/lang/String;)Lorg/junit/runner/Result;
    .locals 3

    invoke-interface {p1}, Lz2/s60;->OooO00o()Ljava/io/PrintStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JUnit version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljunit/runner/Version;->OooO00o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/junit/runner/JUnitCommandLineParseResult;->OooO0oO([Ljava/lang/String;)Lorg/junit/runner/JUnitCommandLineParseResult;

    move-result-object p2

    new-instance v0, Lz2/v60;

    invoke-direct {v0, p1}, Lz2/v60;-><init>(Lz2/s60;)V

    invoke-virtual {p0, v0}, Lorg/junit/runner/JUnitCore;->OooO00o(Lz2/g90;)V

    invoke-static {}, Lorg/junit/runner/JUnitCore;->OooO0O0()Lz2/v80;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/junit/runner/JUnitCommandLineParseResult;->OooO0OO(Lz2/v80;)Lz2/z80;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/junit/runner/JUnitCore;->OooO0oO(Lz2/z80;)Lorg/junit/runner/Result;

    move-result-object p1

    return-object p1
.end method
