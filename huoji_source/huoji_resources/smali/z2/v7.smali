.class public Lz2/v7;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/v7$OooO0OO;,
        Lz2/v7$OooO0O0;
    }
.end annotation


# instance fields
.field public OooO00o:Lcom/yanzhenjie/zbar/ImageScanner;

.field private OooO0O0:Lz2/v7$OooO0OO;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "iconv"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private OooO(Lcom/yanzhenjie/zbar/Image;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lz2/v7;->OooO00o:Lcom/yanzhenjie/zbar/ImageScanner;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/zbar/ImageScanner;->scanImage(Lcom/yanzhenjie/zbar/Image;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Lz2/v7;->OooO00o:Lcom/yanzhenjie/zbar/ImageScanner;

    invoke-virtual {p1}, Lcom/yanzhenjie/zbar/ImageScanner;->getResults()Lcom/yanzhenjie/zbar/SymbolSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yanzhenjie/zbar/SymbolSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yanzhenjie/zbar/Symbol;

    invoke-virtual {v1}, Lcom/yanzhenjie/zbar/Symbol;->getType()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_2

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/yanzhenjie/zbar/Symbol;->getDataBytes()[B

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/yanzhenjie/zbar/Symbol;->getData()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    return-object v2

    :cond_4
    return-object v0
.end method

.method public static synthetic OooO00o(Lz2/v7;Lcom/yanzhenjie/zbar/Image;Lz2/v7$OooO0O0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lz2/v7;->OooO0o0(Lcom/yanzhenjie/zbar/Image;Lz2/v7$OooO0O0;)V

    return-void
.end method

.method public static synthetic OooO0O0(Lz2/v7;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lz2/v7;->OooO0oO(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO0OO(Lz2/v7;Lcom/yanzhenjie/zbar/Image;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lz2/v7;->OooO(Lcom/yanzhenjie/zbar/Image;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private OooO0o0(Lcom/yanzhenjie/zbar/Image;Lz2/v7$OooO0O0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lz2/v7;->OooO00o:Lcom/yanzhenjie/zbar/ImageScanner;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/zbar/ImageScanner;->scanImage(Lcom/yanzhenjie/zbar/Image;)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lz2/v7;->OooO00o:Lcom/yanzhenjie/zbar/ImageScanner;

    invoke-virtual {p1}, Lcom/yanzhenjie/zbar/ImageScanner;->getResults()Lcom/yanzhenjie/zbar/SymbolSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yanzhenjie/zbar/SymbolSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yanzhenjie/zbar/Symbol;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/yanzhenjie/zbar/Symbol;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lz2/v7$OooO0O0;->OooO00o(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lz2/v7$OooO0O0;->error()V

    :cond_2
    return-void
.end method

.method private OooO0oO(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit16 v2, v2, 0x190

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public OooO0Oo()V
    .locals 4

    new-instance v0, Lcom/yanzhenjie/zbar/ImageScanner;

    invoke-direct {v0}, Lcom/yanzhenjie/zbar/ImageScanner;-><init>()V

    iput-object v0, p0, Lz2/v7;->OooO00o:Lcom/yanzhenjie/zbar/ImageScanner;

    const/4 v1, 0x0

    const/16 v2, 0x100

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/yanzhenjie/zbar/ImageScanner;->setConfig(III)V

    iget-object v0, p0, Lz2/v7;->OooO00o:Lcom/yanzhenjie/zbar/ImageScanner;

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2, v3}, Lcom/yanzhenjie/zbar/ImageScanner;->setConfig(III)V

    return-void
.end method

.method public OooO0o([BLandroid/hardware/Camera;Landroid/view/View;Lz2/v7$OooO0O0;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lz2/v7;->OooO0O0:Lz2/v7$OooO0OO;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lz2/v7$OooO0OO;->Ooooo00:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    new-instance v0, Lcom/yanzhenjie/zbar/Image;

    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    iget v2, p2, Landroid/hardware/Camera$Size;->height:I

    const-string v3, "Y800"

    invoke-direct {v0, v1, v2, v3}, Lcom/yanzhenjie/zbar/Image;-><init>(IILjava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-static {v1}, Lz2/u7;->OooO0o0(Landroid/content/Context;)I

    move-result v1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-static {v2}, Lz2/u7;->OooO0OO(Landroid/content/Context;)I

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double v1, v1, v3

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    int-to-double v3, p2

    div-double/2addr v1, v3

    double-to-float p2, v1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, p2

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, p2

    float-to-int p2, p3

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/zbar/Image;->setData([B)V

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/yanzhenjie/zbar/Image;->setCrop(IIII)V

    new-instance p1, Lz2/v7$OooO0OO;

    invoke-direct {p1, p0, v0, p4}, Lz2/v7$OooO0OO;-><init>(Lz2/v7;Lcom/yanzhenjie/zbar/Image;Lz2/v7$OooO0O0;)V

    iput-object p1, p0, Lz2/v7;->OooO0O0:Lz2/v7$OooO0OO;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    if-eqz p4, :cond_2

    invoke-interface {p4}, Lz2/v7$OooO0O0;->error()V

    :cond_2
    :goto_1
    return-void
.end method

.method public OooO0oo(Ljava/lang/String;Lz2/v7$OooO0O0;)V
    .locals 1

    new-instance v0, Lz2/v7$OooO00o;

    invoke-direct {v0, p0, p1, p2}, Lz2/v7$OooO00o;-><init>(Lz2/v7;Ljava/lang/String;Lz2/v7$OooO0O0;)V

    invoke-static {v0}, Lcom/cyjh/elfin/tools/utils/ThreadUtils;->OooOOoo(Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooOO0;)V

    return-void
.end method
