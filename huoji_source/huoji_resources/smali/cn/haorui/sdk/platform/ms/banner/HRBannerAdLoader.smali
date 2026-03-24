.class public Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;
.super Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "HRBannerAdLoader"


# instance fields
.field private hrCustomBannerAd:Lcn/haorui/sdk/platform/ms/banner/HrCustomBannerAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;-><init>(Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;->loadAdWithCallback(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;)Lcn/haorui/sdk/platform/ms/banner/HrCustomBannerAd;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;->hrCustomBannerAd:Lcn/haorui/sdk/platform/ms/banner/HrCustomBannerAd;

    return-object p0
.end method

.method public static synthetic access$102(Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;Lcn/haorui/sdk/platform/ms/banner/HrCustomBannerAd;)Lcn/haorui/sdk/platform/ms/banner/HrCustomBannerAd;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;->hrCustomBannerAd:Lcn/haorui/sdk/platform/ms/banner/HrCustomBannerAd;

    return-object p1
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;->onAdExposure(Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAd;)V

    return-void
.end method

.method public static synthetic access$400(Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;->onAdClick(Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAd;)V

    return-void
.end method

.method public static synthetic access$500(Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;Landroid/view/View;Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAd;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;->onRenderSuccess(Landroid/view/View;Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAd;)V

    return-void
.end method

.method public static synthetic access$600(Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;->onRenderFail(ILjava/lang/String;)V

    return-void
.end method

.method private loadAdWithCallback(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcn/haorui/sdk/core/ad/banner/BannerAdLoader;

    invoke-virtual {p0}, Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$2;

    invoke-direct {v2, p0}, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$2;-><init>(Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;)V

    invoke-direct {v0, v1, p1, v2}, Lcn/haorui/sdk/core/ad/banner/BannerAdLoader;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcn/haorui/sdk/core/ad/banner/BannerAdListener;)V

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->loadAd()V

    return-void
.end method


# virtual methods
.method public destory()V
    .locals 0

    return-void
.end method

.method public loadCustomAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcn/haorui/sdk/platform/ms/HRInitManager;->getInstance()Lcn/haorui/sdk/platform/ms/HRInitManager;

    move-result-object p3

    iget-object v0, p0, Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;->context:Landroid/content/Context;

    new-instance v1, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$1;

    invoke-direct {v1, p0, p2}, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$1;-><init>(Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;Ljava/lang/String;)V

    invoke-virtual {p3, v0, p1, v1}, Lcn/haorui/sdk/platform/ms/HRInitManager;->initSdk(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/platform/ms/HRInitManager$InitCallback;)V

    return-void
.end method
