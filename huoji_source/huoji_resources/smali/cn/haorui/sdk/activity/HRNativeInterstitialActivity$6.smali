.class public Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6;
.super Lz2/o000O0O0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->loadNativeVideo(Lz2/o000;Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/o000O0O0<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

.field public final synthetic val$adSlot:Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

.field public final synthetic val$sdkAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6;->this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

    iput-object p2, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6;->val$adSlot:Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    iput-object p3, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6;->val$sdkAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-direct {p0}, Lz2/o000O0O0;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/io/File;Lz2/o000O;)V
    .locals 7

    invoke-virtual {p3}, Lz2/o000O;->OooOO0o()I

    move-result p1

    const-string v0, "SdkInterstitialActivity"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc8

    if-gt v3, p1, :cond_2

    invoke-virtual {p3}, Lz2/o000O;->OooOO0o()I

    move-result p1

    const/16 v3, 0x12c

    if-gt v3, p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "video file error, file: null"

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video code error, code: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lz2/o000O;->OooOO0o()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {v0, p1}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {}, Lcn/haorui/sdk/core/utils/MemoryUtil;->getTraceMemory()I

    move-result p1

    int-to-long v5, p1

    cmp-long p1, v3, v5

    if-ltz p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    iget-object p3, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6;->this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

    invoke-direct {p1, p3}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6;->val$adSlot:Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    invoke-virtual {p3}, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;->getWidth()I

    move-result p3

    invoke-virtual {p1, p3}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setConfigWidth(I)V

    iget-object p3, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6;->val$adSlot:Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    invoke-virtual {p3}, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;->getHeight()I

    move-result p3

    invoke-virtual {p1, p3}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setConfigHeight(I)V

    invoke-virtual {p1, v1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setPlayOnce(Z)V

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->mute()V

    invoke-virtual {p1, v2}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setUseTransform(Z)V

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setDisplayMode(I)V

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setFromLogoVisibility(I)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setFromLogo(Ljava/lang/String;)V

    new-instance p3, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6$1;

    invoke-direct {p3, p0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6$1;-><init>(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6;)V

    invoke-virtual {p1, p3}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setNativeAdMediaListener(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;)V

    iget-object p3, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6;->this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

    invoke-static {p3}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->access$700(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;)Landroid/widget/RelativeLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object p3, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6;->this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

    invoke-static {p3}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->access$700(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;)Landroid/widget/RelativeLayout;

    move-result-object p3

    const/4 v0, -0x1

    invoke-virtual {p3, p1, v0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setVideoPath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->start()V

    :cond_4
    return-void
.end method

.method public bridge synthetic callback(Ljava/lang/String;Ljava/lang/Object;Lz2/o000O;)V
    .locals 0

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6;->callback(Ljava/lang/String;Ljava/io/File;Lz2/o000O;)V

    return-void
.end method
