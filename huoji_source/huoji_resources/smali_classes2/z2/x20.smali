.class public Lz2/x20;
.super Lz2/o20;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lz2/o20<",
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

    invoke-direct {p0}, Lz2/o20;-><init>()V

    iput-object p1, p0, Lz2/x20;->OoooOoO:Ljava/lang/Iterable;

    return-void
.end method

.method public static OooO(Lz2/r20;Lz2/r20;Lz2/r20;Lz2/r20;Lz2/r20;)Lz2/r20;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/r20<",
            "-TT;>;",
            "Lz2/r20<",
            "-TT;>;",
            "Lz2/r20<",
            "-TT;>;",
            "Lz2/r20<",
            "-TT;>;",
            "Lz2/r20<",
            "-TT;>;)",
            "Lz2/r20<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lz2/x20;->OooO0o0(Ljava/lang/Iterable;)Lz2/r20;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0o(Lz2/r20;Lz2/r20;)Lz2/r20;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/r20<",
            "-TT;>;",
            "Lz2/r20<",
            "-TT;>;)",
            "Lz2/r20<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lz2/x20;->OooO0o0(Ljava/lang/Iterable;)Lz2/r20;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0o0(Ljava/lang/Iterable;)Lz2/r20;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "Lz2/r20<",
            "-TT;>;>;)",
            "Lz2/r20<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    new-instance v0, Lz2/x20;

    invoke-direct {v0, p0}, Lz2/x20;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static OooO0oO(Lz2/r20;Lz2/r20;Lz2/r20;)Lz2/r20;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/r20<",
            "-TT;>;",
            "Lz2/r20<",
            "-TT;>;",
            "Lz2/r20<",
            "-TT;>;)",
            "Lz2/r20<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lz2/x20;->OooO0o0(Ljava/lang/Iterable;)Lz2/r20;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0oo(Lz2/r20;Lz2/r20;Lz2/r20;Lz2/r20;)Lz2/r20;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/r20<",
            "-TT;>;",
            "Lz2/r20<",
            "-TT;>;",
            "Lz2/r20<",
            "-TT;>;",
            "Lz2/r20<",
            "-TT;>;)",
            "Lz2/r20<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lz2/x20;->OooO0o0(Ljava/lang/Iterable;)Lz2/r20;

    move-result-object p0

    return-object p0
.end method

.method public static OooOO0(Lz2/r20;Lz2/r20;Lz2/r20;Lz2/r20;Lz2/r20;Lz2/r20;)Lz2/r20;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/r20<",
            "-TT;>;",
            "Lz2/r20<",
            "-TT;>;",
            "Lz2/r20<",
            "-TT;>;",
            "Lz2/r20<",
            "-TT;>;",
            "Lz2/r20<",
            "-TT;>;",
            "Lz2/r20<",
            "-TT;>;)",
            "Lz2/r20<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lz2/x20;->OooO0o0(Ljava/lang/Iterable;)Lz2/r20;

    move-result-object p0

    return-object p0
.end method

.method public static varargs OooOO0O([Lz2/r20;)Lz2/r20;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lz2/r20<",
            "-TT;>;)",
            "Lz2/r20<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lz2/x20;->OooO0o0(Ljava/lang/Iterable;)Lz2/r20;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public OooO0Oo(Ljava/lang/Object;Lz2/n20;)Z
    .locals 3

    iget-object v0, p0, Lz2/x20;->OoooOoO:Ljava/lang/Iterable;

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

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p2, v1}, Lz2/n20;->OooO0O0(Lz2/t20;)Lz2/n20;

    move-result-object v0

    const-string v2, " "

    invoke-interface {v0, v2}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    invoke-interface {v1, p1, p2}, Lz2/r20;->OooO00o(Ljava/lang/Object;Lz2/n20;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public describeTo(Lz2/n20;)V
    .locals 4

    iget-object v0, p0, Lz2/x20;->OoooOoO:Ljava/lang/Iterable;

    const-string v1, "("

    const-string v2, " and "

    const-string v3, ")"

    invoke-interface {p1, v1, v2, v3, v0}, Lz2/n20;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lz2/n20;

    return-void
.end method
