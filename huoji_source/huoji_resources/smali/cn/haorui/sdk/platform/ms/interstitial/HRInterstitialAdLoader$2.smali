.class public Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;->loadAdWithCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;->access$200(Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;)Lcn/haorui/sdk/platform/ms/interstitial/HrCustomInterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;->access$200(Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;)Lcn/haorui/sdk/platform/ms/interstitial/HrCustomInterstitialAd;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;->access$400(Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V

    :cond_0
    return-void
.end method

.method public onAdError()V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;

    const/4 v1, -0x1

    const-string v2, "\u52a0\u8f7d\u9519\u8bef"

    invoke-static {v0, v1, v2}, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;ILjava/lang/String;)V

    return-void
.end method

.method public onAdExposure()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;->access$200(Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;)Lcn/haorui/sdk/platform/ms/interstitial/HrCustomInterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;->access$200(Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;)Lcn/haorui/sdk/platform/ms/interstitial/HrCustomInterstitialAd;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;->access$300(Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader$2;->onAdLoaded(Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;)V

    return-void
.end method

.method public onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V
    .locals 0

    return-void
.end method

.method public onAdReady(Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAd;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAd;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader$2$1;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader$2$1;-><init>(Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader$2;)V

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;

    new-instance v1, Lcn/haorui/sdk/platform/ms/interstitial/HrCustomInterstitialAd;

    invoke-direct {v1, v0, p1}, Lcn/haorui/sdk/platform/ms/interstitial/HrCustomInterstitialAd;-><init>(Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;)V

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;->access$202(Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;Lcn/haorui/sdk/platform/ms/interstitial/HrCustomInterstitialAd;)Lcn/haorui/sdk/platform/ms/interstitial/HrCustomInterstitialAd;

    iget-object p1, p0, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;

    invoke-static {p1}, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;->access$200(Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;)Lcn/haorui/sdk/platform/ms/interstitial/HrCustomInterstitialAd;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;->access$600(Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onAdReady(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader$2;->onAdReady(Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;)V

    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;

    invoke-static {v0, p2, p1}, Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;->access$700(Lcn/haorui/sdk/platform/ms/interstitial/HRInterstitialAdLoader;ILjava/lang/String;)V

    return-void
.end method
