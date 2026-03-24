.class public Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;
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

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$6;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p2, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$6;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-static {p2, p1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->access$1102(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$6;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-static {p2}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->access$1200(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$6;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {p2, p3}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->access$1302(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;Landroid/view/Surface;)Landroid/view/Surface;

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$6;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->access$1200(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object p1

    iget-object p2, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$6;->this$0:Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    invoke-static {p2}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->access$1300(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
