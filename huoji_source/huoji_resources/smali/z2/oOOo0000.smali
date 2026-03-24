.class public Lz2/oOOo0000;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0O0o000;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/o0O0o000<",
        "Landroid/graphics/drawable/Drawable;",
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

.field private final OooO0Oo:Z


# direct methods
.method public constructor <init>(Lz2/o0O0o000;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0o000<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/oOOo0000;->OooO0OO:Lz2/o0O0o000;

    iput-boolean p2, p0, Lz2/oOOo0000;->OooO0Oo:Z

    return-void
.end method

.method private OooO0Oo(Landroid/content/Context;Lz2/oO0Ooooo;)Lz2/oO0Ooooo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lz2/oO0Ooooo<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lz2/oO0Ooooo<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2}, Lz2/oo00;->OooO0Oo(Landroid/content/res/Resources;Lz2/oO0Ooooo;)Lz2/oO0Ooooo;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public OooO00o(Ljava/security/MessageDigest;)V
    .locals 1
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/oOOo0000;->OooO0OO:Lz2/o0O0o000;

    invoke-interface {v0, p1}, Lz2/o0O0O0Oo;->OooO00o(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public OooO0O0(Landroid/content/Context;Lz2/oO0Ooooo;II)Lz2/oO0Ooooo;
    .locals 2
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
            "Landroid/graphics/drawable/Drawable;",
            ">;II)",
            "Lz2/oO0Ooooo<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lz2/o00Oo00;->OooO0Oo(Landroid/content/Context;)Lz2/o00Oo00;

    move-result-object v0

    invoke-virtual {v0}, Lz2/o00Oo00;->OooO0oO()Lz2/oO000o00;

    move-result-object v0

    invoke-interface {p2}, Lz2/oO0Ooooo;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, p3, p4}, Lz2/oOOOOo0O;->OooO00o(Lz2/oO000o00;Landroid/graphics/drawable/Drawable;II)Lz2/oO0Ooooo;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lz2/oOOo0000;->OooO0Oo:Z

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to convert "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to a Bitmap"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lz2/oOOo0000;->OooO0OO:Lz2/o0O0o000;

    invoke-interface {v1, p1, v0, p3, p4}, Lz2/o0O0o000;->OooO0O0(Landroid/content/Context;Lz2/oO0Ooooo;II)Lz2/oO0Ooooo;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Lz2/oO0Ooooo;->recycle()V

    return-object p2

    :cond_2
    invoke-direct {p0, p1, p3}, Lz2/oOOo0000;->OooO0Oo(Landroid/content/Context;Lz2/oO0Ooooo;)Lz2/oO0Ooooo;

    move-result-object p1

    return-object p1
.end method

.method public OooO0OO()Lz2/o0O0o000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/o0O0o000<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lz2/oOOo0000;

    if-eqz v0, :cond_0

    check-cast p1, Lz2/oOOo0000;

    iget-object v0, p0, Lz2/oOOo0000;->OooO0OO:Lz2/o0O0o000;

    iget-object p1, p1, Lz2/oOOo0000;->OooO0OO:Lz2/o0O0o000;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lz2/oOOo0000;->OooO0OO:Lz2/o0O0o000;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
