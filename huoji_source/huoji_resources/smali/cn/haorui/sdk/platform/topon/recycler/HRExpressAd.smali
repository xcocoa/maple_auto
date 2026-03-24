.class public Lcn/haorui/sdk/platform/topon/recycler/HRExpressAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "HRExpressAd"


# instance fields
.field private adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/platform/topon/recycler/HRExpressAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/recycler/HRExpressAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->destroy()V

    :cond_0
    return-void
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    iget-object p1, p0, Lcn/haorui/sdk/platform/topon/recycler/HRExpressAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getAdView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isNativeExpress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/recycler/HRExpressAd;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Landroid/view/ViewGroup;

    new-instance v2, Lcn/haorui/sdk/platform/topon/recycler/HRExpressAd$1;

    invoke-direct {v2, p0}, Lcn/haorui/sdk/platform/topon/recycler/HRExpressAd$1;-><init>(Lcn/haorui/sdk/platform/topon/recycler/HRExpressAd;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V

    return-void
.end method
