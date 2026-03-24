.class public Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;
.super Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;
.source ""


# instance fields
.field private adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

.field private hrCustomExpressAd:Lcn/haorui/sdk/platform/ms/recycler/HrCustomExpressAd;

.field private hrCustomFeedAd:Lcn/haorui/sdk/platform/ms/recycler/HrCustomFeedAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;-><init>(Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->loadAdWithCallback(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;->onRenderFail(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1000(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerExpressAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;->onExpressAdClicked(Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerExpressAd;)V

    return-void
.end method

.method public static synthetic access$1100(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;->onRenderFail(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    return-object p0
.end method

.method public static synthetic access$202(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    return-object p1
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)Lcn/haorui/sdk/platform/ms/recycler/HrCustomExpressAd;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->hrCustomExpressAd:Lcn/haorui/sdk/platform/ms/recycler/HrCustomExpressAd;

    return-object p0
.end method

.method public static synthetic access$302(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;Lcn/haorui/sdk/platform/ms/recycler/HrCustomExpressAd;)Lcn/haorui/sdk/platform/ms/recycler/HrCustomExpressAd;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->hrCustomExpressAd:Lcn/haorui/sdk/platform/ms/recycler/HrCustomExpressAd;

    return-object p1
.end method

.method public static synthetic access$400(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerExpressAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;->onExpressAdExposure(Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerExpressAd;)V

    return-void
.end method

.method public static synthetic access$500(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)Lcn/haorui/sdk/platform/ms/recycler/HrCustomFeedAd;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->hrCustomFeedAd:Lcn/haorui/sdk/platform/ms/recycler/HrCustomFeedAd;

    return-object p0
.end method

.method public static synthetic access$502(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;Lcn/haorui/sdk/platform/ms/recycler/HrCustomFeedAd;)Lcn/haorui/sdk/platform/ms/recycler/HrCustomFeedAd;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->hrCustomFeedAd:Lcn/haorui/sdk/platform/ms/recycler/HrCustomFeedAd;

    return-object p1
.end method

.method public static synthetic access$600(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;->onNativeExpressAdLoad(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$700(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerExpressAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;->onExpressAdRenderSuccess(Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerExpressAd;)V

    return-void
.end method

.method public static synthetic access$800(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;->onFeedAdLoad(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$900(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;->onRenderFail(ILjava/lang/String;)V

    return-void
.end method

.method private loadAdWithCallback(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdLoader;

    invoke-virtual {p0}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;

    invoke-direct {v3, p0}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;-><init>(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)V

    invoke-direct {v0, v1, p1, v2, v3}, Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdListener;)V

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->loadAd()V

    return-void
.end method


# virtual methods
.method public bindExpressAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 2
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

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    if-eqz v0, :cond_0

    new-instance v1, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$3;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$3;-><init>(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V

    :cond_0
    return-void
.end method

.method public loadCustomAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcn/haorui/sdk/platform/ms/HRInitManager;->getInstance()Lcn/haorui/sdk/platform/ms/HRInitManager;

    move-result-object p3

    iget-object v0, p0, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;->context:Landroid/content/Context;

    new-instance v1, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$1;

    invoke-direct {v1, p0, p2}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$1;-><init>(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;Ljava/lang/String;)V

    invoke-virtual {p3, v0, p1, v1}, Lcn/haorui/sdk/platform/ms/HRInitManager;->initSdk(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/platform/ms/HRInitManager$InitCallback;)V

    return-void
.end method

.method public setExpressMediaListener(Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    if-eqz v0, :cond_0

    new-instance v1, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$4;

    invoke-direct {v1, p0, p1}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$4;-><init>(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;)V

    invoke-interface {v0, v1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->setExpressMediaListener(Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;)V

    :cond_0
    return-void
.end method
