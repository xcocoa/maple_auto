.class public interface abstract Lcn/haorui/sdk/adsail_ad/IAdListener;
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
.method public abstract onADError(Ljava/lang/String;Ljava/lang/Integer;)V
.end method

.method public abstract onADExposure()V
.end method

.method public abstract onADLoaded(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onAdRenderFail(Ljava/lang/String;I)V
.end method
