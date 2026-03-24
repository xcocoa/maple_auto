.class public Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->showUpDownStyle(Landroid/content/Context;Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

.field public final synthetic val$imageView_large:Lcn/haorui/sdk/core/view/RoundImageView;

.field public final synthetic val$width:I


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;Lcn/haorui/sdk/core/view/RoundImageView;I)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;->val$imageView_large:Lcn/haorui/sdk/core/view/RoundImageView;

    iput p3, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;->val$width:I

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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/haorui/sdk/core/domain/HttpResponse<",
            "[B>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HttpResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_4

    array-length v0, p1

    if-lez v0, :cond_4

    array-length v0, p1

    invoke-static {}, Lcn/haorui/sdk/core/utils/MemoryUtil;->getTraceMemory()I

    move-result v1

    const-string v2, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    if-lt v0, v1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    sget-object v0, Lcn/haorui/sdk/core/exception/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0, v2}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$600(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v0, p1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$700(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;[B)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;->val$imageView_large:Lcn/haorui/sdk/core/view/RoundImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/core/view/gif/GifImageView;->setBytes([B)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;->val$imageView_large:Lcn/haorui/sdk/core/view/RoundImageView;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/view/gif/GifImageView;->getGifWidth()I

    move-result p1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;->val$imageView_large:Lcn/haorui/sdk/core/view/RoundImageView;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/view/gif/GifImageView;->getGifHeight()I

    move-result v0

    iget v2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;->val$width:I

    mul-int v2, v2, v0

    div-int v3, v2, p1

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;->val$imageView_large:Lcn/haorui/sdk/core/view/RoundImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;->val$imageView_large:Lcn/haorui/sdk/core/view/RoundImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;->val$imageView_large:Lcn/haorui/sdk/core/view/RoundImageView;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/view/gif/GifImageView;->startAnimation()V

    goto :goto_0

    :cond_1
    array-length v0, p1

    invoke-static {p1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    iget v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;->val$width:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v0, v0, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int v3, v0, v2

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;->val$imageView_large:Lcn/haorui/sdk/core/view/RoundImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;->val$imageView_large:Lcn/haorui/sdk/core/view/RoundImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;->val$imageView_large:Lcn/haorui/sdk/core/view/RoundImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    sget-object v0, Lcn/haorui/sdk/core/exception/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0, v2}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$600(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;ILjava/lang/String;)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$900(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$OnImgloadSuccessListener;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$1000(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$1002(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;Z)Z

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$900(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$OnImgloadSuccessListener;

    move-result-object p1

    invoke-interface {p1, v3}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$OnImgloadSuccessListener;->onImgLoaded(I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    sget-object v0, Lcn/haorui/sdk/core/exception/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "\u56fe\u7247\u52a0\u8f7d\u9519\u8bef"

    invoke-static {p1, v0, v1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$600(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HttpResponse;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HttpResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$600(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;ILjava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method
