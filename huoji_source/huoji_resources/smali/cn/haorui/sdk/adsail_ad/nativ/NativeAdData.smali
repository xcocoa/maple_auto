.class public interface abstract Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/platform/hr/IAdSailAd;


# virtual methods
.method public abstract bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdInteractionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcn/haorui/sdk/adsail_ad/nativ/NativeAdInteractionListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract bindMediaView(Landroid/view/ViewGroup;Landroid/widget/FrameLayout$LayoutParams;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;)V
.end method

.method public abstract getAdPatternType()I
.end method

.method public abstract getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;
.end method

.method public abstract getDesc()Ljava/lang/String;
.end method

.method public abstract getIconUrl()Ljava/lang/String;
.end method

.method public abstract getImgUrls()[Ljava/lang/String;
.end method

.method public abstract getInteractionType()I
.end method

.method public abstract getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method
