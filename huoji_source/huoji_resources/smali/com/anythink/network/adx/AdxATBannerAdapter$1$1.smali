.class public final Lcom/anythink/network/adx/AdxATBannerAdapter$1$1;
.super Lcom/anythink/basead/e/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/adx/AdxATBannerAdapter$1;->onAdCacheLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/anythink/network/adx/AdxATBannerAdapter$1;


# direct methods
.method public constructor <init>(Lcom/anythink/network/adx/AdxATBannerAdapter$1;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/h;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1$1;->c:Lcom/anythink/network/adx/AdxATBannerAdapter$1;

    invoke-direct {p0, p2, p3}, Lcom/anythink/basead/e/e;-><init>(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/h;)V

    return-void
.end method


# virtual methods
.method public final onAdClick(Lcom/anythink/basead/e/i;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/anythink/basead/e/e;->onAdClick(Lcom/anythink/basead/e/i;)V

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1$1;->c:Lcom/anythink/network/adx/AdxATBannerAdapter$1;

    iget-object p1, p1, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/adx/AdxATBannerAdapter;->i(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1$1;->c:Lcom/anythink/network/adx/AdxATBannerAdapter$1;

    iget-object p1, p1, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/adx/AdxATBannerAdapter;->j(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClicked()V

    :cond_0
    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1$1;->c:Lcom/anythink/network/adx/AdxATBannerAdapter$1;

    iget-object v0, v0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->g(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1$1;->c:Lcom/anythink/network/adx/AdxATBannerAdapter$1;

    iget-object v0, v0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->h(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClose()V

    :cond_0
    return-void
.end method

.method public final onAdShow(Lcom/anythink/basead/e/i;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/anythink/basead/e/e;->onAdShow(Lcom/anythink/basead/e/i;)V

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1$1;->c:Lcom/anythink/network/adx/AdxATBannerAdapter$1;

    iget-object p1, p1, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/adx/AdxATBannerAdapter;->e(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1$1;->c:Lcom/anythink/network/adx/AdxATBannerAdapter$1;

    iget-object p1, p1, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/adx/AdxATBannerAdapter;->f(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdShow()V

    :cond_0
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1$1;->c:Lcom/anythink/network/adx/AdxATBannerAdapter$1;

    iget-object v0, v0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->k(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1$1;->c:Lcom/anythink/network/adx/AdxATBannerAdapter$1;

    iget-object v0, v0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->l(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onDeeplinkCallback(Z)V

    :cond_0
    return-void
.end method

.method public final onShowFailed(Lcom/anythink/basead/c/e;)V
    .locals 0

    return-void
.end method
