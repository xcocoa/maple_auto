.class public Lz2/oO0O00o0$OooO00o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/oO0O00o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation


# instance fields
.field private final OooO00o:I

.field private final OooO0O0:I

.field private OooO0OO:Landroid/graphics/Bitmap$Config;

.field private OooO0Oo:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1, p1}, Lz2/oO0O00o0$OooO00o;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lz2/oO0O00o0$OooO00o;->OooO0Oo:I

    if-lez p1, :cond_1

    if-lez p2, :cond_0

    iput p1, p0, Lz2/oO0O00o0$OooO00o;->OooO00o:I

    iput p2, p0, Lz2/oO0O00o0$OooO00o;->OooO0O0:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Height must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public OooO00o()Lz2/oO0O00o0;
    .locals 5

    new-instance v0, Lz2/oO0O00o0;

    iget v1, p0, Lz2/oO0O00o0$OooO00o;->OooO00o:I

    iget v2, p0, Lz2/oO0O00o0$OooO00o;->OooO0O0:I

    iget-object v3, p0, Lz2/oO0O00o0$OooO00o;->OooO0OO:Landroid/graphics/Bitmap$Config;

    iget v4, p0, Lz2/oO0O00o0$OooO00o;->OooO0Oo:I

    invoke-direct {v0, v1, v2, v3, v4}, Lz2/oO0O00o0;-><init>(IILandroid/graphics/Bitmap$Config;I)V

    return-object v0
.end method

.method public OooO0O0()Landroid/graphics/Bitmap$Config;
    .locals 1

    iget-object v0, p0, Lz2/oO0O00o0$OooO00o;->OooO0OO:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public OooO0OO(Landroid/graphics/Bitmap$Config;)Lz2/oO0O00o0$OooO00o;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap$Config;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lz2/oO0O00o0$OooO00o;->OooO0OO:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public OooO0Oo(I)Lz2/oO0O00o0$OooO00o;
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, Lz2/oO0O00o0$OooO00o;->OooO0Oo:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Weight must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
