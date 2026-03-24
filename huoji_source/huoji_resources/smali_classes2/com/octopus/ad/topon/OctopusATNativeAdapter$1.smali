.class public Lcom/octopus/ad/topon/OctopusATNativeAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/api/MediationInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/topon/OctopusATNativeAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/topon/OctopusATNativeAdapter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$1;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    iput-object p2, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$1;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$100(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$1;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$200(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const-string v1, "80000"

    invoke-interface {v0, v1, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$1;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    iget-object v0, v0, Lcom/anythink/core/api/ATBaseAdAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    :cond_1
    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$1;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    iget-object v1, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$000(Lcom/octopus/ad/topon/OctopusATNativeAdapter;Landroid/content/Context;)V

    return-void
.end method
