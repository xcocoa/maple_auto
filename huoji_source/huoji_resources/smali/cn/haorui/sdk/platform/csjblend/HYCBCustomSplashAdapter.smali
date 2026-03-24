.class public Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter;
.super Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/splash/MediationCustomSplashLoader;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "HYCBCustomSplashAdapter"


# instance fields
.field private iSplashAd:Lcn/haorui/sdk/core/ad/splash/ISplashAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/splash/MediationCustomSplashLoader;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter;Lcn/haorui/sdk/core/ad/splash/ISplashAd;)Lcn/haorui/sdk/core/ad/splash/ISplashAd;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter;->iSplashAd:Lcn/haorui/sdk/core/ad/splash/ISplashAd;

    return-object p1
.end method


# virtual methods
.method public isClientBidding()Z
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/splash/MediationCustomSplashLoader;->getBiddingType()I

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
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5f00\u59cb\u52a0\u8f7dgromore\u81ea\u5b9a\u4e49\u5e73\u53f0\u5f00\u5c4f\uff0cpid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;->getADNNetworkSlotId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HYCBCustomSplashAdapter"

    invoke-static {v0, p2}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;->getADNNetworkSlotId()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter$1;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter$1;-><init>(Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter;)V

    const/16 v1, 0x1388

    invoke-direct {p2, p1, p3, v0, v1}, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/ad/splash/SplashAdListener;I)V

    invoke-virtual {p2}, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;->loadAdOnly()V

    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomSplashAdapter;->iSplashAd:Lcn/haorui/sdk/core/ad/splash/ISplashAd;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/haorui/sdk/core/ad/splash/ISplashAd;->showAd(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
