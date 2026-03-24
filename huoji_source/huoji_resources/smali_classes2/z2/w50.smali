.class public Lz2/w50;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private OooO00o:Lorg/junit/runner/Result;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/junit/runner/notification/Failure;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lz2/v50;

    invoke-direct {v0, p1}, Lz2/v50;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lz2/v50;->OooO00o()Lorg/junit/runner/Result;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/w50;-><init>(Lorg/junit/runner/Result;)V

    return-void
.end method

.method private constructor <init>(Lorg/junit/runner/Result;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/w50;->OooO00o:Lorg/junit/runner/Result;

    return-void
.end method

.method public static OooO0O0(Ljava/lang/Class;)Lz2/w50;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lz2/w50;"
        }
    .end annotation

    invoke-static {p0}, Lz2/z80;->OooO00o(Ljava/lang/Class;)Lz2/z80;

    move-result-object p0

    invoke-static {p0}, Lz2/w50;->OooO0OO(Lz2/z80;)Lz2/w50;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0OO(Lz2/z80;)Lz2/w50;
    .locals 2

    new-instance v0, Lz2/w50;

    new-instance v1, Lorg/junit/runner/JUnitCore;

    invoke-direct {v1}, Lorg/junit/runner/JUnitCore;-><init>()V

    invoke-virtual {v1, p0}, Lorg/junit/runner/JUnitCore;->OooO0oO(Lz2/z80;)Lorg/junit/runner/Result;

    move-result-object p0

    invoke-direct {v0, p0}, Lz2/w50;-><init>(Lorg/junit/runner/Result;)V

    return-object v0
.end method


# virtual methods
.method public OooO00o()I
    .locals 1

    iget-object v0, p0, Lz2/w50;->OooO00o:Lorg/junit/runner/Result;

    invoke-virtual {v0}, Lorg/junit/runner/Result;->getFailures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lz2/v60;

    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Lz2/v60;-><init>(Ljava/io/PrintStream;)V

    iget-object v2, p0, Lz2/w50;->OooO00o:Lorg/junit/runner/Result;

    invoke-virtual {v1, v2}, Lz2/v60;->OooO0o0(Lorg/junit/runner/Result;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
