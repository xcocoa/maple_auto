.class public Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/draw/DrawAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter;->load(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter;

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

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter;

    const/4 v1, -0x1

    const-string v2, "loadAdError"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/draw/MediationCustomDrawLoader;->callLoadFail(ILjava/lang/String;)V

    return-void
.end method

.method public onAdExposure()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter;->access$000(Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter;)Lcn/haorui/sdk/platform/csjblend/HYCBDrawAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter;->access$000(Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter;)Lcn/haorui/sdk/platform/csjblend/HYCBDrawAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/draw/MediationCustomDrawAd;->callAdShow()V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcn/haorui/sdk/core/ad/draw/IDrawAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/draw/IDrawAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter$1;->onAdLoaded(Lcn/haorui/sdk/core/ad/draw/IDrawAd;)V

    return-void
.end method

.method public onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V
    .locals 0

    return-void
.end method

.method public onAdReady(Lcn/haorui/sdk/core/ad/draw/IDrawAd;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter$1$1;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter$1$1;-><init>(Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter$1;)V

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/ad/IAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter;

    new-instance v1, Lcn/haorui/sdk/platform/csjblend/HYCBDrawAd;

    invoke-direct {v1, p1}, Lcn/haorui/sdk/platform/csjblend/HYCBDrawAd;-><init>(Lcn/haorui/sdk/core/ad/draw/IDrawAd;)V

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter;->access$002(Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter;Lcn/haorui/sdk/platform/csjblend/HYCBDrawAd;)Lcn/haorui/sdk/platform/csjblend/HYCBDrawAd;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter;->access$000(Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter;)Lcn/haorui/sdk/platform/csjblend/HYCBDrawAd;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/draw/MediationCustomDrawLoader;->callLoadSuccess(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onAdReady(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/draw/IDrawAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter$1;->onAdReady(Lcn/haorui/sdk/core/ad/draw/IDrawAd;)V

    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 1

    iget-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBCustomDrawAdapter;

    const/4 p2, -0x2

    const-string v0, "AdRenderFail"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/draw/MediationCustomDrawLoader;->callLoadFail(ILjava/lang/String;)V

    return-void
.end method
