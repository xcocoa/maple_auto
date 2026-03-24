.class public Lz2/b30;
.super Lz2/v20;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lz2/v20<",
        "Ljava/lang/Iterable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final Ooooo00:Lz2/r20;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/r20<",
            "-TT;>;"
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
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lz2/v20;-><init>()V

    iput-object p1, p0, Lz2/b30;->Ooooo00:Lz2/r20;

    return-void
.end method

.method public static OooO0o0(Lz2/r20;)Lz2/r20;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/r20<",
            "TU;>;)",
            "Lz2/r20<",
            "Ljava/lang/Iterable<",
            "TU;>;>;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    new-instance v0, Lz2/b30;

    invoke-direct {v0, p0}, Lz2/b30;-><init>(Lz2/r20;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic OooO0Oo(Ljava/lang/Object;Lz2/n20;)Z
    .locals 0

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Lz2/b30;->OooO0o(Ljava/lang/Iterable;Lz2/n20;)Z

    move-result p1

    return p1
.end method

.method public OooO0o(Ljava/lang/Iterable;Lz2/n20;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lz2/n20;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lz2/b30;->Ooooo00:Lz2/r20;

    invoke-interface {v1, v0}, Lz2/r20;->OooO0O0(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "an item "

    invoke-interface {p2, p1}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    iget-object p1, p0, Lz2/b30;->Ooooo00:Lz2/r20;

    invoke-interface {p1, v0, p2}, Lz2/r20;->OooO00o(Ljava/lang/Object;Lz2/n20;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public describeTo(Lz2/n20;)V
    .locals 1

    const-string v0, "every item is "

    invoke-interface {p1, v0}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    move-result-object p1

    iget-object v0, p0, Lz2/b30;->Ooooo00:Lz2/r20;

    invoke-interface {p1, v0}, Lz2/n20;->OooO0O0(Lz2/t20;)Lz2/n20;

    return-void
.end method
