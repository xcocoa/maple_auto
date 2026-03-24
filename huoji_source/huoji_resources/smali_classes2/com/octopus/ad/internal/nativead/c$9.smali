.class public Lcom/octopus/ad/internal/nativead/c$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/nativead/c;->a(Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic b:[Landroid/graphics/Bitmap;

.field public final synthetic c:Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;

.field public final synthetic d:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

.field public final synthetic e:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

.field public final synthetic f:Lcom/octopus/ad/internal/nativead/c;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/nativead/c;Ljava/util/concurrent/CountDownLatch;[Landroid/graphics/Bitmap;Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c$9;->f:Lcom/octopus/ad/internal/nativead/c;

    iput-object p2, p0, Lcom/octopus/ad/internal/nativead/c$9;->a:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/octopus/ad/internal/nativead/c$9;->b:[Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/octopus/ad/internal/nativead/c$9;->c:Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;

    iput-object p5, p0, Lcom/octopus/ad/internal/nativead/c$9;->d:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    iput-object p6, p0, Lcom/octopus/ad/internal/nativead/c$9;->e:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$9;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/octopus/ad/internal/nativead/c$9;->b:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-nez v3, :cond_0

    new-instance v1, Lcom/octopus/ad/internal/nativead/c$9$1;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/nativead/c$9$1;-><init>(Lcom/octopus/ad/internal/nativead/c$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/octopus/ad/internal/nativead/c$9;->b:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/high16 v5, -0x1000000

    const/high16 v6, 0x40a00000    # 5.0f

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v7, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/octopus/ad/internal/m;->g()Landroid/content/Context;

    move-result-object v5

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v5, v8}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v5, p0, Lcom/octopus/ad/internal/nativead/c$9;->b:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v2

    invoke-virtual {v3, v5, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/octopus/ad/internal/nativead/c$9;->b:[Landroid/graphics/Bitmap;

    const/4 v7, 0x1

    aget-object v8, v5, v7

    const/high16 v9, 0x40000000    # 2.0f

    const/16 v10, 0x2a

    if-nez v8, :cond_1

    iget-object v5, p0, Lcom/octopus/ad/internal/nativead/c$9;->d:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-virtual {v5}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->getType()I

    move-result v5

    sget v7, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->TYPE_TEXT:I

    if-ne v5, v7, :cond_2

    iget-object v5, p0, Lcom/octopus/ad/internal/nativead/c$9;->d:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-virtual {v5}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->getAdurl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v7, p0, Lcom/octopus/ad/internal/nativead/c$9;->d:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-virtual {v7}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->getAdurl()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/octopus/ad/internal/nativead/c$9;->d:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-virtual {v8}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->getAdurl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v7, v2, v8, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v7, p0, Lcom/octopus/ad/internal/nativead/c$9;->d:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-virtual {v7}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->getAdurl()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    int-to-float v11, v11

    int-to-float v5, v5

    div-float/2addr v5, v9

    sub-float/2addr v11, v5

    sub-float/2addr v11, v6

    invoke-virtual {v3, v7, v8, v11, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    aget-object v5, v5, v7

    const/16 v7, 0x55

    invoke-static {v5, v7, v10, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int/2addr v8, v11

    add-int/lit8 v8, v8, -0x5

    int-to-float v8, v8

    invoke-virtual {v3, v5, v7, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/octopus/ad/internal/nativead/c$9;->b:[Landroid/graphics/Bitmap;

    const/4 v7, 0x2

    aget-object v8, v5, v7

    if-nez v8, :cond_3

    iget-object v5, p0, Lcom/octopus/ad/internal/nativead/c$9;->e:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-virtual {v5}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->getType()I

    move-result v5

    sget v7, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->TYPE_TEXT:I

    if-ne v5, v7, :cond_4

    iget-object v5, p0, Lcom/octopus/ad/internal/nativead/c$9;->e:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-virtual {v5}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->getAdurl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v7, p0, Lcom/octopus/ad/internal/nativead/c$9;->e:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-virtual {v7}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->getAdurl()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/octopus/ad/internal/nativead/c$9;->e:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-virtual {v8}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->getAdurl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v7, v2, v8, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v7, p0, Lcom/octopus/ad/internal/nativead/c$9;->e:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-virtual {v7}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->getAdurl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    sub-int/2addr v8, v2

    add-int/lit8 v8, v8, -0xd

    int-to-float v2, v8

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    int-to-float v8, v8

    int-to-float v5, v5

    div-float/2addr v5, v9

    sub-float/2addr v8, v5

    sub-float/2addr v8, v6

    invoke-virtual {v3, v7, v2, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    aget-object v5, v5, v7

    invoke-static {v5, v10, v10, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0xa

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xa

    int-to-float v6, v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    :goto_1
    new-instance v2, Lcom/octopus/ad/internal/nativead/c$9$2;

    invoke-direct {v2, p0, v1}, Lcom/octopus/ad/internal/nativead/c$9$2;-><init>(Lcom/octopus/ad/internal/nativead/c$9;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    return-void
.end method
