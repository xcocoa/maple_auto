.class public abstract Lcn/haorui/sdk/core/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/e;


# instance fields
.field public config:Lcn/haorui/sdk/core/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bannerLoader(Lcn/haorui/sdk/core/ad/banner/BannerAdLoader;Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;
.end method

.method public config()Lcn/haorui/sdk/core/d;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/c;->config:Lcn/haorui/sdk/core/d;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/core/c;->createConfig()Lcn/haorui/sdk/core/d;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/c;->config:Lcn/haorui/sdk/core/d;

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/c;->config:Lcn/haorui/sdk/core/d;

    return-object v0
.end method

.method public abstract createConfig()Lcn/haorui/sdk/core/d;
.end method

.method public drawLoader(Lcn/haorui/sdk/core/ad/draw/DrawAdLoader;Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public fullScreenVideoLoader(Lcn/haorui/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract interstitialLoader(Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdLoader;Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;
.end method

.method public abstract pasterLoader(Lcn/haorui/sdk/core/ad/paster/PasterAdLoader;Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;
.end method

.method public abstract recyclerLoader(Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;
.end method

.method public abstract rewardLoader(Lcn/haorui/sdk/core/ad/reward/RewardVideoLoader;Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;
.end method

.method public abstract splashLoader(Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;
.end method
