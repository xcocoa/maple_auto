.class public Lz2/o000OO00;
.super Lz2/o000OO0O;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/o000OO0O<",
        "Landroid/graphics/Bitmap;",
        "Lz2/o000OO00;",
        ">;"
    }
.end annotation


# static fields
.field private static BIG_MAX:I = 0x14

.field private static BIG_PIXELS:I = 0x27100

.field private static BIG_TPIXELS:I = 0xf4240

.field private static DELAY_WRITE:Z = false

.field private static final FADE_DUR:I = 0x12c

.field private static SMALL_MAX:I = 0x14

.field private static SMALL_PIXELS:I = 0x9c4

.field private static bigCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static dummy:Landroid/graphics/Bitmap;

.field private static empty:Landroid/graphics/Bitmap;

.field private static invalidCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static queueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/WeakHashMap<",
            "Landroid/widget/ImageView;",
            "Lz2/o000OO00;",
            ">;>;"
        }
    .end annotation
.end field

.field private static smallCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anchor:F

.field private animation:I

.field private bm:Landroid/graphics/Bitmap;

.field private fallback:I

.field private imageFile:Ljava/io/File;

.field private invalid:Z

.field private preset:Landroid/graphics/Bitmap;

.field private ratio:F

.field private rotate:Z

.field private round:I

.field private targetDim:Z

.field private targetWidth:I

