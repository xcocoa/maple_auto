.class public Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source ""


# static fields
.field public static final Action_text:Ljava/lang/String; = "Action_text"

.field public static final Ad_content:Ljava/lang/String; = "Ad_content"

.field public static final Ad_icon_url:Ljava/lang/String; = "Ad_icon_url"

.field public static final Ad_title:Ljava/lang/String; = "Ad_title"

.field public static final Ad_type:Ljava/lang/String; = "Ad_type"

.field public static final Clickable_range:Ljava/lang/String; = "Clickable_range"

.field public static final Clk_type:Ljava/lang/String; = "clk_type"

.field public static final Close_btn:Ljava/lang/String; = "Close_btn"

.field public static final From_logo:Ljava/lang/String; = "From_logo"

.field public static final Interaction_type:Ljava/lang/String; = "Interaction_type"

.field public static final Power_count:Ljava/lang/String; = "power_count"

.field public static final Power_delay:Ljava/lang/String; = "power_delay"

.field public static final Power_index:Ljava/lang/String; = "power_index"

.field private static final TAG:Ljava/lang/String; = "AdsailRewardVideoPlayerActivity"

.field public static final Video_complete_key:Ljava/lang/String; = "Video_complete_key"

.field public static final Video_cover:Ljava/lang/String; = "Video_cover"

.field public static final Video_endcover:Ljava/lang/String; = "Video_endcover"

.field public static final Video_keep_time:Ljava/lang/String; = "Video_keep_time"

.field public static final Video_mute_key:Ljava/lang/String; = "Video_mute_key"

.field public static final Video_one_half_key:Ljava/lang/String; = "Video_one_half_key"

.field public static final Video_one_quarter_key:Ljava/lang/String; = "Video_one_quarter_key"

.field public static final Video_pause_key:Ljava/lang/String; = "Video_pause_key"

.field public static final Video_replay_key:Ljava/lang/String; = "Video_replay_key"

.field public static final Video_resume_key:Ljava/lang/String; = "Video_resume_key"

.field public static final Video_start_key:Ljava/lang/String; = "Video_start_key"

.field public static final Video_three_quarter_key:Ljava/lang/String; = "Video_three_quarter_key"

.field public static final Video_unmute_key:Ljava/lang/String; = "Video_unmute_key"

.field private static ad:Lcn/haorui/sdk/platform/hr/BaseFullScreenVideoAd; = null

.field private static baseFullScreenVideoAdList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/ad/IAd;",
            ">;"
        }
    .end annotation
.end field

.field private static downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean; = null

.field private static isMute:Z = false

.field public static final local_ad_id_key:Ljava/lang/String; = "local_ad_id_key"

.field public static final orientation_key:Ljava/lang/String; = "orientation_key"

.field private static rewardMediaViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/haorui/sdk/adsail_ad/MediaView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aQuery:Lz2/o000;

.field private adType:I

.field private localAdId:Ljava/lang/String;

.field private mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

.field private mediaViewContainer:Landroid/view/ViewGroup;

.field private onCompletedInvoked:Z

.field private onReward:Z

.field private processBar:Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;

.field private shakeId:I

.field private shakeImageView:Lcn/haorui/sdk/core/view/gif/GifImageView;

.field private touchContainer:Lcn/haorui/sdk/core/view/TouchAdContainer;

.field private updateProcessRunnable:Ljava/lang/Runnable;

.field private videoLoaded:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->rewardMediaViews:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->baseFullScreenVideoAdList:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->isMute:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$11;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$11;-><init>(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)V

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->updateProcessRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    return-object p0
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->onCompletedInvoked:Z

    return p0
.end method

