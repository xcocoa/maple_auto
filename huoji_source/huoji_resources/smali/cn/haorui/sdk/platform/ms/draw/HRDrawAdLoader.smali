.class public Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;
.super Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAdapter;
.source ""


# instance fields
.field private hrCustomDrawAd:Lcn/haorui/sdk/platform/ms/draw/HrCustomDrawAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAdapter;-><init>(Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;->loadAdWithCallback(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;)Lcn/haorui/sdk/platform/ms/draw/HrCustomDrawAd;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;->hrCustomDrawAd:Lcn/haorui/sdk/platform/ms/draw/HrCustomDrawAd;

    return-object p0
.end method

.method public static synthetic access$102(Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;Lcn/haorui/sdk/platform/ms/draw/HrCustomDrawAd;)Lcn/haorui/sdk/platform/ms/draw/HrCustomDrawAd;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;->hrCustomDrawAd:Lcn/haorui/sdk/platform/ms/draw/HrCustomDrawAd;

    return-object p1
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAdapter;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAdapter;->onAdExposure(Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAd;)V

    return-void
.end method

.method public static synthetic access$400(Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAdapter;->onAdClick(Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAd;)V

    return-void
.end method

.method public static synthetic access$500(Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAdapter;->onRenderSuccess(Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAd;)V

    return-void
.end method

.method public static synthetic access$600(Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAdapter;->onRenderFail(ILjava/lang/String;)V

    return-void
.end method

.method private loadAdWithCallback(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcn/haorui/sdk/core/ad/draw/DrawAdLoader;

    invoke-virtual {p0}, Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2;

    invoke-direct {v2, p0}, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2;-><init>(Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;)V

    invoke-direct {v0, v1, p1, v2}, Lcn/haorui/sdk/core/ad/draw/DrawAdLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/ad/draw/DrawAdListener;)V

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->loadAd()V

    return-void
.end method


# virtual methods
.method public loadCustomAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcn/haorui/sdk/platform/ms/HRInitManager;->getInstance()Lcn/haorui/sdk/platform/ms/HRInitManager;

    move-result-object p3

    iget-object v0, p0, Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAdapter;->context:Landroid/content/Context;

    new-instance v1, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$1;

    invoke-direct {v1, p0, p2}, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$1;-><init>(Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;Ljava/lang/String;)V

    invoke-virtual {p3, v0, p1, v1}, Lcn/haorui/sdk/platform/ms/HRInitManager;->initSdk(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/platform/ms/HRInitManager$InitCallback;)V

    return-void
.end method
