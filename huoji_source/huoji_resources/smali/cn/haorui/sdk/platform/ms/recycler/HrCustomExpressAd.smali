.class public Lcn/haorui/sdk/platform/ms/recycler/HrCustomExpressAd;
.super Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerExpressAd;
.source ""


# instance fields
.field private adWrapper:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

.field private expressAd:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerExpressAd;-><init>(Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;)V

    iput-object p1, p0, Lcn/haorui/sdk/platform/ms/recycler/HrCustomExpressAd;->adWrapper:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    iput-object p2, p0, Lcn/haorui/sdk/platform/ms/recycler/HrCustomExpressAd;->expressAd:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    return-void
.end method


# virtual methods
.method public bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HrCustomExpressAd;->adWrapper:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->bindExpressAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public getAdPatternType()I
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HrCustomExpressAd;->expressAd:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getAdPatternType()I

    move-result v0

    return v0
.end method

.method public getAdView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HrCustomExpressAd;->expressAd:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getAdView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HrCustomExpressAd;->expressAd:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getInteractionType()I

    move-result v0

    return v0
.end method

.method public isNativeExpress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setExpressMediaListener(Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HrCustomExpressAd;->adWrapper:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->setExpressMediaListener(Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;)V

    :cond_0
    return-void
.end method
