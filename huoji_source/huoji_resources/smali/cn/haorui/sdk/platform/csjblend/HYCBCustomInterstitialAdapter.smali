.class public Lcn/haorui/sdk/platform/csjblend/HYCBCustomInterstitialAdapter;
.super Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/interstitial/MediationCustomInterstitialLoader;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "HYCBCustomInterstitialA"


# instance fields
.field private interstitialAd:Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/interstitial/MediationCustomInterstitialLoader;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Lcn/haorui/sdk/platform/csjblend/HYCBCustomInterstitialAdapter;Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;)Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomInterstitialAdapter;->interstitialAd:Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;

    return-object p1
.end method


# virtual methods
.method public isClientBidding()Z
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/interstitial/MediationCustomInterstitialLoader;->getBiddingType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public load(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5f00\u59cb\u52a0\u8f7dgromore\u81ea\u5b9a\u4e49\u5e73\u53f0\u63d2\u5c4f\uff0cpid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;->getADNNetworkSlotId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HYCBCustomInterstitialA"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdLoader;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;->getADNNetworkSlotId()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomInterstitialAdapter$1;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomInterstitialAdapter$1;-><init>(Lcn/haorui/sdk/platform/csjblend/HYCBCustomInterstitialAdapter;)V

    invoke-direct {p2, p1, p3, v0}, Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdLoader;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;)V

    invoke-virtual {p2}, Lcn/haorui/sdk/core/loader/b;->loadAd()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomInterstitialAdapter;->interstitialAd:Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;->showAd(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
