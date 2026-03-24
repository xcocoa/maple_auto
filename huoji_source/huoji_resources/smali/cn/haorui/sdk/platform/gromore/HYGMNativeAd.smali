.class public Lcn/haorui/sdk/platform/gromore/HYGMNativeAd;
.super Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "HYGMNativeAd"


# instance fields
.field private adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;)V
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/platform/gromore/HYGMNativeAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;->setTitle(Ljava/lang/String;)V

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;->setDescription(Ljava/lang/String;)V

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getActionText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;->setActionText(Ljava/lang/String;)V

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;->setIconUrl(Ljava/lang/String;)V

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getAdPatternType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;->setAdImageMode(I)V

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getInteractionType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;->setInteractionType(I)V

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;->setSource(Ljava/lang/String;)V

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getImgUrls()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imgUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HYGMNativeAd"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getAdPatternType()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getAdPatternType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getAdPatternType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getAdPatternType()I

    move-result p1

    const/16 v1, 0xd

    if-ne p1, v1, :cond_2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;->setImageList(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;->setImageUrl(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getAdImageMode()I
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMNativeAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v2, 0xb

    if-eq v0, v2, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x4

    return v0

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x5

    return v0
.end method

.method public getInteractionType()I
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMNativeAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getInteractionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;",
            ")V"
        }
    .end annotation

    iget-object p3, p0, Lcn/haorui/sdk/platform/gromore/HYGMNativeAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;->getActivity()Landroid/app/Activity;

    move-result-object p4

    new-instance v0, Lcn/haorui/sdk/platform/gromore/HYGMNativeAd$1;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/platform/gromore/HYGMNativeAd$1;-><init>(Lcn/haorui/sdk/platform/gromore/HYGMNativeAd;)V

    invoke-interface {p3, p4, p1, p2, v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V

    :cond_0
    return-void
.end method
