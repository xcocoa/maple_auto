.class public Lz2/c70;
.super Lz2/u90;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/u90;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO0OO(Ljava/lang/Class;)Lz2/b90;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    new-instance v0, Lz2/k90;

    invoke-direct {v0, p1}, Lz2/k90;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
