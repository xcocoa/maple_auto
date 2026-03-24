.class public Lz2/v80;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO0OO()Lz2/v80;
    .locals 1

    new-instance v0, Lz2/v80;

    invoke-direct {v0}, Lz2/v80;-><init>()V

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

    invoke-virtual {p1, p2}, Lz2/u90;->OooO0OO(Ljava/lang/Class;)Lz2/b90;

    move-result-object p1

    return-object p1
.end method

.method public OooO0O0(Lz2/u90;[Ljava/lang/Class;)Lz2/b90;
    .locals 2
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

    new-instance v0, Lz2/o90;

    new-instance v1, Lz2/v80$OooO00o;

    invoke-direct {v1, p0, p1}, Lz2/v80$OooO00o;-><init>(Lz2/v80;Lz2/u90;)V

    invoke-direct {v0, v1, p2}, Lz2/o90;-><init>(Lz2/u90;[Ljava/lang/Class;)V

    return-object v0
.end method
