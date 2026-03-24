.class public Lz2/oo00oO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/oo00oO$OooO0OO;,
        Lz2/oo00oO$OooO0o;,
        Lz2/oo00oO$OooO0O0;,
        Lz2/oo00oO$OooO00o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private final OoooOoO:I

.field private final OoooOoo:Lz2/oo00oO$OooO0o;

.field private final Ooooo00:Lz2/o0;

.field private final Ooooo0o:Lz2/oo00oO$OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oo00oO$OooO00o<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final OooooO0:Lz2/oo00oO$OooO0O0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oo00oO$OooO0O0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private OooooOO:I

.field private OooooOo:I

.field private Oooooo:I

.field private Oooooo0:I

.field private OoooooO:Z


# direct methods
.method public constructor <init>(Lz2/o0;Lz2/oo00oO$OooO00o;Lz2/oo00oO$OooO0O0;I)V
    .locals 1
    .param p1    # Lz2/o0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/oo00oO$OooO00o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lz2/oo00oO$OooO0O0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0;",
            "Lz2/oo00oO$OooO00o<",
            "TT;>;",
            "Lz2/oo00oO$OooO0O0<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lz2/oo00oO;->Oooooo0:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/oo00oO;->OoooooO:Z

    iput-object p1, p0, Lz2/oo00oO;->Ooooo00:Lz2/o0;

    iput-object p2, p0, Lz2/oo00oO;->Ooooo0o:Lz2/oo00oO$OooO00o;

    iput-object p3, p0, Lz2/oo00oO;->OooooO0:Lz2/oo00oO$OooO0O0;

    iput p4, p0, Lz2/oo00oO;->OoooOoO:I

    new-instance p1, Lz2/oo00oO$OooO0o;

    add-int/2addr p4, v0

    invoke-direct {p1, p4}, Lz2/oo00oO$OooO0o;-><init>(I)V

    iput-object p1, p0, Lz2/oo00oO;->OoooOoo:Lz2/oo00oO$OooO0o;

    return-void
.end method

.method private OooO00o()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lz2/oo00oO;->OoooOoO:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lz2/oo00oO;->Ooooo00:Lz2/o0;

    iget-object v3, p0, Lz2/oo00oO;->OoooOoo:Lz2/oo00oO$OooO0o;

    invoke-virtual {v3, v0, v0}, Lz2/oo00oO$OooO0o;->OooO00o(II)Lz2/oo00oO$OooO0OO;

    move-result-object v3

    invoke-virtual {v2, v3}, Lz2/o0;->OooOOo(Lcom/bumptech/glide/request/target/Target;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private OooO0O0(II)V
    .locals 4

    if-ge p1, p2, :cond_0

    iget v0, p0, Lz2/oo00oO;->OooooOO:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    move v0, p2

    goto :goto_0

    :cond_0
    iget v0, p0, Lz2/oo00oO;->OooooOo:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, p2

    :goto_0
    iget v2, p0, Lz2/oo00oO;->Oooooo:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lz2/oo00oO;->Oooooo:I

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge p1, p2, :cond_1

    move p1, v1

    :goto_1
    if-ge p1, v0, :cond_2

    iget-object p2, p0, Lz2/oo00oO;->Ooooo0o:Lz2/oo00oO$OooO00o;

    invoke-interface {p2, p1}, Lz2/oo00oO$OooO00o;->OooO00o(I)Ljava/util/List;

    move-result-object p2

    const/4 v2, 0x1

    invoke-direct {p0, p2, p1, v2}, Lz2/oo00oO;->OooO0Oo(Ljava/util/List;IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, v0, -0x1

    :goto_2
    if-lt p1, v1, :cond_2

    iget-object p2, p0, Lz2/oo00oO;->Ooooo0o:Lz2/oo00oO$OooO00o;

    invoke-interface {p2, p1}, Lz2/oo00oO$OooO00o;->OooO00o(I)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2, p1, v3}, Lz2/oo00oO;->OooO0Oo(Ljava/util/List;IZ)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_2
    iput v1, p0, Lz2/oo00oO;->OooooOo:I

    iput v0, p0, Lz2/oo00oO;->OooooOO:I

    return-void
.end method

.method private OooO0OO(IZ)V
    .locals 1

    iget-boolean v0, p0, Lz2/oo00oO;->OoooooO:Z

    if-eq v0, p2, :cond_0

    iput-boolean p2, p0, Lz2/oo00oO;->OoooooO:Z

    invoke-direct {p0}, Lz2/oo00oO;->OooO00o()V

    :cond_0
    if-eqz p2, :cond_1

    iget p2, p0, Lz2/oo00oO;->OoooOoO:I

    goto :goto_0

    :cond_1
    iget p2, p0, Lz2/oo00oO;->OoooOoO:I

    neg-int p2, p2

    :goto_0
    add-int/2addr p2, p1

    invoke-direct {p0, p1, p2}, Lz2/oo00oO;->OooO0O0(II)V

    return-void
.end method

.method private OooO0Oo(Ljava/util/List;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;IZ)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, v0, :cond_1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lz2/oo00oO;->OooO0o0(Ljava/lang/Object;II)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p3, p2, v0}, Lz2/oo00oO;->OooO0o0(Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private OooO0o0(Ljava/lang/Object;II)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lz2/oo00oO;->OooooO0:Lz2/oo00oO$OooO0O0;

    invoke-interface {v0, p1, p2, p3}, Lz2/oo00oO$OooO0O0;->OooO00o(Ljava/lang/Object;II)[I

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p3, p0, Lz2/oo00oO;->Ooooo0o:Lz2/oo00oO$OooO00o;

    invoke-interface {p3, p1}, Lz2/oo00oO$OooO00o;->OooO0O0(Ljava/lang/Object;)Lz2/o0O0o;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p3, p0, Lz2/oo00oO;->OoooOoo:Lz2/oo00oO$OooO0o;

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-virtual {p3, v0, p2}, Lz2/oo00oO$OooO0o;->OooO00o(II)Lz2/oo00oO$OooO0OO;

    move-result-object p2

    invoke-virtual {p1, p2}, Lz2/o0O0o;->o0000o0o(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    iput p4, p0, Lz2/oo00oO;->Oooooo:I

    iget p1, p0, Lz2/oo00oO;->Oooooo0:I

    if-le p2, p1, :cond_0

    add-int/2addr p3, p2

    const/4 p1, 0x1

    invoke-direct {p0, p3, p1}, Lz2/oo00oO;->OooO0OO(IZ)V

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lz2/oo00oO;->OooO0OO(IZ)V

    :cond_1
    :goto_0
    iput p2, p0, Lz2/oo00oO;->Oooooo0:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
