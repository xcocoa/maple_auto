.class public Lcn/haorui/sdk/activity/HRDetailActivity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/activity/HRDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/activity/HRDetailActivity;

.field public final synthetic val$textureView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/activity/HRDetailActivity;Landroid/view/TextureView;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity$2;->this$0:Lcn/haorui/sdk/activity/HRDetailActivity;

    iput-object p2, p0, Lcn/haorui/sdk/activity/HRDetailActivity$2;->val$textureView:Landroid/view/TextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity$2;->this$0:Lcn/haorui/sdk/activity/HRDetailActivity;

    invoke-static {v0, p2}, Lcn/haorui/sdk/activity/HRDetailActivity;->access$102(Lcn/haorui/sdk/activity/HRDetailActivity;I)I

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity$2;->this$0:Lcn/haorui/sdk/activity/HRDetailActivity;

    invoke-static {v0, p3}, Lcn/haorui/sdk/activity/HRDetailActivity;->access$202(Lcn/haorui/sdk/activity/HRDetailActivity;I)I

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity$2;->this$0:Lcn/haorui/sdk/activity/HRDetailActivity;

    invoke-static {v0}, Lcn/haorui/sdk/activity/HRDetailActivity;->access$300(Lcn/haorui/sdk/activity/HRDetailActivity;)Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity$2;->this$0:Lcn/haorui/sdk/activity/HRDetailActivity;

    invoke-static {p1}, Lcn/haorui/sdk/activity/HRDetailActivity;->access$300(Lcn/haorui/sdk/activity/HRDetailActivity;)Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->getAdSailVideoView()Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->changeSurface(Landroid/view/Surface;)V

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity$2;->val$textureView:Landroid/view/TextureView;

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity$2;->this$0:Lcn/haorui/sdk/activity/HRDetailActivity;

    invoke-static {v0}, Lcn/haorui/sdk/activity/HRDetailActivity;->access$300(Lcn/haorui/sdk/activity/HRDetailActivity;)Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->getAdSailVideoView()Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    move-result-object v0

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, p2, p3}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->adjustVideoRadio(FF)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity$2;->val$textureView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x1

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
