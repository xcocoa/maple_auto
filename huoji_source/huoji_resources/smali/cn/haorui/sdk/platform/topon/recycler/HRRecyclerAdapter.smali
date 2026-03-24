.class public Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;
.source ""


# instance fields
.field private recyclerMixAdLoader:Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdLoader;

.field private slotId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATBiddingListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATBiddingListener;)V

    return-void
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method public static synthetic access$400(Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method public static synthetic access$600(Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method public static synthetic access$700(Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method public static synthetic access$800(Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private loadAd(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATBiddingListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATBiddingListener;",
            ")V"
        }
    .end annotation

    const-string v0, "app_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "slot_id"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;->slotId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;->slotId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdLoader;

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;->slotId:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter$3;

    invoke-direct {v2, p0, p3}, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter$3;-><init>(Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;Lcom/anythink/core/api/ATBiddingListener;)V

    invoke-direct {p2, p1, v0, v1, v2}, Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdListener;)V

    iput-object p2, p0, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;->recyclerMixAdLoader:Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdLoader;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/loader/b;->loadAd()V

    return-void

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    const-string p1, "load error"

    invoke-static {p1}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    :cond_2
    iget-object p1, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_3

    const-string p2, ""

    const-string p3, " app_id or slot_id is empty!"

    invoke-interface {p1, p2, p3}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;->recyclerMixAdLoader:Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->destroy()V

    :cond_0
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcn/haorui/sdk/platform/topon/HRInitManager;->getInstance()Lcn/haorui/sdk/platform/topon/HRInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/topon/HRInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;->slotId:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    invoke-static {}, Lcn/haorui/sdk/platform/topon/HRInitManager;->getInstance()Lcn/haorui/sdk/platform/topon/HRInitManager;

    move-result-object p3

    new-instance v0, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter$1;-><init>(Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;Landroid/content/Context;Ljava/util/Map;)V

    invoke-virtual {p3, p1, p2, v0}, Lcn/haorui/sdk/platform/topon/HRInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V

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

    invoke-static {}, Lcn/haorui/sdk/platform/topon/HRInitManager;->getInstance()Lcn/haorui/sdk/platform/topon/HRInitManager;

    move-result-object p3

    new-instance v0, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter$2;

    invoke-direct {v0, p0, p1, p2, p4}, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter$2;-><init>(Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATBiddingListener;)V

    invoke-virtual {p3, p1, p2, v0}, Lcn/haorui/sdk/platform/topon/HRInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V

    const/4 p1, 0x1

    return p1
.end method
