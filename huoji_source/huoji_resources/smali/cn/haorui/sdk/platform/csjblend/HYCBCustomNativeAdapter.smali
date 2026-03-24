.class public Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;
.super Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeLoader;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "HYCBCustomNativeAdapter"


# instance fields
.field private adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

.field private hygmExpressAd:Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;

.field private hygmNativeAd:Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeLoader;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    return-object p0
.end method

.method public static synthetic access$002(Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    return-object p1
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;)Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;->hygmExpressAd:Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;

    return-object p0
.end method

.method public static synthetic access$102(Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;)Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;->hygmExpressAd:Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;

    return-object p1
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;)Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;->hygmNativeAd:Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd;

    return-object p0
.end method

.method public static synthetic access$202(Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd;)Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;->hygmNativeAd:Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd;

    return-object p1
.end method


# virtual methods
.method public load(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5f00\u59cb\u52a0\u8f7dgromore\u81ea\u5b9a\u4e49\u5e73\u53f0\u4fe1\u606f\u6d41\uff0cpid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;->getADNNetworkSlotId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HYCBCustomNativeAdapter"

    invoke-static {v0, p2}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdLoader;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;->getADNNetworkSlotId()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter$1;

    invoke-direct {v1, p0, p1}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter$1;-><init>(Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;Landroid/content/Context;)V

    invoke-direct {p2, p1, p3, v0, v1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdListener;)V

    invoke-virtual {p2}, Lcn/haorui/sdk/core/loader/b;->loadAd()V

    return-void
.end method
