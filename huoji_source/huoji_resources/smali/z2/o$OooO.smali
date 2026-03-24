.class public final Lz2/o$OooO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lz2/o$OooO0o;",
        ">;"
    }
.end annotation


# instance fields
.field private final OoooOoO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/o$OooO0o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lz2/o$OooO;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz2/o$OooO0o;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/o$OooO;->OoooOoO:Ljava/util/List;

    return-void
.end method

.method private static OooO0Oo(Lz2/q1;)Lz2/o$OooO0o;
    .locals 2

    new-instance v0, Lz2/o$OooO0o;

    invoke-static {}, Lz2/l2;->OooO00o()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lz2/o$OooO0o;-><init>(Lz2/q1;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public OooO00o(Lz2/q1;Ljava/util/concurrent/Executor;)V
    .locals 2

    iget-object v0, p0, Lz2/o$OooO;->OoooOoO:Ljava/util/List;

    new-instance v1, Lz2/o$OooO0o;

    invoke-direct {v1, p1, p2}, Lz2/o$OooO0o;-><init>(Lz2/q1;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0O0(Lz2/q1;)Z
    .locals 1

    iget-object v0, p0, Lz2/o$OooO;->OoooOoO:Ljava/util/List;

    invoke-static {p1}, Lz2/o$OooO;->OooO0Oo(Lz2/q1;)Lz2/o$OooO0o;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public OooO0OO()Lz2/o$OooO;
    .locals 3

    new-instance v0, Lz2/o$OooO;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lz2/o$OooO;->OoooOoO:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lz2/o$OooO;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public OooO0o0(Lz2/q1;)V
    .locals 1

    iget-object v0, p0, Lz2/o$OooO;->OoooOoO:Ljava/util/List;

    invoke-static {p1}, Lz2/o$OooO;->OooO0Oo(Lz2/q1;)Lz2/o$OooO0o;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lz2/o$OooO;->OoooOoO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lz2/o$OooO;->OoooOoO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lz2/o$OooO0o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o$OooO;->OoooOoO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lz2/o$OooO;->OoooOoO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
