.class public final Lz2/oO00OOo0$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO00OOOo;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/oO00OOo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0O0"
.end annotation


# instance fields
.field private final OooO00o:Lz2/oO00OOo0$OooO0OO;

.field public OooO0O0:I

.field private OooO0OO:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Lz2/oO00OOo0$OooO0OO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/oO00OOo0$OooO0O0;->OooO00o:Lz2/oO00OOo0$OooO0OO;

    return-void
.end method

.method public constructor <init>(Lz2/oO00OOo0$OooO0OO;ILandroid/graphics/Bitmap$Config;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lz2/oO00OOo0$OooO0O0;-><init>(Lz2/oO00OOo0$OooO0OO;)V

    invoke-virtual {p0, p2, p3}, Lz2/oO00OOo0$OooO0O0;->OooO0O0(ILandroid/graphics/Bitmap$Config;)V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 1

    iget-object v0, p0, Lz2/oO00OOo0$OooO0O0;->OooO00o:Lz2/oO00OOo0$OooO0OO;

    invoke-virtual {v0, p0}, Lz2/oO000Oo;->OooO0OO(Lz2/oO00OOOo;)V

    return-void
.end method

.method public OooO0O0(ILandroid/graphics/Bitmap$Config;)V
    .locals 0

    iput p1, p0, Lz2/oO00OOo0$OooO0O0;->OooO0O0:I

    iput-object p2, p0, Lz2/oO00OOo0$OooO0O0;->OooO0OO:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lz2/oO00OOo0$OooO0O0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lz2/oO00OOo0$OooO0O0;

    iget v0, p0, Lz2/oO00OOo0$OooO0O0;->OooO0O0:I

    iget v2, p1, Lz2/oO00OOo0$OooO0O0;->OooO0O0:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lz2/oO00OOo0$OooO0O0;->OooO0OO:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lz2/oO00OOo0$OooO0O0;->OooO0OO:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1}, Lz2/t2;->OooO0Oo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lz2/oO00OOo0$OooO0O0;->OooO0O0:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lz2/oO00OOo0$OooO0O0;->OooO0OO:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lz2/oO00OOo0$OooO0O0;->OooO0O0:I

    iget-object v1, p0, Lz2/oO00OOo0$OooO0O0;->OooO0OO:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lz2/oO00OOo0;->OooO0oo(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
