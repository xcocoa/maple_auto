.class public Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;
.super Lcn/haorui/sdk/core/ad/BaseAd;
.source ""

# interfaces
.implements Lcn/haorui/sdk/platform/hr/IAdSailAd;


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeInterstitialAd"


# instance fields
.field private adListener:Lcn/haorui/sdk/adsail_ad/interstitial/IInterstitialAdListener;

.field private height:I

.field private imgSrc:[B

.field private layoutType:I

.field private showed:Z

.field private width:I

.field private wrapper:Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;Lcn/haorui/sdk/adsail_ad/interstitial/IInterstitialAdListener;[B)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "AD_HR"

    invoke-direct {p0, v0, v1}, Lcn/haorui/sdk/core/ad/BaseAd;-><init>(Lcn/haorui/sdk/core/loader/d;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->layoutType:I

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->wrapper:Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->adListener:Lcn/haorui/sdk/adsail_ad/interstitial/IInterstitialAdListener;

    iput-object p3, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->imgSrc:[B

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;[B)Z
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->isGif([B)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;)I
    .locals 0

    iget p0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->layoutType:I

    return p0
.end method

.method public static synthetic access$102(Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->layoutType:I

    return p1
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;)Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->wrapper:Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

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

.method private showNativeAd(Landroid/app/Activity;)V
    .locals 6

    const-string v0, "NativeInterstitialAd"

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->wrapper:Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->getAdSlot()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->getAdSlot()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    new-instance v1, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd$1;

    invoke-direct {v1, p0, p1}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd$1;-><init>(Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetFile(Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;)V

    goto/16 :goto_1

    :cond_0
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "videoUrl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->getAdSlot()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object v5

    invoke-virtual {v5}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->getAdSlot()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object v4

    invoke-virtual {v4}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v4, v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->height:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->width:I

    iget v3, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->height:I

    if-le v3, v1, :cond_1

    iput v2, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->layoutType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layout_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->layoutType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->setSdkAd(Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->wrapper:Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

    invoke-static {v0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->setAdWrapper(Lcn/haorui/sdk/platform/BasePlatformLoader;)V

    invoke-static {p0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->setMsAd(Lcn/haorui/sdk/core/ad/IAd;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->wrapper:Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdLoader;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdLoader;->getIsClickToClose()Z

    move-result v1

    const-string v2, "isClickToClose"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->getAdSlot()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v1

    const-string v2, "act_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->layoutType:I

    const-string v2, "layout_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->width:I

    const-string v2, "layout_width"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->height:I

    const-string v2, "layout_height"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getAdSlot()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->wrapper:Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    return-object v0
.end method

.method public bridge synthetic getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 1

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->getAdSlot()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object v0

    return-object v0
.end method

.method public getAdType()Lcn/haorui/sdk/core/ad/AdType;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/ad/AdType;->INTERSTITIAL:Lcn/haorui/sdk/core/ad/AdType;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->wrapper:Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->wrapper:Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    move-result v0

    return v0
.end method

.method public sendExposure()V
    .locals 6

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->wrapper:Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->showed:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->getAdSlot()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/RecordUtil;->saveAction(Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->showed:Z

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->getAdSlot()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "NativeInterstitialAd"

    const-string v2, "send onADExposure"

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->wrapper:Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

    invoke-virtual {v4}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v5}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v4, v3, v5}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->wrapper:Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    :cond_2
    return-void
.end method

.method public showAd()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->wrapper:Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->showNativeAd(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->showNativeAd(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show ad Error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NativeInterstitialAd"

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
