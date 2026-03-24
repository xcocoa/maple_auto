.class public Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TilesInitTask;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TilesInitTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[I>;"
    }
.end annotation


# instance fields
.field private final contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private decoder:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;

.field private final decoderFactoryRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory<",
            "+",
            "Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;",
            ">;>;"
        }
    .end annotation
.end field

.field private exception:Ljava/lang/Exception;

.field private final source:Landroid/net/Uri;

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
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/content/Context;Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;",
            "Landroid/content/Context;",
            "Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory<",
            "+",
            "Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TilesInitTask;->viewRef:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TilesInitTask;->contextRef:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TilesInitTask;->decoderFactoryRef:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TilesInitTask;->source:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TilesInitTask;->doInBackground([Ljava/lang/Void;)[I

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)[I
    .locals 6

    :try_start_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TilesInitTask;->source:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TilesInitTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TilesInitTask;->decoderFactoryRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory;

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TilesInitTask;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const-string v3, "TilesInitTask.doInBackground"

    const/4 v4, 0x0

    :try_start_1
    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory;->make()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;

    iput-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TilesInitTask;->decoder:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TilesInitTask;->source:Landroid/net/Uri;

    invoke-interface {v1, v0, v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;->init(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Point;

    move-result-object v1

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    aput v3, v0, v4

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput p1, v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    invoke-static {}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to initialise bitmap decoder"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TilesInitTask;->exception:Ljava/lang/Exception;

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TilesInitTask;->onPostExecute([I)V

    return-void
.end method

.method public onPostExecute([I)V
    .locals 5

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TilesInitTask;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TilesInitTask;->decoder:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    const/4 v4, 0x2

    aget p1, p1, v4

    invoke-static {v0, v1, v2, v3, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;III)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TilesInitTask;->exception:Ljava/lang/Exception;

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5600(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnImageEventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5600(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnImageEventListener;

    move-result-object p1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TilesInitTask;->exception:Ljava/lang/Exception;

    invoke-interface {p1, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnImageEventListener;->onImageLoadError(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method
