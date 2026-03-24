.class public Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd$1;->this$0:Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "broadcast_onclick"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd$1;->this$0:Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->access$000(Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd$1;->this$0:Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->access$000(Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCbc()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd$1;->this$0:Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->access$100(Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;)Lcn/haorui/sdk/core/loader/InteractionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd$1;->this$0:Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->access$100(Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;)Lcn/haorui/sdk/core/loader/InteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/loader/InteractionListener;->onAdClicked()V

    :cond_0
    const-string p1, "RewardVideoAdAdapter"

    invoke-static {p1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd$1;->this$0:Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->access$200(Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;)Lcn/haorui/sdk/platform/hr/IAdSailAd;

    move-result-object p1

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/ClickHandler;->handleClick(Lcn/haorui/sdk/platform/hr/IAdSailAd;)V

    invoke-static {}, Lcn/haorui/sdk/core/utils/ClickHandler;->clearShowDialogActivity()V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "broadcast_onreward"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd$1;->this$0:Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->access$300(Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;)Lcn/haorui/sdk/platform/hr/HRAdLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    if-eqz p1, :cond_8

    instance-of p2, p1, Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;

    if-eqz p2, :cond_8

    check-cast p1, Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;->onReward(Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "broadcast_onclosed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd$1;->this$0:Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->access$400(Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "broadcast_on_video_complete"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd$1;->this$0:Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->access$500(Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;)Lcn/haorui/sdk/core/ad/reward/RewardAdMediaListener;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd$1;->this$0:Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->access$500(Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;)Lcn/haorui/sdk/core/ad/reward/RewardAdMediaListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/reward/RewardAdMediaListener;->onVideoCompleted()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "broadcast_on_video_start"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd$1;->this$0:Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->access$500(Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;)Lcn/haorui/sdk/core/ad/reward/RewardAdMediaListener;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd$1;->this$0:Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->access$500(Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;)Lcn/haorui/sdk/core/ad/reward/RewardAdMediaListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/reward/RewardAdMediaListener;->onVideoStart()V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "broadcast_on_video_pause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd$1;->this$0:Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->access$500(Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;)Lcn/haorui/sdk/core/ad/reward/RewardAdMediaListener;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd$1;->this$0:Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->access$500(Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;)Lcn/haorui/sdk/core/ad/reward/RewardAdMediaListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/reward/RewardAdMediaListener;->onVideoPause()V

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "broadcast_on_video_resume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd$1;->this$0:Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->access$500(Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;)Lcn/haorui/sdk/core/ad/reward/RewardAdMediaListener;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd$1;->this$0:Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->access$500(Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;)Lcn/haorui/sdk/core/ad/reward/RewardAdMediaListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/reward/RewardAdMediaListener;->onVideoResume()V

    goto :goto_0

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "broadcast_on_video_error"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd$1;->this$0:Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->access$500(Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;)Lcn/haorui/sdk/core/ad/reward/RewardAdMediaListener;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd$1;->this$0:Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->access$500(Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;)Lcn/haorui/sdk/core/ad/reward/RewardAdMediaListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/reward/RewardAdMediaListener;->onVideoError()V

    :cond_8
    :goto_0
    return-void
.end method
