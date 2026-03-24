.class public Lcn/haorui/sdk/platform/hr/BaseHrAd;
.super Lcn/haorui/sdk/core/ad/BaseAd;
.source ""

# interfaces
.implements Lcn/haorui/sdk/platform/hr/IAdSailAd;


# instance fields
.field public adSlot:Lcn/haorui/sdk/core/ad/AdSlot;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "AD_HR"

    invoke-direct {p0, v0, v1}, Lcn/haorui/sdk/core/ad/BaseAd;-><init>(Lcn/haorui/sdk/core/loader/d;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/BaseHrAd;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-void
.end method


# virtual methods
.method public getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/BaseHrAd;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-object v0
.end method

.method public getAdType()Lcn/haorui/sdk/core/ad/AdType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/BaseHrAd;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getInteractionType()I

    move-result v0

    return v0
.end method
