.class public Lz2/o0000Ooo;
.super Lcom/android/volley/Request;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/o0000Ooo$OooO00o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final o0OOO0o:F = 2.0f

.field private static final o0Oo0oo:Ljava/lang/Object;

.field private static final o0ooOOo:I = 0x3e8

.field private static final o0ooOoO:I = 0x2


# instance fields
.field private final o00o0O:Lz2/oo000o$OooO0O0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oo000o$OooO0O0<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private o00oO0O:Landroid/widget/ImageView$ScaleType;

.field private final o00oO0o:I

.field private final o00ooo:Landroid/graphics/Bitmap$Config;

.field private o0ooOO0:Lz2/o0000Ooo$OooO00o;

.field private final oo000o:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lz2/o0000Ooo;->o0Oo0oo:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lz2/oo000o$OooO0O0;IILandroid/graphics/Bitmap$Config;Lz2/oo000o$OooO00o;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lz2/oo000o$OooO0O0<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lz2/oo000o$OooO00o;",
            ")V"
        }
    .end annotation

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lz2/o0000Ooo;-><init>(Ljava/lang/String;Lz2/oo000o$OooO0O0;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lz2/o0000Ooo$OooO00o;Lz2/oo000o$OooO00o;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lz2/oo000o$OooO0O0;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lz2/o0000Ooo$OooO00o;Lz2/oo000o$OooO00o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lz2/oo000o$OooO0O0<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/widget/ImageView$ScaleType;",
            "Landroid/graphics/Bitmap$Config;",
            "Lz2/o0000Ooo$OooO00o;",
            "Lz2/oo000o$OooO00o;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p8}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lz2/oo000o$OooO00o;)V

    new-instance p1, Lz2/Oooo0;

    const/16 p8, 0x3e8

    const/4 v0, 0x2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p1, p8, v0, v1}, Lz2/Oooo0;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->Oooo0OO(Lz2/o0ooOOo;)Lcom/android/volley/Request;

    iput-object p2, p0, Lz2/o0000Ooo;->o00o0O:Lz2/oo000o$OooO0O0;

    iput-object p6, p0, Lz2/o0000Ooo;->o00ooo:Landroid/graphics/Bitmap$Config;

    iput p3, p0, Lz2/o0000Ooo;->oo000o:I

    iput p4, p0, Lz2/o0000Ooo;->o00oO0o:I

    iput-object p5, p0, Lz2/o0000Ooo;->o00oO0O:Landroid/widget/ImageView$ScaleType;

    iput-object p7, p0, Lz2/o0000Ooo;->o0ooOO0:Lz2/o0000Ooo$OooO00o;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lz2/oo000o$OooO0O0;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lz2/oo000o$OooO00o;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lz2/oo000o$OooO0O0<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/widget/ImageView$ScaleType;",
            "Landroid/graphics/Bitmap$Config;",
            "Lz2/oo000o$OooO00o;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lz2/o0000Ooo;-><init>(Ljava/lang/String;Lz2/oo000o$OooO0O0;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lz2/o0000Ooo$OooO00o;Lz2/oo000o$OooO00o;)V

    return-void
.end method

.method public static OoooO0(IIII)I
    .locals 4

    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    int-to-double p0, p1

    int-to-double p2, p3

    div-double/2addr p0, p2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    const/high16 p3, 0x40000000    # 2.0f

    mul-float p3, p3, p2

    float-to-double v0, p3

    cmpg-double v2, v0, p0

    if-gtz v2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    float-to-int p0, p2

    return p0
.end method

