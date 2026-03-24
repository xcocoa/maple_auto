.class public Lcn/haorui/sdk/platform/csjblend/HYCBCustomBannerAdapter;
.super Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/banner/MediationCustomBannerLoader;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "HYCBCustomBannerAdapter"


# instance fields
.field private iBannerAd:Lcn/haorui/sdk/core/ad/banner/IBannerAd;

.field private mBannerView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/banner/MediationCustomBannerLoader;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Lcn/haorui/sdk/platform/csjblend/HYCBCustomBannerAdapter;Lcn/haorui/sdk/core/ad/banner/IBannerAd;)Lcn/haorui/sdk/core/ad/banner/IBannerAd;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomBannerAdapter;->iBannerAd:Lcn/haorui/sdk/core/ad/banner/IBannerAd;

    return-object p1
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/platform/csjblend/HYCBCustomBannerAdapter;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomBannerAdapter;->mBannerView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/platform/csjblend/HYCBCustomBannerAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomBannerAdapter;->removeFromParent(Landroid/view/View;)V

    return-void
.end method

.method private removeFromParent(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomBannerAdapter;->mBannerView:Landroid/view/View;

    return-object v0
.end method

.method public isClientBidding()Z
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/banner/MediationCustomBannerLoader;->getBiddingType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public load(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5f00\u59cb\u52a0\u8f7dgromore\u81ea\u5b9a\u4e49\u5e73\u53f0banner\uff0cpid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;->getADNNetworkSlotId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HYCBCustomBannerAdapter"

    invoke-static {v0, p2}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    new-instance p2, Lcn/haorui/sdk/core/ad/banner/BannerAdLoader;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;->getADNNetworkSlotId()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lcn/haorui/sdk/platform/csjblend/HYCBCustomBannerAdapter$1;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomBannerAdapter$1;-><init>(Lcn/haorui/sdk/platform/csjblend/HYCBCustomBannerAdapter;)V

    invoke-direct {p2, v0, p3, v1}, Lcn/haorui/sdk/core/ad/banner/BannerAdLoader;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcn/haorui/sdk/core/ad/banner/BannerAdListener;)V

    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomBannerAdapter;->mBannerView:Landroid/view/View;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/loader/b;->loadAd()V

    :cond_0
    return-void
.end method
