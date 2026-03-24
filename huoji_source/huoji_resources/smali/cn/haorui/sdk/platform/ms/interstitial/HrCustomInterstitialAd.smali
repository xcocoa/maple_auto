.class public Lcn/haorui/sdk/platform/ms/interstitial/HrCustomInterstitialAd;
.super Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;
.source ""


# instance fields
.field private interstitialAd:Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;-><init>(Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;)V

    iput-object p2, p0, Lcn/haorui/sdk/platform/ms/interstitial/HrCustomInterstitialAd;->interstitialAd:Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;

    return-void
.end method


# virtual methods
.method public showAd(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/interstitial/HrCustomInterstitialAd;->interstitialAd:Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;->showAd(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