.method public static synthetic access$1000(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->shakeId:I

    return p0
.end method

.method public static synthetic access$102(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->onCompletedInvoked:Z

    return p1
.end method

.method public static synthetic access$1102(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->videoLoaded:Z

    return p1
.end method

.method public static synthetic access$1200(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;Lcn/haorui/sdk/adsail_ad/MediaView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->startVideo(Lcn/haorui/sdk/adsail_ad/MediaView;)V

    return-void
.end method

.method public static synthetic access$1300()Ljava/util/List;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->baseFullScreenVideoAdList:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic access$1400()Lcn/haorui/sdk/core/utils/DownloadDialogBean;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    return-object v0
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->onReward:Z

    return p0
.end method

.method public static synthetic access$202(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->onReward:Z

    return p1
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lz2/o000;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->aQuery:Lz2/o000;

    return-object p0
.end method

.method public static synthetic access$400(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->processBar:Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;

    return-object p0
.end method

.method public static synthetic access$500(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->adType:I

    return p0
.end method

.method public static synthetic access$600(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->isMute:Z

    return v0
.end method

.method public static synthetic access$702(Z)Z
    .locals 0

    sput-boolean p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->isMute:Z

    return p0
.end method

.method public static synthetic access$800(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->onClick()V

    return-void
.end method

.method public static synthetic access$900(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)Lcn/haorui/sdk/core/view/gif/GifImageView;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->shakeImageView:Lcn/haorui/sdk/core/view/gif/GifImageView;

    return-object p0
.end method

.method private getImageBytes(Landroid/content/Context;I)[B
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static getRewardMediaView(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/MediaView;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->rewardMediaViews:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/haorui/sdk/adsail_ad/MediaView;

    return-object p0
.end method

.method private handleDownloadView(I)V
    .locals 5

    const-string v0, "AdsailRewardVideoPlayerActivity"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interaction_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", downloadBean="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    sget-object p1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget p1, Lcn/haorui/sdk/R$id;->adsail_download_layer_textview:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, " | "

    if-nez v3, :cond_1

    :try_start_1
    const-string v3, "\u5e94\u7528\u540d\u79f0\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    sget-object v3, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_ver()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "\u5e94\u7528\u7248\u672c\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_ver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    sget-object v3, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_size()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "\u5e94\u7528\u5927\u5c0f\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_size()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    sget-object v3, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getDeveloper()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "\u5f00\u53d1\u8005\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getDeveloper()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    sget-object v3, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_permission_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, " |"

    if-eqz v3, :cond_5

    :try_start_2
    sget-object v3, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_permission()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    :cond_5
    const-string v3, " \u6743\u9650\u8be6\u60c5>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    sget-object v3, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_private_agreement()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, " \u9690\u79c1\u534f\u8bae > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    sget-object v3, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_intor_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->getApp_intro()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    const-string v3, " \u529f\u80fd\u4ecb\u7ecd>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_a
    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    :cond_b
    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$12;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$12;-><init>(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_1
    return-void
.end method

.method private onClick()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/haorui/sdk/core/utils/ClickHandler;->setShowDialogActivity(Landroid/app/Activity;)V

    const-string v0, "broadcast_onclick"

    invoke-direct {p0, v0}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->sendBroadcast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static removeRewardMediaView(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->rewardMediaViews:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/haorui/sdk/adsail_ad/MediaView;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v0, :cond_0

    check-cast p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->destroy()V

    :cond_0
    return-void
.end method

.method private sendBroadcast(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public static setDownloadDialogBean(Lcn/haorui/sdk/core/utils/DownloadDialogBean;)V
    .locals 0

    sput-object p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    return-void
.end method

.method public static setFullScreenAd(Lcn/haorui/sdk/core/ad/IAd;)V
    .locals 1

    sget-object v0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->baseFullScreenVideoAdList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static setRewardMediaView(Ljava/lang/String;Lcn/haorui/sdk/adsail_ad/MediaView;)V
    .locals 1

    sget-object v0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->rewardMediaViews:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/MediaView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/MediaView;->getVideoView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->stop()V

    :cond_0
    sget-object v0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->rewardMediaViews:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setVideoMute(Z)V
    .locals 0

    sput-boolean p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->isMute:Z

    return-void
.end method

.method private startVideo(Lcn/haorui/sdk/adsail_ad/MediaView;)V
    .locals 1

    invoke-interface {p1}, Lcn/haorui/sdk/adsail_ad/MediaView;->getVideoView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->start()V

    iget p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->adType:I

    sget-object v0, Lcn/haorui/sdk/core/ad/AdType;->REWARD:Lcn/haorui/sdk/core/ad/AdType;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/AdType;->value()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->processBar:Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 43

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0xd02

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "orientation_key"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    sget v2, Lcn/haorui/sdk/R$layout;->adsail_activity_reward_portrait_video:I

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    goto :goto_1

    :cond_0
    if-ne v2, v5, :cond_1

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    sget v2, Lcn/haorui/sdk/R$layout;->adsail_activity_reward_landscape_video:I

    goto :goto_0

    :cond_1
    :goto_1
    sget v2, Lcn/haorui/sdk/R$id;->adsail_activity_reward_video_touch_ad_container:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/haorui/sdk/core/view/TouchAdContainer;

    iput-object v2, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->touchContainer:Lcn/haorui/sdk/core/view/TouchAdContainer;

    new-instance v2, Lz2/o000;

    invoke-direct {v2, v1}, Lz2/o000;-><init>(Landroid/app/Activity;)V

    iput-object v2, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->aQuery:Lz2/o000;

    const-string v2, "Action_text"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "local_ad_id_key"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->localAdId:Ljava/lang/String;

    const-string v6, "Video_start_key"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string v7, "Video_one_quarter_key"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const-string v8, "Video_one_half_key"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const-string v9, "Video_three_quarter_key"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const-string v10, "Video_complete_key"

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const-string v11, "Video_pause_key"

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const-string v12, "Video_resume_key"

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const-string v13, "Video_mute_key"

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const-string v14, "Video_unmute_key"

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const-string v15, "Video_replay_key"

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const-string v4, "Video_cover"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "Video_endcover"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v6

    const-wide/16 v5, -0x1

    move-object/from16 v17, v15

    const-string v15, "Video_keep_time"

    invoke-virtual {v0, v15, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v15, "Ad_title"

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v14

    const-string v14, "Ad_content"

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v19, v13

    const-string v13, "Ad_icon_url"

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v20, v12

    const-string v12, "From_logo"

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v21, v11

    const-string v11, "Clickable_range"

    move-object/from16 v22, v10

    const/4 v10, -0x1

    invoke-virtual {v0, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string v10, "Close_btn"

    move-object/from16 v23, v9

    const/4 v9, 0x2

    invoke-virtual {v0, v10, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v9, "clk_type"

    move-object/from16 v24, v8

    const/4 v8, -0x1

    invoke-virtual {v0, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/16 v8, 0xf

    move-object/from16 v25, v7

    const-string v7, "power_index"

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    const-string v7, "power_count"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    const/16 v7, 0x1f4

    const-string v8, "power_delay"

    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "Interaction_type"

    move-wide/from16 v35, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {v1, v6}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->handleDownloadView(I)V

    const-string v5, "Ad_type"

    const/4 v8, -0x1

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->adType:I

    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->aQuery:Lz2/o000;

    sget v5, Lcn/haorui/sdk/R$id;->adsail_reward_skip_button:I

    invoke-virtual {v0, v5}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    new-instance v8, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;

    invoke-direct {v8, v1, v2}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$1;-><init>(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lz2/o000O000;->OooOo0o(Landroid/view/View$OnClickListener;)Lz2/o000O000;

    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->aQuery:Lz2/o000;

    sget v8, Lcn/haorui/sdk/R$id;->adsail_reward_close_button_parent:I

    invoke-virtual {v0, v8}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    move-object/from16 v37, v3

    new-instance v3, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2;

    invoke-direct {v3, v1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$2;-><init>(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)V

    invoke-virtual {v0, v3}, Lz2/o000O000;->OooOo0o(Landroid/view/View$OnClickListener;)Lz2/o000O000;

    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->aQuery:Lz2/o000;

    sget v3, Lcn/haorui/sdk/R$id;->adsail_reward_voice_button:I

    invoke-virtual {v0, v3}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    new-instance v3, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$3;

    invoke-direct {v3, v1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$3;-><init>(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)V

    invoke-virtual {v0, v3}, Lz2/o000O000;->OooOo0o(Landroid/view/View$OnClickListener;)Lz2/o000O000;

    sget v0, Lcn/haorui/sdk/R$id;->shake_img:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/view/gif/GifImageView;

    iput-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->shakeImageView:Lcn/haorui/sdk/core/view/gif/GifImageView;

    sget v0, Lcn/haorui/sdk/R$id;->shake_text:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v3, Lcn/haorui/sdk/R$id;->adsail_shake_text_bottom:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v38, v4

    sget v4, Lcn/haorui/sdk/R$id;->shake_root_view:I

    invoke-virtual {v1, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v39, v13

    iget v13, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->adType:I

    sget-object v26, Lcn/haorui/sdk/core/ad/AdType;->REWARD:Lcn/haorui/sdk/core/ad/AdType;

    move-object/from16 v40, v2

    invoke-virtual/range {v26 .. v26}, Lcn/haorui/sdk/core/ad/AdType;->value()I

    move-result v2

    if-ne v13, v2, :cond_a

    and-int/lit8 v2, v9, 0x4

    const/4 v13, 0x4

    if-ne v2, v13, :cond_3

    const/4 v13, 0x1

    if-ne v6, v13, :cond_2

    const-string v6, "\u6447\u4e00\u6447\u6216\u70b9\u51fb\u4e0b\u8f7d\u4e09\u65b9\u5e94\u7528"

    goto :goto_2

    :cond_2
    const-string v6, "\u6447\u4e00\u6447\u6216\u70b9\u51fb\u67e5\u770b\u8be6\u60c5"

    :goto_2
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v41, v14

    move-object/from16 v42, v15

    const/4 v3, 0x4

    const/16 v15, 0x8

    goto :goto_4

    :cond_3
    const/4 v13, 0x1

    move-object/from16 v41, v14

    and-int/lit8 v14, v9, 0x8

    move-object/from16 v42, v15

    const/16 v15, 0x8

    if-ne v14, v15, :cond_5

    if-ne v6, v13, :cond_4

    const-string v6, "\u626d\u4e00\u626d\u6216\u70b9\u51fb\u4e0b\u8f7d\u4e09\u65b9\u5e94\u7528"

    goto :goto_3

    :cond_4
    const-string v6, "\u626d\u4e00\u626d\u6216\u70b9\u51fb\u67e5\u770b\u8be6\u60c5"

    :goto_3
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    const/4 v3, 0x4

    :goto_4
    if-eq v2, v3, :cond_6

    and-int/lit8 v3, v9, 0x8

    if-ne v3, v15, :cond_b

    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget v3, Lcn/haorui/sdk/R$raw;->adsail_new_shake:I

    invoke-direct {v1, v1, v3}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->getImageBytes(Landroid/content/Context;I)[B

    move-result-object v3

    if-eqz v3, :cond_7

    array-length v6, v3

    if-lez v6, :cond_7

    iget-object v6, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->shakeImageView:Lcn/haorui/sdk/core/view/gif/GifImageView;

    const/4 v9, 0x1

    invoke-virtual {v6, v3, v9}, Lcn/haorui/sdk/core/view/gif/GifImageView;->setBytes([BI)V

    iget-object v3, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->shakeImageView:Lcn/haorui/sdk/core/view/gif/GifImageView;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/view/gif/GifImageView;->startAnimation()V

    :cond_7
    iget v3, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->shakeId:I

    if-nez v3, :cond_8

    sget-object v3, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/loader/g;->b()I

    move-result v3

    iput v3, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->shakeId:I

    :cond_8
    const/4 v3, 0x4

    if-eq v2, v3, :cond_9

    const-string v2, "\u626d\u4e00\u626d\u624b\u673a"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v28, 0x2

    goto :goto_5

    :cond_9
    const/16 v28, 0x1

    :goto_5
    sget-object v26, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    int-to-long v2, v7

    iget v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->shakeId:I

    new-instance v6, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$4;

    invoke-direct {v6, v1, v4}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$4;-><init>(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;Landroid/widget/LinearLayout;)V

    const/16 v33, 0x0

    move-wide/from16 v29, v2

    move/from16 v32, v0

    move-object/from16 v34, v6

    invoke-virtual/range {v26 .. v34}, Lcn/haorui/sdk/core/loader/g;->a(IIJIIILcn/haorui/sdk/core/loader/g$d;)V

    sget-object v0, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/haorui/sdk/core/loader/g;->a(Z)V

    goto :goto_6

    :cond_a
    move-object/from16 v41, v14

    move-object/from16 v42, v15

    :cond_b
    const/4 v2, 0x1

    :goto_6
    const/4 v3, 0x2

    if-eq v11, v3, :cond_c

    if-eq v11, v2, :cond_c

    const/4 v2, -0x1

    const/4 v11, -0x1

    goto :goto_7

    :cond_c
    const/4 v2, -0x1

    :goto_7
    if-eq v11, v2, :cond_d

    goto :goto_8

    :cond_d
    const/4 v11, 0x1

    :goto_8
    if-nez v10, :cond_e

    :try_start_0
    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->aQuery:Lz2/o000;

    invoke-virtual {v0, v5}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0}, Lz2/o000O000;->o00Ooo()Lz2/o000O000;

    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->aQuery:Lz2/o000;

    invoke-virtual {v0, v8}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    :goto_9
    check-cast v0, Lz2/o000;

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_b

    :cond_e
    const/4 v2, 0x1

    if-ne v10, v2, :cond_f

    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->aQuery:Lz2/o000;

    invoke-virtual {v0, v8}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0}, Lz2/o000O000;->o000o00()Lz2/o000O000;

    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->aQuery:Lz2/o000;

    invoke-virtual {v0, v5}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    goto :goto_9

    :cond_f
    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->aQuery:Lz2/o000;

    invoke-virtual {v0, v5}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0}, Lz2/o000O000;->o000o00()Lz2/o000O000;

    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->aQuery:Lz2/o000;

    invoke-virtual {v0, v8}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    goto :goto_9

    :goto_a
    invoke-virtual {v0}, Lz2/o000O000;->o00Ooo()Lz2/o000O000;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    if-eqz v12, :cond_10

    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->aQuery:Lz2/o000;

    sget v2, Lcn/haorui/sdk/R$id;->adsail_include_ad_tag:I

    invoke-virtual {v0, v2}, Lz2/o000O000;->Oooo0O0(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    sget v2, Lcn/haorui/sdk/R$id;->adsail_img_ad_tag:I

    invoke-virtual {v0, v2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0, v12}, Lz2/o000O000;->o000000(Ljava/lang/String;)Lz2/o000O000;

    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->aQuery:Lz2/o000;

    sget v3, Lcn/haorui/sdk/R$id;->adsail_include_ad_tag_end:I

    invoke-virtual {v0, v3}, Lz2/o000O000;->Oooo0O0(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0, v2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0, v12}, Lz2/o000O000;->o000000(Ljava/lang/String;)Lz2/o000O000;

    :cond_10
    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->aQuery:Lz2/o000;

    sget v2, Lcn/haorui/sdk/R$id;->adsail_video_playing_reward_ad_title:I

    invoke-virtual {v0, v2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    move-object/from16 v2, v42

    invoke-virtual {v0, v2}, Lz2/o000O000;->o000Oo00(Ljava/lang/CharSequence;)Lz2/o000O000;

    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->aQuery:Lz2/o000;

    sget v3, Lcn/haorui/sdk/R$id;->adsail_video_playing_reward_ad_content:I

    invoke-virtual {v0, v3}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    move-object/from16 v3, v41

    invoke-virtual {v0, v3}, Lz2/o000O000;->o000Oo00(Ljava/lang/CharSequence;)Lz2/o000O000;

    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->aQuery:Lz2/o000;

    sget v4, Lcn/haorui/sdk/R$id;->adsail_video_playing_download_button:I

    invoke-virtual {v0, v4}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    move-object/from16 v5, v40

    invoke-virtual {v0, v5}, Lz2/o000O000;->o000Oo00(Ljava/lang/CharSequence;)Lz2/o000O000;

    if-eqz v39, :cond_11

    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->aQuery:Lz2/o000;

    sget v6, Lcn/haorui/sdk/R$id;->adsail_reward_ad_icon:I

    invoke-virtual {v0, v6}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    move-object/from16 v6, v39

    invoke-virtual {v0, v6}, Lz2/o000O000;->o000000(Ljava/lang/String;)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0}, Lz2/o000O000;->o000o00()Lz2/o000O000;

    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->aQuery:Lz2/o000;

    sget v7, Lcn/haorui/sdk/R$id;->adsail_reward_ad_icon_end:I

    invoke-virtual {v0, v7}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0, v6}, Lz2/o000O000;->o000000(Ljava/lang/String;)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0}, Lz2/o000O000;->o000o00()Lz2/o000O000;

    :cond_11
    const/4 v6, 0x1

    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->aQuery:Lz2/o000;

    if-ne v11, v6, :cond_12

    invoke-virtual {v0, v4}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    new-instance v4, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$5;

    invoke-direct {v4, v1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$5;-><init>(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)V

    invoke-virtual {v0, v4}, Lz2/o000O000;->OooOo0o(Landroid/view/View$OnClickListener;)Lz2/o000O000;

    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->aQuery:Lz2/o000;

    sget v4, Lcn/haorui/sdk/R$id;->adsail_download_button:I

    invoke-virtual {v0, v4}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    new-instance v4, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$6;

    invoke-direct {v4, v1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$6;-><init>(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)V

    goto :goto_d

    :cond_12
    sget v4, Lcn/haorui/sdk/R$id;->adsail_fullscreen_clickable_range:I

    invoke-virtual {v0, v4}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    new-instance v4, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$7;

    invoke-direct {v4, v1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$7;-><init>(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)V

    :goto_d
    invoke-virtual {v0, v4}, Lz2/o000O000;->OooOo0o(Landroid/view/View$OnClickListener;)Lz2/o000O000;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->aQuery:Lz2/o000;

    sget v4, Lcn/haorui/sdk/R$id;->adsail_reward_ad_title:I

    invoke-virtual {v0, v4}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0, v2}, Lz2/o000O000;->o000Oo00(Ljava/lang/CharSequence;)Lz2/o000O000;

    :cond_13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->aQuery:Lz2/o000;

    sget v2, Lcn/haorui/sdk/R$id;->adsail_reward_ad_content:I

    invoke-virtual {v0, v2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0, v3}, Lz2/o000O000;->o000Oo00(Ljava/lang/CharSequence;)Lz2/o000O000;

    :cond_14
    sget v0, Lcn/haorui/sdk/R$id;->adsail_media_video:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->mediaViewContainer:Landroid/view/ViewGroup;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_process_bar:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;

    iput-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->processBar:Lcn/haorui/sdk/adsail_ad/reward/CircleProcessBar;

    sget-object v0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->rewardMediaViews:Ljava/util/Map;

    iget-object v2, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->localAdId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/haorui/sdk/adsail_ad/MediaView;

    if-eqz v2, :cond_17

    invoke-interface {v2}, Lcn/haorui/sdk/adsail_ad/MediaView;->getVideoView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    iput-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setActivityForLifecycle(Landroid/app/Activity;)V

    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    iget-object v3, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->updateProcessRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    move-object/from16 v3, v38

    invoke-virtual {v0, v3}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setVideoCover(Ljava/lang/String;)V

    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    move-object/from16 v3, v37

    invoke-virtual {v0, v3}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setVideoEndCover(Ljava/lang/String;)V

    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->showProgressLoading()V

    :try_start_1
    sget-boolean v0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->isMute:Z

    if-eqz v0, :cond_15

    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->aQuery:Lz2/o000;

    sget v3, Lcn/haorui/sdk/R$id;->adsail_reward_voice_button:I

    invoke-virtual {v0, v3}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    sget v3, Lcn/haorui/sdk/R$drawable;->adsail_voice_closed:I

    invoke-virtual {v0, v3}, Lz2/o000O000;->o0ooOoO(I)Lz2/o000O000;

    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onMute()V

    goto :goto_e

    :cond_15
    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->aQuery:Lz2/o000;

    sget v3, Lcn/haorui/sdk/R$id;->adsail_reward_voice_button:I

    invoke-virtual {v0, v3}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    sget v3, Lcn/haorui/sdk/R$drawable;->adsail_voice_open:I

    invoke-virtual {v0, v3}, Lz2/o000O000;->o0ooOoO(I)Lz2/o000O000;

    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onUnmute()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_e

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    const-wide/16 v3, 0x3e8

    mul-long v3, v3, v35

    new-instance v0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$8;

    invoke-direct {v0, v1}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$8;-><init>(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;)V

    invoke-interface {v2, v0, v3, v4}, Lcn/haorui/sdk/adsail_ad/MediaView;->setOnVideoKeepTimeFinishListener(Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoKeepTimeFinishListener;J)V

    new-instance v0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$9;

    invoke-direct {v0, v1, v5}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$9;-><init>(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lcn/haorui/sdk/adsail_ad/MediaView;->addOnVideoCompleteListener(Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoCompleteListener;)V

    iget-object v0, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->mediaViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xd

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v5, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_16

    iget-object v5, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_16

    iget-object v5, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_16
    iget-object v5, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->mediaViewContainer:Landroid/view/ViewGroup;

    iget-object v6, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v5, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    new-instance v5, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-direct {v5}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;-><init>()V

    invoke-direct {v0, v5}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;)V

    move-object/from16 v5, v16

    invoke-virtual {v0, v5}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setVideo_start([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object v0

    move-object/from16 v5, v25

    invoke-virtual {v0, v5}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setVideo_one_quarter([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object v0

    move-object/from16 v5, v24

    invoke-virtual {v0, v5}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setVideo_one_half([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object v0

    move-object/from16 v5, v23

    invoke-virtual {v0, v5}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setVideo_three_quarter([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object v0

    move-object/from16 v5, v22

    invoke-virtual {v0, v5}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setVideo_complete([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object v0

    move-object/from16 v5, v21

    invoke-virtual {v0, v5}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setVideo_pause([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object v0

    move-object/from16 v5, v20

    invoke-virtual {v0, v5}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setVideo_resume([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object v0

    move-object/from16 v5, v19

    invoke-virtual {v0, v5}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setVideo_mute([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object v0

    move-object/from16 v5, v18

    invoke-virtual {v0, v5}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setVideo_unmute([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object v0

    move-object/from16 v5, v17

    invoke-virtual {v0, v5}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setVideo_replay([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object v0

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setVideoType(Ljava/lang/Integer;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->build()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    new-instance v5, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;

    new-instance v6, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$10;

    invoke-direct {v6, v1, v2, v3, v4}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity$10;-><init>(Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;Lcn/haorui/sdk/adsail_ad/MediaView;J)V

    invoke-direct {v5, v1, v0, v6}, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;-><init>(Landroid/content/Context;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;)V

    invoke-interface {v2, v5}, Lcn/haorui/sdk/adsail_ad/MediaView;->setNativeAdMediaListener(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;)V

    invoke-interface {v2}, Lcn/haorui/sdk/adsail_ad/MediaView;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {v1, v2}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->startVideo(Lcn/haorui/sdk/adsail_ad/MediaView;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->videoLoaded:Z

    goto :goto_f

    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    :cond_18
    :goto_f
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    sget-object v0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->baseFullScreenVideoAdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->rewardMediaViews:Ljava/util/Map;

    iget-object v1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->localAdId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    iget v1, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->shakeId:I

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/loader/g;->a(I)V

    const/4 v0, 0x0

    sput-object v0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->downloadBean:Lcn/haorui/sdk/core/utils/DownloadDialogBean;

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->baseFullScreenVideoAdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->baseFullScreenVideoAdList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/core/ad/IAd;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->touchContainer:Lcn/haorui/sdk/core/view/TouchAdContainer;

    new-instance v3, Lcn/haorui/sdk/core/view/TouchPositionListener;

    invoke-direct {v3, v1}, Lcn/haorui/sdk/core/view/TouchPositionListener;-><init>(Lcn/haorui/sdk/core/ad/IAd;)V

    invoke-virtual {v2, v3}, Lcn/haorui/sdk/core/view/TouchAdContainer;->setTouchPositionListener(Lcn/haorui/sdk/core/view/TouchPositionListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
