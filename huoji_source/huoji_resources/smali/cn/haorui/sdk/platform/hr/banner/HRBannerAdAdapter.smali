.class public Lcn/haorui/sdk/platform/hr/banner/HRBannerAdAdapter;
.super Lcn/haorui/sdk/core/ad/BaseAd;
.source ""


# instance fields
.field private nativeBannerAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/IAdSailAd;)V
    .locals 2
    .param p1    # Lcn/haorui/sdk/platform/hr/IAdSailAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const-string v1, "AD_HR"

    invoke-direct {p0, v0, v1}, Lcn/haorui/sdk/core/ad/BaseAd;-><init>(Lcn/haorui/sdk/core/loader/d;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/banner/HRBannerAdAdapter;->nativeBannerAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    return-void
.end method


# virtual methods
.method public setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/haorui/sdk/core/ad/BaseAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/banner/HRBannerAdAdapter;->nativeBannerAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    invoke-interface {v0, p1}, Lcn/haorui/sdk/core/ad/IAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

    return-void
.end method
