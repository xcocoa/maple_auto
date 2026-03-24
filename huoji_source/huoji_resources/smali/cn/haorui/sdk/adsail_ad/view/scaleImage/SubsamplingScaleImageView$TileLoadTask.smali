.class public Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TileLoadTask;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TileLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final decoderRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private exception:Ljava/lang/Exception;

.field private final tileRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;",
            ">;"
        }
    .end annotation
.end field

.field private final viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TileLoadTask;->viewRef:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TileLoadTask;->decoderRef:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TileLoadTask;->tileRef:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    invoke-static {p3, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4002(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;Z)Z

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 7

    :try_start_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TileLoadTask;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TileLoadTask;->decoderRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TileLoadTask;->tileRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;->isReady()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    const-string v3, "TileLoadTask.doInBackground, tile.sRect=%s, tile.sampleSize=%d"

    const/4 v4, 0x2

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x1

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p1, v3, v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5700(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;->isReady()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$5000(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$5000(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$5000(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;->decodeRegion(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5700(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    :cond_1
    :try_start_4
    invoke-static {v1, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4002(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5700(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5700(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v1, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4002(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;Z)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to decode tile - OutOfMemoryError"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TileLoadTask;->exception:Ljava/lang/Exception;

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to decode tile"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TileLoadTask;->exception:Ljava/lang/Exception;

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TileLoadTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TileLoadTask;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TileLoadTask;->tileRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-static {v1, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$502(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    invoke-static {v1, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4002(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;Z)Z

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5900(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TileLoadTask;->exception:Ljava/lang/Exception;

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5600(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnImageEventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5600(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnImageEventListener;

    move-result-object p1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TileLoadTask;->exception:Ljava/lang/Exception;

    invoke-interface {p1, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnImageEventListener;->onTileLoadError(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TileLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
