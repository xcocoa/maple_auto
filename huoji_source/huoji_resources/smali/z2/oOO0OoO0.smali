.class public Lz2/oOO0OoO0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0O0o000;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/o0O0o000<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final OooO0OO:Lz2/o0O0o000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o0O0o000<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/o0O0o000;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0o000<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/oOOo0000;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lz2/oOOo0000;-><init>(Lz2/o0O0o000;Z)V

    invoke-static {v0}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o0O0o000;

    iput-object p1, p0, Lz2/oOO0OoO0;->OooO0OO:Lz2/o0O0o000;

    return-void
.end method

.method private static OooO0OO(Lz2/oO0Ooooo;)Lz2/oO0Ooooo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0Ooooo<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lz2/oO0Ooooo<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lz2/oO0Ooooo;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrapped transformation unexpectedly returned a non BitmapDrawable resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lz2/oO0Ooooo;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static OooO0Oo(Lz2/oO0Ooooo;)Lz2/oO0Ooooo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0Ooooo<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)",
            "Lz2/oO0Ooooo<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public OooO00o(Ljava/security/MessageDigest;)V
    .locals 1
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/oOO0OoO0;->OooO0OO:Lz2/o0O0o000;

    invoke-interface {v0, p1}, Lz2/o0O0O0Oo;->OooO00o(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public OooO0O0(Landroid/content/Context;Lz2/oO0Ooooo;II)Lz2/oO0Ooooo;
    .locals 1
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
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;II)",
            "Lz2/oO0Ooooo<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lz2/oOO0OoO0;->OooO0Oo(Lz2/oO0Ooooo;)Lz2/oO0Ooooo;

    move-result-object p2

    iget-object v0, p0, Lz2/oOO0OoO0;->OooO0OO:Lz2/o0O0o000;

    invoke-interface {v0, p1, p2, p3, p4}, Lz2/o0O0o000;->OooO0O0(Landroid/content/Context;Lz2/oO0Ooooo;II)Lz2/oO0Ooooo;

    move-result-object p1

    invoke-static {p1}, Lz2/oOO0OoO0;->OooO0OO(Lz2/oO0Ooooo;)Lz2/oO0Ooooo;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lz2/oOO0OoO0;

    if-eqz v0, :cond_0

    check-cast p1, Lz2/oOO0OoO0;

    iget-object v0, p0, Lz2/oOO0OoO0;->OooO0OO:Lz2/o0O0o000;

    iget-object p1, p1, Lz2/oOO0OoO0;->OooO0OO:Lz2/o0O0o000;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lz2/oOO0OoO0;->OooO0OO:Lz2/o0O0o000;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
