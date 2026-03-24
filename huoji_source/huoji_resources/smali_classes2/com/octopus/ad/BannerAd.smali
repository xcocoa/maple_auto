.class public final Lcom/octopus/ad/BannerAd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/AdLifeControl;
.implements Lcom/octopus/ad/IBidding;


# instance fields
.field private final a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/BannerAdListener;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-direct {v0, p1}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/octopus/ad/BannerAd;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-virtual {v0, p3}, Lcom/octopus/ad/internal/view/AdViewImpl;->setBannerAdListener(Lcom/octopus/ad/BannerAdListener;)V

    invoke-virtual {v0, p2}, Lcom/octopus/ad/internal/view/AdViewImpl;->setAdSlotId(Ljava/lang/String;)V

    sget-object p1, Lcom/octopus/ad/internal/animation/TransitionType;->MOVEIN:Lcom/octopus/ad/internal/animation/TransitionType;

    invoke-virtual {p0, p1}, Lcom/octopus/ad/BannerAd;->setTransitionType(Lcom/octopus/ad/internal/animation/TransitionType;)V

    sget-object p1, Lcom/octopus/ad/internal/animation/TransitionDirection;->LEFT:Lcom/octopus/ad/internal/animation/TransitionDirection;

    invoke-virtual {p0, p1}, Lcom/octopus/ad/BannerAd;->setTransitionDirection(Lcom/octopus/ad/internal/animation/TransitionDirection;)V

    const/16 p1, 0x258

    invoke-virtual {p0, p1}, Lcom/octopus/ad/BannerAd;->setTransitionDuration(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/octopus/ad/BannerAd;->setAutoRefresh(Z)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/BannerAd;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->cancel()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/octopus/ad/BannerAd;->onDestroyLifeCycle()V

    invoke-virtual {p0}, Lcom/octopus/ad/BannerAd;->cancel()V

    return-void
.end method

.method public getAdSlotId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/BannerAd;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdSlotId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrice()I
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/BannerAd;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getPrice()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/BannerAd;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getTagId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/BannerAd;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/BannerAd;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->isLoading()Z

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

    iget-object v1, p0, Lcom/octopus/ad/BannerAd;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/AdRequest;->impl()Lcom/octopus/ad/internal/network/a$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->loadAd(Lcom/octopus/ad/internal/network/a$a;)Z

    return-void
.end method

.method public onCreateLifeCycle()V
    .locals 0

    return-void
.end method

.method public onDestroyLifeCycle()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/BannerAd;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->onDestroyLifeCycle()V

    :cond_0
    return-void
.end method

.method public onPauseLifeCycle()V
    .locals 0

    return-void
.end method

.method public onRestartLifeCycle()V
    .locals 0

    return-void
.end method

.method public onResumeLifeCycle()V
    .locals 0

    return-void
.end method

.method public onStartLifeCycle()V
    .locals 0

    return-void
.end method

.method public onStopLifeCycle()V
    .locals 0

    return-void
.end method

.method public openAdInNativeBrowser(Z)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/BannerAd;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->openAdInNativeBrowser(Z)V

    return-void
.end method

.method public sendLossNotice(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/BannerAd;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/octopus/ad/internal/view/AdViewImpl;->sendLossNotice(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendWinNotice(I)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/BannerAd;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->sendWinNotice(I)V

    return-void
.end method

.method public setAdSlotId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/BannerAd;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->setAdSlotId(Ljava/lang/String;)V

    return-void
.end method

.method public setAutoRefresh(Z)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/BannerAd;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->setAutoRefresh(Z)V

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/BannerAd;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->setChannel(Ljava/lang/String;)V

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/BannerAd;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->setRequestId(Ljava/lang/String;)V

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/BannerAd;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->setTag(Ljava/lang/String;)V

    return-void
.end method

.method public setTransitionDirection(Lcom/octopus/ad/internal/animation/TransitionDirection;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/BannerAd;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->setTransitionDirection(Lcom/octopus/ad/internal/animation/TransitionDirection;)V

    return-void
.end method

.method public setTransitionDuration(I)V
    .locals 3

    iget-object v0, p0, Lcom/octopus/ad/BannerAd;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->setTransitionDuration(J)V

    return-void
.end method

.method public setTransitionType(Lcom/octopus/ad/internal/animation/TransitionType;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/BannerAd;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->setTransitionType(Lcom/octopus/ad/internal/animation/TransitionType;)V

    return-void
.end method
