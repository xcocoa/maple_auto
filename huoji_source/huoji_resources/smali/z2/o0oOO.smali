.class public final Lz2/o0oOO;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private OooO:Lz2/oOo0000O;

.field private final OooO00o:Ljava/util/Map;
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

.field private OooO0O0:Lz2/ooo0Oo0;

.field private OooO0OO:Lz2/oO000o00;

.field private OooO0Oo:Lz2/oO0OOo0o;

.field private OooO0o:Lz2/oO0;

.field private OooO0o0:Lz2/oO0OO00o;

.field private OooO0oO:Lz2/oO0;

.field private OooO0oo:Lz2/oO00Oo0$OooO00o;

.field private OooOO0:Lz2/j0;

.field private OooOO0O:I

.field private OooOO0o:Lz2/p1;

.field private OooOOO:Lz2/oO0;

.field private OooOOO0:Lz2/r0$OooO0O0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooOOOO:Z

.field private OooOOOo:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/o1<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private OooOOo0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lz2/o0oOO;->OooO00o:Ljava/util/Map;

    const/4 v0, 0x4

    iput v0, p0, Lz2/o0oOO;->OooOO0O:I

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    iput-object v0, p0, Lz2/o0oOO;->OooOO0o:Lz2/p1;

    return-void
.end method


# virtual methods
.method public OooO(Lz2/oO00Oo0$OooO00o;)Lz2/o0oOO;
    .locals 0
    .param p1    # Lz2/oO00Oo0$OooO00o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lz2/o0oOO;->OooO0oo:Lz2/oO00Oo0$OooO00o;

    return-object p0
.end method

