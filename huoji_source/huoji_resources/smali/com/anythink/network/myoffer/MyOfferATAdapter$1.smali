.class public final Lcom/anythink/network/myoffer/MyOfferATAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/e/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/myoffer/MyOfferATAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/anythink/network/myoffer/MyOfferATAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/myoffer/MyOfferATAdapter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter$1;->b:Lcom/anythink/network/myoffer/MyOfferATAdapter;

    iput-object p2, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdCacheLoaded()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter$1;->b:Lcom/anythink/network/myoffer/MyOfferATAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATAdapter;->a(Lcom/anythink/network/myoffer/MyOfferATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter$1;->b:Lcom/anythink/network/myoffer/MyOfferATAdapter;

    iget-object v2, v2, Lcom/anythink/network/myoffer/MyOfferATAdapter;->a:Lcom/anythink/basead/f/e;

    invoke-direct {v0, v1, v2}, Lcom/anythink/network/myoffer/MyOfferATNativeAd;-><init>(Landroid/content/Context;Lcom/anythink/basead/f/e;)V

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter$1;->b:Lcom/anythink/network/myoffer/MyOfferATAdapter;

    invoke-static {v1}, Lcom/anythink/network/myoffer/MyOfferATAdapter;->b(Lcom/anythink/network/myoffer/MyOfferATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/anythink/core/api/BaseAd;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    :cond_0
    return-void
.end method

.method public final onAdDataLoaded()V
    .locals 0

    return-void
.end method

.method public final onAdLoadFailed(Lcom/anythink/basead/c/e;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter$1;->b:Lcom/anythink/network/myoffer/MyOfferATAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATAdapter;->c(Lcom/anythink/network/myoffer/MyOfferATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter$1;->b:Lcom/anythink/network/myoffer/MyOfferATAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATAdapter;->d(Lcom/anythink/network/myoffer/MyOfferATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
