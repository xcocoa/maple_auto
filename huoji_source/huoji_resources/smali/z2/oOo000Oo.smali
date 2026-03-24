.class public Lz2/oOo000Oo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO0OO00o;


# instance fields
.field private OooO00o:Lz2/oO0OO00o$OooO00o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(I)V
    .locals 0

    return-void
.end method

.method public OooO0O0()V
    .locals 0

    return-void
.end method

.method public OooO0OO(F)V
    .locals 0

    return-void
.end method

.method public OooO0Oo()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public OooO0o(Lz2/o0O0O0Oo;Lz2/oO0Ooooo;)Lz2/oO0Ooooo;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0O0Oo;",
            "Lz2/oO0Ooooo<",
            "*>;)",
            "Lz2/oO0Ooooo<",
            "*>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p1, p0, Lz2/oOo000Oo;->OooO00o:Lz2/oO0OO00o$OooO00o;

    invoke-interface {p1, p2}, Lz2/oO0OO00o$OooO00o;->OooO00o(Lz2/oO0Ooooo;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public OooO0o0()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public OooO0oO(Lz2/o0O0O0Oo;)Lz2/oO0Ooooo;
    .locals 0
    .param p1    # Lz2/o0O0O0Oo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0O0Oo;",
            ")",
            "Lz2/oO0Ooooo<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public OooO0oo(Lz2/oO0OO00o$OooO00o;)V
    .locals 0
    .param p1    # Lz2/oO0OO00o$OooO00o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lz2/oOo000Oo;->OooO00o:Lz2/oO0OO00o$OooO00o;

    return-void
.end method
