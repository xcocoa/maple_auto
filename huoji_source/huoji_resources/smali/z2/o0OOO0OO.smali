.class public Lz2/o0OOO0OO;
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
.field private final OoooOoO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/o0O0O0Oo;",
            ">;"
        }
    .end annotation
.end field

.field private final OoooOoo:Lz2/o0o0000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o0o0000<",
            "*>;"
        }
    .end annotation
.end field

.field private final Ooooo00:Lz2/o0OOo000$OooO00o;

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


# direct methods
.method public constructor <init>(Ljava/util/List;Lz2/o0o0000;Lz2/o0OOo000$OooO00o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz2/o0O0O0Oo;",
            ">;",
            "Lz2/o0o0000<",
            "*>;",
            "Lz2/o0OOo000$OooO00o;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lz2/o0OOO0OO;->Ooooo0o:I

    iput-object p1, p0, Lz2/o0OOO0OO;->OoooOoO:Ljava/util/List;

    iput-object p2, p0, Lz2/o0OOO0OO;->OoooOoo:Lz2/o0o0000;

    iput-object p3, p0, Lz2/o0OOO0OO;->Ooooo00:Lz2/o0OOo000$OooO00o;

    return-void
.end method

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

    invoke-virtual {p1}, Lz2/o0o0000;->OooO0OO()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lz2/o0OOO0OO;-><init>(Ljava/util/List;Lz2/o0o0000;Lz2/o0OOo000$OooO00o;)V

    return-void
.end method

.method private OooO00o()Z
    .locals 2

    iget v0, p0, Lz2/o0OOO0OO;->OooooOo:I

    iget-object v1, p0, Lz2/o0OOO0OO;->OooooOO:Ljava/util/List;

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
    .locals 7

    :cond_0
    :goto_0
    iget-object v0, p0, Lz2/o0OOO0OO;->OooooOO:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lz2/o0OOO0OO;->OooO00o()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lz2/o0OOO0OO;->Oooooo0:Lz2/oO0o0000$OooO00o;

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    invoke-direct {p0}, Lz2/o0OOO0OO;->OooO00o()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lz2/o0OOO0OO;->OooooOO:Ljava/util/List;

    iget v3, p0, Lz2/o0OOO0OO;->OooooOo:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lz2/o0OOO0OO;->OooooOo:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/oO0o0000;

    iget-object v3, p0, Lz2/o0OOO0OO;->Oooooo:Ljava/io/File;

    iget-object v4, p0, Lz2/o0OOO0OO;->OoooOoo:Lz2/o0o0000;

    invoke-virtual {v4}, Lz2/o0o0000;->OooOOoo()I

    move-result v4

    iget-object v5, p0, Lz2/o0OOO0OO;->OoooOoo:Lz2/o0o0000;

    invoke-virtual {v5}, Lz2/o0o0000;->OooO0o()I

    move-result v5

    iget-object v6, p0, Lz2/o0OOO0OO;->OoooOoo:Lz2/o0o0000;

    invoke-virtual {v6}, Lz2/o0o0000;->OooOO0O()Lz2/o0O0OOO0;

    move-result-object v6

    invoke-interface {v0, v3, v4, v5, v6}, Lz2/oO0o0000;->OooO0O0(Ljava/lang/Object;IILz2/o0O0OOO0;)Lz2/oO0o0000$OooO00o;

    move-result-object v0

    iput-object v0, p0, Lz2/o0OOO0OO;->Oooooo0:Lz2/oO0o0000$OooO00o;

    iget-object v0, p0, Lz2/o0OOO0OO;->Oooooo0:Lz2/oO0o0000$OooO00o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lz2/o0OOO0OO;->OoooOoo:Lz2/o0o0000;

    iget-object v3, p0, Lz2/o0OOO0OO;->Oooooo0:Lz2/oO0o0000$OooO00o;

    iget-object v3, v3, Lz2/oO0o0000$OooO00o;->OooO0OO:Lz2/o0O0oo00;

    invoke-interface {v3}, Lz2/o0O0oo00;->OooO00o()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lz2/o0o0000;->OooOo00(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lz2/o0OOO0OO;->Oooooo0:Lz2/oO0o0000$OooO00o;

    iget-object v0, v0, Lz2/oO0o0000$OooO00o;->OooO0OO:Lz2/o0O0oo00;

    iget-object v1, p0, Lz2/o0OOO0OO;->OoooOoo:Lz2/o0o0000;

    invoke-virtual {v1}, Lz2/o0o0000;->OooOO0o()Lcom/bumptech/glide/Priority;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lz2/o0O0oo00;->OooO0o0(Lcom/bumptech/glide/Priority;Lz2/o0O0oo00$OooO00o;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_2
    iget v0, p0, Lz2/o0OOO0OO;->Ooooo0o:I

    add-int/2addr v0, v2

    iput v0, p0, Lz2/o0OOO0OO;->Ooooo0o:I

    iget-object v2, p0, Lz2/o0OOO0OO;->OoooOoO:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lz2/o0OOO0OO;->OoooOoO:Ljava/util/List;

    iget v2, p0, Lz2/o0OOO0OO;->Ooooo0o:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o0O0O0Oo;

    new-instance v2, Lz2/o0OOOO00;

    iget-object v3, p0, Lz2/o0OOO0OO;->OoooOoo:Lz2/o0o0000;

    invoke-virtual {v3}, Lz2/o0o0000;->OooOOOO()Lz2/o0O0O0Oo;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lz2/o0OOOO00;-><init>(Lz2/o0O0O0Oo;Lz2/o0O0O0Oo;)V

    iget-object v3, p0, Lz2/o0OOO0OO;->OoooOoo:Lz2/o0o0000;

    invoke-virtual {v3}, Lz2/o0o0000;->OooO0Oo()Lz2/oO00Oo0;

    move-result-object v3

    invoke-interface {v3, v2}, Lz2/oO00Oo0;->OooO0O0(Lz2/o0O0O0Oo;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lz2/o0OOO0OO;->Oooooo:Ljava/io/File;

    if-eqz v2, :cond_0

    iput-object v0, p0, Lz2/o0OOO0OO;->OooooO0:Lz2/o0O0O0Oo;

    iget-object v0, p0, Lz2/o0OOO0OO;->OoooOoo:Lz2/o0o0000;

    invoke-virtual {v0, v2}, Lz2/o0o0000;->OooOO0(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lz2/o0OOO0OO;->OooooOO:Ljava/util/List;

    iput v1, p0, Lz2/o0OOO0OO;->OooooOo:I

    goto/16 :goto_0
.end method

.method public OooO0OO(Ljava/lang/Exception;)V
    .locals 4
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/o0OOO0OO;->Ooooo00:Lz2/o0OOo000$OooO00o;

    iget-object v1, p0, Lz2/o0OOO0OO;->OooooO0:Lz2/o0O0O0Oo;

    iget-object v2, p0, Lz2/o0OOO0OO;->Oooooo0:Lz2/oO0o0000$OooO00o;

    iget-object v2, v2, Lz2/oO0o0000$OooO00o;->OooO0OO:Lz2/o0O0oo00;

    sget-object v3, Lcom/bumptech/glide/load/DataSource;->DATA_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v0, v1, p1, v2, v3}, Lz2/o0OOo000$OooO00o;->OooO00o(Lz2/o0O0O0Oo;Ljava/lang/Exception;Lz2/o0O0oo00;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method public OooO0o(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lz2/o0OOO0OO;->Ooooo00:Lz2/o0OOo000$OooO00o;

    iget-object v1, p0, Lz2/o0OOO0OO;->OooooO0:Lz2/o0O0O0Oo;

    iget-object v2, p0, Lz2/o0OOO0OO;->Oooooo0:Lz2/oO0o0000$OooO00o;

    iget-object v3, v2, Lz2/oO0o0000$OooO00o;->OooO0OO:Lz2/o0O0oo00;

    sget-object v4, Lcom/bumptech/glide/load/DataSource;->DATA_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    iget-object v5, p0, Lz2/o0OOO0OO;->OooooO0:Lz2/o0O0O0Oo;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lz2/o0OOo000$OooO00o;->OooO0o0(Lz2/o0O0O0Oo;Ljava/lang/Object;Lz2/o0O0oo00;Lcom/bumptech/glide/load/DataSource;Lz2/o0O0O0Oo;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lz2/o0OOO0OO;->Oooooo0:Lz2/oO0o0000$OooO00o;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lz2/oO0o0000$OooO00o;->OooO0OO:Lz2/o0O0oo00;

    invoke-interface {v0}, Lz2/o0O0oo00;->cancel()V

    :cond_0
    return-void
.end method
