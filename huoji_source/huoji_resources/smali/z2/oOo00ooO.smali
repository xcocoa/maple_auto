.class public Lz2/oOo00ooO;
.super Lz2/o2;
.source ""

# interfaces
.implements Lz2/oO0OO00o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/o2<",
        "Lz2/o0O0O0Oo;",
        "Lz2/oO0Ooooo<",
        "*>;>;",
        "Lz2/oO0OO00o;"
    }
.end annotation


# instance fields
.field private OooO0o0:Lz2/oO0OO00o$OooO00o;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/o2;-><init>(J)V

    return-void
.end method


# virtual methods
.method public OooO00o(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lz2/o2;->OooO0O0()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lz2/o2;->OooO0o0()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lz2/o2;->OooOOo0(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic OooO0o(Lz2/o0O0O0Oo;Lz2/oO0Ooooo;)Lz2/oO0Ooooo;
    .locals 0
    .param p1    # Lz2/o0O0O0Oo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/oO0Ooooo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0, p1, p2}, Lz2/o2;->OooOOOO(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/oO0Ooooo;

    return-object p1
.end method

.method public bridge synthetic OooO0oO(Lz2/o0O0O0Oo;)Lz2/oO0Ooooo;
    .locals 0
    .param p1    # Lz2/o0O0O0Oo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0, p1}, Lz2/o2;->OooOOOo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/oO0Ooooo;

    return-object p1
.end method

.method public OooO0oo(Lz2/oO0OO00o$OooO00o;)V
    .locals 0
    .param p1    # Lz2/oO0OO00o$OooO00o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lz2/oOo00ooO;->OooO0o0:Lz2/oO0OO00o$OooO00o;

    return-void
.end method

.method public bridge synthetic OooOOO(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lz2/o0O0O0Oo;

    check-cast p2, Lz2/oO0Ooooo;

    invoke-virtual {p0, p1, p2}, Lz2/oOo00ooO;->OooOOoo(Lz2/o0O0O0Oo;Lz2/oO0Ooooo;)V

    return-void
.end method

.method public bridge synthetic OooOOO0(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lz2/oO0Ooooo;

    invoke-virtual {p0, p1}, Lz2/oOo00ooO;->OooOOo(Lz2/oO0Ooooo;)I

    move-result p1

    return p1
.end method

.method public OooOOo(Lz2/oO0Ooooo;)I
    .locals 0
    .param p1    # Lz2/oO0Ooooo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0Ooooo<",
            "*>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lz2/o2;->OooOOO0(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Lz2/oO0Ooooo;->getSize()I

    move-result p1

    return p1
.end method

.method public OooOOoo(Lz2/o0O0O0Oo;Lz2/oO0Ooooo;)V
    .locals 0
    .param p1    # Lz2/o0O0O0Oo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/oO0Ooooo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0O0Oo;",
            "Lz2/oO0Ooooo<",
            "*>;)V"
        }
    .end annotation

    iget-object p1, p0, Lz2/oOo00ooO;->OooO0o0:Lz2/oO0OO00o$OooO00o;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Lz2/oO0OO00o$OooO00o;->OooO00o(Lz2/oO0Ooooo;)V

    :cond_0
    return-void
.end method
