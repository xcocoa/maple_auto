.class public Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;
.super Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "HRSplashAdLoader"


# instance fields
.field private hrCustomSplashAd:Lcn/haorui/sdk/platform/ms/splash/HrCustomSplashAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;-><init>(Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;->loadAdWithCallback(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;)Lcn/haorui/sdk/platform/ms/splash/HrCustomSplashAd;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;->hrCustomSplashAd:Lcn/haorui/sdk/platform/ms/splash/HrCustomSplashAd;

    return-object p0
.end method

.method public static synthetic access$102(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;Lcn/haorui/sdk/platform/ms/splash/HrCustomSplashAd;)Lcn/haorui/sdk/platform/ms/splash/HrCustomSplashAd;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;->hrCustomSplashAd:Lcn/haorui/sdk/platform/ms/splash/HrCustomSplashAd;

    return-object p1
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;->onAdSkip(Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    return-void
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;->onAdTimeOver(Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    return-void
.end method

.method public static synthetic access$400(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;->onAdExposure(Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    return-void
.end method

.method public static synthetic access$600(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;->onAdClick(Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    return-void
.end method

.method public static synthetic access$700(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;Landroid/view/View;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;->onRenderSuccess(Landroid/view/View;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    return-void
.end method

.method public static synthetic access$800(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;->onRenderFail(ILjava/lang/String;)V

    return-void
.end method

.method private loadAdWithCallback(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;

    invoke-virtual {p0}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;

    invoke-direct {v2, p0}, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;-><init>(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;)V

    const/16 v3, 0x1388

    invoke-direct {v0, v1, p1, v2, v3}, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/ad/splash/SplashAdListener;I)V

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;->loadAdOnly()V

    return-void
.end method


# virtual methods
.method public loadCustomAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcn/haorui/sdk/platform/ms/HRInitManager;->getInstance()Lcn/haorui/sdk/platform/ms/HRInitManager;

    move-result-object p3

    iget-object v0, p0, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;->context:Landroid/content/Context;

    new-instance v1, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$1;

    invoke-direct {v1, p0, p2}, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$1;-><init>(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;Ljava/lang/String;)V

    invoke-virtual {p3, v0, p1, v1}, Lcn/haorui/sdk/platform/ms/HRInitManager;->initSdk(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/platform/ms/HRInitManager$InitCallback;)V

    return-void
.end method