.field private v:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lz2/o000OO00;->queueMap:Ljava/util/HashMap;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lz2/o000OO00;->empty:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lz2/o000OO00;->dummy:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lz2/o000OO0O;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/o000OO00;->targetDim:Z

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lz2/o000OO00;->anchor:F

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lz2/o000OO0O;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/o000OO00;

    invoke-virtual {v1, v0}, Lz2/o000OO0O;->memCache(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/o000OO00;

    invoke-virtual {v1, v0}, Lz2/o000OO0O;->fileCache(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o000OO00;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lz2/o000OO0O;->url(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private addQueue(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    sget-object v0, Lz2/o000OO00;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    if-nez v0, :cond_1

    sget-object v0, Lz2/o000OO00;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lz2/o000OO00;->queueMap:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    sget-object p2, Lz2/o000OO00;->queueMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public static async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Object;Lz2/o000Oo0;Lz2/o000OOo0;Lorg/apache/http/HttpHost;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    iget-boolean v5, v0, Lz2/o000OOo0;->OooO00o:Z

    iget-boolean v6, v0, Lz2/o000OOo0;->OooO0O0:Z

    iget v7, v0, Lz2/o000OOo0;->OooO0o0:I

    iget v8, v0, Lz2/o000OOo0;->OooO0o:I

    iget-object v9, v0, Lz2/o000OOo0;->OooO0OO:Landroid/graphics/Bitmap;

    iget v10, v0, Lz2/o000OOo0;->OooO0oO:I

    iget v11, v0, Lz2/o000OOo0;->OooO0oo:F

    iget v12, v0, Lz2/o000OOo0;->OooOO0:F

    iget v15, v0, Lz2/o000OOo0;->OooO0Oo:I

    iget v0, v0, Lz2/o000OOo0;->OooO:I

    move/from16 v16, v0

    invoke-static/range {v1 .. v18}, Lz2/o000OO00;->async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lz2/o000Oo0;IILorg/apache/http/HttpHost;Ljava/lang/String;)V

    return-void
.end method

.method public static async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lz2/o000Oo0;IILorg/apache/http/HttpHost;Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p6

    move-object/from16 v5, p12

    move/from16 v6, p15

    if-eqz v3, :cond_0

    invoke-static {p3, p6, v6}, Lz2/o000OO00;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_1

    const v0, 0x40ff0001

    invoke-virtual {p2, v0, p3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v5, p3, v0}, Lz2/o00O000o;->OooOOOO(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v8, 0x4

    move-object v0, p2

    move-object v1, v7

    move-object/from16 v2, p8

    move/from16 v3, p7

    move/from16 v4, p9

    move/from16 v5, p10

    move/from16 v6, p11

    move v7, v8

    invoke-static/range {v0 .. v7}, Lz2/o000OO00;->setBmAnimate(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V

    goto/16 :goto_1

    :cond_1
    new-instance v7, Lz2/o000OO00;

    invoke-direct {v7}, Lz2/o000OO00;-><init>()V

    invoke-virtual {v7, p3}, Lz2/o000OO0O;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2/o000OO00;

    invoke-virtual {v2, p2}, Lz2/o000OO00;->imageView(Landroid/widget/ImageView;)Lz2/o000OO00;

    move-result-object v1

    invoke-virtual {v1, p4}, Lz2/o000OO0O;->memCache(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/o000OO00;

    move v2, p5

    invoke-virtual {v1, p5}, Lz2/o000OO0O;->fileCache(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/o000OO00;

    invoke-virtual {v1, p6}, Lz2/o000OO00;->targetWidth(I)Lz2/o000OO00;

    move-result-object v1

    move/from16 v2, p7

    invoke-virtual {v1, v2}, Lz2/o000OO00;->fallback(I)Lz2/o000OO00;

    move-result-object v1

    move-object/from16 v2, p8

    invoke-virtual {v1, v2}, Lz2/o000OO00;->preset(Landroid/graphics/Bitmap;)Lz2/o000OO00;

    move-result-object v1

    move/from16 v2, p9

    invoke-virtual {v1, v2}, Lz2/o000OO00;->animation(I)Lz2/o000OO00;

    move-result-object v1

    move/from16 v2, p10

    invoke-virtual {v1, v2}, Lz2/o000OO00;->ratio(F)Lz2/o000OO00;

    move-result-object v1

    move/from16 v2, p11

    invoke-virtual {v1, v2}, Lz2/o000OO00;->anchor(F)Lz2/o000OO00;

    move-result-object v1

    invoke-virtual {v1, v5}, Lz2/o000OO0O;->progress(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/o000OO00;

    move-object/from16 v2, p13

    invoke-virtual {v1, v2}, Lz2/o000OO0O;->auth(Lz2/o000Oo0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/o000OO00;

    move/from16 v2, p14

    invoke-virtual {v1, v2}, Lz2/o000OO0O;->policy(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/o000OO00;

    invoke-virtual {v1, v6}, Lz2/o000OO00;->round(I)Lz2/o000OO00;

    move-result-object v1

    move-object/from16 v2, p17

    invoke-virtual {v1, v2}, Lz2/o000OO0O;->networkUrl(Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p16, :cond_2

    invoke-virtual/range {p16 .. p16}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p16 .. p16}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Lz2/o000OO0O;->proxy(Ljava/lang/String;I)Ljava/lang/Object;

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v7, p0}, Lz2/o000OO0O;->async(Landroid/app/Activity;)V

    goto :goto_1

    :cond_3
    move-object v0, p1

    invoke-virtual {v7, p1}, Lz2/o000OO00;->async(Landroid/content/Context;)V

    :goto_1
    return-void
.end method

.method private bmGet(Ljava/lang/String;[B)Landroid/graphics/Bitmap;
    .locals 6

    iget v2, p0, Lz2/o000OO00;->targetWidth:I

    iget-boolean v3, p0, Lz2/o000OO00;->targetDim:Z

    iget v4, p0, Lz2/o000OO00;->round:I

    iget-boolean v5, p0, Lz2/o000OO00;->rotate:Z

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lz2/o000OO00;->getResizedImage(Ljava/lang/String;[BIZIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private checkCb(Lz2/o000OO00;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lz2/o000O;)V
    .locals 2

    if-eqz p3, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x40ff0001

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p3, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2, p3, p4, p5}, Lz2/o000OO00;->callback(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lz2/o000O;)V

    goto :goto_0

    :cond_1
    invoke-direct {p1, p2, p3, p4, v1}, Lz2/o000OO00;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Lz2/o000OO0O;->showProgress(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static clearCache()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lz2/o000OO00;->bigCache:Ljava/util/Map;

    sput-object v0, Lz2/o000OO00;->smallCache:Ljava/util/Map;

    sput-object v0, Lz2/o000OO00;->invalidCache:Ljava/util/Map;

    return-void
.end method

.method public static clearTasks()V
    .locals 1

    sget-object v0, Lz2/o000OO00;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private static decode(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0, p2, p3}, Lz2/o000OO00;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p3, 0x0

    array-length v0, p1

    invoke-static {p1, p3, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    iget-boolean p2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez p2, :cond_2

    const-string p2, "decode image failed"

    invoke-static {p2, p0}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method private static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2, v0, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p0, v0}, Lz2/o000OO00;->rotate(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-static {v1}, Lz2/o00O000;->OooO0o(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p0

    move-object p1, v0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p1, v0

    :goto_0
    :try_start_2
    invoke-static {p0}, Lz2/o00O000;->OoooO0O(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lz2/o00O000;->OooO0o(Ljava/io/Closeable;)V

    move-object v0, p1

    :goto_1
    return-object v0

    :goto_2
    invoke-static {v0}, Lz2/o00O000;->OooO0o(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static fadeIn(II)Z
    .locals 2

    const/4 v0, -0x3

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, -0x2

    if-eq p0, v0, :cond_2

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x3

    if-ne p1, p0, :cond_2

    return v1

    :cond_2
    if-ne p1, v1, :cond_3

    return v1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static filter(Landroid/view/View;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Lz2/o000OO00;->empty:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    const/16 p2, 0x8

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const/4 p2, 0x4

    goto :goto_0

    :cond_3
    :goto_1
    return-object p1
.end method

.method private static getBCache()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    sget-object v0, Lz2/o000OO00;->bigCache:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lcom/androidquery/util/BitmapCache;

    sget v1, Lz2/o000OO00;->BIG_MAX:I

    sget v2, Lz2/o000OO00;->BIG_PIXELS:I

    sget v3, Lz2/o000OO00;->BIG_TPIXELS:I

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lz2/o000OO00;->bigCache:Ljava/util/Map;

    :cond_0
    sget-object v0, Lz2/o000OO00;->bigCache:Ljava/util/Map;

    return-object v0
.end method

.method public static getEmptyBitmap()Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lz2/o000OO00;->empty:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getFallback()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lz2/o000OO00;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget v1, p0, Lz2/o000OO00;->fallback:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lz2/o000OO00;->memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lz2/o000OO00;->fallback:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1, v2}, Lz2/o000OO00;->memPut(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return-object v2
.end method

.method private static getICache()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    sget-object v0, Lz2/o000OO00;->invalidCache:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lcom/androidquery/util/BitmapCache;

    const/16 v1, 0x64

    sget v2, Lz2/o000OO00;->BIG_PIXELS:I

    const v3, 0x3d090

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lz2/o000OO00;->invalidCache:Ljava/util/Map;

    :cond_0
    sget-object v0, Lz2/o000OO00;->invalidCache:Ljava/util/Map;

    return-object v0
.end method

.method private static getKey(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    const-string v0, "#"

    if-lez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    if-lez p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getMemoryCached(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lz2/o000OO00;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, v1, v2, v1}, Lz2/o000OO00;->memPut(Ljava/lang/String;IILandroid/graphics/Bitmap;Z)V

    :cond_0
    return-object v2
.end method

.method public static getMemoryCached(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lz2/o000OO00;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getResizedImage(Ljava/lang/String;[BIZI)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lz2/o000OO00;->getResizedImage(Ljava/lang/String;[BIZIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getResizedImage(Ljava/lang/String;[BIZIZ)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-lez p2, :cond_2

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p1, v1, p5}, Lz2/o000OO00;->decode(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-nez p3, :cond_1

    iget p3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_1
    invoke-static {v2, p2}, Lz2/o000OO00;->sampleSize(II)I

    move-result p2

    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput p2, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :cond_2
    move-object p3, v0

    :goto_0
    :try_start_0
    invoke-static {p0, p1, p3, p5}, Lz2/o000OO00;->decode(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {}, Lz2/o000OO00;->clearCache()V

    invoke-static {p0}, Lz2/o00O000;->OoooO0O(Ljava/lang/Throwable;)V

    :goto_1
    if-lez p4, :cond_3

    invoke-static {v0, p4}, Lz2/o000OO00;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private static getRotateMatrix(I)Landroid/graphics/Matrix;
    .locals 6

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, -0x3d4c0000    # -90.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    :goto_0
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    :pswitch_5
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    int-to-float p1, p1

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v5, -0xbdbdbe

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1, v4, p1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method private static getSCache()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    sget-object v0, Lz2/o000OO00;->smallCache:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lcom/androidquery/util/BitmapCache;

    sget v1, Lz2/o000OO00;->SMALL_MAX:I

    sget v2, Lz2/o000OO00;->SMALL_PIXELS:I

    const v3, 0x3d090

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lz2/o000OO00;->smallCache:Ljava/util/Map;

    :cond_0
    sget-object v0, Lz2/o000OO00;->smallCache:Ljava/util/Map;

    return-object v0
.end method

.method public static isMemoryCached(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lz2/o000OO00;->getBCache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lz2/o000OO00;->getSCache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lz2/o000OO00;->getICache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    new-instance v0, Lz2/o00O00OO;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object v1, v0

    move-object v3, p1

    move-object v4, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lz2/o00O00OO;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/widget/ImageView;FF)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v0
.end method

.method private static memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1, p2}, Lz2/o000OO00;->getKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lz2/o000OO00;->getBCache()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    invoke-static {}, Lz2/o000OO00;->getSCache()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    :cond_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    invoke-static {}, Lz2/o000OO00;->getICache()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    invoke-static {}, Lz2/o000OO0O;->getLastStatus()I

    move-result p0

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_1

    sput-object p2, Lz2/o000OO00;->invalidCache:Ljava/util/Map;

    move-object p1, p2

    :cond_1
    return-object p1
.end method

.method private static memPut(Ljava/lang/String;IILandroid/graphics/Bitmap;Z)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    if-eqz p4, :cond_1

    invoke-static {}, Lz2/o000OO00;->getICache()Ljava/util/Map;

    move-result-object p4

    goto :goto_0

    :cond_1
    sget p4, Lz2/o000OO00;->SMALL_PIXELS:I

    if-gt v0, p4, :cond_2

    invoke-static {}, Lz2/o000OO00;->getSCache()Ljava/util/Map;

    move-result-object p4

    goto :goto_0

    :cond_2
    invoke-static {}, Lz2/o000OO00;->getBCache()Ljava/util/Map;

    move-result-object p4

    :goto_0
    if-gtz p1, :cond_4

    if-lez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p4, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {p0, p1, p2}, Lz2/o000OO00;->getKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p4, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    invoke-interface {p4, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    return-void
.end method

.method private presetBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    const v0, 0x40ff0001

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lz2/o000OO00;->preset:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p2, v0, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lz2/o000OO00;->preset:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz2/o000OO0O;->cacheAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lz2/o000OO00;->preset:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v0, v1}, Lz2/o000OO00;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    :cond_2
    return-void
.end method

.method private static rotate(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    invoke-virtual {v1, p0, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lz2/o00O000;->OooOO0O(Ljava/lang/Throwable;)V

    :goto_0
    if-lez v0, :cond_2

    invoke-static {v0}, Lz2/o000OO00;->getRotateMatrix(I)Landroid/graphics/Matrix;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "before"

    invoke-static {v2, v0}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "after"

    invoke-static {v1, v0}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eq p1, p0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p1, p0

    :cond_2
    return-object p1
.end method

.method private static sampleSize(II)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    mul-int/lit8 v2, p1, 0x2

    if-ge p0, v2, :cond_1

    :goto_1
    return v0

    :cond_1
    div-int/lit8 p0, p0, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .locals 8

    if-nez p3, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    if-eqz p4, :cond_1

    iget p1, p0, Lz2/o000OO00;->ratio:F

    iget p4, p0, Lz2/o000OO00;->anchor:F

    invoke-static {p2, p3, p1, p4}, Lz2/o000OO00;->makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lz2/o000OO00;->preset:Landroid/graphics/Bitmap;

    iget v3, p0, Lz2/o000OO00;->fallback:I

    iget v4, p0, Lz2/o000OO00;->animation:I

    iget v5, p0, Lz2/o000OO00;->ratio:F

    iget v6, p0, Lz2/o000OO00;->anchor:F

    invoke-virtual {p1}, Lz2/o000O;->OooOoO()I

    move-result v7

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v7}, Lz2/o000OO00;->setBmAnimate(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V

    :cond_2
    return-void
.end method

.method private static setBmAnimate(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V
    .locals 0

    invoke-static {p0, p1, p3}, Lz2/o000OO00;->filter(Landroid/view/View;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    invoke-static {p0, p1, p5, p6}, Lz2/o000OO00;->makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p4, p7}, Lz2/o000OO00;->fadeIn(II)Z

    move-result p7

    if-eqz p7, :cond_2

    if-nez p2, :cond_1

    new-instance p2, Landroid/view/animation/AlphaAnimation;

    const/4 p4, 0x0

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-direct {p2, p4, p5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance p4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, p4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p4, 0x12c

    invoke-virtual {p2, p4, p5}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_1

    :cond_1
    invoke-static {p0, p2, p5, p6}, Lz2/o000OO00;->makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 p4, 0x2

    new-array p4, p4, [Landroid/graphics/drawable/Drawable;

    const/4 p5, 0x0

    aput-object p2, p4, p5

    const/4 p2, 0x1

    aput-object p1, p4, p2

    new-instance p1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {p1, p4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    const/16 p2, 0x12c

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    :cond_2
    if-lez p4, :cond_3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    goto :goto_1

    :cond_3
    :goto_0
    move-object p2, p3

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_4

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroid/view/animation/Animation;->setStartTime(J)V

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    :goto_2
    return-void
.end method

.method public static setCacheLimit(I)V
    .locals 0

    sput p0, Lz2/o000OO00;->BIG_MAX:I

    invoke-static {}, Lz2/o000OO00;->clearCache()V

    return-void
.end method

.method public static setDelayWrite(Z)V
    .locals 0

    sput-boolean p0, Lz2/o000OO00;->DELAY_WRITE:Z

    return-void
.end method

.method public static setIconCacheLimit(I)V
    .locals 0

    sput p0, Lz2/o000OO00;->SMALL_MAX:I

    invoke-static {}, Lz2/o000OO00;->clearCache()V

    return-void
.end method

.method public static setMaxPixelLimit(I)V
    .locals 0

    sput p0, Lz2/o000OO00;->BIG_TPIXELS:I

    invoke-static {}, Lz2/o000OO00;->clearCache()V

    return-void
.end method

.method public static setPixelLimit(I)V
    .locals 0

    sput p0, Lz2/o000OO00;->BIG_PIXELS:I

    invoke-static {}, Lz2/o000OO00;->clearCache()V

    return-void
.end method

.method public static setSmallPixel(I)V
    .locals 0

    sput p0, Lz2/o000OO00;->SMALL_PIXELS:I

    invoke-static {}, Lz2/o000OO00;->clearCache()V

    return-void
.end method


# virtual methods
.method public accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lz2/o000OO00;->imageFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lz2/o000OO00;->imageFile:Ljava/io/File;

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lz2/o000OO0O;->accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public anchor(F)Lz2/o000OO00;
    .locals 0

    iput p1, p0, Lz2/o000OO00;->anchor:F

    return-object p0
.end method

.method public animation(I)Lz2/o000OO00;
    .locals 0

    iput p1, p0, Lz2/o000OO00;->animation:I

    return-object p0
.end method

.method public async(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Lz2/o000OO0O;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lz2/o000OO00;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lz2/o000OO0O;->showProgress(Z)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lz2/o000OO00;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lz2/o000OO00;->memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    const v2, 0x40ff0001

    invoke-virtual {v0, v2, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    new-instance v0, Lz2/o000O;

    invoke-direct {v0}, Lz2/o000O;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lz2/o000O;->Oooo0(I)Lz2/o000O;

    move-result-object v0

    invoke-virtual {v0}, Lz2/o000O;->OooO0oO()Lz2/o000O;

    move-result-object v0

    iput-object v0, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-virtual {p0, p1, v1, v0}, Lz2/o000OO00;->callback(Ljava/lang/String;Landroid/graphics/Bitmap;Lz2/o000O;)V

    return-void

    :cond_1
    invoke-direct {p0, p1, v0}, Lz2/o000OO00;->presetBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    sget-object v1, Lz2/o000OO00;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1, v0}, Lz2/o000OO00;->addQueue(Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lz2/o000OO0O;->async(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lz2/o000OO0O;->showProgress(Z)V

    invoke-direct {p0, p1, v0}, Lz2/o000OO00;->addQueue(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method public bitmap(Landroid/graphics/Bitmap;)Lz2/o000OO00;
    .locals 0

    iput-object p1, p0, Lz2/o000OO00;->bm:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final callback(Ljava/lang/String;Landroid/graphics/Bitmap;Lz2/o000O;)V
    .locals 9

    iget-object v0, p0, Lz2/o000OO00;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    sget-object v0, Lz2/o000OO00;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lz2/o000OO00;->checkCb(Lz2/o000OO00;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lz2/o000O;)V

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lz2/o000OO00;

    iput-object p3, v4, Lz2/o000OO0O;->status:Lz2/o000O;

    move-object v3, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lz2/o000OO00;->checkCb(Lz2/o000OO00;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lz2/o000O;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public callback(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lz2/o000O;)V
    .locals 0

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lz2/o000OO00;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public bridge synthetic callback(Ljava/lang/String;Ljava/lang/Object;Lz2/o000O;)V
    .locals 0

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lz2/o000OO00;->callback(Ljava/lang/String;Landroid/graphics/Bitmap;Lz2/o000O;)V

    return-void
.end method

.method public fallback(I)Lz2/o000OO00;
    .locals 0

    iput p1, p0, Lz2/o000OO00;->fallback:I

    return-object p0
.end method

.method public file(Ljava/io/File;)Lz2/o000OO00;
    .locals 0

    iput-object p1, p0, Lz2/o000OO00;->imageFile:Ljava/io/File;

    return-object p0
.end method

.method public fileGet(Ljava/lang/String;Ljava/io/File;Lz2/o000O;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lz2/o000OO00;->bmGet(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic fileGet(Ljava/lang/String;Ljava/io/File;Lz2/o000O;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lz2/o000OO00;->fileGet(Ljava/lang/String;Ljava/io/File;Lz2/o000O;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public imageView(Landroid/widget/ImageView;)Lz2/o000OO00;
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lz2/o000OO00;->v:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public isStreamingContent()Z
    .locals 1

    sget-boolean v0, Lz2/o000OO00;->DELAY_WRITE:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lz2/o000OO00;->bm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lz2/o000OO0O;->memCache:Z

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget v0, p0, Lz2/o000OO00;->targetWidth:I

    iget v1, p0, Lz2/o000OO00;->round:I

    invoke-static {p1, v0, v1}, Lz2/o000OO00;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic memGet(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lz2/o000OO00;->memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public memPut(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    iget v0, p0, Lz2/o000OO00;->targetWidth:I

    iget v1, p0, Lz2/o000OO00;->round:I

    iget-boolean v2, p0, Lz2/o000OO00;->invalid:Z

    invoke-static {p1, v0, v1, p2, v2}, Lz2/o000OO00;->memPut(Ljava/lang/String;IILandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public bridge synthetic memPut(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lz2/o000OO00;->memPut(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public preset(Landroid/graphics/Bitmap;)Lz2/o000OO00;
    .locals 0

    iput-object p1, p0, Lz2/o000OO00;->preset:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public ratio(F)Lz2/o000OO00;
    .locals 0

    iput p1, p0, Lz2/o000OO00;->ratio:F

    return-object p0
.end method

.method public rotate(Z)Lz2/o000OO00;
    .locals 0

    iput-boolean p1, p0, Lz2/o000OO00;->rotate:Z

    return-object p0
.end method

.method public round(I)Lz2/o000OO00;
    .locals 0

    iput p1, p0, Lz2/o000OO00;->round:I

    return-object p0
.end method

.method public skip(Ljava/lang/String;Landroid/graphics/Bitmap;Lz2/o000O;)V
    .locals 0

    sget-object p2, Lz2/o000OO00;->queueMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic skip(Ljava/lang/String;Ljava/lang/Object;Lz2/o000O;)V
    .locals 0

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lz2/o000OO00;->skip(Ljava/lang/String;Landroid/graphics/Bitmap;Lz2/o000O;)V

    return-void
.end method

.method public targetWidth(I)Lz2/o000OO00;
    .locals 0

    iput p1, p0, Lz2/o000OO00;->targetWidth:I

    return-object p0
.end method

.method public transform(Ljava/lang/String;[BLz2/o000O;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p3}, Lz2/o000O;->OooOOo()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p2}, Lz2/o000OO00;->bmGet(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_6

    iget v0, p0, Lz2/o000OO00;->fallback:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lz2/o000OO00;->getFallback()Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_2

    :cond_1
    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, -0x3

    if-ne v0, v1, :cond_4

    iget-object p2, p0, Lz2/o000OO00;->preset:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_3
    :goto_1
    sget-object p2, Lz2/o000OO00;->dummy:Landroid/graphics/Bitmap;

    :cond_4
    :goto_2
    invoke-virtual {p3}, Lz2/o000O;->OooOO0o()I

    move-result v0

    const/16 v1, 0xc8

    const/4 v2, 0x1

    if-eq v0, v1, :cond_5

    iput-boolean v2, p0, Lz2/o000OO00;->invalid:Z

    :cond_5
    invoke-virtual {p3}, Lz2/o000O;->OooOoO()I

    move-result p3

    if-ne p3, v2, :cond_6

    if-eqz p1, :cond_6

    const-string p3, "invalid bm from net"

    invoke-static {p3}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_6
    return-object p2
.end method

.method public bridge synthetic transform(Ljava/lang/String;[BLz2/o000O;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lz2/o000OO00;->transform(Ljava/lang/String;[BLz2/o000O;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
