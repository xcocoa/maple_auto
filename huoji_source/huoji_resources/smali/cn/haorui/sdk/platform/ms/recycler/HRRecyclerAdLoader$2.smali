.class public Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->loadAdWithCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

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

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    const/4 v1, -0x1

    const-string v2, "\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v0, v1, v2}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;ILjava/lang/String;)V

    return-void
.end method

.method public onAdExposure()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$200(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$200(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->isNativeExpress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$300(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)Lcn/haorui/sdk/platform/ms/recycler/HrCustomExpressAd;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$300(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)Lcn/haorui/sdk/platform/ms/recycler/HrCustomExpressAd;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$400(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerExpressAd;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$500(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)Lcn/haorui/sdk/platform/ms/recycler/HrCustomFeedAd;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$500(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)Lcn/haorui/sdk/platform/ms/recycler/HrCustomFeedAd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;->onFeedAdExposure(Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerFeedAd;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;->onAdLoaded(Ljava/util/List;)V

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

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;->onAdReady(Ljava/util/List;)V

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

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    invoke-static {v0, p1}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$202(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    iget-object p1, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    invoke-static {p1}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$200(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    invoke-static {p1}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$200(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$200(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->isNativeExpress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    new-instance v1, Lcn/haorui/sdk/platform/ms/recycler/HrCustomExpressAd;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$200(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcn/haorui/sdk/platform/ms/recycler/HrCustomExpressAd;-><init>(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;)V

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$302(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;Lcn/haorui/sdk/platform/ms/recycler/HrCustomExpressAd;)Lcn/haorui/sdk/platform/ms/recycler/HrCustomExpressAd;

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$300(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)Lcn/haorui/sdk/platform/ms/recycler/HrCustomExpressAd;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    new-instance v1, Lcn/haorui/sdk/platform/ms/recycler/HrCustomFeedAd;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$200(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcn/haorui/sdk/platform/ms/recycler/HrCustomFeedAd;-><init>(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;)V

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$502(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;Lcn/haorui/sdk/platform/ms/recycler/HrCustomFeedAd;)Lcn/haorui/sdk/platform/ms/recycler/HrCustomFeedAd;

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$500(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)Lcn/haorui/sdk/platform/ms/recycler/HrCustomFeedAd;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$200(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->isNativeExpress()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    invoke-static {v0, p1}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$600(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;Ljava/util/List;)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    invoke-static {p1}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$300(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)Lcn/haorui/sdk/platform/ms/recycler/HrCustomExpressAd;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$700(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerExpressAd;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    invoke-static {v0, p1}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$800(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    invoke-static {v0, p2, p1}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$900(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;ILjava/lang/String;)V

    return-void
.end method
