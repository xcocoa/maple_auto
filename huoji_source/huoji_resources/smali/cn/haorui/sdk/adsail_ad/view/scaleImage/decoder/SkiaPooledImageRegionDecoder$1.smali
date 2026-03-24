.class public Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder$1;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;->lazyInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;->access$100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;->access$100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    move-result-object v1

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->access$200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder$DecoderPool;)I

    move-result v1

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;->access$300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;->allowAdditionalDecoder(IJ)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;->access$100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;

    const-string v3, "Starting decoder"

    invoke-static {v2, v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;->access$400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;->access$500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Started decoder, took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;->access$400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start decoder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;->access$400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaPooledImageRegionDecoder;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
