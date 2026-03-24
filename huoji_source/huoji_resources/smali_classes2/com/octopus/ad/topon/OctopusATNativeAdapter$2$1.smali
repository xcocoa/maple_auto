.class public Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

.field public final synthetic val$isUnified:Z


# direct methods
.method public constructor <init>(Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;Z)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

    iput-boolean p2, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->val$isUnified:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailed(I)V
    .locals 4

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$600(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdFailed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$700(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$800(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdFailed errorCode\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

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

.method public onAdLoaded(Lcom/octopus/ad/NativeAdResponse;)V
    .locals 8

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$600(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$900(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->val$isUnified:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    new-instance v3, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;

    iget-object v4, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

    iget-object v4, v4, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->val$context:Landroid/content/Context;

    invoke-direct {v3, v4, p1}, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;-><init>(Landroid/content/Context;Lcom/octopus/ad/NativeAdResponse;)V

    invoke-static {v0, v3}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$1002(Lcom/octopus/ad/topon/OctopusATNativeAdapter;Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;)Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$1100(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    new-array v2, v2, [Lcom/anythink/core/api/BaseAd;

    iget-object v3, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

    iget-object v3, v3, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    invoke-static {v3}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$1000(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-interface {v0, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    new-instance v3, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;

    iget-object v4, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

    iget-object v4, v4, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->val$context:Landroid/content/Context;

    invoke-direct {v3, v4, p1}, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;-><init>(Landroid/content/Context;Lcom/octopus/ad/NativeAdResponse;)V

    invoke-static {v0, v3}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$1202(Lcom/octopus/ad/topon/OctopusATNativeAdapter;Lcom/octopus/ad/topon/OctopusATNativeExpressAd;)Lcom/octopus/ad/topon/OctopusATNativeExpressAd;

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$1300(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    new-array v2, v2, [Lcom/anythink/core/api/BaseAd;

    iget-object v3, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

    iget-object v3, v3, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    invoke-static {v3}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$1200(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/octopus/ad/topon/OctopusATNativeExpressAd;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-interface {v0, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

    iget-object v0, v0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    iget-object v1, v0, Lcom/anythink/core/api/ATBaseAdAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$400(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/octopus/ad/NativeAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/NativeAd;->getPrice()I

    move-result v0

    int-to-double v0, v0

    sget-object v2, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/octopus/ad/topon/OctopusBiddingNotice;

    iget-object v5, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

    iget-object v5, v5, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    invoke-static {v5}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$400(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/octopus/ad/NativeAd;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/octopus/ad/topon/OctopusBiddingNotice;-><init>(Lcom/octopus/ad/IBidding;)V

    iget-boolean v5, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->val$isUnified:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

    iget-object v5, v5, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    new-instance v6, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;

    iget-object v7, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

    iget-object v7, v7, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->val$context:Landroid/content/Context;

    invoke-direct {v6, v7, p1}, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;-><init>(Landroid/content/Context;Lcom/octopus/ad/NativeAdResponse;)V

    invoke-static {v5, v6}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$1002(Lcom/octopus/ad/topon/OctopusATNativeAdapter;Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;)Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;

    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

    iget-object p1, p1, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    iget-object p1, p1, Lcom/anythink/core/api/ATBaseAdAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    invoke-static {v0, v1, v3, v4, v2}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object v0

    iget-object v1, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

    iget-object v1, v1, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    invoke-static {v1}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$1000(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

    iget-object v5, v5, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    new-instance v6, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;

    iget-object v7, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

    iget-object v7, v7, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->val$context:Landroid/content/Context;

    invoke-direct {v6, v7, p1}, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;-><init>(Landroid/content/Context;Lcom/octopus/ad/NativeAdResponse;)V

    invoke-static {v5, v6}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$1202(Lcom/octopus/ad/topon/OctopusATNativeAdapter;Lcom/octopus/ad/topon/OctopusATNativeExpressAd;)Lcom/octopus/ad/topon/OctopusATNativeExpressAd;

    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

    iget-object p1, p1, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    iget-object p1, p1, Lcom/anythink/core/api/ATBaseAdAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    invoke-static {v0, v1, v3, v4, v2}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object v0

    iget-object v1, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2$1;->this$1:Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;

    iget-object v1, v1, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    invoke-static {v1}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$1200(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/octopus/ad/topon/OctopusATNativeExpressAd;

    move-result-object v1

    :goto_1
    invoke-interface {p1, v0, v1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    :cond_3
    return-void
.end method
