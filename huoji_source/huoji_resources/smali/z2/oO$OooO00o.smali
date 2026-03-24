.class public Lz2/oO$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0O0oo00;
.implements Lz2/o0O0oo00$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/oO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/o0O0oo00<",
        "TData;>;",
        "Lz2/o0O0oo00$OooO00o<",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final OoooOoO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/o0O0oo00<",
            "TData;>;>;"
        }
    .end annotation
.end field

.field private final OoooOoo:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private Ooooo00:I

.field private Ooooo0o:Lcom/bumptech/glide/Priority;

.field private OooooO0:Lz2/o0O0oo00$OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o0O0oo00$OooO00o<",
            "-TData;>;"
        }
    .end annotation
.end field

.field private OooooOO:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private OooooOo:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/core/util/Pools$Pool;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/util/Pools$Pool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz2/o0O0oo00<",
            "TData;>;>;",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz2/oO$OooO00o;->OoooOoo:Landroidx/core/util/Pools$Pool;

    invoke-static {p1}, Lz2/r2;->OooO0OO(Ljava/util/Collection;)Ljava/util/Collection;

    iput-object p1, p0, Lz2/oO$OooO00o;->OoooOoO:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lz2/oO$OooO00o;->Ooooo00:I

    return-void
.end method

.method private OooO0oO()V
    .locals 4

    iget-boolean v0, p0, Lz2/oO$OooO00o;->OooooOo:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lz2/oO$OooO00o;->Ooooo00:I

    iget-object v1, p0, Lz2/oO$OooO00o;->OoooOoO:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lz2/oO$OooO00o;->Ooooo00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz2/oO$OooO00o;->Ooooo00:I

    iget-object v0, p0, Lz2/oO$OooO00o;->Ooooo0o:Lcom/bumptech/glide/Priority;

    iget-object v1, p0, Lz2/oO$OooO00o;->OooooO0:Lz2/o0O0oo00$OooO00o;

    invoke-virtual {p0, v0, v1}, Lz2/oO$OooO00o;->OooO0o0(Lcom/bumptech/glide/Priority;Lz2/o0O0oo00$OooO00o;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz2/oO$OooO00o;->OooooOO:Ljava/util/List;

    invoke-static {v0}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lz2/oO$OooO00o;->OooooO0:Lz2/o0O0oo00$OooO00o;

    new-instance v1, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lz2/oO$OooO00o;->OooooOO:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "Fetch failed"

    invoke-direct {v1, v3, v2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lz2/o0O0oo00$OooO00o;->OooO0OO(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public OooO00o()Ljava/lang/Class;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/oO$OooO00o;->OoooOoO:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o0O0oo00;

    invoke-interface {v0}, Lz2/o0O0oo00;->OooO00o()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public OooO0O0()V
    .locals 2

    iget-object v0, p0, Lz2/oO$OooO00o;->OooooOO:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz2/oO$OooO00o;->OoooOoo:Landroidx/core/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lz2/oO$OooO00o;->OooooOO:Ljava/util/List;

    iget-object v0, p0, Lz2/oO$OooO00o;->OoooOoO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/o0O0oo00;

    invoke-interface {v1}, Lz2/o0O0oo00;->OooO0O0()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public OooO0OO(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/oO$OooO00o;->OooooOO:Ljava/util/List;

    invoke-static {v0}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lz2/oO$OooO00o;->OooO0oO()V

    return-void
.end method

.method public OooO0Oo()Lcom/bumptech/glide/load/DataSource;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/oO$OooO00o;->OoooOoO:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o0O0oo00;

    invoke-interface {v0}, Lz2/o0O0oo00;->OooO0Oo()Lcom/bumptech/glide/load/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public OooO0o(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lz2/oO$OooO00o;->OooooO0:Lz2/o0O0oo00$OooO00o;

    invoke-interface {v0, p1}, Lz2/o0O0oo00$OooO00o;->OooO0o(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lz2/oO$OooO00o;->OooO0oO()V

    :goto_0
    return-void
.end method

.method public OooO0o0(Lcom/bumptech/glide/Priority;Lz2/o0O0oo00$OooO00o;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0O0oo00$OooO00o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lz2/o0O0oo00$OooO00o<",
            "-TData;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lz2/oO$OooO00o;->Ooooo0o:Lcom/bumptech/glide/Priority;

    iput-object p2, p0, Lz2/oO$OooO00o;->OooooO0:Lz2/o0O0oo00$OooO00o;

    iget-object p2, p0, Lz2/oO$OooO00o;->OoooOoo:Landroidx/core/util/Pools$Pool;

    invoke-interface {p2}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lz2/oO$OooO00o;->OooooOO:Ljava/util/List;

    iget-object p2, p0, Lz2/oO$OooO00o;->OoooOoO:Ljava/util/List;

    iget v0, p0, Lz2/oO$OooO00o;->Ooooo00:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz2/o0O0oo00;

    invoke-interface {p2, p1, p0}, Lz2/o0O0oo00;->OooO0o0(Lcom/bumptech/glide/Priority;Lz2/o0O0oo00$OooO00o;)V

    iget-boolean p1, p0, Lz2/oO$OooO00o;->OooooOo:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lz2/oO$OooO00o;->cancel()V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/oO$OooO00o;->OooooOo:Z

    iget-object v0, p0, Lz2/oO$OooO00o;->OoooOoO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/o0O0oo00;

    invoke-interface {v1}, Lz2/o0O0oo00;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method
