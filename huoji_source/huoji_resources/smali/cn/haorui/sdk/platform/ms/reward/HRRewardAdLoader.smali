.class public Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;
.super Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;
.source ""


# instance fields
.field private hrCustomRewardAd:Lcn/haorui/sdk/platform/ms/reward/HrCustomRewardAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;-><init>(Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;->loadAdWithCallback(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;)Lcn/haorui/sdk/platform/ms/reward/HrCustomRewardAd;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;->hrCustomRewardAd:Lcn/haorui/sdk/platform/ms/reward/HrCustomRewardAd;

    return-object p0
.end method

.method public static synthetic access$102(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;Lcn/haorui/sdk/platform/ms/reward/HrCustomRewardAd;)Lcn/haorui/sdk/platform/ms/reward/HrCustomRewardAd;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;->hrCustomRewardAd:Lcn/haorui/sdk/platform/ms/reward/HrCustomRewardAd;

    return-object p1
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;->onReward(Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;->onAdExposure(Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;)V

    return-void
.end method

.method public static synthetic access$500(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;->onAdClosed(Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;)V

    return-void
.end method

.method public static synthetic access$600(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;->onAdClick(Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;)V

    return-void
.end method

.method public static synthetic access$700(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;->onRenderSuccess(Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;)V

    return-void
.end method

.method public static synthetic access$800(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;->onRenderFail(ILjava/lang/String;)V

    return-void
.end method

.method private loadAdWithCallback(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcn/haorui/sdk/core/ad/reward/RewardVideoLoader;

    invoke-virtual {p0}, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2;

    invoke-direct {v2, p0}, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$2;-><init>(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;)V

    invoke-direct {v0, v1, p1, v2}, Lcn/haorui/sdk/core/ad/reward/RewardVideoLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;)V

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->loadAd()V

    return-void
.end method


# virtual methods
.method public loadCustomAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcn/haorui/sdk/platform/ms/HRInitManager;->getInstance()Lcn/haorui/sdk/platform/ms/HRInitManager;

    move-result-object p3

    iget-object v0, p0, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;->context:Landroid/content/Context;

    new-instance v1, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$1;

    invoke-direct {v1, p0, p2}, Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader$1;-><init>(Lcn/haorui/sdk/platform/ms/reward/HRRewardAdLoader;Ljava/lang/String;)V

    invoke-virtual {p3, v0, p1, v1}, Lcn/haorui/sdk/platform/ms/HRInitManager;->initSdk(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/platform/ms/HRInitManager$InitCallback;)V

    return-void
.end method
