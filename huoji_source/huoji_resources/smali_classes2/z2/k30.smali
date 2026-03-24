.class public abstract Lz2/k30;
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
.field private final OoooOoO:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lz2/r20<",
            "-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lz2/r20<",
            "-TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lz2/i20;-><init>()V

    iput-object p1, p0, Lz2/k30;->OoooOoO:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public abstract OooO0O0(Ljava/lang/Object;)Z
.end method

.method public OooO0Oo(Lz2/n20;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lz2/k30;->OoooOoO:Ljava/lang/Iterable;

    const-string v1, "("

    const-string v2, ")"

    invoke-interface {p1, v1, p2, v2, v0}, Lz2/n20;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lz2/n20;

    return-void
.end method

.method public OooO0o0(Ljava/lang/Object;Z)Z
    .locals 2

    iget-object v0, p0, Lz2/k30;->OoooOoO:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/r20;

    invoke-interface {v1, p1}, Lz2/r20;->OooO0O0(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, p2, :cond_0

    return p2

    :cond_1
    xor-int/lit8 p1, p2, 0x1

    return p1
.end method

.method public abstract describeTo(Lz2/n20;)V
.end method
