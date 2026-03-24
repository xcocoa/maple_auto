.class public Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;
.super Lcn/haorui/sdk/core/ad/BaseAd;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/reward/RewardVideoAd;
.implements Lcn/haorui/sdk/core/ad/fullscreenvideo/IFullScreenVideoAd;


# static fields
.field private static final TAG:Ljava/lang/String; = "RewardVideoAdAdapter"

.field public static final broadcast_on_video_complete:Ljava/lang/String; = "broadcast_on_video_complete"

.field public static final broadcast_on_video_error:Ljava/lang/String; = "broadcast_on_video_error"

.field public static final broadcast_on_video_pause:Ljava/lang/String; = "broadcast_on_video_pause"

.field public static final broadcast_on_video_resume:Ljava/lang/String; = "broadcast_on_video_resume"

.field public static final broadcast_on_video_start:Ljava/lang/String; = "broadcast_on_video_start"

.field public static final broadcast_onclick:Ljava/lang/String; = "broadcast_onclick"

.field public static final broadcast_onclosed:Ljava/lang/String; = "broadcast_onclosed"

.field public static final broadcast_onreward:Ljava/lang/String; = "broadcast_onreward"


# instance fields
.field private adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

.field private adWrapper:Lcn/haorui/sdk/platform/hr/HRAdLoader;

.field private apiInteractionListener:Lcn/haorui/sdk/core/loader/InteractionListener;

.field private apiRewardAdMediaListener:Lcn/haorui/sdk/core/ad/reward/RewardAdMediaListener;

.field private mFullScreenMediaListener:Lcn/haorui/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

.field private nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private volatile receverRegistered:Z

.field private showed:Z


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/HRAdLoader;Lcn/haorui/sdk/platform/hr/IAdSailAd;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;)V
    .locals 2
    .param p1    # Lcn/haorui/sdk/platform/hr/HRAdLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcn/haorui/sdk/platform/hr/IAdSailAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const-string v1, "AD_HR"

    invoke-direct {p0, v0, v1}, Lcn/haorui/sdk/core/ad/BaseAd;-><init>(Lcn/haorui/sdk/core/loader/d;Ljava/lang/String;)V

    new-instance v0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd$1;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd$1;-><init>(Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;)V

    iput-object v0, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->receiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adWrapper:Lcn/haorui/sdk/platform/hr/HRAdLoader;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    iput-object p3, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    return-object p0
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;)Lcn/haorui/sdk/core/loader/InteractionListener;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->apiInteractionListener:Lcn/haorui/sdk/core/loader/InteractionListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;)Lcn/haorui/sdk/platform/hr/IAdSailAd;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    return-object p0
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;)Lcn/haorui/sdk/platform/hr/HRAdLoader;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adWrapper:Lcn/haorui/sdk/platform/hr/HRAdLoader;

    return-object p0
.end method

.method public static synthetic access$400(Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;)V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->onVideoActivityClosed()V

    return-void
.end method

.method public static synthetic access$500(Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;)Lcn/haorui/sdk/core/ad/reward/RewardAdMediaListener;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->apiRewardAdMediaListener:Lcn/haorui/sdk/core/ad/reward/RewardAdMediaListener;

    return-object p0
.end method

.method private onVideoActivityClosed()V
    .locals 2

    iget-boolean v0, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->receverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adWrapper:Lcn/haorui/sdk/platform/hr/HRAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "RewardVideoAdAdapter"

    const-string v1, "onVideoActivityClosed: \u6fc0\u52b1\u89c6\u9891\u5e7f\u544a\u56de\u6536\u8d44\u6e90"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adWrapper:Lcn/haorui/sdk/platform/hr/HRAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adWrapper:Lcn/haorui/sdk/platform/hr/HRAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    :cond_1
    return-void
.end method

