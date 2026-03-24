.class public final Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/e/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick(Lcom/anythink/basead/e/i;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p1, Lcom/anythink/basead/e/i;->a:I

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/h;->B(I)V

    iget p1, p1, Lcom/anythink/basead/e/i;->b:I

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/h;->C(I)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->l(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->m(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClicked()V

    :cond_1
    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->j(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->k(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClose()V

    :cond_0
    return-void
.end method

.method public final onAdShow(Lcom/anythink/basead/e/i;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->h(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->i(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdShow()V

    :cond_0
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .locals 0

    return-void
.end method

.method public final onShowFailed(Lcom/anythink/basead/c/e;)V
    .locals 0

    return-void
.end method
