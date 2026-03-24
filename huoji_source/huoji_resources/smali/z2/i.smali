.class public final Lz2/i;
.super Lz2/o0O00000;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/o0O00000<",
        "Lz2/i;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/o0O00000;-><init>()V

    return-void
.end method

.method public static OooOOO()Lz2/i;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/i;

    invoke-direct {v0}, Lz2/i;-><init>()V

    invoke-virtual {v0}, Lz2/i;->OooO0oo()Lz2/i;

    move-result-object v0

    return-object v0
.end method

.method public static OooOOO0(Lz2/y1;)Lz2/i;
    .locals 1
    .param p0    # Lz2/y1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/y1<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lz2/i;"
        }
    .end annotation

    new-instance v0, Lz2/i;

    invoke-direct {v0}, Lz2/i;-><init>()V

    invoke-virtual {v0, p0}, Lz2/o0O00000;->OooO0o(Lz2/y1;)Lz2/o0O00000;

    move-result-object p0

    check-cast p0, Lz2/i;

    return-object p0
.end method

.method public static OooOOOO(I)Lz2/i;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/i;

    invoke-direct {v0}, Lz2/i;-><init>()V

    invoke-virtual {v0, p0}, Lz2/i;->OooO(I)Lz2/i;

    move-result-object p0

    return-object p0
.end method

.method public static OooOOOo(Lz2/u1$OooO00o;)Lz2/i;
    .locals 1
    .param p0    # Lz2/u1$OooO00o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/i;

    invoke-direct {v0}, Lz2/i;-><init>()V

    invoke-virtual {v0, p0}, Lz2/i;->OooOO0O(Lz2/u1$OooO00o;)Lz2/i;

    move-result-object p0

    return-object p0
.end method

.method public static OooOOo0(Lz2/u1;)Lz2/i;
    .locals 1
    .param p0    # Lz2/u1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/i;

    invoke-direct {v0}, Lz2/i;-><init>()V

    invoke-virtual {v0, p0}, Lz2/i;->OooOO0o(Lz2/u1;)Lz2/i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public OooO(I)Lz2/i;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/u1$OooO00o;

    invoke-direct {v0, p1}, Lz2/u1$OooO00o;-><init>(I)V

    invoke-virtual {p0, v0}, Lz2/i;->OooOO0O(Lz2/u1$OooO00o;)Lz2/i;

    move-result-object p1

    return-object p1
.end method

.method public OooO0oo()Lz2/i;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/u1$OooO00o;

    invoke-direct {v0}, Lz2/u1$OooO00o;-><init>()V

    invoke-virtual {p0, v0}, Lz2/i;->OooOO0O(Lz2/u1$OooO00o;)Lz2/i;

    move-result-object v0

    return-object v0
.end method

.method public OooOO0O(Lz2/u1$OooO00o;)Lz2/i;
    .locals 0
    .param p1    # Lz2/u1$OooO00o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Lz2/u1$OooO00o;->OooO00o()Lz2/u1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/i;->OooOO0o(Lz2/u1;)Lz2/i;

    move-result-object p1

    return-object p1
.end method

.method public OooOO0o(Lz2/u1;)Lz2/i;
    .locals 0
    .param p1    # Lz2/u1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/o0O00000;->OooO0o(Lz2/y1;)Lz2/o0O00000;

    move-result-object p1

    check-cast p1, Lz2/i;

    return-object p1
.end method