.method public OooO00o(Lz2/o1;)Lz2/o0oOO;
    .locals 1
    .param p1    # Lz2/o1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o1<",
            "Ljava/lang/Object;",
            ">;)",
            "Lz2/o0oOO;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o0oOO;->OooOOOo:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/o0oOO;->OooOOOo:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lz2/o0oOO;->OooOOOo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public OooO0O0(Landroid/content/Context;)Lz2/o00Oo00;
    .locals 14
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/o0oOO;->OooO0o:Lz2/oO0;

    if-nez v0, :cond_0

    invoke-static {}, Lz2/oO0;->OooO0oO()Lz2/oO0;

    move-result-object v0

    iput-object v0, p0, Lz2/o0oOO;->OooO0o:Lz2/oO0;

    :cond_0
    iget-object v0, p0, Lz2/o0oOO;->OooO0oO:Lz2/oO0;

    if-nez v0, :cond_1

    invoke-static {}, Lz2/oO0;->OooO0Oo()Lz2/oO0;

    move-result-object v0

    iput-object v0, p0, Lz2/o0oOO;->OooO0oO:Lz2/oO0;

    :cond_1
    iget-object v0, p0, Lz2/o0oOO;->OooOOO:Lz2/oO0;

    if-nez v0, :cond_2

    invoke-static {}, Lz2/oO0;->OooO0O0()Lz2/oO0;

    move-result-object v0

    iput-object v0, p0, Lz2/o0oOO;->OooOOO:Lz2/oO0;

    :cond_2
    iget-object v0, p0, Lz2/o0oOO;->OooO:Lz2/oOo0000O;

    if-nez v0, :cond_3

    new-instance v0, Lz2/oOo0000O$OooO00o;

    invoke-direct {v0, p1}, Lz2/oOo0000O$OooO00o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lz2/oOo0000O$OooO00o;->OooO00o()Lz2/oOo0000O;

    move-result-object v0

    iput-object v0, p0, Lz2/o0oOO;->OooO:Lz2/oOo0000O;

    :cond_3
    iget-object v0, p0, Lz2/o0oOO;->OooOO0:Lz2/j0;

    if-nez v0, :cond_4

    new-instance v0, Lz2/l0;

    invoke-direct {v0}, Lz2/l0;-><init>()V

    iput-object v0, p0, Lz2/o0oOO;->OooOO0:Lz2/j0;

    :cond_4
    iget-object v0, p0, Lz2/o0oOO;->OooO0OO:Lz2/oO000o00;

    if-nez v0, :cond_6

    iget-object v0, p0, Lz2/o0oOO;->OooO:Lz2/oOo0000O;

    invoke-virtual {v0}, Lz2/oOo0000O;->OooO0O0()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v1, Lz2/oO00OO0O;

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Lz2/oO00OO0O;-><init>(J)V

    iput-object v1, p0, Lz2/o0oOO;->OooO0OO:Lz2/oO000o00;

    goto :goto_0

    :cond_5
    new-instance v0, Lz2/oO0O0OoO;

    invoke-direct {v0}, Lz2/oO0O0OoO;-><init>()V

    iput-object v0, p0, Lz2/o0oOO;->OooO0OO:Lz2/oO000o00;

    :cond_6
    :goto_0
    iget-object v0, p0, Lz2/o0oOO;->OooO0Oo:Lz2/oO0OOo0o;

    if-nez v0, :cond_7

    new-instance v0, Lz2/oO00O0oO;

    iget-object v1, p0, Lz2/o0oOO;->OooO:Lz2/oOo0000O;

    invoke-virtual {v1}, Lz2/oOo0000O;->OooO00o()I

    move-result v1

    invoke-direct {v0, v1}, Lz2/oO00O0oO;-><init>(I)V

    iput-object v0, p0, Lz2/o0oOO;->OooO0Oo:Lz2/oO0OOo0o;

    :cond_7
    iget-object v0, p0, Lz2/o0oOO;->OooO0o0:Lz2/oO0OO00o;

    if-nez v0, :cond_8

    new-instance v0, Lz2/oOo00ooO;

    iget-object v1, p0, Lz2/o0oOO;->OooO:Lz2/oOo0000O;

    invoke-virtual {v1}, Lz2/oOo0000O;->OooO0Oo()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lz2/oOo00ooO;-><init>(J)V

    iput-object v0, p0, Lz2/o0oOO;->OooO0o0:Lz2/oO0OO00o;

    :cond_8
    iget-object v0, p0, Lz2/o0oOO;->OooO0oo:Lz2/oO00Oo0$OooO00o;

    if-nez v0, :cond_9

    new-instance v0, Lz2/oOo00o0o;

    invoke-direct {v0, p1}, Lz2/oOo00o0o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lz2/o0oOO;->OooO0oo:Lz2/oO00Oo0$OooO00o;

    :cond_9
    iget-object v0, p0, Lz2/o0oOO;->OooO0O0:Lz2/ooo0Oo0;

    if-nez v0, :cond_a

    new-instance v0, Lz2/ooo0Oo0;

    iget-object v2, p0, Lz2/o0oOO;->OooO0o0:Lz2/oO0OO00o;

    iget-object v3, p0, Lz2/o0oOO;->OooO0oo:Lz2/oO00Oo0$OooO00o;

    iget-object v4, p0, Lz2/o0oOO;->OooO0oO:Lz2/oO0;

    iget-object v5, p0, Lz2/o0oOO;->OooO0o:Lz2/oO0;

    invoke-static {}, Lz2/oO0;->OooOO0()Lz2/oO0;

    move-result-object v6

    invoke-static {}, Lz2/oO0;->OooO0O0()Lz2/oO0;

    move-result-object v7

    iget-boolean v8, p0, Lz2/o0oOO;->OooOOOO:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lz2/ooo0Oo0;-><init>(Lz2/oO0OO00o;Lz2/oO00Oo0$OooO00o;Lz2/oO0;Lz2/oO0;Lz2/oO0;Lz2/oO0;Z)V

    iput-object v0, p0, Lz2/o0oOO;->OooO0O0:Lz2/ooo0Oo0;

    :cond_a
    iget-object v0, p0, Lz2/o0oOO;->OooOOOo:Ljava/util/List;

    if-nez v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lz2/o0oOO;->OooOOOo:Ljava/util/List;

    new-instance v7, Lz2/r0;

    iget-object v0, p0, Lz2/o0oOO;->OooOOO0:Lz2/r0$OooO0O0;

    invoke-direct {v7, v0}, Lz2/r0;-><init>(Lz2/r0$OooO0O0;)V

    new-instance v0, Lz2/o00Oo00;

    iget-object v3, p0, Lz2/o0oOO;->OooO0O0:Lz2/ooo0Oo0;

    iget-object v4, p0, Lz2/o0oOO;->OooO0o0:Lz2/oO0OO00o;

    iget-object v5, p0, Lz2/o0oOO;->OooO0OO:Lz2/oO000o00;

    iget-object v6, p0, Lz2/o0oOO;->OooO0Oo:Lz2/oO0OOo0o;

    iget-object v8, p0, Lz2/o0oOO;->OooOO0:Lz2/j0;

    iget v9, p0, Lz2/o0oOO;->OooOO0O:I

    iget-object v1, p0, Lz2/o0oOO;->OooOO0o:Lz2/p1;

    invoke-virtual {v1}, Lz2/i1;->ooOO()Lz2/i1;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lz2/p1;

    iget-object v11, p0, Lz2/o0oOO;->OooO00o:Ljava/util/Map;

    iget-object v12, p0, Lz2/o0oOO;->OooOOOo:Ljava/util/List;

    iget-boolean v13, p0, Lz2/o0oOO;->OooOOo0:Z

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v13}, Lz2/o00Oo00;-><init>(Landroid/content/Context;Lz2/ooo0Oo0;Lz2/oO0OO00o;Lz2/oO000o00;Lz2/oO0OOo0o;Lz2/r0;Lz2/j0;ILz2/p1;Ljava/util/Map;Ljava/util/List;Z)V

    return-object v0
