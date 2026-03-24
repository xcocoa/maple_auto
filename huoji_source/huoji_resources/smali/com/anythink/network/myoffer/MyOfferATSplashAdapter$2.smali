.class public final Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/e/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick(Lcom/anythink/basead/e/i;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p1, Lcom/anythink/basead/e/i;->a:I

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/h;->B(I)V

    iget p1, p1, Lcom/anythink/basead/e/i;->b:I

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/h;->C(I)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;

    invoke-static {p1}, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->i(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;

    invoke-static {p1}, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->j(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdClicked()V

    :cond_1
    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->g(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->h(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    :cond_0
    return-void
.end method

.method public final onAdShow(Lcom/anythink/basead/e/i;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;

    invoke-static {p1}, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->e(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;

    invoke-static {p1}, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->f(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShow()V

    :cond_0
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .locals 0

    return-void
.end method

.method public final onShowFailed(Lcom/anythink/basead/c/e;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->k(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->l(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->b()Ljava/lang/String;

    move-result-object p1

    const-string v2, "4006"

    invoke-static {v2, v1, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShowFail(Lcom/anythink/core/api/AdError;)V

    :cond_0
    return-void
.end method
