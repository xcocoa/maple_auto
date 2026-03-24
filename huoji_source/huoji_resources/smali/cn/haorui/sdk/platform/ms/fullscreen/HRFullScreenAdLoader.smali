.class public Lcn/haorui/sdk/platform/ms/fullscreen/HRFullScreenAdLoader;
.super Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAdapter;
.source ""


# instance fields
.field private fullScreenAd:Lcn/haorui/sdk/platform/ms/fullscreen/HrCustomFullScreenAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAdapter;-><init>(Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/platform/ms/fullscreen/HRFullScreenAdLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/platform/ms/fullscreen/HRFullScreenAdLoader;->loadAdWithCallback(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/platform/ms/fullscreen/HRFullScreenAdLoader;)Lcn/haorui/sdk/platform/ms/fullscreen/HrCustomFullScreenAd;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/ms/fullscreen/HRFullScreenAdLoader;->fullScreenAd:Lcn/haorui/sdk/platform/ms/fullscreen/HrCustomFullScreenAd;

    return-object p0
.end method

.method public static synthetic access$102(Lcn/haorui/sdk/platform/ms/fullscreen/HRFullScreenAdLoader;Lcn/haorui/sdk/platform/ms/fullscreen/HrCustomFullScreenAd;)Lcn/haorui/sdk/platform/ms/fullscreen/HrCustomFullScreenAd;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/ms/fullscreen/HRFullScreenAdLoader;->fullScreenAd:Lcn/haorui/sdk/platform/ms/fullscreen/HrCustomFullScreenAd;

    return-object p1
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/platform/ms/fullscreen/HRFullScreenAdLoader;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAdapter;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/platform/ms/fullscreen/HRFullScreenAdLoader;Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAdapter;->onAdExposure(Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAd;)V

    return-void
.end method

.method public static synthetic access$400(Lcn/haorui/sdk/platform/ms/fullscreen/HRFullScreenAdLoader;Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAdapter;->onAdClosed(Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAd;)V

    return-void
.end method

.method public static synthetic access$500(Lcn/haorui/sdk/platform/ms/fullscreen/HRFullScreenAdLoader;Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAdapter;->onAdClick(Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAd;)V

    return-void
.end method

.method public static synthetic access$600(Lcn/haorui/sdk/platform/ms/fullscreen/HRFullScreenAdLoader;Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAdapter;->onRenderSuccess(Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAd;)V

    return-void
.end method

.method public static synthetic access$700(Lcn/haorui/sdk/platform/ms/fullscreen/HRFullScreenAdLoader;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAdapter;->onRenderFail(ILjava/lang/String;)V

    return-void
.end method

.method private loadAdWithCallback(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcn/haorui/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;

    invoke-virtual {p0}, Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcn/haorui/sdk/platform/ms/fullscreen/HRFullScreenAdLoader$2;

    invoke-direct {v2, p0}, Lcn/haorui/sdk/platform/ms/fullscreen/HRFullScreenAdLoader$2;-><init>(Lcn/haorui/sdk/platform/ms/fullscreen/HRFullScreenAdLoader;)V

    invoke-direct {v0, v1, p1, v2}, Lcn/haorui/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcn/haorui/sdk/core/ad/fullscreenvideo/FullScreenVideoAdListener;)V

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->loadAd()V

    return-void
.end method


# virtual methods
.method public loadCustomAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcn/haorui/sdk/platform/ms/HRInitManager;->getInstance()Lcn/haorui/sdk/platform/ms/HRInitManager;

    move-result-object p3

    iget-object v0, p0, Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAdapter;->context:Landroid/content/Context;

    new-instance v1, Lcn/haorui/sdk/platform/ms/fullscreen/HRFullScreenAdLoader$1;

    invoke-direct {v1, p0, p2}, Lcn/haorui/sdk/platform/ms/fullscreen/HRFullScreenAdLoader$1;-><init>(Lcn/haorui/sdk/platform/ms/fullscreen/HRFullScreenAdLoader;Ljava/lang/String;)V

    invoke-virtual {p3, v0, p1, v1}, Lcn/haorui/sdk/platform/ms/HRInitManager;->initSdk(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/platform/ms/HRInitManager$InitCallback;)V

    return-void
.end method
