.class public Lz2/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0O0o000;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/o0O0o000<",
        "Lz2/r;",
        ">;"
    }
.end annotation


# instance fields
.field private final OooO0OO:Lz2/o0O0o000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o0O0o000<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/o0O0o000;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0o000<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o0O0o000;

    iput-object p1, p0, Lz2/u;->OooO0OO:Lz2/o0O0o000;

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/security/MessageDigest;)V
    .locals 1
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/u;->OooO0OO:Lz2/o0O0o000;

    invoke-interface {v0, p1}, Lz2/o0O0O0Oo;->OooO00o(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public OooO0O0(Landroid/content/Context;Lz2/oO0Ooooo;II)Lz2/oO0Ooooo;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/oO0Ooooo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lz2/oO0Ooooo<",
            "Lz2/r;",
            ">;II)",
            "Lz2/oO0Ooooo<",
            "Lz2/r;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Lz2/oO0Ooooo;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/r;

    invoke-static {p1}, Lz2/o00Oo00;->OooO0Oo(Landroid/content/Context;)Lz2/o00Oo00;

    move-result-object v1

    invoke-virtual {v1}, Lz2/o00Oo00;->OooO0oO()Lz2/oO000o00;

    move-result-object v1

    invoke-virtual {v0}, Lz2/r;->OooO0o0()Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Lz2/oOO;

    invoke-direct {v3, v2, v1}, Lz2/oOO;-><init>(Landroid/graphics/Bitmap;Lz2/oO000o00;)V

    iget-object v1, p0, Lz2/u;->OooO0OO:Lz2/o0O0o000;

    invoke-interface {v1, p1, v3, p3, p4}, Lz2/o0O0o000;->OooO0O0(Landroid/content/Context;Lz2/oO0Ooooo;II)Lz2/oO0Ooooo;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-interface {v3}, Lz2/oO0Ooooo;->recycle()V

    :cond_0
    invoke-interface {p1}, Lz2/oO0Ooooo;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p3, p0, Lz2/u;->OooO0OO:Lz2/o0O0o000;

    invoke-virtual {v0, p3, p1}, Lz2/r;->OooOOOO(Lz2/o0O0o000;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lz2/u;

    if-eqz v0, :cond_0

    check-cast p1, Lz2/u;

    iget-object v0, p0, Lz2/u;->OooO0OO:Lz2/o0O0o000;

    iget-object p1, p1, Lz2/u;->OooO0OO:Lz2/o0O0o000;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lz2/u;->OooO0OO:Lz2/o0O0o000;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
