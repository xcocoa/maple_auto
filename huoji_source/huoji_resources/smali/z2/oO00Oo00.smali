.class public final Lz2/oO00Oo00;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO00OOO;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/oO00Oo00$OooO00o;,
        Lz2/oO00Oo00$OooO0O0;
    }
.end annotation


# static fields
.field private static final OooO0Oo:I = 0x8


# instance fields
.field private final OooO00o:Lz2/oO00Oo00$OooO0O0;

.field private final OooO0O0:Lz2/oO00O0o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oO00O0o<",
            "Lz2/oO00Oo00$OooO00o;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final OooO0OO:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/oO00Oo00$OooO0O0;

    invoke-direct {v0}, Lz2/oO00Oo00$OooO0O0;-><init>()V

    iput-object v0, p0, Lz2/oO00Oo00;->OooO00o:Lz2/oO00Oo00$OooO0O0;

    new-instance v0, Lz2/oO00O0o;

    invoke-direct {v0}, Lz2/oO00O0o;-><init>()V

    iput-object v0, p0, Lz2/oO00Oo00;->OooO0O0:Lz2/oO00O0o;

    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/PrettyPrintTreeMap;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/PrettyPrintTreeMap;-><init>()V

    iput-object v0, p0, Lz2/oO00Oo00;->OooO0OO:Ljava/util/NavigableMap;

    return-void
.end method

.method private OooO0o0(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lz2/oO00Oo00;->OooO0OO:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lz2/oO00Oo00;->OooO0OO:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lz2/oO00Oo00;->OooO0OO:Ljava/util/NavigableMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static OooO0oO(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static OooO0oo(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lz2/t2;->OooO0oo(Landroid/graphics/Bitmap;)I

    move-result p0

    invoke-static {p0}, Lz2/oO00Oo00;->OooO0oO(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public OooO00o(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, Lz2/t2;->OooO0oO(IILandroid/graphics/Bitmap$Config;)I

    move-result p1

    invoke-static {p1}, Lz2/oO00Oo00;->OooO0oO(I)Ljava/lang/String;

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

    invoke-static {p1}, Lz2/oO00Oo00;->OooO0oo(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public OooO0Oo(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-static {p1}, Lz2/t2;->OooO0oo(Landroid/graphics/Bitmap;)I

    move-result v0

    iget-object v1, p0, Lz2/oO00Oo00;->OooO00o:Lz2/oO00Oo00$OooO0O0;

    invoke-virtual {v1, v0}, Lz2/oO00Oo00$OooO0O0;->OooO0o0(I)Lz2/oO00Oo00$OooO00o;

    move-result-object v0

    iget-object v1, p0, Lz2/oO00Oo00;->OooO0O0:Lz2/oO00O0o;

    invoke-virtual {v1, v0, p1}, Lz2/oO00O0o;->OooO0Oo(Lz2/oO00OOOo;Ljava/lang/Object;)V

    iget-object p1, p0, Lz2/oO00Oo00;->OooO0OO:Ljava/util/NavigableMap;

    iget v1, v0, Lz2/oO00Oo00$OooO00o;->OooO0O0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v1, p0, Lz2/oO00Oo00;->OooO0OO:Ljava/util/NavigableMap;

    iget v0, v0, Lz2/oO00Oo00$OooO00o;->OooO0O0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v2, p1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public OooO0o(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1, p2, p3}, Lz2/t2;->OooO0oO(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    iget-object v1, p0, Lz2/oO00Oo00;->OooO00o:Lz2/oO00Oo00$OooO0O0;

    invoke-virtual {v1, v0}, Lz2/oO00Oo00$OooO0O0;->OooO0o0(I)Lz2/oO00Oo00$OooO00o;

    move-result-object v1

    iget-object v2, p0, Lz2/oO00Oo00;->OooO0OO:Ljava/util/NavigableMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v0, v0, 0x8

    if-gt v3, v0, :cond_0

    iget-object v0, p0, Lz2/oO00Oo00;->OooO00o:Lz2/oO00Oo00$OooO0O0;

    invoke-virtual {v0, v1}, Lz2/oO000Oo;->OooO0OO(Lz2/oO00OOOo;)V

    iget-object v0, p0, Lz2/oO00Oo00;->OooO00o:Lz2/oO00Oo00$OooO0O0;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lz2/oO00Oo00$OooO0O0;->OooO0o0(I)Lz2/oO00Oo00$OooO00o;

    move-result-object v1

    :cond_0
    iget-object v0, p0, Lz2/oO00Oo00;->OooO0O0:Lz2/oO00O0o;

    invoke-virtual {v0, v1}, Lz2/oO00O0o;->OooO00o(Lz2/oO00OOOo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    invoke-direct {p0, v2}, Lz2/oO00Oo00;->OooO0o0(Ljava/lang/Integer;)V

    :cond_1
    return-object v0
.end method

.method public removeLast()Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/oO00Oo00;->OooO0O0:Lz2/oO00O0o;

    invoke-virtual {v0}, Lz2/oO00O0o;->OooO0o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lz2/t2;->OooO0oo(Landroid/graphics/Bitmap;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lz2/oO00Oo00;->OooO0o0(Ljava/lang/Integer;)V

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SizeStrategy:\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/oO00Oo00;->OooO0O0:Lz2/oO00O0o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  SortedSizes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/oO00Oo00;->OooO0OO:Ljava/util/NavigableMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
