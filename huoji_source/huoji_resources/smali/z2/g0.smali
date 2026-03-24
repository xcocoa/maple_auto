.class public Lz2/g0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/n0;


# instance fields
.field private final OooO00o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lz2/p0;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0O0:Z

.field private OooO0OO:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lz2/g0;->OooO00o:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/p0;)V
    .locals 1
    .param p1    # Lz2/p0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/g0;->OooO00o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lz2/g0;->OooO0OO:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lz2/p0;->onDestroy()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lz2/g0;->OooO0O0:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lz2/p0;->onStart()V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lz2/p0;->onStop()V

    :goto_0
    return-void
.end method

.method public OooO0O0(Lz2/p0;)V
    .locals 1
    .param p1    # Lz2/p0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/g0;->OooO00o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0OO()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/g0;->OooO0OO:Z

    iget-object v0, p0, Lz2/g0;->OooO00o:Ljava/util/Set;

    invoke-static {v0}, Lz2/t2;->OooOO0O(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/p0;

    invoke-interface {v1}, Lz2/p0;->onDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooO0Oo()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/g0;->OooO0O0:Z

    iget-object v0, p0, Lz2/g0;->OooO00o:Ljava/util/Set;

    invoke-static {v0}, Lz2/t2;->OooOO0O(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/p0;

    invoke-interface {v1}, Lz2/p0;->onStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooO0o0()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/g0;->OooO0O0:Z

    iget-object v0, p0, Lz2/g0;->OooO00o:Ljava/util/Set;

    invoke-static {v0}, Lz2/t2;->OooOO0O(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/p0;

    invoke-interface {v1}, Lz2/p0;->onStop()V

    goto :goto_0

    :cond_0
    return-void
.end method
