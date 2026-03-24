.class public interface abstract Lcn/haorui/sdk/core/ad/media/NativeMediaAdListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/loader/IAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/haorui/sdk/core/loader/IAdLoadListener<",
        "Ljava/util/List<",
        "Lcn/haorui/sdk/core/ad/media/NativeMediaAdData;",
        ">;>;"
    }
.end annotation


# virtual methods
.method public abstract onAdClicked(Lcn/haorui/sdk/core/ad/media/NativeMediaAdData;)V
.end method

.method public abstract onVideoLoaded(Lcn/haorui/sdk/core/ad/media/NativeMediaAdData;)V
.end method
