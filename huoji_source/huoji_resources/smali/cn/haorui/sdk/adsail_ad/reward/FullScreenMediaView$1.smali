.class public Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$000(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->getCurrentPosition()I

    move-result p1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$100(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;->refreshProcess(I)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$200(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)J

    move-result-wide v0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    int-to-long v0, p1

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$200(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$300(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {v0, v2}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$302(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;Z)Z

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$400(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoKeepTimeFinishListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$400(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoKeepTimeFinishListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoKeepTimeFinishListener;->onKeepTimeFinished()V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$000(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->getDuration()I

    move-result v0

    int-to-double v0, v0

    int-to-double v3, p1

    div-double/2addr v3, v0

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v3, v0

    if-ltz p1, :cond_2

    cmpg-double p1, v3, v5

    if-gez p1, :cond_2

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$500(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$600(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$600(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;->onVideoOneQuarter()V

    :cond_1
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {p1, v2}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$502(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;Z)Z

    goto :goto_0

    :cond_2
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    cmpl-double p1, v3, v5

    if-ltz p1, :cond_4

    cmpg-double p1, v3, v0

    if-gez p1, :cond_4

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$700(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$600(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$600(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;->onVideoOneHalf()V

    :cond_3
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {p1, v2}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$702(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;Z)Z

    goto :goto_0

    :cond_4
    cmpl-double p1, v3, v0

    if-ltz p1, :cond_6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v3, v0

    if-gez p1, :cond_6

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$800(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$600(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$600(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;->onVideoThreeQuarter()V

    :cond_5
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {p1, v2}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$802(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;Z)Z

    :cond_6
    :goto_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$900(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