.method private showReward(Landroid/content/Context;)V
    .locals 8

    iget-boolean v0, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->showed:Z

    const-string v1, "RewardVideoAdAdapter"

    if-eqz v0, :cond_0

    const-string p1, "\u540c\u4e00\u4e2a\u6fc0\u52b1\u89c6\u9891\u53ea\u80fd\u5c55\u793a\u4e00\u6b21"

    invoke-static {v1, p1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adWrapper:Lcn/haorui/sdk/platform/hr/HRAdLoader;

    invoke-virtual {v2}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->getRewardMediaView(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adWrapper:Lcn/haorui/sdk/platform/hr/HRAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    instance-of v0, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->showed:Z

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adWrapper:Lcn/haorui/sdk/platform/hr/HRAdLoader;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;

    invoke-virtual {v4, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v5, 0x4000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v5, "orientation_key"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adWrapper:Lcn/haorui/sdk/platform/hr/HRAdLoader;

    invoke-virtual {v5}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "local_ad_id_key"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    move-result-wide v5

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getDclk()Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;

    move-result-object v7

    invoke-virtual {v2, v3, v5, v6, v7}, Lcn/haorui/sdk/core/loader/g;->a(Ljava/lang/String;JLcn/haorui/sdk/core/domain/HRAdInfo$DClickData;)V

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_start()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_start()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "Video_start_key"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_one_quarter()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_one_quarter()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "Video_one_quarter_key"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_one_half()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_one_half()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "Video_one_half_key"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_three_quarter()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_three_quarter()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "Video_three_quarter_key"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_complete()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_complete()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "Video_complete_key"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_pause()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_pause()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "Video_pause_key"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_resume()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_resume()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "Video_resume_key"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_mute()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_mute()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "Video_mute_key"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_unmute()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_unmute()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "Video_unmute_key"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_cover()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_cover()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Video_cover"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_endcover()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_endcover()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Video_endcover"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_b
    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_keep_time()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_keep_time()Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Video_keep_time"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_c
    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ad_title"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_d
    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getDesc()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ad_content"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_e
    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "From_logo"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_f
    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ad_icon_url"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_10
    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getActionText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "\u67e5\u770b\u8be6\u60c5"

    goto :goto_0

    :cond_11
    const-string v2, "\u70b9\u51fb\u4e0b\u8f7d"

    :cond_12
    :goto_0
    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v3

    const-string v5, "clk_type"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPower_index()I

    move-result v3

    const-string v5, "power_index"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPower_count()I

    move-result v3

    const-string v5, "power_count"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPower_delay()I

    move-result v3

    const-string v5, "power_delay"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "Action_text"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getClickableRange()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Clickable_range"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getClose_btn()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Close_btn"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    move-result v2

    const-string v3, "Interaction_type"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adWrapper:Lcn/haorui/sdk/platform/hr/HRAdLoader;

    instance-of v3, v2, Lcn/haorui/sdk/platform/hr/reward/HRRewardVideoHRAdWrapper;

    const-string v5, "Ad_type"

    if-eqz v3, :cond_13

    sget-object v2, Lcn/haorui/sdk/core/ad/AdType;->REWARD:Lcn/haorui/sdk/core/ad/AdType;

    :goto_1
    invoke-virtual {v2}, Lcn/haorui/sdk/core/ad/AdType;->value()I

    move-result v2

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    :cond_13
    instance-of v2, v2, Lcn/haorui/sdk/platform/hr/fullscreenvideo/HRFullScreenVideoHRAdWrapper;

    if-eqz v2, :cond_14

    sget-object v2, Lcn/haorui/sdk/core/ad/AdType;->FULL_SCREEN_VIDEO:Lcn/haorui/sdk/core/ad/AdType;

    goto :goto_1

    :cond_14
    :goto_2
    iput-boolean v0, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->receverRegistered:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "broadcast_onclick"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "broadcast_onreward"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "broadcast_onclosed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "broadcast_on_video_complete"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    const-string v3, "broadcast_on_video_start"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "broadcast_on_video_pause"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "broadcast_on_video_resume"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "broadcast_on_video_error"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    instance-of v5, v3, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    if-eqz v5, :cond_15

    check-cast v3, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    invoke-virtual {v3}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->getIsMute()Z

    move-result v3

    invoke-static {v3}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->setVideoMute(Z)V

    :cond_15
    iget-object v3, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    invoke-static {v3}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->setFullScreenAd(Lcn/haorui/sdk/core/ad/IAd;)V

    new-instance v3, Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-direct {v3}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;-><init>()V

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setApp_name(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_feature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setApp_feature(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_intro()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setApp_intro(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_privacy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setApp_privacy(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_size()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setApp_size(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getDeveloper()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setDeveloper(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPayment_types()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setPayment_types(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_permission()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setApp_permission(Ljava/util/List;)V

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_permission_url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setApp_permission_url(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_intor_url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setApp_intor_url(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPrivacy_agreement()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->setApp_private_agreement(Ljava/lang/String;)V

    invoke-static {v3}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->setDownloadDialogBean(Lcn/haorui/sdk/core/utils/DownloadDialogBean;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_16

    goto :goto_3

    :cond_16
    const/high16 v0, 0x10000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_3
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :cond_17
    const-string p1, "showAd: \u8bf7\u5148\u52a0\u8f7d\u89c6\u9891"

    invoke-static {v1, p1}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->removeRewardMediaView(Ljava/lang/String;)V

    return-void
.end method

.method public getData()Lcn/haorui/sdk/core/utils/ResultBean;
    .locals 2

    new-instance v0, Lcn/haorui/sdk/core/utils/ResultBean;

    invoke-direct {v0}, Lcn/haorui/sdk/core/utils/ResultBean;-><init>()V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setCid(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setCat(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setAderId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getFromId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setFromId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getReq_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setReqId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getEcpm()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setPrice(I)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getEcpm()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setEcpm(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getS_ext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setS_ext(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getS_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setS_code(Ljava/lang/String;)V

    const-string v1, "AD_HR"

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setSdkName(Ljava/lang/String;)V

    return-object v0
.end method

.method public getDeepLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/AderUtil;->getIsOperationContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getDeep_link()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getImgUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/AderUtil;->getIsOperationContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getIsOperationContent()Z
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/AderUtil;->getIsOperationContent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAdValid()Z
    .locals 6

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getExpire_timestamp()I

    move-result v0

    if-gtz v0, :cond_0

    const-wide/32 v0, 0x1a8ce0

    goto :goto_0

    :cond_0
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v4}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V
    .locals 1

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->apiInteractionListener:Lcn/haorui/sdk/core/loader/InteractionListener;

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    invoke-interface {v0, p1}, Lcn/haorui/sdk/core/ad/IAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

    return-void
.end method

.method public setMediaListener(Lcn/haorui/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->mFullScreenMediaListener:Lcn/haorui/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

    return-void
.end method

.method public setMediaListener(Lcn/haorui/sdk/core/ad/reward/RewardAdMediaListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->apiRewardAdMediaListener:Lcn/haorui/sdk/core/ad/reward/RewardAdMediaListener;

    return-void
.end method

.method public showAd()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->adWrapper:Lcn/haorui/sdk/platform/hr/HRAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->showReward(Landroid/content/Context;)V

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    instance-of v1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->setContext(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0, p1}, Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd;->showReward(Landroid/content/Context;)V

    return-void
.end method
