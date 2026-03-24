.class public Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;
.super Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAdapter;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "HYGMCustomNativeAdapter"


# instance fields
.field private adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

.field private hygmExpressAd:Lcn/haorui/sdk/platform/gromore/HYGMExpressAd;

.field private hygmNativeAd:Lcn/haorui/sdk/platform/gromore/HYGMNativeAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAdapter;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;)Lcn/haorui/sdk/platform/gromore/HYGMExpressAd;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;->hygmExpressAd:Lcn/haorui/sdk/platform/gromore/HYGMExpressAd;

    return-object p0
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;)Lcn/haorui/sdk/platform/gromore/HYGMNativeAd;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;->hygmNativeAd:Lcn/haorui/sdk/platform/gromore/HYGMNativeAd;

    return-object p0
.end method

.method public static synthetic access$102(Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;Lcn/haorui/sdk/platform/gromore/HYGMNativeAd;)Lcn/haorui/sdk/platform/gromore/HYGMNativeAd;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;->hygmNativeAd:Lcn/haorui/sdk/platform/gromore/HYGMNativeAd;

    return-object p1
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    return-object p0
.end method

.method public static synthetic access$202(Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;->adData:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    return-object p1
.end method


# virtual methods
.method public load(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5f00\u59cb\u52a0\u8f7dgromore\u81ea\u5b9a\u4e49\u5e73\u53f0\u4fe1\u606f\u6d41\uff0cpid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;->getADNNetworkSlotId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HYGMCustomNativeAdapter"

    invoke-static {v0, p2}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdLoader;

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;->getADNNetworkSlotId()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter$1;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter$1;-><init>(Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;)V

    invoke-direct {p2, p1, p3, v0, v1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdListener;)V

    invoke-virtual {p2}, Lcn/haorui/sdk/core/loader/b;->loadAd()V

    return-void
.end method
