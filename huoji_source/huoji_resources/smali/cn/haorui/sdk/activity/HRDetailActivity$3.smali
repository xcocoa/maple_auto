.class public Lcn/haorui/sdk/activity/HRDetailActivity$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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

    iput-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity$3;->this$0:Lcn/haorui/sdk/activity/HRDetailActivity;

    iput-object p2, p0, Lcn/haorui/sdk/activity/HRDetailActivity$3;->val$textureView:Landroid/view/TextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity$3;->this$0:Lcn/haorui/sdk/activity/HRDetailActivity;

    invoke-static {p1}, Lcn/haorui/sdk/activity/HRDetailActivity;->access$300(Lcn/haorui/sdk/activity/HRDetailActivity;)Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity$3;->val$textureView:Landroid/view/TextureView;

    iget-object p2, p0, Lcn/haorui/sdk/activity/HRDetailActivity$3;->this$0:Lcn/haorui/sdk/activity/HRDetailActivity;

    invoke-static {p2}, Lcn/haorui/sdk/activity/HRDetailActivity;->access$300(Lcn/haorui/sdk/activity/HRDetailActivity;)Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    move-result-object p2

    invoke-virtual {p2}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->getAdSailVideoView()Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    move-result-object p2

    iget-object p3, p0, Lcn/haorui/sdk/activity/HRDetailActivity$3;->this$0:Lcn/haorui/sdk/activity/HRDetailActivity;

    invoke-static {p3}, Lcn/haorui/sdk/activity/HRDetailActivity;->access$100(Lcn/haorui/sdk/activity/HRDetailActivity;)I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity$3;->this$0:Lcn/haorui/sdk/activity/HRDetailActivity;

    invoke-static {v0}, Lcn/haorui/sdk/activity/HRDetailActivity;->access$200(Lcn/haorui/sdk/activity/HRDetailActivity;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, p3, v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->adjustVideoRadio(FF)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity$3;->val$textureView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->postInvalidate()V

    :cond_0
    return-void
.end method
