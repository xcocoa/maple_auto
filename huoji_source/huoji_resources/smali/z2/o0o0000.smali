.class public final Lz2/o0o0000;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private OooO:Lz2/o0O0OOO0;

.field private final OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/oO0o0000$OooO00o<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final OooO0O0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/o0O0O0Oo;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0OO:Lz2/o0O00o0;

.field private OooO0Oo:Ljava/lang/Object;

.field private OooO0o:I

.field private OooO0o0:I

.field private OooO0oO:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private OooO0oo:Lcom/bumptech/glide/load/engine/DecodeJob$OooO;

.field private OooOO0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lz2/o0O0o000<",
            "*>;>;"
        }
    .end annotation
.end field

.field private OooOO0O:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscode;>;"
        }
    .end annotation
.end field

.field private OooOO0o:Z

.field private OooOOO:Lz2/o0O0O0Oo;

.field private OooOOO0:Z

.field private OooOOOO:Lcom/bumptech/glide/Priority;

.field private OooOOOo:Lz2/o0oo0000;

.field private OooOOo:Z

.field private OooOOo0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/o0o0000;->OooO00o:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/o0o0000;->OooO0O0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public OooO()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o0o0000;->OooO0Oo:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public OooO00o()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/o0o0000;->OooO0OO:Lz2/o0O00o0;

    iput-object v0, p0, Lz2/o0o0000;->OooO0Oo:Ljava/lang/Object;

    iput-object v0, p0, Lz2/o0o0000;->OooOOO:Lz2/o0O0O0Oo;

    iput-object v0, p0, Lz2/o0o0000;->OooO0oO:Ljava/lang/Class;

    iput-object v0, p0, Lz2/o0o0000;->OooOO0O:Ljava/lang/Class;

    iput-object v0, p0, Lz2/o0o0000;->OooO:Lz2/o0O0OOO0;

    iput-object v0, p0, Lz2/o0o0000;->OooOOOO:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lz2/o0o0000;->OooOO0:Ljava/util/Map;

    iput-object v0, p0, Lz2/o0o0000;->OooOOOo:Lz2/o0oo0000;

    iget-object v0, p0, Lz2/o0o0000;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/o0o0000;->OooOO0o:Z

    iget-object v1, p0, Lz2/o0o0000;->OooO0O0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-boolean v0, p0, Lz2/o0o0000;->OooOOO0:Z

    return-void
.end method

.method public OooO0O0()Lz2/oO0OOo0o;
    .locals 1

    iget-object v0, p0, Lz2/o0o0000;->OooO0OO:Lz2/o0O00o0;

    invoke-virtual {v0}, Lz2/o0O00o0;->OooO0O0()Lz2/oO0OOo0o;

    move-result-object v0

    return-object v0
.end method

.method public OooO0OO()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz2/o0O0O0Oo;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/o0o0000;->OooOOO0:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/o0o0000;->OooOOO0:Z

    iget-object v0, p0, Lz2/o0o0000;->OooO0O0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lz2/o0o0000;->OooO0oO()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz2/oO0o0000$OooO00o;

    iget-object v5, p0, Lz2/o0o0000;->OooO0O0:Ljava/util/List;

    iget-object v6, v4, Lz2/oO0o0000$OooO00o;->OooO00o:Lz2/o0O0O0Oo;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lz2/o0o0000;->OooO0O0:Ljava/util/List;

    iget-object v6, v4, Lz2/oO0o0000$OooO00o;->OooO00o:Lz2/o0O0O0Oo;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v5, 0x0

    :goto_1
    iget-object v6, v4, Lz2/oO0o0000$OooO00o;->OooO0O0:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Lz2/o0o0000;->OooO0O0:Ljava/util/List;

    iget-object v7, v4, Lz2/oO0o0000$OooO00o;->OooO0O0:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lz2/o0o0000;->OooO0O0:Ljava/util/List;

    iget-object v7, v4, Lz2/oO0o0000$OooO00o;->OooO0O0:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lz2/o0o0000;->OooO0O0:Ljava/util/List;

    return-object v0
.end method

.method public OooO0Oo()Lz2/oO00Oo0;
    .locals 1

    iget-object v0, p0, Lz2/o0o0000;->OooO0oo:Lcom/bumptech/glide/load/engine/DecodeJob$OooO;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$OooO;->OooO00o()Lz2/oO00Oo0;

    move-result-object v0

    return-object v0
.end method

