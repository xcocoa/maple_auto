.class public Lz2/o0O00o0;
.super Landroid/content/ContextWrapper;
.source ""


# static fields
.field public static final OooOO0:Lz2/o0O00000;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o0O00000<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field private final OooO:I

.field private final OooO00o:Lz2/oO0OOo0o;

.field private final OooO0O0:Lcom/bumptech/glide/Registry;

.field private final OooO0OO:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

.field private final OooO0Oo:Lz2/p1;

.field private final OooO0o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lz2/o0O00000<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final OooO0o0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/o1<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final OooO0oO:Lz2/ooo0Oo0;

.field private final OooO0oo:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/o00OOOOo;

    invoke-direct {v0}, Lz2/o00OOOOo;-><init>()V

    sput-object v0, Lz2/o0O00o0;->OooOO0:Lz2/o0O00000;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lz2/oO0OOo0o;Lcom/bumptech/glide/Registry;Lcom/bumptech/glide/request/target/ImageViewTargetFactory;Lz2/p1;Ljava/util/Map;Ljava/util/List;Lz2/ooo0Oo0;ZI)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/oO0OOo0o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/Registry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/request/target/ImageViewTargetFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lz2/p1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lz2/ooo0Oo0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lz2/oO0OOo0o;",
            "Lcom/bumptech/glide/Registry;",
            "Lcom/bumptech/glide/request/target/ImageViewTargetFactory;",
            "Lz2/p1;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lz2/o0O00000<",
            "**>;>;",
            "Ljava/util/List<",
            "Lz2/o1<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lz2/ooo0Oo0;",
            "ZI)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lz2/o0O00o0;->OooO00o:Lz2/oO0OOo0o;

    iput-object p3, p0, Lz2/o0O00o0;->OooO0O0:Lcom/bumptech/glide/Registry;

    iput-object p4, p0, Lz2/o0O00o0;->OooO0OO:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    iput-object p5, p0, Lz2/o0O00o0;->OooO0Oo:Lz2/p1;

    iput-object p7, p0, Lz2/o0O00o0;->OooO0o0:Ljava/util/List;

    iput-object p6, p0, Lz2/o0O00o0;->OooO0o:Ljava/util/Map;

    iput-object p8, p0, Lz2/o0O00o0;->OooO0oO:Lz2/ooo0Oo0;

    iput-boolean p9, p0, Lz2/o0O00o0;->OooO0oo:Z

    iput p10, p0, Lz2/o0O00o0;->OooO:I

    return-void
.end method


# virtual methods
.method public OooO()Z
    .locals 1

    iget-boolean v0, p0, Lz2/o0O00o0;->OooO0oo:Z

    return v0
.end method

.method public OooO00o(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/ViewTarget;
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Class<",
            "TX;>;)",
            "Lcom/bumptech/glide/request/target/ViewTarget<",
            "Landroid/widget/ImageView;",
            "TX;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o0O00o0;->OooO0OO:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;->buildTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/ViewTarget;

    move-result-object p1

    return-object p1
.end method

.method public OooO0O0()Lz2/oO0OOo0o;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/o0O00o0;->OooO00o:Lz2/oO0OOo0o;

    return-object v0
.end method

.method public OooO0OO()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz2/o1<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o0O00o0;->OooO0o0:Ljava/util/List;

    return-object v0
.end method

.method public OooO0Oo()Lz2/p1;
    .locals 1

    iget-object v0, p0, Lz2/o0O00o0;->OooO0Oo:Lz2/p1;

    return-object v0
.end method

.method public OooO0o()Lz2/ooo0Oo0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/o0O00o0;->OooO0oO:Lz2/ooo0Oo0;

    return-object v0
.end method

.method public OooO0o0(Ljava/lang/Class;)Lz2/o0O00000;
    .locals 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lz2/o0O00000<",
            "*TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o0O00o0;->OooO0o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o0O00000;

    if-nez v0, :cond_1

    iget-object v1, p0, Lz2/o0O00o0;->OooO0o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o0O00000;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Lz2/o0O00o0;->OooOO0:Lz2/o0O00000;

    :cond_2
    return-object v0
.end method

.method public OooO0oO()I
    .locals 1

    iget v0, p0, Lz2/o0O00o0;->OooO:I

    return v0
.end method

.method public OooO0oo()Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/o0O00o0;->OooO0O0:Lcom/bumptech/glide/Registry;

    return-object v0
.end method
