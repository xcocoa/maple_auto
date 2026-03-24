.class public Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->showLeftRightStyle(Landroid/content/Context;Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$density:F

.field public final synthetic val$imageView:Lcn/haorui/sdk/core/view/RoundImageView;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;Lcn/haorui/sdk/core/view/RoundImageView;Landroid/content/Context;F)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->val$imageView:Lcn/haorui/sdk/core/view/RoundImageView;

    iput-object p3, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->val$context:Landroid/content/Context;

    iput p4, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->val$density:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/io/IOException;)V
    .locals 0
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public onResponse(Lcn/haorui/sdk/core/domain/HttpResponse;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/haorui/sdk/core/domain/HttpResponse<",
            "[B>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HttpResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_8

    array-length v0, p1

    if-lez v0, :cond_8

    array-length v0, p1

    invoke-static {}, Lcn/haorui/sdk/core/utils/MemoryUtil;->getTraceMemory()I

    move-result v1

    const-string v2, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    if-lt v0, v1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    sget-object v0, Lcn/haorui/sdk/core/exception/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0, v2}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$600(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v0, p1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$700(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;[B)Z

    move-result v0

    const/high16 v1, 0x42960000    # 75.0f

    const-string v3, "fixedHeight="

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->val$imageView:Lcn/haorui/sdk/core/view/RoundImageView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/core/view/gif/GifImageView;->setBytes([B)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->val$imageView:Lcn/haorui/sdk/core/view/RoundImageView;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/view/gif/GifImageView;->getGifWidth()I

    move-result p1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->val$imageView:Lcn/haorui/sdk/core/view/RoundImageView;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/view/gif/GifImageView;->getGifHeight()I

    move-result v0

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v2}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$100(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v2

    instance-of v2, v2, Lcn/haorui/sdk/core/ad/prerender/PreRenderAdLoader;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v5}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$100(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v5

    check-cast v5, Lcn/haorui/sdk/core/ad/prerender/PreRenderAdLoader;

    invoke-virtual {v5}, Lcn/haorui/sdk/core/ad/prerender/PreRenderAdLoader;->getFixedHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2, v5}, Lcn/haorui/sdk/core/utils/DimensionUtils;->dip2px(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$800()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->val$density:F

    mul-float v3, v3, v1

    float-to-int v1, v3

    if-lez v2, :cond_2

    mul-int p1, p1, v2

    div-int/2addr p1, v0

    goto :goto_1

    :cond_2
    mul-int p1, p1, v1

    div-int/2addr p1, v0

    move v2, v1

    :goto_1
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->val$imageView:Lcn/haorui/sdk/core/view/RoundImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->val$imageView:Lcn/haorui/sdk/core/view/RoundImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->val$imageView:Lcn/haorui/sdk/core/view/RoundImageView;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/view/gif/GifImageView;->startAnimation()V

    goto/16 :goto_4

    :cond_3
    array-length v0, p1

    invoke-static {p1, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$100(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    instance-of v0, v0, Lcn/haorui/sdk/core/ad/prerender/PreRenderAdLoader;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v2}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$100(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v2

    check-cast v2, Lcn/haorui/sdk/core/ad/prerender/PreRenderAdLoader;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/ad/prerender/PreRenderAdLoader;->getFixedHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcn/haorui/sdk/core/utils/DimensionUtils;->dip2px(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-static {}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->val$density:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    if-lez v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int v1, v1, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int v0, v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v0, v2

    move v7, v1

    move v1, v0

    move v0, v7

    :goto_3
    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->val$imageView:Lcn/haorui/sdk/core/view/RoundImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->val$imageView:Lcn/haorui/sdk/core/view/RoundImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->val$imageView:Lcn/haorui/sdk/core/view/RoundImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    sget-object v0, Lcn/haorui/sdk/core/exception/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0, v2}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$600(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;ILjava/lang/String;)V

    :cond_7
    :goto_4
    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$900(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$OnImgloadSuccessListener;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$1000(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$1002(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;Z)Z

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$900(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$OnImgloadSuccessListener;

    move-result-object p1

    invoke-interface {p1, v4}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$OnImgloadSuccessListener;->onImgLoaded(I)V

    goto :goto_5

    :cond_8
    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    sget-object v0, Lcn/haorui/sdk/core/exception/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "\u56fe\u7247\u52a0\u8f7d\u9519\u8bef"

    invoke-static {p1, v0, v1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$600(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;ILjava/lang/String;)V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HttpResponse;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HttpResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$600(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;ILjava/lang/String;)V

    :cond_a
    :goto_5
    return-void
.end method
