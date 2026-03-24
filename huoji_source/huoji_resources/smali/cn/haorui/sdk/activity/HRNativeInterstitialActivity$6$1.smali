.class public Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6;->callback(Ljava/lang/String;Ljava/io/File;Lz2/o000O;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6$1;->this$1:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoComplete()V
    .locals 0

    return-void
.end method

.method public onVideoError()V
    .locals 0

    return-void
.end method

.method public onVideoLoaded()V
    .locals 2

    const-string v0, "SdkInterstitialActivity"

    const-string v1, "onADLoaded"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6$1;->this$1:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6;

    iget-object v0, v0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6;->val$sdkAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->sendExposure()V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6$1;->this$1:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6;

    iget-object v1, v0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6;->this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

    iget-object v0, v0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$6;->val$adSlot:Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    invoke-static {v1, v0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->access$300(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;)V

    return-void
.end method

.method public onVideoMute()V
    .locals 0

    return-void
.end method

.method public onVideoOneHalf()V
    .locals 0

    return-void
.end method

.method public onVideoOneQuarter()V
    .locals 0

    return-void
.end method

.method public onVideoPause()V
    .locals 0

    return-void
.end method

.method public onVideoReplay()V
    .locals 0

    return-void
.end method

.method public onVideoResume()V
    .locals 0

    return-void
.end method

.method public onVideoStart()V
    .locals 0

    return-void
.end method

.method public onVideoThreeQuarter()V
    .locals 0

    return-void
.end method

.method public onVideoUnmute()V
    .locals 0

    return-void
.end method
