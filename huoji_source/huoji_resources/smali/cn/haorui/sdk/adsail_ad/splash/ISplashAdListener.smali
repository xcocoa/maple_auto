.class public interface abstract Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/adsail_ad/IAdListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/haorui/sdk/adsail_ad/IAdListener<",
        "Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract isHasExposed()Z
.end method

.method public abstract onADClosed()V
.end method

.method public abstract onADSkip()V
.end method

.method public abstract onADTick(J)V
.end method

.method public abstract onADTimeOver()V
.end method

.method public abstract onAdClicked()V
.end method

.method public abstract onAdReady(Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;)V
.end method
