.class public final Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/e/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
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

    iput-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdCacheLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->a(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->b(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    :cond_0
    return-void
.end method

.method public final onAdDataLoaded()V
    .locals 0

    return-void
.end method

.method public final onAdLoadFailed(Lcom/anythink/basead/c/e;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->c(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->d(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
