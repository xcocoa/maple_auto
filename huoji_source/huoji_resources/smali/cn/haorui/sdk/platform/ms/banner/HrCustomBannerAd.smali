.class public Lcn/haorui/sdk/platform/ms/banner/HrCustomBannerAd;
.super Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAd;
.source ""


# instance fields
.field private iBannerAd:Lcn/haorui/sdk/core/ad/banner/IBannerAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;Lcn/haorui/sdk/core/ad/banner/IBannerAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAd;-><init>(Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;)V

    iput-object p2, p0, Lcn/haorui/sdk/platform/ms/banner/HrCustomBannerAd;->iBannerAd:Lcn/haorui/sdk/core/ad/banner/IBannerAd;

    return-void
.end method


# virtual methods
.method public showAd(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/banner/HrCustomBannerAd;->iBannerAd:Lcn/haorui/sdk/core/ad/banner/IBannerAd;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcn/haorui/sdk/core/ad/banner/IBannerAd;->showAd(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/banner/HrCustomBannerAd;->iBannerAd:Lcn/haorui/sdk/core/ad/banner/IBannerAd;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/haorui/sdk/core/ad/banner/IBannerAd;->showAd(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
