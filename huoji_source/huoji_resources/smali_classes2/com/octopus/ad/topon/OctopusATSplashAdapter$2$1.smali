.class public Lcom/octopus/ad/topon/OctopusATSplashAdapter$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/SplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATSplashAdapter;->access$600(Lcom/octopus/ad/topon/OctopusATSplashAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATSplashAdapter;->access$1600(Lcom/octopus/ad/topon/OctopusATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATSplashAdapter;->access$1700(Lcom/octopus/ad/topon/OctopusATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdClicked()V

    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATSplashAdapter;->access$600(Lcom/octopus/ad/topon/OctopusATSplashAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/octopus/ad/topon/OctopusATSplashAdapter;->access$1302(Lcom/octopus/ad/topon/OctopusATSplashAdapter;I)I

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATSplashAdapter;->access$1400(Lcom/octopus/ad/topon/OctopusATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATSplashAdapter;->access$1500(Lcom/octopus/ad/topon/OctopusATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 4

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATSplashAdapter;->access$600(Lcom/octopus/ad/topon/OctopusATSplashAdapter;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdFailedToLoad:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATSplashAdapter;->access$1100(Lcom/octopus/ad/topon/OctopusATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATSplashAdapter;->access$1200(Lcom/octopus/ad/topon/OctopusATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdFailedToLoad errorCode\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    iget-object v0, v0, Lcom/anythink/core/api/ATBaseAdAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    :cond_1
    return-void
.end method

.method public onAdLoaded()V
    .locals 7

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATSplashAdapter;->access$600(Lcom/octopus/ad/topon/OctopusATSplashAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATSplashAdapter;->access$700(Lcom/octopus/ad/topon/OctopusATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATSplashAdapter;->access$800(Lcom/octopus/ad/topon/OctopusATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    iget-object v1, v0, Lcom/anythink/core/api/ATBaseAdAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATSplashAdapter;->access$300(Lcom/octopus/ad/topon/OctopusATSplashAdapter;)Lcom/octopus/ad/SplashAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/SplashAd;->getPrice()I

    move-result v0

    int-to-double v0, v0

    sget-object v2, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/octopus/ad/topon/OctopusBiddingNotice;

    iget-object v6, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;

    iget-object v6, v6, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    invoke-static {v6}, Lcom/octopus/ad/topon/OctopusATSplashAdapter;->access$300(Lcom/octopus/ad/topon/OctopusATSplashAdapter;)Lcom/octopus/ad/SplashAd;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/octopus/ad/topon/OctopusBiddingNotice;-><init>(Lcom/octopus/ad/IBidding;)V

    iget-object v6, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;

    iget-object v6, v6, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    iget-object v6, v6, Lcom/anythink/core/api/ATBaseAdAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    invoke-static {v0, v1, v3, v5, v2}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object v0

    invoke-interface {v6, v0, v4}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    :cond_1
    return-void
.end method

.method public onAdShown()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATSplashAdapter;->access$600(Lcom/octopus/ad/topon/OctopusATSplashAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdShown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATSplashAdapter;->access$900(Lcom/octopus/ad/topon/OctopusATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATSplashAdapter;->access$1000(Lcom/octopus/ad/topon/OctopusATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShow()V

    :cond_0
    return-void
.end method

.method public onAdTick(J)V
    .locals 0

    return-void
.end method