.method public OooO0o()I
    .locals 1

    iget v0, p0, Lz2/o0o0000;->OooO0o:I

    return v0
.end method

.method public OooO0o0()Lz2/o0oo0000;
    .locals 1

    iget-object v0, p0, Lz2/o0o0000;->OooOOOo:Lz2/o0oo0000;

    return-object v0
.end method

.method public OooO0oO()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz2/oO0o0000$OooO00o<",
            "*>;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/o0o0000;->OooOO0o:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/o0o0000;->OooOO0o:Z

    iget-object v0, p0, Lz2/o0o0000;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lz2/o0o0000;->OooO0OO:Lz2/o0O00o0;

    invoke-virtual {v0}, Lz2/o0O00o0;->OooO0oo()Lcom/bumptech/glide/Registry;

    move-result-object v0

    iget-object v1, p0, Lz2/o0o0000;->OooO0Oo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/Registry;->OooO(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz2/oO0o0000;

    iget-object v4, p0, Lz2/o0o0000;->OooO0Oo:Ljava/lang/Object;

    iget v5, p0, Lz2/o0o0000;->OooO0o0:I

    iget v6, p0, Lz2/o0o0000;->OooO0o:I

    iget-object v7, p0, Lz2/o0o0000;->OooO:Lz2/o0O0OOO0;

    invoke-interface {v3, v4, v5, v6, v7}, Lz2/oO0o0000;->OooO0O0(Ljava/lang/Object;IILz2/o0O0OOO0;)Lz2/oO0o0000$OooO00o;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lz2/o0o0000;->OooO00o:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz2/o0o0000;->OooO00o:Ljava/util/List;

    return-object v0
.end method

.method public OooO0oo(Ljava/lang/Class;)Lz2/oO000O0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;)",
            "Lz2/oO000O0<",
            "TData;*TTranscode;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o0o0000;->OooO0OO:Lz2/o0O00o0;

    invoke-virtual {v0}, Lz2/o0O00o0;->OooO0oo()Lcom/bumptech/glide/Registry;

    move-result-object v0

    iget-object v1, p0, Lz2/o0o0000;->OooO0oO:Ljava/lang/Class;

    iget-object v2, p0, Lz2/o0o0000;->OooOO0O:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1, v2}, Lcom/bumptech/glide/Registry;->OooO0oo(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lz2/oO000O0;

    move-result-object p1

    return-object p1
.end method

.method public OooOO0(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lz2/oO0o0000<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;
        }
    .end annotation

    iget-object v0, p0, Lz2/o0o0000;->OooO0OO:Lz2/o0O00o0;

    invoke-virtual {v0}, Lz2/o0O00o0;->OooO0oo()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->OooO(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public OooOO0O()Lz2/o0O0OOO0;
    .locals 1

    iget-object v0, p0, Lz2/o0o0000;->OooO:Lz2/o0O0OOO0;

    return-object v0
.end method

.method public OooOO0o()Lcom/bumptech/glide/Priority;
    .locals 1

    iget-object v0, p0, Lz2/o0o0000;->OooOOOO:Lcom/bumptech/glide/Priority;

    return-object v0
.end method

.method public OooOOO(Lz2/oO0Ooooo;)Lz2/oo0OOoo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/oO0Ooooo<",
            "TZ;>;)",
            "Lz2/oo0OOoo<",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o0o0000;->OooO0OO:Lz2/o0O00o0;

    invoke-virtual {v0}, Lz2/o0O00o0;->OooO0oo()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->OooOO0O(Lz2/oO0Ooooo;)Lz2/oo0OOoo;

    move-result-object p1

    return-object p1
.end method

.method public OooOOO0()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o0o0000;->OooO0OO:Lz2/o0O00o0;

    invoke-virtual {v0}, Lz2/o0O00o0;->OooO0oo()Lcom/bumptech/glide/Registry;

    move-result-object v0

    iget-object v1, p0, Lz2/o0o0000;->OooO0Oo:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lz2/o0o0000;->OooO0oO:Ljava/lang/Class;

    iget-object v3, p0, Lz2/o0o0000;->OooOO0O:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/Registry;->OooOO0(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public OooOOOO()Lz2/o0O0O0Oo;
    .locals 1

    iget-object v0, p0, Lz2/o0o0000;->OooOOO:Lz2/o0O0O0Oo;

    return-object v0
.end method

.method public OooOOOo(Ljava/lang/Object;)Lz2/o0oO0O0o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lz2/o0oO0O0o<",
            "TX;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;
        }
    .end annotation

    iget-object v0, p0, Lz2/o0o0000;->OooO0OO:Lz2/o0O00o0;

    invoke-virtual {v0}, Lz2/o0O00o0;->OooO0oo()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->OooOOO0(Ljava/lang/Object;)Lz2/o0oO0O0o;

    move-result-object p1

    return-object p1
.end method

.method public OooOOo(Ljava/lang/Class;)Lz2/o0O0o000;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lz2/o0O0o000<",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o0o0000;->OooOO0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o0O0o000;

    if-nez v0, :cond_1

    iget-object v1, p0, Lz2/o0o0000;->OooOO0:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
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

    check-cast v0, Lz2/o0O0o000;

    :cond_1
    if-nez v0, :cond_4

    iget-object v0, p0, Lz2/o0o0000;->OooOO0:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lz2/o0o0000;->OooOOo0:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing transformation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". If you wish to ignore unknown resource types, use the optional transformation methods."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    invoke-static {}, Lz2/oOO0OO0O;->OooO0OO()Lz2/oOO0OO0O;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0
.end method

.method public OooOOo0()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o0o0000;->OooOO0O:Ljava/lang/Class;

    return-object v0
.end method

.method public OooOOoo()I
    .locals 1

    iget v0, p0, Lz2/o0o0000;->OooO0o0:I

    return v0
.end method

.method public OooOo(Lz2/o0O0O0Oo;)Z
    .locals 5

    invoke-virtual {p0}, Lz2/o0o0000;->OooO0oO()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz2/oO0o0000$OooO00o;

    iget-object v4, v4, Lz2/oO0o0000$OooO00o;->OooO00o:Lz2/o0O0O0Oo;

    invoke-interface {v4, p1}, Lz2/o0O0O0Oo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public OooOo0(Lz2/o0O00o0;Ljava/lang/Object;Lz2/o0O0O0Oo;IILz2/o0oo0000;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lz2/o0O0OOO0;Ljava/util/Map;ZZLcom/bumptech/glide/load/engine/DecodeJob$OooO;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/o0O00o0;",
            "Ljava/lang/Object;",
            "Lz2/o0O0O0Oo;",
            "II",
            "Lz2/o0oo0000;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lz2/o0O0OOO0;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lz2/o0O0o000<",
            "*>;>;ZZ",
            "Lcom/bumptech/glide/load/engine/DecodeJob$OooO;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lz2/o0o0000;->OooO0OO:Lz2/o0O00o0;

    iput-object p2, p0, Lz2/o0o0000;->OooO0Oo:Ljava/lang/Object;

    iput-object p3, p0, Lz2/o0o0000;->OooOOO:Lz2/o0O0O0Oo;

    iput p4, p0, Lz2/o0o0000;->OooO0o0:I

    iput p5, p0, Lz2/o0o0000;->OooO0o:I

    iput-object p6, p0, Lz2/o0o0000;->OooOOOo:Lz2/o0oo0000;

    iput-object p7, p0, Lz2/o0o0000;->OooO0oO:Ljava/lang/Class;

    iput-object p14, p0, Lz2/o0o0000;->OooO0oo:Lcom/bumptech/glide/load/engine/DecodeJob$OooO;

    iput-object p8, p0, Lz2/o0o0000;->OooOO0O:Ljava/lang/Class;

    iput-object p9, p0, Lz2/o0o0000;->OooOOOO:Lcom/bumptech/glide/Priority;

    iput-object p10, p0, Lz2/o0o0000;->OooO:Lz2/o0O0OOO0;

    iput-object p11, p0, Lz2/o0o0000;->OooOO0:Ljava/util/Map;

    iput-boolean p12, p0, Lz2/o0o0000;->OooOOo0:Z

    iput-boolean p13, p0, Lz2/o0o0000;->OooOOo:Z

    return-void
.end method

.method public OooOo00(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/o0o0000;->OooO0oo(Ljava/lang/Class;)Lz2/oO000O0;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public OooOo0O(Lz2/oO0Ooooo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0Ooooo<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lz2/o0o0000;->OooO0OO:Lz2/o0O00o0;

    invoke-virtual {v0}, Lz2/o0O00o0;->OooO0oo()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->OooOOO(Lz2/oO0Ooooo;)Z

    move-result p1

    return p1
.end method

.method public OooOo0o()Z
    .locals 1

    iget-boolean v0, p0, Lz2/o0o0000;->OooOOo:Z

    return v0
.end method
