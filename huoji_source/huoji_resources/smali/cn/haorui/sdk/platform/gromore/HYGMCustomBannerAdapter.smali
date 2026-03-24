.class public Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;
.super Lcom/bytedance/msdk/api/v2/ad/custom/banner/GMCustomBannerAdapter;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "HYGMCustomBannerAdapter"


# instance fields
.field private iBannerAd:Lcn/haorui/sdk/core/ad/banner/IBannerAd;

.field private mBannerView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/banner/GMCustomBannerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;Lcn/haorui/sdk/core/ad/banner/IBannerAd;)Lcn/haorui/sdk/core/ad/banner/IBannerAd;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;->iBannerAd:Lcn/haorui/sdk/core/ad/banner/IBannerAd;

    return-object p1
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;->mBannerView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;->removeFromParent(Landroid/view/View;)V

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
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;->isReadyStatus()Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",adView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;->iBannerAd:Lcn/haorui/sdk/core/ad/banner/IBannerAd;

    invoke-interface {v1}, Lcn/haorui/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HYGMCustomBannerAdapter"

    invoke-static {v1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;->mBannerView:Landroid/view/View;

    return-object v0
.end method

.method public isReadyStatus()Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;->iBannerAd:Lcn/haorui/sdk/core/ad/banner/IBannerAd;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->AD_IS_READY:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/banner/GMCustomBannerAdapter;->isReadyStatus()Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    move-result-object v0

    return-object v0
.end method

.method public load(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5f00\u59cb\u52a0\u8f7dgromore\u81ea\u5b9a\u4e49\u5e73\u53f0banner\uff0cpid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;->getADNNetworkSlotId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HYGMCustomBannerAdapter"

    invoke-static {v0, p2}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    new-instance p2, Lcn/haorui/sdk/core/ad/banner/BannerAdLoader;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;->getADNNetworkSlotId()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter$1;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter$1;-><init>(Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;)V

    invoke-direct {p2, v0, p3, v1}, Lcn/haorui/sdk/core/ad/banner/BannerAdLoader;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcn/haorui/sdk/core/ad/banner/BannerAdListener;)V

    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomBannerAdapter;->mBannerView:Landroid/view/View;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/loader/b;->loadAd()V

    :cond_0
    return-void
.end method
