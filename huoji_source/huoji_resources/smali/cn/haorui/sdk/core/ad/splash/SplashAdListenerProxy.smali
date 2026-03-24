.class public Lcn/haorui/sdk/core/ad/splash/SplashAdListenerProxy;
.super Lcn/haorui/sdk/core/loader/a;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/splash/SplashAdListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/haorui/sdk/core/loader/a<",
        "Lcn/haorui/sdk/core/ad/splash/ISplashAd;",
        "Lcn/haorui/sdk/core/ad/splash/SplashAdListener;",
        ">;",
        "Lcn/haorui/sdk/core/ad/splash/SplashAdListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/loader/d;Lcn/haorui/sdk/core/ad/splash/SplashAdListener;)V
    .locals 0
    .param p1    # Lcn/haorui/sdk/core/loader/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcn/haorui/sdk/core/ad/splash/SplashAdListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/core/loader/a;-><init>(Lcn/haorui/sdk/core/loader/d;Lcn/haorui/sdk/core/loader/IAdLoadListener;)V

    return-void
.end method


# virtual methods
.method public onAdPresent(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->listener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    if-eqz v0, :cond_0

    check-cast v0, Lcn/haorui/sdk/core/ad/splash/SplashAdListener;

    invoke-interface {v0, p1}, Lcn/haorui/sdk/core/ad/splash/SplashAdListener;->onAdPresent(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V

    :cond_0
    return-void
.end method

.method public onAdSkip(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->listener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    if-eqz v0, :cond_0

    check-cast v0, Lcn/haorui/sdk/core/ad/splash/SplashAdListener;

    invoke-interface {v0, p1}, Lcn/haorui/sdk/core/ad/splash/SplashAdListener;->onAdSkip(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V

    :cond_0
    return-void
.end method

.method public onAdTick(J)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->listener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    if-eqz v0, :cond_0

    check-cast v0, Lcn/haorui/sdk/core/ad/splash/SplashAdListener;

    invoke-interface {v0, p1, p2}, Lcn/haorui/sdk/core/ad/splash/SplashAdListener;->onAdTick(J)V

    :cond_0
    return-void
.end method

.method public onAdTimeOver(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->listener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    if-eqz v0, :cond_0

    check-cast v0, Lcn/haorui/sdk/core/ad/splash/SplashAdListener;

    invoke-interface {v0, p1}, Lcn/haorui/sdk/core/ad/splash/SplashAdListener;->onAdTimeOver(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V

    :cond_0
    return-void
.end method
