.class public Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "SdkInterstitialActivity"

.field private static adWrapper:Lcn/haorui/sdk/platform/BasePlatformLoader;

.field private static msAd:Lcn/haorui/sdk/core/ad/IAd;

.field private static sdkAd:Ljava/lang/Object;


# instance fields
.field private act_type:I

.field private adLogo:Landroid/widget/ImageView;

.field private adLogoLL:Landroid/widget/LinearLayout;

.field private btn:Landroid/widget/TextView;

.field private cid:Landroid/widget/TextView;

.field private closeImage:Landroid/widget/ImageView;

.field private desc:Landroid/widget/TextView;

.field private imageView:Lcn/haorui/sdk/core/view/gif/GifImageView;

.field private isClickToClose:Z

.field private isDownloadType:Z

.field private isVideoAutoPlay:Z

.field private layout_height:I

.field private layout_type:I

.field private layout_width:I

.field private logo:Landroid/widget/ImageView;

.field private mediaContainer:Landroid/widget/RelativeLayout;

.field private rl_container:Landroid/widget/RelativeLayout;

.field private rootView:Landroid/widget/RelativeLayout;

.field private shakeId:I

.field private showed:Z

.field private startActionShakeImage:Lcn/haorui/sdk/core/view/gif/GifImageView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->act_type:I

    return-void
.end method

.method public static synthetic access$000()Lcn/haorui/sdk/platform/BasePlatformLoader;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->adWrapper:Lcn/haorui/sdk/platform/BasePlatformLoader;

    return-object v0
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;[B)Z
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->isGif([B)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;)Lcn/haorui/sdk/core/view/gif/GifImageView;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->imageView:Lcn/haorui/sdk/core/view/gif/GifImageView;

    return-object p0
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->startShake(Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;)V

    return-void
.end method

.method public static synthetic access$400()Lcn/haorui/sdk/core/ad/IAd;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->msAd:Lcn/haorui/sdk/core/ad/IAd;

    return-object v0
.end method

