.class public Lcn/haorui/sdk/platform/gromore/HYGMExpressAd;
.super Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;
.source ""


# instance fields
.field private adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/platform/gromore/HYGMExpressAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    return-void
.end method


# virtual methods
.method public getExpressView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMExpressAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->isNativeExpress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMExpressAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getAdView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;->getExpressView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public render()V
    .locals 5

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMExpressAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/gromore/HYGMExpressAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcn/haorui/sdk/platform/gromore/HYGMExpressAd$1;

    invoke-direct {v3, p0}, Lcn/haorui/sdk/platform/gromore/HYGMExpressAd$1;-><init>(Lcn/haorui/sdk/platform/gromore/HYGMExpressAd;)V

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v4, v3}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V

    :cond_0
    return-void
.end method
