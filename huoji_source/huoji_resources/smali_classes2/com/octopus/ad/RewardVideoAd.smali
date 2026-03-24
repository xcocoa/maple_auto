.class public final Lcom/octopus/ad/RewardVideoAd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/IBidding;
.implements Lcom/octopus/ad/IRewardVideoAd;


# instance fields
.field private final a:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/RewardVideoAdListener;)V
    .locals 3
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/octopus/ad/RewardVideoAd;->a:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v0, p2}, Lcom/octopus/ad/internal/view/AdViewImpl;->setAdSlotId(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/octopus/ad/internal/view/AdViewImpl;->setRewardVideoAdListener(Lcom/octopus/ad/RewardVideoAdListener;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/RewardVideoAd;->a:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->destroy()V

    return-void
.end method

.method public getPrice()I
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/RewardVideoAd;->a:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getPrice()I

    move-result v0

    return v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/RewardVideoAd;->a:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getTagId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/RewardVideoAd;->a:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public loadAd()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    new-instance v0, Lcom/octopus/ad/AdRequest$Builder;

    invoke-direct {v0}, Lcom/octopus/ad/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/octopus/ad/AdRequest$Builder;->build()Lcom/octopus/ad/AdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/octopus/ad/RewardVideoAd;->a:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/AdRequest;->impl()Lcom/octopus/ad/internal/network/a$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->loadAd(Lcom/octopus/ad/internal/network/a$a;)Z

    return-void
.end method

.method public openAdInNativeBrowser(Z)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/RewardVideoAd;->a:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->openAdInNativeBrowser(Z)V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/RewardVideoAd;->a:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->activityOnPause()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/RewardVideoAd;->a:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->activityOnResume()V

    return-void
.end method

.method public sendLossNotice(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/RewardVideoAd;->a:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/octopus/ad/internal/view/AdViewImpl;->sendLossNotice(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendWinNotice(I)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/RewardVideoAd;->a:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->sendWinNotice(I)V

    return-void
.end method

.method public setAdSlotId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/RewardVideoAd;->a:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->setAdSlotId(Ljava/lang/String;)V

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/RewardVideoAd;->a:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->setChannel(Ljava/lang/String;)V

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/RewardVideoAd;->a:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->setRequestId(Ljava/lang/String;)V

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/RewardVideoAd;->a:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->setTag(Ljava/lang/String;)V

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0}, Lcom/octopus/ad/RewardVideoAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/RewardVideoAd;->a:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->show(Landroid/app/Activity;)I

    :cond_0
    return-void
.end method
