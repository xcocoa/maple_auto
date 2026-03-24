.class public Lcn/haorui/sdk/platform/csjblend/HYCBInitConfig;
.super Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/MediationCustomInitLoader;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/MediationCustomInitLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getNetworkSdkVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initializeADN(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomInitConfig;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomInitConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance p3, Lcn/haorui/sdk/core/HRConfig$Builder;

    invoke-direct {p3}, Lcn/haorui/sdk/core/HRConfig$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomInitConfig;->getAppId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcn/haorui/sdk/core/HRConfig$Builder;->appId(Ljava/lang/String;)Lcn/haorui/sdk/core/HRConfig$Builder;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcn/haorui/sdk/core/HRConfig$Builder;->enableDebug(Z)Lcn/haorui/sdk/core/HRConfig$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcn/haorui/sdk/core/HRConfig$Builder;->downloadConfirm(I)Lcn/haorui/sdk/core/HRConfig$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcn/haorui/sdk/core/HRConfig$Builder;->build()Lcn/haorui/sdk/core/HRConfig;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/haorui/sdk/core/AdSdk;->init(Landroid/content/Context;Lcn/haorui/sdk/core/HRConfig;)V

    return-void
.end method
