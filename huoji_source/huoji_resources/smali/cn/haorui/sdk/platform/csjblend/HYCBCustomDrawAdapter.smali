.class public Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter;
.super Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/draw/MediationCustomDrawLoader;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "HYCBCustomDrawAdapter"


# instance fields
.field private hygmDrawAd:Lcn/haorui/sdk/platform/csjblend/HYCBDrawAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/draw/MediationCustomDrawLoader;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter;)Lcn/haorui/sdk/platform/csjblend/HYCBDrawAd;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter;->hygmDrawAd:Lcn/haorui/sdk/platform/csjblend/HYCBDrawAd;

    return-object p0
.end method

.method public static synthetic access$002(Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter;Lcn/haorui/sdk/platform/csjblend/HYCBDrawAd;)Lcn/haorui/sdk/platform/csjblend/HYCBDrawAd;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter;->hygmDrawAd:Lcn/haorui/sdk/platform/csjblend/HYCBDrawAd;

    return-object p1
.end method


# virtual methods
.method public load(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5f00\u59cb\u52a0\u8f7dgromore\u81ea\u5b9a\u4e49\u5e73\u53f0draw\uff0cpid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;->getADNNetworkSlotId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HYCBCustomDrawAdapter"

    invoke-static {v0, p2}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcn/haorui/sdk/core/ad/draw/DrawAdLoader;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;->getADNNetworkSlotId()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter$1;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter$1;-><init>(Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter;)V

    invoke-direct {p2, p1, p3, v0}, Lcn/haorui/sdk/core/ad/draw/DrawAdLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/ad/draw/DrawAdListener;)V

    invoke-virtual {p2}, Lcn/haorui/sdk/core/loader/b;->loadAd()V

    return-void
.end method