.end method

.method public OooO0OO(Lz2/oO0;)Lz2/o0oOO;
    .locals 0
    .param p1    # Lz2/oO0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lz2/o0oOO;->OooOOO:Lz2/oO0;

    return-object p0
.end method

.method public OooO0Oo(Lz2/oO0OOo0o;)Lz2/o0oOO;
    .locals 0
    .param p1    # Lz2/oO0OOo0o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lz2/o0oOO;->OooO0Oo:Lz2/oO0OOo0o;

    return-object p0
.end method

.method public OooO0o(Lz2/j0;)Lz2/o0oOO;
    .locals 0
    .param p1    # Lz2/j0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lz2/o0oOO;->OooOO0:Lz2/j0;

    return-object p0
.end method

.method public OooO0o0(Lz2/oO000o00;)Lz2/o0oOO;
    .locals 0
    .param p1    # Lz2/oO000o00;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lz2/o0oOO;->OooO0OO:Lz2/oO000o00;

    return-object p0
.end method

.method public OooO0oO(Lz2/p1;)Lz2/o0oOO;
    .locals 0
    .param p1    # Lz2/p1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lz2/o0oOO;->OooOO0o:Lz2/p1;

    return-object p0
.end method

.method public OooO0oo(Ljava/lang/Class;Lz2/o0O00000;)Lz2/o0oOO;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0O00000;
        .annotation build Landroidx/annotation/Nullable;
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
            "TT;>;",
            "Lz2/o0O00000<",
            "*TT;>;)",
            "Lz2/o0oOO;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o0oOO;->OooO00o:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public OooOO0(Lz2/oO0;)Lz2/o0oOO;
    .locals 0
    .param p1    # Lz2/oO0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lz2/o0oOO;->OooO0oO:Lz2/oO0;

    return-object p0
.end method

.method public OooOO0O(Lz2/ooo0Oo0;)Lz2/o0oOO;
    .locals 0

    iput-object p1, p0, Lz2/o0oOO;->OooO0O0:Lz2/ooo0Oo0;

    return-object p0
.end method

.method public OooOO0o(Z)Lz2/o0oOO;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lz2/o0oOO;->OooOOOO:Z

    return-object p0
.end method

.method public OooOOO(Z)Lz2/o0oOO;
    .locals 0

    iput-boolean p1, p0, Lz2/o0oOO;->OooOOo0:Z

    return-object p0
.end method

.method public OooOOO0(I)Lz2/o0oOO;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    iput p1, p0, Lz2/o0oOO;->OooOO0O:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Log level must be one of Log.VERBOSE, Log.DEBUG, Log.INFO, Log.WARN, or Log.ERROR"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooOOOO(Lz2/oO0OO00o;)Lz2/o0oOO;
    .locals 0
    .param p1    # Lz2/oO0OO00o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lz2/o0oOO;->OooO0o0:Lz2/oO0OO00o;

    return-object p0
.end method

.method public OooOOOo(Lz2/oOo0000O$OooO00o;)Lz2/o0oOO;
    .locals 0
    .param p1    # Lz2/oOo0000O$OooO00o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Lz2/oOo0000O$OooO00o;->OooO00o()Lz2/oOo0000O;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/o0oOO;->OooOOo0(Lz2/oOo0000O;)Lz2/o0oOO;

    move-result-object p1

    return-object p1
.end method

.method public OooOOo(Lz2/r0$OooO0O0;)V
    .locals 0
    .param p1    # Lz2/r0$OooO0O0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lz2/o0oOO;->OooOOO0:Lz2/r0$OooO0O0;

    return-void
.end method

.method public OooOOo0(Lz2/oOo0000O;)Lz2/o0oOO;
    .locals 0
    .param p1    # Lz2/oOo0000O;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lz2/o0oOO;->OooO:Lz2/oOo0000O;

    return-object p0
.end method

.method public OooOOoo(Lz2/oO0;)Lz2/o0oOO;
    .locals 0
    .param p1    # Lz2/oO0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/o0oOO;->OooOo00(Lz2/oO0;)Lz2/o0oOO;

    move-result-object p1

    return-object p1
.end method

.method public OooOo00(Lz2/oO0;)Lz2/o0oOO;
    .locals 0
    .param p1    # Lz2/oO0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lz2/o0oOO;->OooO0o:Lz2/oO0;

    return-object p0
.end method
