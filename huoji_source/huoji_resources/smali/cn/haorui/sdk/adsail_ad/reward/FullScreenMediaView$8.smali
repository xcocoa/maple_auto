.class public Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$8;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$8;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$1202(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$8;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {p1, v0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$1302(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;Z)Z

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$8;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$1400(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$8;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$1500(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$8;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$1600(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)V

    :goto_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$8;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$100(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$8;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {p1, v0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$1402(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;Z)Z

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$8;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$600(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$8;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$600(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;->onVideoLoaded()V

    :cond_1
    return-void
.end method
