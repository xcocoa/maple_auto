.class public Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/splash/SplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;->loadAdWithCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 0

    return-void
.end method

.method public onAdError()V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;

    const/4 v1, -0x1

    const-string v2, "\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v0, v1, v2}, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;->access$400(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;ILjava/lang/String;)V

    return-void
.end method

.method public onAdExposure()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;)Lcn/haorui/sdk/platform/ms/splash/HrCustomSplashAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;)Lcn/haorui/sdk/platform/ms/splash/HrCustomSplashAd;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;->access$500(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/splash/ISplashAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;->onAdLoaded(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V

    return-void
.end method

.method public onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V
    .locals 1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/AdPlatformError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HRSplashAdLoader"

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdPresent(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V
    .locals 0

    return-void
.end method

.method public onAdReady(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V
    .locals 2

    const-string v0, "HRSplashAdLoader"

    const-string v1, "ms onAdReady"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2$1;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2$1;-><init>(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;)V

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/ad/IAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;

    new-instance v1, Lcn/haorui/sdk/platform/ms/splash/HrCustomSplashAd;

    invoke-direct {v1, v0, p1}, Lcn/haorui/sdk/platform/ms/splash/HrCustomSplashAd;-><init>(Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;->access$102(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;Lcn/haorui/sdk/platform/ms/splash/HrCustomSplashAd;)Lcn/haorui/sdk/platform/ms/splash/HrCustomSplashAd;

    iget-object p1, p0, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;

    invoke-static {p1}, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;)Lcn/haorui/sdk/platform/ms/splash/HrCustomSplashAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;->getAdView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;

    invoke-static {v1}, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;)Lcn/haorui/sdk/platform/ms/splash/HrCustomSplashAd;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;->access$700(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;Landroid/view/View;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onAdReady(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/splash/ISplashAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;->onAdReady(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V

    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;

    invoke-static {v0, p2, p1}, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;->access$800(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;ILjava/lang/String;)V

    return-void
.end method

.method public onAdSkip(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V
    .locals 1

    iget-object p1, p0, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;

    invoke-static {p1}, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;)Lcn/haorui/sdk/platform/ms/splash/HrCustomSplashAd;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;

    invoke-static {p1}, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;)Lcn/haorui/sdk/platform/ms/splash/HrCustomSplashAd;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;->access$200(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    :cond_0
    return-void
.end method

.method public onAdTick(J)V
    .locals 0

    return-void
.end method

.method public onAdTimeOver(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V
    .locals 1

    iget-object p1, p0, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;

    invoke-static {p1}, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;)Lcn/haorui/sdk/platform/ms/splash/HrCustomSplashAd;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;

    invoke-static {p1}, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;)Lcn/haorui/sdk/platform/ms/splash/HrCustomSplashAd;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;->access$300(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    :cond_0
    return-void
.end method
