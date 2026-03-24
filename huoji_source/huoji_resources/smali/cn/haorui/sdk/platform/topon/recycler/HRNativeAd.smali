.class public Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
.source ""


# instance fields
.field private adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    invoke-direct {p0}, Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd;->setAdData()V

    return-void
.end method

.method private setAdData()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setDescriptionText(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getImgUrls()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setImageUrlList(Ljava/util/List;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getActionText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setCallToActionText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->destroy()V

    :cond_0
    return-void
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getAdView()Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCustomAdContainer()Landroid/view/ViewGroup;
    .locals 1

    invoke-super {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCustomAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public isNativeExpress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Landroid/view/ViewGroup;

    new-instance v2, Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd$1;

    invoke-direct {v2, p0}, Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd$1;-><init>(Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V

    return-void
.end method
