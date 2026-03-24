.class public interface abstract Lcn/haorui/sdk/core/ad/splash/SplashAdListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/loader/IAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/haorui/sdk/core/loader/IAdLoadListener<",
        "Lcn/haorui/sdk/core/ad/splash/ISplashAd;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onAdPresent(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V
.end method

.method public abstract onAdSkip(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V
.end method

.method public abstract onAdTick(J)V
.end method

.method public abstract onAdTimeOver(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V
.end method
