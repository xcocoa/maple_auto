.class public Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;->load(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;

    iput-object p2, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter$1;->val$context:Landroid/content/Context;

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

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;

    const/4 v1, -0x1

    const-string v2, "loadAdError"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeLoader;->callLoadFail(ILjava/lang/String;)V

    return-void
.end method

.method public onAdExposure()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;->access$000(Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->isNativeExpress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;->access$100(Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;)Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;->access$100(Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;)Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;->access$200(Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;)Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;->access$200(Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;)Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callAdShow()V

    :cond_1
    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter$1;->onAdLoaded(Ljava/util/List;)V

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

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter$1;->onAdReady(Ljava/util/List;)V

    return-void
.end method

.method public onAdReady(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    invoke-static {v0, p1}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;->access$002(Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    iget-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;->access$000(Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;

    const/4 v0, -0x1

    const-string v1, "\u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeLoader;->callLoadFail(ILjava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;->access$000(Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->isNativeExpress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;

    new-instance v1, Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;

    iget-object v2, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;->access$000(Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;-><init>(Landroid/content/Context;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;)V

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;->access$102(Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;)Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;->access$100(Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;)Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;

    new-instance v1, Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd;

    invoke-static {v0}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;->access$000(Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd;-><init>(Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;)V

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;->access$202(Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd;)Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd;

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;->access$200(Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;)Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;->access$200(Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;)Lcn/haorui/sdk/platform/csjblend/HYCBGMNativeAd;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeLoader;->callLoadSuccess(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 1

    iget-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomNativeAdapter;

    const/4 p2, -0x2

    const-string v0, "AdRenderFail"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeLoader;->callLoadFail(ILjava/lang/String;)V

    return-void
.end method
