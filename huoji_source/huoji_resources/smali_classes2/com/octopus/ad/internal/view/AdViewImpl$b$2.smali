.class public Lcom/octopus/ad/internal/view/AdViewImpl$b$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/AdViewImpl$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/view/AdViewImpl$b;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdViewImpl$b;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$2;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$2;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object v1, v0, Lcom/octopus/ad/internal/view/AdViewImpl;->serverResponse:Lcom/octopus/ad/internal/network/ServerResponse;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$2;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v1, v1, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object v2, v1, Lcom/octopus/ad/internal/view/AdViewImpl;->serverResponse:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-static {v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->q(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/internal/view/AdViewImpl$d;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->setAutoClickStrategy(Landroid/content/Context;Lcom/octopus/ad/internal/network/ServerResponse;Lcom/octopus/ad/internal/view/AdViewImpl$d;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$2;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object v1, v0, Lcom/octopus/ad/internal/view/AdViewImpl;->serverResponse:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-static {v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->isCallBackClick(Lcom/octopus/ad/internal/network/ServerResponse;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->a(Lcom/octopus/ad/internal/view/AdViewImpl;Z)Z

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$2;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->r(Lcom/octopus/ad/internal/view/AdViewImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$2;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->a(Lcom/octopus/ad/internal/view/AdViewImpl;I)I

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$2;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-boolean v1, v0, Lcom/octopus/ad/internal/view/AdViewImpl;->j:Z

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->a(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/internal/view/AdWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$2;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v1, v1, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->s(Lcom/octopus/ad/internal/view/AdViewImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/view/AdWebView;->setOpt(I)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$2;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->o(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/InterstitialAdListener;

    move-result-object v0

    const-string v1, "enter Octopus ad show"

    const-string v2, "OctopusAd"

    if-eqz v0, :cond_1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$2;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->o(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/InterstitialAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/InterstitialAdListener;->onAdShown()V

    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$2;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->t(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$2;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->t(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/BannerAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/BannerAdListener;->onAdShown()V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->u(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$2;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->u(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/octopus/ad/internal/video/AdVideoView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$2;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->u(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/video/AdVideoView;

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$2;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v1, v1, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->s(Lcom/octopus/ad/internal/view/AdViewImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/video/AdVideoView;->setOpt(I)V

    :cond_3
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$2;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->p(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/RewardVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$2;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->p(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/RewardVideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/RewardVideoAdListener;->onRewardVideoAdShown()V

    :cond_4
    :goto_0
    return-void
.end method
