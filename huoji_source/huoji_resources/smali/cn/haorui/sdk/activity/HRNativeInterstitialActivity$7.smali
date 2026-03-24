.class public Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/loader/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->startShake(Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

.field public final synthetic val$adSlot:Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$7;->this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

    iput-object p2, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$7;->val$adSlot:Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShake()V
    .locals 1

    invoke-static {}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->access$400()Lcn/haorui/sdk/core/ad/IAd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->access$400()Lcn/haorui/sdk/core/ad/IAd;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/IAd;->getInteractionListener()Lcn/haorui/sdk/core/loader/InteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$7;->val$adSlot:Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCbc()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->access$400()Lcn/haorui/sdk/core/ad/IAd;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/IAd;->getInteractionListener()Lcn/haorui/sdk/core/loader/InteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/InteractionListener;->onAdClicked()V

    :cond_0
    invoke-static {}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->access$800()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/ClickHandler;->handleClick(Lcn/haorui/sdk/platform/hr/IAdSailAd;)V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$7;->this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

    invoke-static {v0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->access$500(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$7;->this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
