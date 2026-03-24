.class public Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATBiddingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;

.field public final synthetic val$biddingListener:Lcom/anythink/core/api/ATBiddingListener;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;Lcom/anythink/core/api/ATBiddingListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;

    iput-object p2, p0, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter$3;->val$biddingListener:Lcom/anythink/core/api/ATBiddingListener;

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

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter$3;->val$biddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v0, :cond_0

    const-string v1, "load error"

    invoke-static {v1}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;->access$100(Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;->access$200(Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const-string v1, "-1"

    const-string v2, "\u52a0\u8f7d\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onAdExposure()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter$3;->onAdLoaded(Ljava/util/List;)V

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

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter$3;->onAdReady(Ljava/util/List;)V

    return-void
.end method

.method public onAdReady(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->isNativeExpress()Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcn/haorui/sdk/platform/topon/recycler/HRExpressAd;

    invoke-direct {v4, p1}, Lcn/haorui/sdk/platform/topon/recycler/HRExpressAd;-><init>(Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;)V

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter$3;->val$biddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz p1, :cond_1

    sget-object v6, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    invoke-static {v2, v3, v5, v1, v6}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object v1

    invoke-interface {p1, v1, v4}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;->access$300(Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;->access$400(Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd;

    invoke-direct {v4, p1}, Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd;-><init>(Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;)V

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v6

    if-eqz v6, :cond_3

    :try_start_1
    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter$3;->val$biddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz p1, :cond_4

    sget-object v6, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    invoke-static {v2, v3, v5, v1, v6}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object v1

    invoke-interface {p1, v1, v4}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    :cond_4
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;->access$500(Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;->access$600(Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 1

    iget-object p1, p0, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter$3;->val$biddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz p1, :cond_0

    const-string p2, "load error"

    invoke-static {p2}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;->access$700(Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;->access$800(Lcn/haorui/sdk/platform/topon/recycler/HRRecyclerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    const-string p2, "-1"

    const-string v0, "\u52a0\u8f7d\u5931\u8d25"

    invoke-interface {p1, p2, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
