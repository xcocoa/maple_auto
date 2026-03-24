.class public abstract Lmobi/oneway/export/plugin/BaseAd;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public appId:Ljava/lang/String;

.field public feedAdId:Ljava/lang/String;

.field public hasFeedAd:Z

.field public hasInteractiveAd:Z

.field public hasInterstitialAd:Z

.field public hasInterstitialImageAd:Z

.field public hasRewardAd:Z

.field public interactiveId:Ljava/lang/String;

.field public interstitialId:Ljava/lang/String;

.field public interstitialImageId:Ljava/lang/String;

.field public rewardId:Ljava/lang/String;

.field public splashId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmobi/oneway/export/plugin/BaseAd;->appId:Ljava/lang/String;

    iput-object p2, p0, Lmobi/oneway/export/plugin/BaseAd;->splashId:Ljava/lang/String;

    iput-object p3, p0, Lmobi/oneway/export/plugin/BaseAd;->rewardId:Ljava/lang/String;

    iput-object p4, p0, Lmobi/oneway/export/plugin/BaseAd;->interstitialImageId:Ljava/lang/String;

    iput-object p5, p0, Lmobi/oneway/export/plugin/BaseAd;->interstitialId:Ljava/lang/String;

    iput-object p6, p0, Lmobi/oneway/export/plugin/BaseAd;->interactiveId:Ljava/lang/String;

    iput-object p7, p0, Lmobi/oneway/export/plugin/BaseAd;->feedAdId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lmobi/oneway/export/plugin/BaseAd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract destoryAd(Lmobi/oneway/export/enums/AdType;Ljava/lang/String;)V
.end method

.method public abstract getCrc()J
.end method

.method public abstract initInteractiveAd(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInteractiveAdListener;)V
.end method

.method public abstract initInteractiveAd(Landroid/app/Activity;Lmobi/oneway/export/AdListener/OWInteractiveAdListener;)V
.end method

.method public abstract initInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInterstitialAdListener;)V
.end method

.method public abstract initInterstitialAd(Landroid/app/Activity;Lmobi/oneway/export/AdListener/OWInterstitialAdListener;)V
.end method

.method public abstract initInterstitialImageAd(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;)V
.end method

.method public abstract initInterstitialImageAd(Landroid/app/Activity;Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;)V
.end method

.method public abstract initRewardAd(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/OWRewardedAdListener;)V
.end method

.method public abstract initRewardAd(Landroid/app/Activity;Lmobi/oneway/export/AdListener/OWRewardedAdListener;)V
.end method

.method public abstract isInteractiveAdReady()Z
.end method

.method public abstract isInteractiveAdReady(Ljava/lang/String;)Z
.end method

.method public abstract isInterstitialAdReady()Z
.end method

.method public abstract isInterstitialAdReady(Ljava/lang/String;)Z
.end method

.method public abstract isInterstitialImageAdReady()Z
.end method

.method public abstract isInterstitialImageAdReady(Ljava/lang/String;)Z
.end method

.method public abstract isRewardAdReady()Z
.end method

.method public abstract isRewardAdReady(Ljava/lang/String;)Z
.end method

.method public abstract loadFeedAd(Landroid/app/Activity;Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;)V
.end method

.method public abstract loadFeedAd(Landroid/content/Context;Ljava/lang/String;Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;)V
.end method

.method public abstract loadFeedAd(Landroid/content/Context;Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;)V
.end method

.method public abstract loadInteractiveAd()V
.end method

.method public abstract loadInteractiveAd(Ljava/lang/String;)V
.end method

.method public abstract loadInterstitialAd()V
.end method

.method public abstract loadInterstitialAd(Ljava/lang/String;)V
.end method

.method public abstract loadInterstitialImageAd()V
.end method

.method public abstract loadInterstitialImageAd(Ljava/lang/String;)V
.end method

.method public abstract loadRewardAd()V
.end method

.method public abstract loadRewardAd(Ljava/lang/String;)V
.end method

.method public abstract setAdConfig(Ljava/lang/String;)V
.end method

.method public abstract setDebugMode(Z)V
.end method

.method public abstract setInteractiveAdListener(Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInteractiveAdListener;)V
.end method

.method public abstract setInteractiveAdListener(Lmobi/oneway/export/AdListener/OWInteractiveAdListener;)V
.end method

.method public abstract setInterstitialAdListener(Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInterstitialAdListener;)V
.end method

.method public abstract setInterstitialAdListener(Lmobi/oneway/export/AdListener/OWInterstitialAdListener;)V
.end method

.method public abstract setInterstitialImageAdListener(Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;)V
.end method

.method public abstract setInterstitialImageAdListener(Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;)V
.end method

.method public abstract setRewardAdListener(Ljava/lang/String;Lmobi/oneway/export/AdListener/OWRewardedAdListener;)V
.end method

.method public abstract setRewardAdListener(Lmobi/oneway/export/AdListener/OWRewardedAdListener;)V
.end method

.method public abstract showInteractiveAd(Landroid/app/Activity;Ljava/lang/String;)V
.end method

.method public abstract showInteractiveAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;)V
.end method

.method public abstract showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showInterstitialImageAd(Landroid/app/Activity;Ljava/lang/String;)V
.end method

.method public abstract showInterstitialImageAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showRewardAd(Landroid/app/Activity;Ljava/lang/String;)V
.end method

.method public abstract showRewardAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showSplashAd(Landroid/app/Activity;Landroid/view/ViewGroup;Lmobi/oneway/export/AdListener/OWSplashAdListener;J)V
.end method

.method public abstract showSplashAd(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;Lmobi/oneway/export/AdListener/OWSplashAdListener;J)V
.end method