.method private OoooO00(Lz2/o00Oo0;)Lz2/oo000o;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o00Oo0;",
            ")",
            "Lz2/oo000o<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lz2/o00Oo0;->OooO0O0:[B

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget v2, p0, Lz2/o0000Ooo;->oo000o:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget v2, p0, Lz2/o0000Ooo;->o00oO0o:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lz2/o0000Ooo;->o00ooo:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    array-length v2, v0

    invoke-static {v0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v4, v0

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, p0, Lz2/o0000Ooo;->oo000o:I

    iget v7, p0, Lz2/o0000Ooo;->o00oO0o:I

    iget-object v8, p0, Lz2/o0000Ooo;->o00oO0O:Landroid/widget/ImageView$ScaleType;

    invoke-static {v6, v7, v4, v5, v8}, Lz2/o0000Ooo;->OoooO0O(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v6

    iget v7, p0, Lz2/o0000Ooo;->o00oO0o:I

    iget v8, p0, Lz2/o0000Ooo;->oo000o:I

    iget-object v9, p0, Lz2/o0000Ooo;->o00oO0O:Landroid/widget/ImageView$ScaleType;

    invoke-static {v7, v8, v5, v4, v9}, Lz2/o0000Ooo;->OoooO0O(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v7

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v4, v5, v6, v7}, Lz2/o0000Ooo;->OoooO0(IIII)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    array-length v4, v0

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    if-lez v6, :cond_2

    if-lez v7, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, v6, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, v7, :cond_2

    :cond_1
    invoke-static {v0, v6, v7, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Lcom/android/volley/ParseError;

    invoke-direct {v0, p1}, Lcom/android/volley/ParseError;-><init>(Lz2/o00Oo0;)V

    invoke-static {v0}, Lz2/oo000o;->OooO00o(Lcom/android/volley/VolleyError;)Lz2/oo000o;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v1, p0, Lz2/o0000Ooo;->o0ooOO0:Lz2/o0000Ooo$OooO00o;

    if-eqz v1, :cond_4

    iget v2, p0, Lz2/o0000Ooo;->oo000o:I

    iget v3, p0, Lz2/o0000Ooo;->o00oO0o:I

    invoke-interface {v1, v0, v2, v3}, Lz2/o0000Ooo$OooO00o;->OooO00o(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    invoke-static {p1}, Lz2/o00000;->OooO00o(Lz2/o00Oo0;)Lz2/OooOo$OooO00o;

    move-result-object p1

    invoke-static {v0, p1}, Lz2/oo000o;->OooO0OO(Ljava/lang/Object;Lz2/OooOo$OooO00o;)Lz2/oo000o;

    move-result-object p1

    return-object p1
.end method

.method private static OoooO0O(IIIILandroid/widget/ImageView$ScaleType;)I
    .locals 4

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return p2

    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v0, :cond_2

    if-nez p0, :cond_1

    return p2

    :cond_1
    return p0

    :cond_2
    if-nez p0, :cond_3

    int-to-double p0, p1

    int-to-double p3, p3

    div-double/2addr p0, p3

    int-to-double p2, p2

    mul-double p2, p2, p0

    double-to-int p0, p2

    return p0

    :cond_3
    if-nez p1, :cond_4

    return p0

    :cond_4
    int-to-double v0, p3

    int-to-double p2, p2

    div-double/2addr v0, p2

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, p2, :cond_6

    int-to-double p2, p0

    mul-double p2, p2, v0

    int-to-double v2, p1

    cmpg-double p1, p2, v2

    if-gez p1, :cond_5

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_5
    return p0

    :cond_6
    int-to-double p2, p0

    mul-double p2, p2, v0

    int-to-double v2, p1

    cmpl-double p1, p2, v2

    if-lez p1, :cond_7

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_7
    return p0
.end method


# virtual methods
.method public bridge synthetic OooO0o(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lz2/o0000Ooo;->Oooo(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public OooOo0o()Lcom/android/volley/Request$Priority;
    .locals 1

    sget-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public Oooo(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lz2/o0000Ooo;->o00o0O:Lz2/oo000o$OooO0O0;

    invoke-interface {v0, p1}, Lz2/oo000o$OooO0O0;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public Oooo00o(Lz2/o00Oo0;)Lz2/oo000o;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o00Oo0;",
            ")",
            "Lz2/oo000o<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    sget-object v0, Lz2/o0000Ooo;->o0Oo0oo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lz2/o0000Ooo;->OoooO00(Lz2/o00Oo0;)Lz2/oo000o;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object p1, p1, Lz2/o00Oo0;->OooO0O0:[B

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-virtual {p0}, Lcom/android/volley/Request;->OooOoo()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-static {v2, v3}, Lz2/o0OOO0o;->OooO0OO(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/android/volley/ParseError;

    invoke-direct {p1, v1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lz2/oo000o;->OooO00o(Lcom/android/volley/VolleyError;)Lz2/oo000o;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
