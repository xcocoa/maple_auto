.class public Lcn/haorui/sdk/platform/hr/recycler/HRInteractionListenerAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/adsail_ad/nativ/NativeAdInteractionListener;


# instance fields
.field private nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

.field private recylcerAdInteractionListener:Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
    .locals 0
    .param p1    # Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRInteractionListenerAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRInteractionListenerAdapter;->recylcerAdInteractionListener:Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    return-void
.end method


# virtual methods
.method public onADExposure()V
    .locals 0

    return-void
.end method

.method public onAdClicked()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRInteractionListenerAdapter;->recylcerAdInteractionListener:Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRInteractionListenerAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCbc()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRInteractionListenerAdapter;->recylcerAdInteractionListener:Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRInteractionListenerAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/ClickHandler;->handleClick(Lcn/haorui/sdk/platform/hr/IAdSailAd;)V

    return-void
.end method
