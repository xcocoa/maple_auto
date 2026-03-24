.class public Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/banner/BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;->loadAdWithCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;

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

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;)Lcn/haorui/sdk/platform/ms/banner/HrCustomBannerAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;

    const/4 v1, -0x1

    const-string v2, "\u52a0\u8f7d\u9519\u8bef"

    invoke-static {v0, v1, v2}, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;->access$200(Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdExposure()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;)Lcn/haorui/sdk/platform/ms/banner/HrCustomBannerAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;)Lcn/haorui/sdk/platform/ms/banner/HrCustomBannerAd;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;->access$300(Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAd;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcn/haorui/sdk/core/ad/banner/IBannerAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/banner/IBannerAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$2;->onAdLoaded(Lcn/haorui/sdk/core/ad/banner/IBannerAd;)V

    return-void
.end method

.method public onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V
    .locals 0

    return-void
.end method

.method public onAdReady(Lcn/haorui/sdk/core/ad/banner/IBannerAd;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$2$1;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$2$1;-><init>(Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$2;)V

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/ad/IAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;

    new-instance v1, Lcn/haorui/sdk/platform/ms/banner/HrCustomBannerAd;

    invoke-direct {v1, v0, p1}, Lcn/haorui/sdk/platform/ms/banner/HrCustomBannerAd;-><init>(Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;Lcn/haorui/sdk/core/ad/banner/IBannerAd;)V

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;->access$102(Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;Lcn/haorui/sdk/platform/ms/banner/HrCustomBannerAd;)Lcn/haorui/sdk/platform/ms/banner/HrCustomBannerAd;

    iget-object p1, p0, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;

    invoke-static {p1}, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;)Lcn/haorui/sdk/platform/ms/banner/HrCustomBannerAd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;->access$500(Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;Landroid/view/View;Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAd;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onAdReady(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/banner/IBannerAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$2;->onAdReady(Lcn/haorui/sdk/core/ad/banner/IBannerAd;)V

    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;)Lcn/haorui/sdk/platform/ms/banner/HrCustomBannerAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;

    invoke-static {v0, p2, p1}, Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;->access$600(Lcn/haorui/sdk/platform/ms/banner/HRBannerAdLoader;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
