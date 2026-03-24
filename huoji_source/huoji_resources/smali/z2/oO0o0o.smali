.class public Lz2/oO0o0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0OOo000;
.implements Lz2/o0O0oo00$OooO00o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/o0OOo000;",
        "Lz2/o0O0oo00$OooO00o<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final OoooOoO:Lz2/o0OOo000$OooO00o;

.field private final OoooOoo:Lz2/o0o0000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o0o0000<",
            "*>;"
        }
    .end annotation
.end field

.field private Ooooo00:I

.field private Ooooo0o:I

.field private OooooO0:Lz2/o0O0O0Oo;

.field private OooooOO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/oO0o0000<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field private OooooOo:I

.field private Oooooo:Ljava/io/File;

.field private volatile Oooooo0:Lz2/oO0o0000$OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oO0o0000$OooO00o<",
            "*>;"
        }
    .end annotation
.end field

.field private OoooooO:Lz2/oO0OoOO0;


# direct methods
.method public constructor <init>(Lz2/o0o0000;Lz2/o0OOo000$OooO00o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0o0000<",
            "*>;",
            "Lz2/o0OOo000$OooO00o;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lz2/oO0o0o;->Ooooo0o:I

    iput-object p1, p0, Lz2/oO0o0o;->OoooOoo:Lz2/o0o0000;

    iput-object p2, p0, Lz2/oO0o0o;->OoooOoO:Lz2/o0OOo000$OooO00o;

    return-void
.end method

.method private OooO00o()Z
    .locals 2

    iget v0, p0, Lz2/oO0o0o;->OooooOo:I

    iget-object v1, p0, Lz2/oO0o0o;->OooooOO:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public OooO0O0()Z
    .locals 14

    iget-object v0, p0, Lz2/oO0o0o;->OoooOoo:Lz2/o0o0000;

    invoke-virtual {v0}, Lz2/o0o0000;->OooO0OO()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lz2/oO0o0o;->OoooOoo:Lz2/o0o0000;

    invoke-virtual {v1}, Lz2/o0o0000;->OooOOO0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const-class v0, Ljava/io/File;

    iget-object v1, p0, Lz2/oO0o0o;->OoooOoo:Lz2/o0o0000;

    invoke-virtual {v1}, Lz2/o0o0000;->OooOOo0()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find any load path from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz2/oO0o0o;->OoooOoo:Lz2/o0o0000;

    invoke-virtual {v2}, Lz2/o0o0000;->OooO()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz2/oO0o0o;->OoooOoo:Lz2/o0o0000;

    invoke-virtual {v2}, Lz2/o0o0000;->OooOOo0()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v3, p0, Lz2/oO0o0o;->OooooOO:Ljava/util/List;

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lz2/oO0o0o;->OooO00o()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lz2/oO0o0o;->Oooooo0:Lz2/oO0o0000$OooO00o;

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    invoke-direct {p0}, Lz2/oO0o0o;->OooO00o()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lz2/oO0o0o;->OooooOO:Ljava/util/List;

    iget v1, p0, Lz2/oO0o0o;->OooooOo:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lz2/oO0o0o;->OooooOo:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/oO0o0000;

    iget-object v1, p0, Lz2/oO0o0o;->Oooooo:Ljava/io/File;

    iget-object v3, p0, Lz2/oO0o0o;->OoooOoo:Lz2/o0o0000;

    invoke-virtual {v3}, Lz2/o0o0000;->OooOOoo()I

    move-result v3

    iget-object v5, p0, Lz2/oO0o0o;->OoooOoo:Lz2/o0o0000;

    invoke-virtual {v5}, Lz2/o0o0000;->OooO0o()I

    move-result v5

    iget-object v6, p0, Lz2/oO0o0o;->OoooOoo:Lz2/o0o0000;

    invoke-virtual {v6}, Lz2/o0o0000;->OooOO0O()Lz2/o0O0OOO0;

    move-result-object v6

    invoke-interface {v0, v1, v3, v5, v6}, Lz2/oO0o0000;->OooO0O0(Ljava/lang/Object;IILz2/o0O0OOO0;)Lz2/oO0o0000$OooO00o;

    move-result-object v0

    iput-object v0, p0, Lz2/oO0o0o;->Oooooo0:Lz2/oO0o0000$OooO00o;

    iget-object v0, p0, Lz2/oO0o0o;->Oooooo0:Lz2/oO0o0000$OooO00o;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lz2/oO0o0o;->OoooOoo:Lz2/o0o0000;

    iget-object v1, p0, Lz2/oO0o0o;->Oooooo0:Lz2/oO0o0000$OooO00o;

    iget-object v1, v1, Lz2/oO0o0000$OooO00o;->OooO0OO:Lz2/o0O0oo00;

    invoke-interface {v1}, Lz2/o0O0oo00;->OooO00o()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/o0o0000;->OooOo00(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lz2/oO0o0o;->Oooooo0:Lz2/oO0o0000$OooO00o;

    iget-object v0, v0, Lz2/oO0o0000$OooO00o;->OooO0OO:Lz2/o0O0oo00;

    iget-object v1, p0, Lz2/oO0o0o;->OoooOoo:Lz2/o0o0000;

    invoke-virtual {v1}, Lz2/o0o0000;->OooOO0o()Lcom/bumptech/glide/Priority;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lz2/o0O0oo00;->OooO0o0(Lcom/bumptech/glide/Priority;Lz2/o0O0oo00$OooO00o;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    return v2

    :cond_6
    :goto_2
    iget v3, p0, Lz2/oO0o0o;->Ooooo0o:I

    add-int/2addr v3, v4

    iput v3, p0, Lz2/oO0o0o;->Ooooo0o:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_8

    iget v3, p0, Lz2/oO0o0o;->Ooooo00:I

    add-int/2addr v3, v4

    iput v3, p0, Lz2/oO0o0o;->Ooooo00:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_7

    return v2

    :cond_7
    iput v2, p0, Lz2/oO0o0o;->Ooooo0o:I

    :cond_8
    iget v3, p0, Lz2/oO0o0o;->Ooooo00:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz2/o0O0O0Oo;

    iget v4, p0, Lz2/oO0o0o;->Ooooo0o:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/Class;

    iget-object v4, p0, Lz2/oO0o0o;->OoooOoo:Lz2/o0o0000;

    invoke-virtual {v4, v11}, Lz2/o0o0000;->OooOOo(Ljava/lang/Class;)Lz2/o0O0o000;

    move-result-object v10

    new-instance v13, Lz2/oO0OoOO0;

    iget-object v4, p0, Lz2/oO0o0o;->OoooOoo:Lz2/o0o0000;

    invoke-virtual {v4}, Lz2/o0o0000;->OooO0O0()Lz2/oO0OOo0o;

    move-result-object v5

    iget-object v4, p0, Lz2/oO0o0o;->OoooOoo:Lz2/o0o0000;

    invoke-virtual {v4}, Lz2/o0o0000;->OooOOOO()Lz2/o0O0O0Oo;

    move-result-object v7

    iget-object v4, p0, Lz2/oO0o0o;->OoooOoo:Lz2/o0o0000;

    invoke-virtual {v4}, Lz2/o0o0000;->OooOOoo()I

    move-result v8

    iget-object v4, p0, Lz2/oO0o0o;->OoooOoo:Lz2/o0o0000;

    invoke-virtual {v4}, Lz2/o0o0000;->OooO0o()I

    move-result v9

    iget-object v4, p0, Lz2/oO0o0o;->OoooOoo:Lz2/o0o0000;

    invoke-virtual {v4}, Lz2/o0o0000;->OooOO0O()Lz2/o0O0OOO0;

    move-result-object v12

    move-object v4, v13

    move-object v6, v3

    invoke-direct/range {v4 .. v12}, Lz2/oO0OoOO0;-><init>(Lz2/oO0OOo0o;Lz2/o0O0O0Oo;Lz2/o0O0O0Oo;IILz2/o0O0o000;Ljava/lang/Class;Lz2/o0O0OOO0;)V

    iput-object v13, p0, Lz2/oO0o0o;->OoooooO:Lz2/oO0OoOO0;

    iget-object v4, p0, Lz2/oO0o0o;->OoooOoo:Lz2/o0o0000;

    invoke-virtual {v4}, Lz2/o0o0000;->OooO0Oo()Lz2/oO00Oo0;

    move-result-object v4

    iget-object v5, p0, Lz2/oO0o0o;->OoooooO:Lz2/oO0OoOO0;

    invoke-interface {v4, v5}, Lz2/oO00Oo0;->OooO0O0(Lz2/o0O0O0Oo;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lz2/oO0o0o;->Oooooo:Ljava/io/File;

    if-eqz v4, :cond_2

    iput-object v3, p0, Lz2/oO0o0o;->OooooO0:Lz2/o0O0O0Oo;

    iget-object v3, p0, Lz2/oO0o0o;->OoooOoo:Lz2/o0o0000;

    invoke-virtual {v3, v4}, Lz2/o0o0000;->OooOO0(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lz2/oO0o0o;->OooooOO:Ljava/util/List;

    iput v2, p0, Lz2/oO0o0o;->OooooOo:I

    goto/16 :goto_0
.end method

.method public OooO0OO(Ljava/lang/Exception;)V
    .locals 4
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/oO0o0o;->OoooOoO:Lz2/o0OOo000$OooO00o;

    iget-object v1, p0, Lz2/oO0o0o;->OoooooO:Lz2/oO0OoOO0;

    iget-object v2, p0, Lz2/oO0o0o;->Oooooo0:Lz2/oO0o0000$OooO00o;

    iget-object v2, v2, Lz2/oO0o0000$OooO00o;->OooO0OO:Lz2/o0O0oo00;

    sget-object v3, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v0, v1, p1, v2, v3}, Lz2/o0OOo000$OooO00o;->OooO00o(Lz2/o0O0O0Oo;Ljava/lang/Exception;Lz2/o0O0oo00;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method public OooO0o(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lz2/oO0o0o;->OoooOoO:Lz2/o0OOo000$OooO00o;

    iget-object v1, p0, Lz2/oO0o0o;->OooooO0:Lz2/o0O0O0Oo;

    iget-object v2, p0, Lz2/oO0o0o;->Oooooo0:Lz2/oO0o0000$OooO00o;

    iget-object v3, v2, Lz2/oO0o0000$OooO00o;->OooO0OO:Lz2/o0O0oo00;

    sget-object v4, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    iget-object v5, p0, Lz2/oO0o0o;->OoooooO:Lz2/oO0OoOO0;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lz2/o0OOo000$OooO00o;->OooO0o0(Lz2/o0O0O0Oo;Ljava/lang/Object;Lz2/o0O0oo00;Lcom/bumptech/glide/load/DataSource;Lz2/o0O0O0Oo;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lz2/oO0o0o;->Oooooo0:Lz2/oO0o0000$OooO00o;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lz2/oO0o0000$OooO00o;->OooO0OO:Lz2/o0O0oo00;

    invoke-interface {v0}, Lz2/o0O0oo00;->cancel()V

    :cond_0
    return-void
.end method
