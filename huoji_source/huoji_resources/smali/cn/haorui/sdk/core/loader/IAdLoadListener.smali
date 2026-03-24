.class public interface abstract Lcn/haorui/sdk/core/loader/IAdLoadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onAdClosed()V
.end method

.method public abstract onAdError()V
.end method

.method public abstract onAdExposure()V
.end method

.method public abstract onAdLoaded(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V
.end method

.method public abstract onAdReady(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onAdRenderFail(Ljava/lang/String;I)V
.end method
