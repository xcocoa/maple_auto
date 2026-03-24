.class public Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;
.super Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;
.source ""


# instance fields
.field private hrCustomInterstitialAd:Lcn/haorui/sdk/platform/ms/interstitial/HrCustomInterstitialAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;-><init>(Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;->loadAdWithCallback(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;)Lcn/haorui/sdk/platform/ms/interstitial/HrCustomInterstitialAd;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;->hrCustomInterstitialAd:Lcn/haorui/sdk/platform/ms/interstitial/HrCustomInterstitialAd;

    return-object p0
.end method

.method public static synthetic access$202(Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;Lcn/haorui/sdk/platform/ms/interstitial/HrCustomInterstitialAd;)Lcn/haorui/sdk/platform/ms/interstitial/HrCustomInterstitialAd;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;->hrCustomInterstitialAd:Lcn/haorui/sdk/platform/ms/interstitial/HrCustomInterstitialAd;

    return-object p1
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;->onAdExposure(Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V

    return-void
.end method

.method public static synthetic access$400(Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;->onAdClosed(Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V

    return-void
.end method

.method public static synthetic access$500(Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;->onAdClick(Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V

    return-void
.end method

.method public static synthetic access$600(Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;->onRenderSuccess(Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V

    return-void
.end method

.method public static synthetic access$700(Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;->onRenderFail(ILjava/lang/String;)V

    return-void
.end method

.method private loadAdWithCallback(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdLoader;

    invoke-virtual {p0}, Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader$2;

    invoke-direct {v2, p0}, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader$2;-><init>(Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;)V

    invoke-direct {v0, v1, p1, v2}, Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdLoader;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;)V

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->loadAd()V

    return-void
.end method


# virtual methods
.method public loadCustomAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcn/haorui/sdk/platform/ms/HRInitManager;->getInstance()Lcn/haorui/sdk/platform/ms/HRInitManager;

    move-result-object p3

    iget-object v0, p0, Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;->context:Landroid/content/Context;

    new-instance v1, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader$1;

    invoke-direct {v1, p0, p2}, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader$1;-><init>(Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;Ljava/lang/String;)V

    invoke-virtual {p3, v0, p1, v1}, Lcn/haorui/sdk/platform/ms/HRInitManager;->initSdk(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/platform/ms/HRInitManager$InitCallback;)V

    return-void
.end method
