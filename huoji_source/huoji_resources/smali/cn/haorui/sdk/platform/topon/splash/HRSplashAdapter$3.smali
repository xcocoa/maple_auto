.class public Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/splash/SplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATBiddingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;

.field public final synthetic val$biddingListener:Lcom/anythink/core/api/ATBiddingListener;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;Lcom/anythink/core/api/ATBiddingListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;

    iput-object p2, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3;->val$biddingListener:Lcom/anythink/core/api/ATBiddingListener;

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

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3;->val$biddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v0, :cond_0

    const-string v1, "load error"

    invoke-static {v1}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;->access$700(Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;->access$800(Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const-string v1, "-1"

    const-string v2, "\u52a0\u8f7d\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onAdExposure()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;->access$900(Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;->access$1000(Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShow()V

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

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3;->onAdLoaded(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V

    return-void
.end method

.method public onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V
    .locals 0

    return-void
.end method

.method public onAdPresent(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V
    .locals 0

    return-void
.end method

.method public onAdReady(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V
    .locals 6

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getData()Lcn/haorui/sdk/core/utils/ResultBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3;->val$biddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v5, v4}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    :cond_1
    new-instance v0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3$1;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3$1;-><init>(Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3;)V

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/ad/IAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;

    invoke-static {v0, p1}, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;->access$1302(Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;Lcn/haorui/sdk/core/ad/splash/ISplashAd;)Lcn/haorui/sdk/core/ad/splash/ISplashAd;

    iget-object p1, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;->access$1400(Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;->access$1500(Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onAdReady(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/splash/ISplashAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3;->onAdReady(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V

    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3;->val$biddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v0, :cond_0

    const-string v1, "load error"

    invoke-static {v1}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;->access$1600(Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;->access$1700(Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onAdSkip(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V
    .locals 1

    iget-object p1, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;->access$102(Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;I)I

    iget-object p1, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;->access$200(Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;->access$300(Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    :cond_0
    return-void
.end method

.method public onAdTick(J)V
    .locals 0

    return-void
.end method

.method public onAdTimeOver(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V
    .locals 1

    iget-object p1, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;->access$402(Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;I)I

    iget-object p1, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;->access$500(Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$3;->this$0:Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;->access$600(Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    :cond_0
    return-void
.end method
