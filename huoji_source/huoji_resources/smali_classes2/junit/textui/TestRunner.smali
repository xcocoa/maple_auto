.class public Ljunit/textui/TestRunner;
.super Lz2/mw;
.source ""


# static fields
.field public static final OooO:I = 0x2

.field public static final OooO0oO:I = 0x0

.field public static final OooO0oo:I = 0x1


# instance fields
.field private OooO0o:Lz2/ow;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0, v0}, Ljunit/textui/TestRunner;-><init>(Ljava/io/PrintStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 1

    new-instance v0, Lz2/ow;

    invoke-direct {v0, p1}, Lz2/ow;-><init>(Ljava/io/PrintStream;)V

    invoke-direct {p0, v0}, Ljunit/textui/TestRunner;-><init>(Lz2/ow;)V

    return-void
.end method

.method public constructor <init>(Lz2/ow;)V
    .locals 0

    invoke-direct {p0}, Lz2/mw;-><init>()V

    iput-object p1, p0, Ljunit/textui/TestRunner;->OooO0o:Lz2/ow;

    return-void
.end method

.method public static Oooo0(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lz2/hw;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lz2/lw;

    invoke-direct {v0, p0}, Lz2/lw;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljunit/textui/TestRunner;->Oooo00o(Lz2/gw;)Lz2/kw;

    return-void
.end method

.method public static Oooo00o(Lz2/gw;)Lz2/kw;
    .locals 1

    new-instance v0, Ljunit/textui/TestRunner;

    invoke-direct {v0}, Ljunit/textui/TestRunner;-><init>()V

    invoke-virtual {v0, p0}, Ljunit/textui/TestRunner;->OooOooo(Lz2/gw;)Lz2/kw;

    move-result-object p0

    return-object p0
.end method

.method public static Oooo0O0(Lz2/gw;)V
    .locals 2

    new-instance v0, Ljunit/textui/TestRunner;

    invoke-direct {v0}, Ljunit/textui/TestRunner;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljunit/textui/TestRunner;->Oooo000(Lz2/gw;Z)Lz2/kw;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljunit/textui/TestRunner;

    invoke-direct {v0}, Ljunit/textui/TestRunner;-><init>()V

    :try_start_0
    invoke-virtual {v0, p0}, Ljunit/textui/TestRunner;->Oooo0o([Ljava/lang/String;)Lz2/kw;

    move-result-object p0

    invoke-virtual {p0}, Lz2/kw;->OooOOo0()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public OooOOoo(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public OooOoO(ILz2/gw;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public OooOoO0(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public OooOoOO(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public OooOooO()Lz2/kw;
    .locals 1

    new-instance v0, Lz2/kw;

    invoke-direct {v0}, Lz2/kw;-><init>()V

    return-object v0
.end method

.method public OooOooo(Lz2/gw;)Lz2/kw;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljunit/textui/TestRunner;->Oooo000(Lz2/gw;Z)Lz2/kw;

    move-result-object p1

    return-object p1
.end method

.method public Oooo000(Lz2/gw;Z)Lz2/kw;
    .locals 5

    invoke-virtual {p0}, Ljunit/textui/TestRunner;->OooOooO()Lz2/kw;

    move-result-object v0

    iget-object v1, p0, Ljunit/textui/TestRunner;->OooO0o:Lz2/ow;

    invoke-virtual {v0, v1}, Lz2/kw;->OooO0OO(Lz2/jw;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1, v0}, Lz2/gw;->OooO0O0(Lz2/kw;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    iget-object p1, p0, Ljunit/textui/TestRunner;->OooO0o:Lz2/ow;

    invoke-virtual {p1, v0, v3, v4}, Lz2/ow;->OooO0oO(Lz2/kw;J)V

    invoke-virtual {p0, p2}, Ljunit/textui/TestRunner;->Oooo00O(Z)V

    return-object v0
.end method

.method public Oooo00O(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Ljunit/textui/TestRunner;->OooO0o:Lz2/ow;

    invoke-virtual {p1}, Lz2/ow;->OooOOOo()V

    :try_start_0
    sget-object p1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public Oooo0OO(Ljava/lang/String;Ljava/lang/String;Z)Lz2/kw;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/mw;->OooOOOo(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lz2/hw;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, p2}, Lz2/lw;->OooO0oO(Ljava/lang/Class;Ljava/lang/String;)Lz2/gw;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Ljunit/textui/TestRunner;->Oooo000(Lz2/gw;Z)Lz2/kw;

    move-result-object p1

    return-object p1
.end method

.method public Oooo0o([Ljava/lang/String;)Lz2/kw;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, ""

    move-object v3, v1

    move-object v4, v3

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_4

    aget-object v6, p1, v2

    const-string v7, "-wait"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    aget-object v6, p1, v2

    const-string v8, "-c"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lz2/mw;->OooO0oO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    aget-object v6, p1, v2

    const-string v8, "-m"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    aget-object v3, p1, v2

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v6

    goto :goto_1

    :cond_2
    aget-object v6, p1, v2

    const-string v8, "-v"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "JUnit "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljunit/runner/Version;->OooO00o()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " by Kent Beck and Erich Gamma"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    aget-object v3, p1, v2

    :goto_1
    add-int/2addr v2, v7

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :try_start_0
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0, v3, v4, v5}, Ljunit/textui/TestRunner;->Oooo0OO(Ljava/lang/String;Ljava/lang/String;Z)Lz2/kw;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {p0, v3}, Lz2/mw;->OooOOOO(Ljava/lang/String;)Lz2/gw;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Ljunit/textui/TestRunner;->Oooo000(Lz2/gw;Z)Lz2/kw;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create and run test suite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Usage: TestRunner [-wait] testCaseName, where name is the name of the TestCase class"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Oooo0o0(Lz2/ow;)V
    .locals 0

    iput-object p1, p0, Ljunit/textui/TestRunner;->OooO0o:Lz2/ow;

    return-void
.end method
