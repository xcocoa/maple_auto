.class public interface abstract Lcn/haorui/sdk/core/ad/splash/ISplashAd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/IAd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcn/haorui/sdk/core/loader/InteractionListener;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/haorui/sdk/core/ad/IAd<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract setDownloadDialogListener(Lcn/haorui/sdk/core/ad/splash/ISplashDownloadDialogListener;)V
.end method

.method public abstract setSplashFinishingTouchListener(Lcn/haorui/sdk/core/ad/splash/ISplashFinishingTouchListener;)V
.end method

.method public abstract showAd(Landroid/view/ViewGroup;)V
.end method

.method public abstract splashAnimationFinish()V
.end method
