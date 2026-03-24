.class public final Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/e/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick(Lcom/anythink/basead/e/i;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p1, Lcom/anythink/basead/e/i;->a:I

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/h;->B(I)V

    iget p1, p1, Lcom/anythink/basead/e/i;->b:I

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/h;->C(I)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->k(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->l(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked()V

    :cond_1
    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->i(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->j(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose()V

    :cond_0
    return-void
.end method

.method public final onAdShow(Lcom/anythink/basead/e/i;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->g(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->h(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow()V

    :cond_0
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->m(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->n(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onDeeplinkCallback(Z)V

    :cond_0
    return-void
.end method

.method public final onRewarded()V
    .locals 0

    return-void
.end method

.method public final onShowFailed(Lcom/anythink/basead/c/e;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->e(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->f(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onVideoAdPlayEnd()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->c(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->d(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoEnd()V

    :cond_0
    return-void
.end method

.method public final onVideoAdPlayStart()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->a(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->b(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoStart()V

    :cond_0
    return-void
.end method
