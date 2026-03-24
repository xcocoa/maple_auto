.class public Lz2/oO000Oo0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO00OOO;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/oO000Oo0$OooO00o;,
        Lz2/oO000Oo0$OooO0O0;
    }
.end annotation


# instance fields
.field private final OooO00o:Lz2/oO000Oo0$OooO0O0;

.field private final OooO0O0:Lz2/oO00O0o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oO00O0o<",
            "Lz2/oO000Oo0$OooO00o;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/oO000Oo0$OooO0O0;

    invoke-direct {v0}, Lz2/oO000Oo0$OooO0O0;-><init>()V

    iput-object v0, p0, Lz2/oO000Oo0;->OooO00o:Lz2/oO000Oo0$OooO0O0;

    new-instance v0, Lz2/oO00O0o;

    invoke-direct {v0}, Lz2/oO00O0o;-><init>()V

    iput-object v0, p0, Lz2/oO000Oo0;->OooO0O0:Lz2/oO00O0o;

    return-void
.end method

.method public static OooO0o0(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "], "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static OooO0oO(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lz2/oO000Oo0;->OooO0o0(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public OooO00o(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, Lz2/oO000Oo0;->OooO0o0(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public OooO0O0(Landroid/graphics/Bitmap;)I
    .locals 0

    invoke-static {p1}, Lz2/t2;->OooO0oo(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method public OooO0OO(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lz2/oO000Oo0;->OooO0oO(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public OooO0Oo(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lz2/oO000Oo0;->OooO00o:Lz2/oO000Oo0$OooO0O0;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lz2/oO000Oo0$OooO0O0;->OooO0o0(IILandroid/graphics/Bitmap$Config;)Lz2/oO000Oo0$OooO00o;

    move-result-object v0

    iget-object v1, p0, Lz2/oO000Oo0;->OooO0O0:Lz2/oO00O0o;

    invoke-virtual {v1, v0, p1}, Lz2/oO00O0o;->OooO0Oo(Lz2/oO00OOOo;Ljava/lang/Object;)V

    return-void
.end method

.method public OooO0o(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lz2/oO000Oo0;->OooO00o:Lz2/oO000Oo0$OooO0O0;

    invoke-virtual {v0, p1, p2, p3}, Lz2/oO000Oo0$OooO0O0;->OooO0o0(IILandroid/graphics/Bitmap$Config;)Lz2/oO000Oo0$OooO00o;

    move-result-object p1

    iget-object p2, p0, Lz2/oO000Oo0;->OooO0O0:Lz2/oO00O0o;

    invoke-virtual {p2, p1}, Lz2/oO00O0o;->OooO00o(Lz2/oO00OOOo;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public removeLast()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lz2/oO000Oo0;->OooO0O0:Lz2/oO00O0o;

    invoke-virtual {v0}, Lz2/oO00O0o;->OooO0o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttributeStrategy:\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/oO000Oo0;->OooO0O0:Lz2/oO00O0o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
