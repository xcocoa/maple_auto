.class public Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->handleMsAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

.field public final synthetic val$adSlot:Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

.field public final synthetic val$sdkAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$3;->this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

    iput-object p2, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$3;->val$adSlot:Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    iput-object p3, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$3;->val$sdkAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->access$400()Lcn/haorui/sdk/core/ad/IAd;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->access$400()Lcn/haorui/sdk/core/ad/IAd;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getInteractionListener()Lcn/haorui/sdk/core/loader/InteractionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$3;->val$adSlot:Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCbc()I

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->access$400()Lcn/haorui/sdk/core/ad/IAd;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getInteractionListener()Lcn/haorui/sdk/core/loader/InteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/loader/InteractionListener;->onAdClicked()V

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$3;->val$sdkAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/ClickHandler;->handleClick(Lcn/haorui/sdk/platform/hr/IAdSailAd;)V

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$3;->this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

    invoke-static {p1}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->access$500(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$3;->this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
