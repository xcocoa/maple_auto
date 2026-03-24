.class public final Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/e/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick(Lcom/anythink/basead/e/i;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p1, Lcom/anythink/basead/e/i;->a:I

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/h;->B(I)V

    iget p1, p1, Lcom/anythink/basead/e/i;->b:I

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/h;->C(I)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->p(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->q(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked()V

    :cond_1
    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->n(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->o(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose()V

    :cond_0
    return-void
.end method

.method public final onAdShow(Lcom/anythink/basead/e/i;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->l(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->m(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow()V

    :cond_0
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .locals 0

    return-void
.end method

.method public final onRewarded()V
    .locals 0

    return-void
.end method

.method public final onShowFailed(Lcom/anythink/basead/c/e;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->j(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->k(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

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

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->h(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->i(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoEnd()V

    :cond_0
    return-void
.end method

.method public final onVideoAdPlayStart()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->f(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->g(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoStart()V

    :cond_0
    return-void
.end method
