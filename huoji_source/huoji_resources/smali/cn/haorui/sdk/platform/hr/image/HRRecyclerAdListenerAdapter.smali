.class public Lcn/haorui/sdk/platform/hr/image/HRRecyclerAdListenerAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;


# instance fields
.field private internalAdListener:Lcn/haorui/sdk/core/ad/image/ImageAdListener;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/ad/image/ImageAdListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/image/HRRecyclerAdListenerAdapter;->internalAdListener:Lcn/haorui/sdk/core/ad/image/ImageAdListener;

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 0

    return-void
.end method

.method public onAdError()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/image/HRRecyclerAdListenerAdapter;->internalAdListener:Lcn/haorui/sdk/core/ad/image/ImageAdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdError()V

    :cond_0
    return-void
.end method

.method public onAdExposure()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/image/HRRecyclerAdListenerAdapter;->internalAdListener:Lcn/haorui/sdk/core/ad/image/ImageAdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/hr/image/HRRecyclerAdListenerAdapter;->onAdLoaded(Ljava/util/List;)V

    return-void
.end method

.method public onAdLoaded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    new-instance v2, Lcn/haorui/sdk/platform/hr/image/HRImageAdDataAdapter;

    invoke-direct {v2, v1}, Lcn/haorui/sdk/platform/hr/image/HRImageAdDataAdapter;-><init>(Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/image/HRRecyclerAdListenerAdapter;->internalAdListener:Lcn/haorui/sdk/core/ad/image/ImageAdListener;

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdReady(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/hr/image/HRRecyclerAdListenerAdapter;->onAdReady(Ljava/util/List;)V

    return-void
.end method

.method public onAdReady(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method
