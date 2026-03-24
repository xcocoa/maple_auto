.class public Lz2/n50;
.super Lz2/v80;
.source ""


# instance fields
.field private final OooO00o:Z

.field private final OooO0O0:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Lz2/v80;-><init>()V

    iput-boolean p1, p0, Lz2/n50;->OooO00o:Z

    iput-boolean p2, p0, Lz2/n50;->OooO0O0:Z

    return-void
.end method

.method public static OooO0Oo()Lz2/v80;
    .locals 3

    new-instance v0, Lz2/n50;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz2/n50;-><init>(ZZ)V

    return-object v0
.end method

.method private static OooO0o(Lz2/b90;)Lz2/b90;
    .locals 2

    instance-of v0, p0, Lz2/n90;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lz2/n90;

    new-instance v1, Lz2/n50$OooO00o;

    invoke-direct {v1}, Lz2/n50$OooO00o;-><init>()V

    invoke-virtual {v0, v1}, Lz2/n90;->OooOo(Lz2/v90;)V

    :cond_0
    return-object p0
.end method

.method public static OooO0o0()Lz2/v80;
    .locals 3

    new-instance v0, Lz2/n50;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lz2/n50;-><init>(ZZ)V

    return-object v0
.end method


# virtual methods
.method public OooO00o(Lz2/u90;Ljava/lang/Class;)Lz2/b90;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/u90;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lz2/b90;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lz2/v80;->OooO00o(Lz2/u90;Ljava/lang/Class;)Lz2/b90;

    move-result-object p1

    iget-boolean p2, p0, Lz2/n50;->OooO0O0:Z

    if-eqz p2, :cond_0

    invoke-static {p1}, Lz2/n50;->OooO0o(Lz2/b90;)Lz2/b90;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public OooO0O0(Lz2/u90;[Ljava/lang/Class;)Lz2/b90;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/u90;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lz2/b90;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lz2/v80;->OooO0O0(Lz2/u90;[Ljava/lang/Class;)Lz2/b90;

    move-result-object p1

    iget-boolean p2, p0, Lz2/n50;->OooO00o:Z

    if-eqz p2, :cond_0

    invoke-static {p1}, Lz2/n50;->OooO0o(Lz2/b90;)Lz2/b90;

    move-result-object p1

    :cond_0
    return-object p1
.end method