.method public static synthetic access$500(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->isClickToClose:Z

    return p0
.end method

.method public static synthetic access$600(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;)Lcn/haorui/sdk/core/view/gif/GifImageView;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->startActionShakeImage:Lcn/haorui/sdk/core/view/gif/GifImageView;

    return-object p0
.end method

.method public static synthetic access$700(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->mediaContainer:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static synthetic access$800()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->sdkAd:Ljava/lang/Object;

    return-object v0
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

.method private handleButton()V
    .locals 3

    iget v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->act_type:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->showShakeInButton()V

    iget-boolean v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->isDownloadType:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->btn:Landroid/widget/TextView;

    const-string v1, "\u6447\u4e00\u6447\u6216\u70b9\u51fb\u4e0b\u8f7d\u4e09\u65b9\u5e94\u7528"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->btn:Landroid/widget/TextView;

    const-string v1, "\u6447\u4e00\u6447\u6216\u70b9\u51fb\u67e5\u770b\u8be6\u60c5"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->showShakeInButton()V

    iget-boolean v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->isDownloadType:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->btn:Landroid/widget/TextView;

    const-string v1, "\u626d\u4e00\u626d\u6216\u70b9\u51fb\u4e0b\u8f7d\u4e09\u65b9\u5e94\u7528"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->btn:Landroid/widget/TextView;

    const-string v1, "\u626d\u4e00\u626d\u6216\u70b9\u51fb\u67e5\u770b\u8be6\u60c5"

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->isDownloadType:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->btn:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb\u4e0b\u8f7d\u4e09\u65b9\u5e94\u7528"

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->btn:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb\u67e5\u770b\u8be6\u60c5"

    goto :goto_0

    :goto_1
    return-void
.end method

.method private handleDownloadView(Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    sget v0, Lcn/haorui/sdk/R$id;->adsail_download_layer_textview:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, " | "

    if-nez v2, :cond_0

    :try_start_1
    const-string v2, "\u5e94\u7528\u540d\u79f0\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_ver()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "\u5e94\u7528\u7248\u672c\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_ver()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_size()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\u5e94\u7528\u5927\u5c0f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_size()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getDeveloper()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "\u5f00\u53d1\u8005\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getDeveloper()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v2, " \u6743\u9650\u8be6\u60c5> | \u9690\u79c1\u534f\u8bae > | \u529f\u80fd\u4ecb\u7ecd >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$8;

    invoke-direct {v1, p0, p1}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$8;-><init>(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method private handleMsAd()V
    .locals 8

    sget-object v0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->sdkAd:Ljava/lang/Object;

    check-cast v0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->getAdSlot()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object v1

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->getInteractionType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iput-boolean v3, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->isDownloadType:Z

    :cond_0
    invoke-direct {p0, v1}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->handleDownloadView(Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;)V

    new-instance v2, Lz2/o000;

    invoke-direct {v2, p0}, Lz2/o000;-><init>(Landroid/app/Activity;)V

    iget v4, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->layout_type:I

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-ne v4, v3, :cond_4

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->desc:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->desc:Landroid/widget/TextView;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->desc:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->desc:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getDesc()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->logo:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lz2/o000O000;->o00oO0O(Landroid/view/View;)Lz2/o000O000;

    move-result-object v3

    check-cast v3, Lz2/o000;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lz2/o000O000;->o000000(Ljava/lang/String;)Lz2/o000O000;

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->logo:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lz2/o000O000;->o00oO0O(Landroid/view/View;)Lz2/o000O000;

    move-result-object v3

    check-cast v3, Lz2/o000;

    invoke-virtual {v3}, Lz2/o000O000;->o00Ooo()Lz2/o000O000;

    :cond_4
    :goto_2
    iget-object v3, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->adLogoLL:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcn/haorui/sdk/R$drawable;->adsail_black_oval_gray:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->cid:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->cid:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->adLogo:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lz2/o000O000;->o00oO0O(Landroid/view/View;)Lz2/o000O000;

    move-result-object v3

    check-cast v3, Lz2/o000;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lz2/o000O000;->o000000(Ljava/lang/String;)Lz2/o000O000;

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->adLogo:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lz2/o000O000;->o00oO0O(Landroid/view/View;)Lz2/o000O000;

    move-result-object v3

    check-cast v3, Lz2/o000;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcn/haorui/sdk/R$drawable;->adsail_ad:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lz2/o000O000;->o0OO00O(Landroid/graphics/drawable/Drawable;)Lz2/o000O000;

    :goto_4
    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    invoke-direct {p0, v2, v1, v0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->loadNativeVideo(Lz2/o000;Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    new-instance v3, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$2;

    invoke-direct {v3, p0, v0, v1}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$2;-><init>(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;)V

    invoke-static {v2, v3}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetFile(Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;)V

    :goto_5
    iget-object v2, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->rootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Lcn/haorui/sdk/core/ad/BaseAd;->setAdView(Landroid/view/View;)V

    iget-object v2, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->rl_container:Landroid/widget/RelativeLayout;

    new-instance v3, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$3;

    invoke-direct {v3, p0, v1, v0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$3;-><init>(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->btn:Landroid/widget/TextView;

    new-instance v3, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$4;

    invoke-direct {v3, p0, v1, v0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$4;-><init>(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private handleSdk()V
    .locals 1

    sget-object v0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->sdkAd:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    instance-of v0, v0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->handleMsAd()V

    invoke-direct {p0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->handleButton()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private initView()V
    .locals 7

    sget v0, Lcn/haorui/sdk/R$id;->activity_sdk_interstitial_rootView:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->rootView:Landroid/widget/RelativeLayout;

    sget v0, Lcn/haorui/sdk/R$layout;->adsail_layout_sdk_interstitial_1:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->layout_type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    sget v0, Lcn/haorui/sdk/R$layout;->adsail_layout_sdk_interstitial_2:I

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->rootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcn/haorui/sdk/R$id;->adsail_action_shakeImage:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/view/gif/GifImageView;

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->startActionShakeImage:Lcn/haorui/sdk/core/view/gif/GifImageView;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_layout_native_interstitial_ll:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget v1, Lcn/haorui/sdk/R$id;->activity_sdk_interstitial_mediaContainer:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->mediaContainer:Landroid/widget/RelativeLayout;

    sget v1, Lcn/haorui/sdk/R$id;->activity_sdk_interstitial_imageview:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/core/view/gif/GifImageView;

    iput-object v1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->imageView:Lcn/haorui/sdk/core/view/gif/GifImageView;

    sget v1, Lcn/haorui/sdk/R$id;->activity_sdk_interstitial_cacel:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->closeImage:Landroid/widget/ImageView;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_activity_sdk_interstitial_adLogoLL:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->adLogoLL:Landroid/widget/LinearLayout;

    sget v1, Lcn/haorui/sdk/R$id;->activity_sdk_interstitial_adLogo:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->adLogo:Landroid/widget/ImageView;

    sget v1, Lcn/haorui/sdk/R$id;->layout_native_interstitial_cid:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->cid:Landroid/widget/TextView;

    sget v1, Lcn/haorui/sdk/R$id;->activity_sdk_interstitial_rl_container:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->rl_container:Landroid/widget/RelativeLayout;

    sget v1, Lcn/haorui/sdk/R$id;->activity_sdk_interstitial_logo:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->logo:Landroid/widget/ImageView;

    sget v1, Lcn/haorui/sdk/R$id;->activity_sdk_interstitial_title:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->title:Landroid/widget/TextView;

    sget v1, Lcn/haorui/sdk/R$id;->activity_sdk_interstitial_desc:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->desc:Landroid/widget/TextView;

    sget v1, Lcn/haorui/sdk/R$id;->activity_sdk_interstitial_btn:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->btn:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->closeImage:Landroid/widget/ImageView;

    new-instance v2, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$1;

    invoke-direct {v2, p0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$1;-><init>(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->layout_type:I

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v3

    const-wide v5, 0x3feb851eb851eb85L    # 0.86

    mul-double v3, v3, v5

    double-to-int v5, v3

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v5, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->layout_height:I

    int-to-double v5, v5

    mul-double v3, v3, v5

    iget v5, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->layout_width:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v3, v1

    const-wide v5, 0x3fb1eb851eb851ecL    # 0.07

    mul-double v3, v3, v5

    double-to-int v1, v3

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-direct {p0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->handleSdk()V

    return-void
.end method

.method private isGif([B)Z
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {p1, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "47494638"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    return v2
.end method

.method private loadNativeVideo(Lz2/o000;Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;)V
    .locals 8

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v7, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6;

    invoke-direct {v7, p0, p2, p3}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6;-><init>(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;)V

    invoke-virtual {p2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object p2

    aget-object v3, p2, v1

    const-class v4, Ljava/io/File;

    const-wide/32 v5, 0x5265c00

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lz2/o000O000;->OooO0Oo(Ljava/lang/String;Ljava/lang/Class;JLz2/o000O0O0;)Lz2/o000O000;

    return-void
.end method

.method public static setAdWrapper(Lcn/haorui/sdk/platform/BasePlatformLoader;)V
    .locals 0

    sput-object p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->adWrapper:Lcn/haorui/sdk/platform/BasePlatformLoader;

    return-void
.end method

.method public static setMsAd(Lcn/haorui/sdk/core/ad/IAd;)V
    .locals 0

    sput-object p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->msAd:Lcn/haorui/sdk/core/ad/IAd;

    return-void
.end method

.method public static setSdkAd(Ljava/lang/Object;)V
    .locals 0

    sput-object p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->sdkAd:Ljava/lang/Object;

    return-void
.end method

.method private showShakeInButton()V
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/haorui/sdk/R$drawable;->adsail_rock_btn:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->btn:Landroid/widget/TextView;

    const/16 v3, 0x1e

    const/16 v4, 0x3c

    invoke-virtual {v2, v3, v1, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->btn:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private showStartShakeImage()V
    .locals 4

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->startActionShakeImage:Lcn/haorui/sdk/core/view/gif/GifImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v0, Lcn/haorui/sdk/R$raw;->adsail_new_shake:I

    invoke-direct {p0, p0, v0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->getImageBytes(Landroid/content/Context;I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->startActionShakeImage:Lcn/haorui/sdk/core/view/gif/GifImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcn/haorui/sdk/core/view/gif/GifImageView;->setBytes([BI)V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->startActionShakeImage:Lcn/haorui/sdk/core/view/gif/GifImageView;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/view/gif/GifImageView;->startAnimation()V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$5;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$5;-><init>(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startShake(Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;)V
    .locals 12

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPower_index()I

    move-result v4

    sget-object v0, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/g;->b()I

    move-result v0

    iput v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->shakeId:I

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    const/4 v5, 0x2

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    :goto_0
    sget-object v0, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    move-result-wide v6

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getDclk()Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;

    move-result-object v3

    invoke-virtual {v0, v1, v6, v7, v3}, Lcn/haorui/sdk/core/loader/g;->a(Ljava/lang/String;JLcn/haorui/sdk/core/domain/HRAdInfo$DClickData;)V

    sget-object v3, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPower_delay()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPower_count()I

    move-result v8

    iget v9, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->shakeId:I

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getEcpm()I

    move-result v10

    new-instance v11, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$7;

    invoke-direct {v11, p0, p1}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$7;-><init>(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;)V

    invoke-virtual/range {v3 .. v11}, Lcn/haorui/sdk/core/loader/g;->a(IIJIIILcn/haorui/sdk/core/loader/g$d;)V

    sget-object p1, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    invoke-virtual {p1, v2}, Lcn/haorui/sdk/core/loader/g;->a(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcn/haorui/sdk/R$layout;->adsail_activity_sdk_interstitial:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isVideoAutoPlay"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->isVideoAutoPlay:Z

    const-string v0, "isClickToClose"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->isClickToClose:Z

    const-string v0, "act_type"

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->act_type:I

    const-string v0, "layout_type"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->layout_type:I

    const-string v0, "layout_width"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->layout_width:I

    const-string v0, "layout_height"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->layout_height:I

    invoke-direct {p0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->initView()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    sput-object v0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->sdkAd:Ljava/lang/Object;

    sput-object v0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->adWrapper:Lcn/haorui/sdk/platform/BasePlatformLoader;

    sput-object v0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->msAd:Lcn/haorui/sdk/core/ad/IAd;

    sget-object v0, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    iget v1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->shakeId:I

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/loader/g;->a(I)V

    return-void
.end method
