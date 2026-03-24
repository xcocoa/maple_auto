.class public abstract Lcn/haorui/sdk/core/ad/banner/BannerAd;
.super Lcn/haorui/sdk/core/ad/BaseAd;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/banner/IBannerAd;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/loader/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/core/ad/BaseAd;-><init>(Lcn/haorui/sdk/core/loader/d;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setCloseButtonVisible(Z)V
    .locals 0

    return-void
.end method

.method public setWidthAndHeight(II)V
    .locals 0

    return-void
.end method

.method public showAd(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 1

    iget-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method
