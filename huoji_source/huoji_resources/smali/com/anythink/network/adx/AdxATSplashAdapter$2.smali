.class public final Lcom/anythink/network/adx/AdxATSplashAdapter$2;
.super Lcom/anythink/basead/e/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/adx/AdxATSplashAdapter;->show(Landroid/app/Activity;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/anythink/network/adx/AdxATSplashAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/adx/AdxATSplashAdapter;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/h;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/network/adx/AdxATSplashAdapter$2;->c:Lcom/anythink/network/adx/AdxATSplashAdapter;

    invoke-direct {p0, p2, p3}, Lcom/anythink/basead/e/e;-><init>(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/h;)V

    return-void
.end method


# virtual methods
.method public final onAdClick(Lcom/anythink/basead/e/i;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/anythink/basead/e/e;->onAdClick(Lcom/anythink/basead/e/i;)V

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATSplashAdapter$2;->c:Lcom/anythink/network/adx/AdxATSplashAdapter;

    invoke-static {p1}, Lcom/anythink/network/adx/AdxATSplashAdapter;->k(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATSplashAdapter$2;->c:Lcom/anythink/network/adx/AdxATSplashAdapter;

    invoke-static {p1}, Lcom/anythink/network/adx/AdxATSplashAdapter;->l(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdClicked()V

    :cond_0
    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter$2;->c:Lcom/anythink/network/adx/AdxATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATSplashAdapter;->i(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter$2;->c:Lcom/anythink/network/adx/AdxATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATSplashAdapter;->j(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    :cond_0
    return-void
.end method

.method public final onAdShow(Lcom/anythink/basead/e/i;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/anythink/basead/e/e;->onAdShow(Lcom/anythink/basead/e/i;)V

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATSplashAdapter$2;->c:Lcom/anythink/network/adx/AdxATSplashAdapter;

    invoke-static {p1}, Lcom/anythink/network/adx/AdxATSplashAdapter;->g(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATSplashAdapter$2;->c:Lcom/anythink/network/adx/AdxATSplashAdapter;

    invoke-static {p1}, Lcom/anythink/network/adx/AdxATSplashAdapter;->h(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShow()V

    :cond_0
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter$2;->c:Lcom/anythink/network/adx/AdxATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATSplashAdapter;->m(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter$2;->c:Lcom/anythink/network/adx/AdxATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATSplashAdapter;->n(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onDeeplinkCallback(Z)V

    :cond_0
    return-void
.end method

.method public final onShowFailed(Lcom/anythink/basead/c/e;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter$2;->c:Lcom/anythink/network/adx/AdxATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATSplashAdapter;->o(Lcom/anythink/network/adx/AdxATSplashAdapter;)I

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter$2;->c:Lcom/anythink/network/adx/AdxATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATSplashAdapter;->p(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter$2;->c:Lcom/anythink/network/adx/AdxATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATSplashAdapter;->q(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->b()Ljava/lang/String;

    move-result-object p1

    const-string v2, "4006"

    invoke-static {v2, v1, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShowFail(Lcom/anythink/core/api/AdError;)V

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATSplashAdapter$2;->c:Lcom/anythink/network/adx/AdxATSplashAdapter;

    invoke-static {p1}, Lcom/anythink/network/adx/AdxATSplashAdapter;->r(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    :cond_0
    return-void
.end method
