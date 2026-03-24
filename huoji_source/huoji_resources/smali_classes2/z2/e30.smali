.class public Lz2/e30;
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
        "-TT;>;>;"
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

    iput-object p1, p0, Lz2/e30;->Ooooo00:Lz2/r20;

    return-void
.end method

.method public static OooO0o(Lz2/r20;)Lz2/r20;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/r20<",
            "-TT;>;)",
            "Lz2/r20<",
            "Ljava/lang/Iterable<",
            "-TT;>;>;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    new-instance v0, Lz2/e30;

    invoke-direct {v0, p0}, Lz2/e30;-><init>(Lz2/r20;)V

    return-object v0
.end method

.method public static OooO0o0(Ljava/lang/Object;)Lz2/r20;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lz2/r20<",
            "Ljava/lang/Iterable<",
            "-TT;>;>;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    new-instance v0, Lz2/e30;

    invoke-static {p0}, Lz2/f30;->OooO0oo(Ljava/lang/Object;)Lz2/r20;

    move-result-object p0

    invoke-direct {v0, p0}, Lz2/e30;-><init>(Lz2/r20;)V

    return-object v0
.end method

.method public static varargs OooO0oO([Ljava/lang/Object;)Lz2/r20;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lz2/r20<",
            "Ljava/lang/Iterable<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-static {v3}, Lz2/e30;->OooO0o0(Ljava/lang/Object;)Lz2/r20;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lz2/x20;->OooO0o0(Ljava/lang/Iterable;)Lz2/r20;

    move-result-object p0

    return-object p0
.end method

.method public static varargs OooO0oo([Lz2/r20;)Lz2/r20;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lz2/r20<",
            "-TT;>;)",
            "Lz2/r20<",
            "Ljava/lang/Iterable<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    new-instance v4, Lz2/e30;

    invoke-direct {v4, v3}, Lz2/e30;-><init>(Lz2/r20;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lz2/x20;->OooO0o0(Ljava/lang/Iterable;)Lz2/r20;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public OooO(Ljava/lang/Iterable;Lz2/n20;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "-TT;>;",
            "Lz2/n20;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lz2/e30;->Ooooo00:Lz2/r20;

    invoke-interface {v4, v3}, Lz2/r20;->OooO0O0(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v0

    :cond_0
    if-eqz v2, :cond_1

    const-string v2, ", "

    invoke-interface {p2, v2}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    :cond_1
    iget-object v2, p0, Lz2/e30;->Ooooo00:Lz2/r20;

    invoke-interface {v2, v3, p2}, Lz2/r20;->OooO00o(Ljava/lang/Object;Lz2/n20;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public bridge synthetic OooO0Oo(Ljava/lang/Object;Lz2/n20;)Z
    .locals 0

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Lz2/e30;->OooO(Ljava/lang/Iterable;Lz2/n20;)Z

    move-result p1

    return p1
.end method

.method public describeTo(Lz2/n20;)V
    .locals 1

    const-string v0, "a collection containing "

    invoke-interface {p1, v0}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    move-result-object p1

    iget-object v0, p0, Lz2/e30;->Ooooo00:Lz2/r20;

    invoke-interface {p1, v0}, Lz2/n20;->OooO0O0(Lz2/t20;)Lz2/n20;

    return-void
.end method
