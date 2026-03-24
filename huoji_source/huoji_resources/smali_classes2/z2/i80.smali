.class public Lz2/i80;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/r20<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/i80;->OooO00o:Ljava/util/List;

    return-void
.end method

.method private OooO0O0()Lz2/r20;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/r20<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/i80;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lz2/i80;->OooO00o:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/r20;

    invoke-direct {p0, v0}, Lz2/i80;->OooO0Oo(Lz2/r20;)Lz2/r20;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lz2/i80;->OooO0o0()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lz2/k20;->OooO00o(Ljava/lang/Iterable;)Lz2/r20;

    move-result-object v0

    return-object v0
.end method

.method private OooO0Oo(Lz2/r20;)Lz2/r20;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/r20<",
            "*>;)",
            "Lz2/r20<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method private OooO0o0()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz2/r20<",
            "-",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lz2/i80;->OooO00o:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public OooO00o(Lz2/r20;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/r20<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/i80;->OooO00o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0OO()Lz2/r20;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/r20<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lz2/i80;->OooO0O0()Lz2/r20;

    move-result-object v0

    invoke-static {v0}, Lz2/e80;->OooOO0(Lz2/r20;)Lz2/r20;

    move-result-object v0

    return-object v0
.end method

.method public OooO0o()Z
    .locals 1

    iget-object v0, p0, Lz2/i80;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
