.class public Lcom/lidroid/xutils/bitmap/core/BitmapCache$1;
.super Lcom/lidroid/xutils/cache/LruMemoryCache;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidroid/xutils/bitmap/core/BitmapCache;->initMemoryCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lidroid/xutils/cache/LruMemoryCache<",
        "Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/lidroid/xutils/bitmap/core/BitmapCache;


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;I)V
    .locals 0

    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$1;->this$0:Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    invoke-direct {p0, p2}, Lcom/lidroid/xutils/cache/LruMemoryCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public sizeOf(Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;Landroid/graphics/Bitmap;)I
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    mul-int p1, p1, p2

    return p1
.end method

.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/lidroid/xutils/bitmap/core/BitmapCache$1;->sizeOf(Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method
