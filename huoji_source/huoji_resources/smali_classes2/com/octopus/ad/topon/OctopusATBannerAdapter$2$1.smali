.class public Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$600(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$1300(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$1400(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClicked()V

    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$600(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$300(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$300(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$300(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 4

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$600(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdFailedToLoad:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$700(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$800(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

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
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

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
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$600(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdLoaded:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdShown()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$600(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdShown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$1100(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$1200(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdShow()V

    :cond_0
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$600(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRenderSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;

    iget-object v1, v0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->showBanner(Landroid/content/Context;Landroid/view/View;)V

    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;

    iget-object p1, p1, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    invoke-static {p1}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$900(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;

    iget-object p1, p1, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    invoke-static {p1}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$1000(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;

    iget-object p1, p1, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    iget-object v0, p1, Lcom/anythink/core/api/ATBaseAdAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$400(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/octopus/ad/BannerAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/octopus/ad/BannerAd;->getPrice()I

    move-result p1

    int-to-double v0, p1

    sget-object p1, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/octopus/ad/topon/OctopusBiddingNotice;

    iget-object v5, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;

    iget-object v5, v5, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    invoke-static {v5}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$400(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/octopus/ad/BannerAd;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/octopus/ad/topon/OctopusBiddingNotice;-><init>(Lcom/octopus/ad/IBidding;)V

    iget-object v5, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;

    iget-object v5, v5, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    iget-object v5, v5, Lcom/anythink/core/api/ATBaseAdAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    invoke-static {v0, v1, v2, v4, p1}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object p1

    invoke-interface {v5, p1, v3}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    :cond_1
    return-void
.end method
