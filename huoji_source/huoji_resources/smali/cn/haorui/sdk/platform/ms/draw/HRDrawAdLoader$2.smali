.class public Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/draw/DrawAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;->loadAdWithCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;

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

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;)Lcn/haorui/sdk/platform/ms/draw/HrCustomDrawAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;

    const/4 v1, -0x1

    const-string v2, "\u52a0\u8f7d\u51fa\u9519"

    invoke-static {v0, v1, v2}, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;->access$200(Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdExposure()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;)Lcn/haorui/sdk/platform/ms/draw/HrCustomDrawAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;)Lcn/haorui/sdk/platform/ms/draw/HrCustomDrawAd;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;->access$300(Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAd;)V

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

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2;->onAdLoaded(Lcn/haorui/sdk/core/ad/draw/IDrawAd;)V

    return-void
.end method

.method public onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V
    .locals 0

    return-void
.end method

.method public onAdReady(Lcn/haorui/sdk/core/ad/draw/IDrawAd;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAdapter;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAdapter;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/draw/IDrawAd;->getDrawType()I

    new-instance v0, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2$1;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2$1;-><init>(Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2;)V

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/ad/IAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;

    new-instance v1, Lcn/haorui/sdk/platform/ms/draw/HrCustomDrawAd;

    invoke-direct {v1, v0, p1}, Lcn/haorui/sdk/platform/ms/draw/HrCustomDrawAd;-><init>(Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAdapter;Lcn/haorui/sdk/core/ad/draw/IDrawAd;)V

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;->access$102(Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;Lcn/haorui/sdk/platform/ms/draw/HrCustomDrawAd;)Lcn/haorui/sdk/platform/ms/draw/HrCustomDrawAd;

    iget-object p1, p0, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;

    invoke-static {p1}, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;)Lcn/haorui/sdk/platform/ms/draw/HrCustomDrawAd;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;->access$500(Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAd;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onAdReady(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/draw/IDrawAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2;->onAdReady(Lcn/haorui/sdk/core/ad/draw/IDrawAd;)V

    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;)Lcn/haorui/sdk/platform/ms/draw/HrCustomDrawAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;

    invoke-static {v0, p2, p1}, Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;->access$600(Lcn/haorui/sdk/platform/ms/draw/HRDrawAdLoader;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
