.class public Lcn/haorui/sdk/platform/hr/HRSdkPlatform;
.super Lcn/haorui/sdk/core/c;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public bannerLoader(Lcn/haorui/sdk/core/ad/banner/BannerAdLoader;Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public createConfig()Lcn/haorui/sdk/core/d;
    .locals 1

    new-instance v0, Lcn/haorui/sdk/platform/hr/HRInitConfig;

    invoke-direct {v0}, Lcn/haorui/sdk/platform/hr/HRInitConfig;-><init>()V

    return-object v0
.end method

.method public interstitialLoader(Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdLoader;Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public pasterLoader(Lcn/haorui/sdk/core/ad/paster/PasterAdLoader;Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public recyclerLoader(Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public rewardLoader(Lcn/haorui/sdk/core/ad/reward/RewardVideoLoader;Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public splashLoader(Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public support()[Lcn/haorui/sdk/core/ad/AdType;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Lcn/haorui/sdk/core/ad/AdType;

    sget-object v1, Lcn/haorui/sdk/core/ad/AdType;->FEED:Lcn/haorui/sdk/core/ad/AdType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/haorui/sdk/core/ad/AdType;->FEED_PRE_RENDER:Lcn/haorui/sdk/core/ad/AdType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/haorui/sdk/core/ad/AdType;->FEED_MIX:Lcn/haorui/sdk/core/ad/AdType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/haorui/sdk/core/ad/AdType;->BANNER:Lcn/haorui/sdk/core/ad/AdType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcn/haorui/sdk/core/ad/AdType;->SPLASH:Lcn/haorui/sdk/core/ad/AdType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcn/haorui/sdk/core/ad/AdType;->INTERSTITIAL:Lcn/haorui/sdk/core/ad/AdType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcn/haorui/sdk/core/ad/AdType;->PASTER:Lcn/haorui/sdk/core/ad/AdType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcn/haorui/sdk/core/ad/AdType;->REWARD:Lcn/haorui/sdk/core/ad/AdType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcn/haorui/sdk/core/ad/AdType;->FULL_SCREEN_VIDEO:Lcn/haorui/sdk/core/ad/AdType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcn/haorui/sdk/core/ad/AdType;->DRAW:Lcn/haorui/sdk/core/ad/AdType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method
