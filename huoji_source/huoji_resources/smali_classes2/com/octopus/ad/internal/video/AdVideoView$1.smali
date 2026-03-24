.class public Lcom/octopus/ad/internal/video/AdVideoView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/video/AdVideoView;->transferAd(Lcom/octopus/ad/internal/view/AdWebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/view/AdWebView;

.field public final synthetic b:Lcom/octopus/ad/internal/video/AdVideoView;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/video/AdVideoView;Lcom/octopus/ad/internal/view/AdWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView$1;->b:Lcom/octopus/ad/internal/video/AdVideoView;

    iput-object p2, p0, Lcom/octopus/ad/internal/video/AdVideoView$1;->a:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView$1;->b:Lcom/octopus/ad/internal/video/AdVideoView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/video/AdVideoView;->a(Lcom/octopus/ad/internal/video/AdVideoView;Z)Z

    iget-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView$1;->b:Lcom/octopus/ad/internal/video/AdVideoView;

    iget-object p1, p1, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->handleOnCompletion()V

    iget-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView$1;->b:Lcom/octopus/ad/internal/video/AdVideoView;

    invoke-static {p1}, Lcom/octopus/ad/internal/video/AdVideoView;->a(Lcom/octopus/ad/internal/video/AdVideoView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView$1;->b:Lcom/octopus/ad/internal/video/AdVideoView;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/video/AdVideoView;->onRewardVideoAdReward()V

    iget-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView$1;->b:Lcom/octopus/ad/internal/video/AdVideoView;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/video/AdVideoView;->onRewardVideoAdComplete()V

    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView$1;->b:Lcom/octopus/ad/internal/video/AdVideoView;

    iget-object p1, p1, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1, v0}, Lcom/octopus/ad/internal/view/AdWebView;->loadAdBy(I)Z

    move-result p1

    const-string v0, "octopus"

    if-nez p1, :cond_1

    const-string p1, "We can\'t go next, just stand here"

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView$1;->a:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    instance-of v1, p1, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->getAdImplementation()Lcom/octopus/ad/AdActivity$a;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView$1;->a:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    check-cast p1, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->getAdImplementation()Lcom/octopus/ad/AdActivity$a;

    move-result-object p1

    check-cast p1, Lcom/octopus/ad/internal/a/b;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/a/b;->g()V

    goto :goto_1

    :cond_2
    const-string p1, "Error in incentive video ad adaptation model !"

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
