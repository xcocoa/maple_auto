.class public Lcn/haorui/sdk/platform/hr/image/HRImageAdDataAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/image/ImageAdData;


# instance fields
.field private internalAdData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/image/HRImageAdDataAdapter;->internalAdData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    return-void
.end method


# virtual methods
.method public bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcn/haorui/sdk/core/ad/image/ImageAdInteractionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcn/haorui/sdk/core/ad/image/ImageAdInteractionListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/image/HRImageAdDataAdapter;->internalAdData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    if-eqz v0, :cond_0

    new-instance v1, Lcn/haorui/sdk/platform/hr/image/NativeRecylcerAdInteractionListenerAdapter;

    invoke-direct {v1, p4}, Lcn/haorui/sdk/platform/hr/image/NativeRecylcerAdInteractionListenerAdapter;-><init>(Lcn/haorui/sdk/core/ad/image/ImageAdInteractionListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/image/HRImageAdDataAdapter;->internalAdData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->destroy()V

    :cond_0
    return-void
.end method

.method public getAdPatternType()I
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/image/HRImageAdDataAdapter;->internalAdData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getAdPatternType()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, -0x270f

    :goto_0
    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/image/HRImageAdDataAdapter;->internalAdData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getDesc()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/image/HRImageAdDataAdapter;->internalAdData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getImgList()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/image/HRImageAdDataAdapter;->internalAdData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getImgUrls()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/image/HRImageAdDataAdapter;->internalAdData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getInteractionType()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/image/HRImageAdDataAdapter;->internalAdData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
