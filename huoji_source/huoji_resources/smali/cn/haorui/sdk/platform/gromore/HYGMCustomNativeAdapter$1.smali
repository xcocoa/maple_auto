.class public Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;->load(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 0

    return-void
.end method

.method public onAdError()V
    .locals 4

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;

    new-instance v1, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;

    const/4 v2, -0x1

    const-string v3, "loadAdError"

    invoke-direct {v1, v2, v3}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAdapter;->callLoadFail(Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;)V

    return-void
.end method

.method public onAdExposure()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAdapter;->isExpressRender()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;->access$000(Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;)Lcn/haorui/sdk/platform/gromore/HYGMExpressAd;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;->access$100(Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;)Lcn/haorui/sdk/platform/gromore/HYGMNativeAd;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;->callNativeAdShow()V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter$1;->onAdLoaded(Ljava/util/List;)V

    return-void
.end method

.method public onAdLoaded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdReady(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter$1;->onAdReady(Ljava/util/List;)V

    return-void
.end method

.method public onAdReady(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    invoke-static {v0, p1}, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;->access$202(Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isExpressRender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAdapter;->isExpressRender()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HYGMCustomNativeAdapter"

    invoke-static {v1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adData.isExpress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;

    invoke-static {v2}, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;->access$200(Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    move-result-object v2

    invoke-interface {v2}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->isNativeExpress()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;

    new-instance v1, Lcn/haorui/sdk/platform/gromore/HYGMNativeAd;

    invoke-static {v0}, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;->access$200(Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/haorui/sdk/platform/gromore/HYGMNativeAd;-><init>(Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;)V

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;->access$102(Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;Lcn/haorui/sdk/platform/gromore/HYGMNativeAd;)Lcn/haorui/sdk/platform/gromore/HYGMNativeAd;

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;

    invoke-static {v2}, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;->access$200(Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    move-result-object v2

    invoke-interface {v2}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;

    invoke-static {v2}, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;->access$200(Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    move-result-object v2

    invoke-interface {v2}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;

    invoke-static {v2}, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;->access$100(Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;)Lcn/haorui/sdk/platform/gromore/HYGMNativeAd;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;->setBiddingPrice(D)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;->access$100(Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;)Lcn/haorui/sdk/platform/gromore/HYGMNativeAd;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAdapter;->callLoadSuccess(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 2

    iget-object p1, p0, Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMCustomNativeAdapter;

    new-instance p2, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;

    const/4 v0, -0x2

    const-string v1, "AdRenderFail"

    invoke-direct {p2, v0, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAdapter;->callLoadFail(Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;)V

    return-void
.end method
