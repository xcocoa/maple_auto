.class public Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$000(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->getCurrentPosition()I

    move-result p1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$100(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$200(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$300(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$000(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->getDuration()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$400(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)J

    move-result-wide v2

    const-wide/16 v4, 0x64

    cmp-long v6, v2, v0

    if-lez v6, :cond_0

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    sub-long v6, v0, v4

    invoke-static {v2, v6, v7}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$402(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;J)J

    :cond_0
    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$400(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    cmp-long v9, v2, v6

    if-lez v9, :cond_1

    int-to-long v2, p1

    iget-object v6, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v6}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$400(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)J

    move-result-wide v6

    cmp-long v9, v2, v6

    if-ltz v9, :cond_1

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$500(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v2, v8}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$502(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;Z)Z

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$600(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoKeepTimeFinishListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$600(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoKeepTimeFinishListener;

    move-result-object v2

    invoke-interface {v2}, Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoKeepTimeFinishListener;->onKeepTimeFinished()V

    :cond_1
    int-to-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float p1, p1, v2

    long-to-float v0, v0

    div-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_3

    cmpg-double p1, v0, v6

    if-gez p1, :cond_3

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$700(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$800(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$800(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;->onVideoOneQuarter()V

    :cond_2
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {p1, v8}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$702(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;Z)Z

    goto :goto_0

    :cond_3
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    cmpl-double p1, v0, v6

    if-ltz p1, :cond_5

    cmpg-double p1, v0, v2

    if-gez p1, :cond_5

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$900(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$800(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$800(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;->onVideoOneHalf()V

    :cond_4
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {p1, v8}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$902(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;Z)Z

    goto :goto_0

    :cond_5
    cmpl-double p1, v0, v2

    if-ltz p1, :cond_7

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_7

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$1000(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$800(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$800(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;->onVideoThreeQuarter()V

    :cond_6
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {p1, v8}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$1002(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;Z)Z

    :cond_7
    :goto_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$1100(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
