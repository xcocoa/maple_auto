.class public final Lcom/anythink/network/adx/AdxATBannerAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/e/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/adx/AdxATBannerAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/network/adx/AdxATBannerAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/adx/AdxATBannerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdCacheLoaded()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->c(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/basead/d/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->d(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->c(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/basead/d/a;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/basead/b;->a(Lcom/anythink/basead/d/b;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/network/adx/AdxATBannerAdapter;->b:Ljava/util/Map;

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->c(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/basead/d/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/network/adx/AdxATBannerAdapter$1$1;

    iget-object v2, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v2}, Lcom/anythink/network/adx/AdxATBannerAdapter;->c(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/basead/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/basead/d/b;->f()Lcom/anythink/core/common/f/l;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-virtual {v3}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/anythink/network/adx/AdxATBannerAdapter$1$1;-><init>(Lcom/anythink/network/adx/AdxATBannerAdapter$1;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/h;)V

    invoke-virtual {v0, v1}, Lcom/anythink/basead/d/b;->a(Lcom/anythink/basead/e/a;)V

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->c(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/basead/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/basead/d/a;->a()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/network/adx/AdxATBannerAdapter;->a(Lcom/anythink/network/adx/AdxATBannerAdapter;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->m(Lcom/anythink/network/adx/AdxATBannerAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->n(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->o(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const-string v1, ""

    const-string v2, "Adx bannerView = null"

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onAdDataLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->a(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->b(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdDataLoaded()V

    :cond_0
    return-void
.end method

.method public final onAdLoadFailed(Lcom/anythink/basead/c/e;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->p(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->q(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
