.class public Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$5;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$5;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-static {v0, p2}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->access$502(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;I)I

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$5;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-static {v0, p3}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->access$602(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;I)I

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$5;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->access$700(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$5;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->access$700(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$5;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->access$800(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$5;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->access$300(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$5;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$5;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$5;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {p2}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$5;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$5;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {p2}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result p2

    :goto_0
    iget-object p3, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$5;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->adjustVideoRadio(FF)Landroid/graphics/Matrix;

    move-result-object p3

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$5;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->access$900(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$5;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-static {v0, p1, p2, p3}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->access$1000(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;IILandroid/graphics/Matrix;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$5;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {p1, p3}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$5;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->postInvalidate()V

    :goto_1
    return-void
.end method
