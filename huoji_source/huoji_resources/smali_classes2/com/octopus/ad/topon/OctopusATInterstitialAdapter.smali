.class public Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;
.super Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;
.source ""


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mInterstitialAd:Lcom/octopus/ad/InterstitialAd;

.field private mSlotId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;->TAG:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;->mSlotId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;->startLoad(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;)Lcom/octopus/ad/InterstitialAd;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;->mInterstitialAd:Lcom/octopus/ad/InterstitialAd;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;Lcom/octopus/ad/InterstitialAd;)Lcom/octopus/ad/InterstitialAd;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;->mInterstitialAd:Lcom/octopus/ad/InterstitialAd;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;->mSlotId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private startLoad(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter$2;-><init>(Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/b/d;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public destory()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;->mInterstitialAd:Lcom/octopus/ad/InterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/InterstitialAd;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;->mInterstitialAd:Lcom/octopus/ad/InterstitialAd;

    :cond_0
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/octopus/ad/topon/OctopusATInitManager;->getInstance()Lcom/octopus/ad/topon/OctopusATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/topon/OctopusATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;->mSlotId:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/octopus/ad/topon/OctopusATInitManager;->getInstance()Lcom/octopus/ad/topon/OctopusATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/topon/OctopusATInitManager;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdReady()Z
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;->mInterstitialAd:Lcom/octopus/ad/InterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p3, p0, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;->TAG:Ljava/lang/String;

    const-string v0, "onAd loadCustomNetworkAd"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "slot_id"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;->mSlotId:Ljava/lang/String;

    :cond_0
    iget-object p3, p0, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;->mSlotId:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p1, "SlotId is empty!"

    iget-object p2, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p2, :cond_1

    const-string p3, "80000"

    invoke-interface {p2, p3, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object p1

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/octopus/ad/topon/OctopusATInitManager;->getInstance()Lcom/octopus/ad/topon/OctopusATInitManager;

    move-result-object p3

    new-instance v0, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter$1;-><init>(Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;Landroid/content/Context;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/octopus/ad/topon/OctopusATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;->mInterstitialAd:Lcom/octopus/ad/InterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;->mInterstitialAd:Lcom/octopus/ad/InterstitialAd;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/InterstitialAd;->show(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public startBiddingRequest(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATBiddingListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATBiddingListener;",
            ")Z"
        }
    .end annotation

    iget-object p4, p0, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;->TAG:Ljava/lang/String;

    const-string v0, "onAd startBiddingRequest"

    invoke-static {p4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3}, Lcom/octopus/ad/topon/OctopusATInterstitialAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1
.end method
