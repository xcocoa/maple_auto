.class public Lz2/h30;
.super Lz2/i20;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lz2/i20<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final OoooOoO:Lz2/r20;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/r20<",
            "TT;>;"
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
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lz2/i20;-><init>()V

    iput-object p1, p0, Lz2/h30;->OoooOoO:Lz2/r20;

    return-void
.end method

.method public static OooO0Oo(Ljava/lang/Object;)Lz2/r20;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lz2/r20<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    invoke-static {p0}, Lz2/f30;->OooO0oo(Ljava/lang/Object;)Lz2/r20;

    move-result-object p0

    invoke-static {p0}, Lz2/h30;->OooO0o0(Lz2/r20;)Lz2/r20;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0o0(Lz2/r20;)Lz2/r20;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/r20<",
            "TT;>;)",
            "Lz2/r20<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    new-instance v0, Lz2/h30;

    invoke-direct {v0, p0}, Lz2/h30;-><init>(Lz2/r20;)V

    return-object v0
.end method


# virtual methods
.method public OooO0O0(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lz2/h30;->OoooOoO:Lz2/r20;

    invoke-interface {v0, p1}, Lz2/r20;->OooO0O0(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public describeTo(Lz2/n20;)V
    .locals 1

    const-string v0, "not "

    invoke-interface {p1, v0}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    move-result-object p1

    iget-object v0, p0, Lz2/h30;->OoooOoO:Lz2/r20;

    invoke-interface {p1, v0}, Lz2/n20;->OooO0O0(Lz2/t20;)Lz2/n20;

    return-void
.end method
