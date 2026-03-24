.class public abstract Lz2/ooooO000;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO0o0000;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/oO0o0000<",
        "TModel;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final OooO00o:Lz2/oO0o0000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oO0o0000<",
            "Lz2/oOo0o0oO;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final OooO0O0:Lz2/oO0Oo0o0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oO0Oo0o0<",
            "TModel;",
            "Lz2/oOo0o0oO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/oO0o0000;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0o0000<",
            "Lz2/oOo0o0oO;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lz2/ooooO000;-><init>(Lz2/oO0o0000;Lz2/oO0Oo0o0;)V

    return-void
.end method

.method public constructor <init>(Lz2/oO0o0000;Lz2/oO0Oo0o0;)V
    .locals 0
    .param p2    # Lz2/oO0Oo0o0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0o0000<",
            "Lz2/oOo0o0oO;",
            "Ljava/io/InputStream;",
            ">;",
            "Lz2/oO0Oo0o0<",
            "TModel;",
            "Lz2/oOo0o0oO;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/ooooO000;->OooO00o:Lz2/oO0o0000;

    iput-object p2, p0, Lz2/ooooO000;->OooO0O0:Lz2/oO0Oo0o0;

    return-void
.end method

.method private static OooO0OO(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lz2/o0O0O0Oo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lz2/oOo0o0oO;

    invoke-direct {v2, v1}, Lz2/oOo0o0oO;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public OooO0O0(Ljava/lang/Object;IILz2/o0O0OOO0;)Lz2/oO0o0000$OooO00o;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lz2/o0O0OOO0;",
            ")",
            "Lz2/oO0o0000$OooO00o<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/ooooO000;->OooO0O0:Lz2/oO0Oo0o0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lz2/oO0Oo0o0;->OooO0O0(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/oOo0o0oO;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0, p1, p2, p3, p4}, Lz2/ooooO000;->OooO0o(Ljava/lang/Object;IILz2/o0O0OOO0;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Lz2/oOo0o0oO;

    invoke-virtual {p0, p1, p2, p3, p4}, Lz2/ooooO000;->OooO0o0(Ljava/lang/Object;IILz2/o0O0OOO0;)Lz2/ooOOO0Oo;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lz2/oOo0o0oO;-><init>(Ljava/lang/String;Lz2/ooOOO0Oo;)V

    iget-object v0, p0, Lz2/ooooO000;->OooO0O0:Lz2/oO0Oo0o0;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3, v1}, Lz2/oO0Oo0o0;->OooO0OO(Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_2
    move-object v0, v1

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lz2/ooooO000;->OooO0Oo(Ljava/lang/Object;IILz2/o0O0OOO0;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lz2/ooooO000;->OooO00o:Lz2/oO0o0000;

    invoke-interface {v1, v0, p2, p3, p4}, Lz2/oO0o0000;->OooO0O0(Ljava/lang/Object;IILz2/o0O0OOO0;)Lz2/oO0o0000$OooO00o;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    new-instance p3, Lz2/oO0o0000$OooO00o;

    iget-object p4, p2, Lz2/oO0o0000$OooO00o;->OooO00o:Lz2/o0O0O0Oo;

    invoke-static {p1}, Lz2/ooooO000;->OooO0OO(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p2, Lz2/oO0o0000$OooO00o;->OooO0OO:Lz2/o0O0oo00;

    invoke-direct {p3, p4, p1, p2}, Lz2/oO0o0000$OooO00o;-><init>(Lz2/o0O0O0Oo;Ljava/util/List;Lz2/o0O0oo00;)V

    return-object p3

    :cond_5
    :goto_1
    return-object p2
.end method

.method public OooO0Oo(Ljava/lang/Object;IILz2/o0O0OOO0;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lz2/o0O0OOO0;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract OooO0o(Ljava/lang/Object;IILz2/o0O0OOO0;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lz2/o0O0OOO0;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public OooO0o0(Ljava/lang/Object;IILz2/o0O0OOO0;)Lz2/ooOOO0Oo;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lz2/o0O0OOO0;",
            ")",
            "Lz2/ooOOO0Oo;"
        }
    .end annotation

    sget-object p1, Lz2/ooOOO0Oo;->OooO0O0:Lz2/ooOOO0Oo;

    return-object p1
.end method
