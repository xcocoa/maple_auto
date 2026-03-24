.class public Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->showThreeImageStyle(Landroid/content/Context;Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

.field public final synthetic val$image:Lcn/haorui/sdk/core/view/RoundImageView;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;Lcn/haorui/sdk/core/view/RoundImageView;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$7;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$7;->val$image:Lcn/haorui/sdk/core/view/RoundImageView;

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
    .locals 3
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

    :try_start_0
    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "\u56fe\u7247\u52a0\u8f7d\u9519\u8bef"

    if-eqz p1, :cond_4

    :try_start_1
    array-length v1, p1

    if-lez v1, :cond_4

    array-length v1, p1

    invoke-static {}, Lcn/haorui/sdk/core/utils/MemoryUtil;->getTraceMemory()I

    move-result v2

    if-lt v1, v2, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$7;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    sget-object v0, Lcn/haorui/sdk/core/exception/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    invoke-static {p1, v0, v1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$600(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$7;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v1, p1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$700(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;[B)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$7;->val$image:Lcn/haorui/sdk/core/view/RoundImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/core/view/gif/GifImageView;->setBytes([B)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$7;->val$image:Lcn/haorui/sdk/core/view/RoundImageView;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/view/gif/GifImageView;->startAnimation()V

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$7;->val$image:Lcn/haorui/sdk/core/view/RoundImageView;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/view/gif/GifImageView;->getGifHeight()I

    move-result v2

    goto :goto_0

    :cond_1
    array-length v1, p1

    invoke-static {p1, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$7;->val$image:Lcn/haorui/sdk/core/view/RoundImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$7;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    sget-object v1, Lcn/haorui/sdk/core/exception/a;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1, v0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$600(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;ILjava/lang/String;)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$7;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$900(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$OnImgloadSuccessListener;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$7;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$1000(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$7;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$900(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$OnImgloadSuccessListener;

    move-result-object p1

    invoke-interface {p1, v2}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$OnImgloadSuccessListener;->onImgLoaded(I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$7;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    sget-object v1, Lcn/haorui/sdk/core/exception/a;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1, v0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$600(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$7;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HttpResponse;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HttpResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$600(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;ILjava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method
