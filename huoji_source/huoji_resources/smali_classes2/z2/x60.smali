.class public Lz2/x60;
.super Lz2/u90;
.source ""


# instance fields
.field private final OooO0O0:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lz2/u90;-><init>()V

    iput-boolean p1, p0, Lz2/x60;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public OooO()Lz2/z60;
    .locals 1

    new-instance v0, Lz2/z60;

    invoke-direct {v0}, Lz2/z60;-><init>()V

    return-object v0
.end method

.method public OooO0OO(Ljava/lang/Class;)Lz2/b90;
    .locals 3
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

    const/4 v0, 0x5

    new-array v0, v0, [Lz2/u90;

    invoke-virtual {p0}, Lz2/x60;->OooO()Lz2/z60;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lz2/x60;->OooO0oo()Lz2/y60;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lz2/x60;->OooOO0o()Lz2/u90;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lz2/x60;->OooOO0()Lz2/b70;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lz2/x60;->OooOO0O()Lz2/c70;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/u90;

    invoke-virtual {v1, p1}, Lz2/u90;->OooO0oO(Ljava/lang/Class;)Lz2/b90;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public OooO0oo()Lz2/y60;
    .locals 1

    new-instance v0, Lz2/y60;

    invoke-direct {v0, p0}, Lz2/y60;-><init>(Lz2/u90;)V

    return-object v0
.end method

.method public OooOO0()Lz2/b70;
    .locals 1

    new-instance v0, Lz2/b70;

    invoke-direct {v0}, Lz2/b70;-><init>()V

    return-object v0
.end method

.method public OooOO0O()Lz2/c70;
    .locals 1

    new-instance v0, Lz2/c70;

    invoke-direct {v0}, Lz2/c70;-><init>()V

    return-object v0
.end method

.method public OooOO0o()Lz2/u90;
    .locals 1

    iget-boolean v0, p0, Lz2/x60;->OooO0O0:Z

    if-eqz v0, :cond_0

    new-instance v0, Lz2/e70;

    invoke-direct {v0}, Lz2/e70;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lz2/d70;

    invoke-direct {v0}, Lz2/d70;-><init>()V

    return-object v0
.end method
