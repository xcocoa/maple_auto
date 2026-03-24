.class public final Lcom/anythink/network/onlineapi/OnlineApiATAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/e/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/anythink/network/onlineapi/OnlineApiATAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/onlineapi/OnlineApiATAdapter;IILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter$1;->d:Lcom/anythink/network/onlineapi/OnlineApiATAdapter;

    iput p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter$1;->a:I

    iput p3, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter$1;->b:I

    iput-object p4, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNativeAdLoadError(Lcom/anythink/basead/c/e;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter$1;->d:Lcom/anythink/network/onlineapi/OnlineApiATAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->c(Lcom/anythink/network/onlineapi/OnlineApiATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter$1;->d:Lcom/anythink/network/onlineapi/OnlineApiATAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->d(Lcom/anythink/network/onlineapi/OnlineApiATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final varargs onNativeAdLoaded([Lcom/anythink/basead/d/h;)V
    .locals 5

    array-length v0, p1

    new-array v0, v0, [Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    iget v3, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter$1;->a:I

    iget v4, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter$1;->b:I

    invoke-virtual {v2, v3, v4}, Lcom/anythink/basead/d/h;->a(II)V

    new-instance v2, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;

    iget-object v3, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter$1;->c:Landroid/content/Context;

    aget-object v4, p1, v1

    invoke-direct {v2, v3, v4}, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;-><init>(Landroid/content/Context;Lcom/anythink/basead/d/h;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter$1;->d:Lcom/anythink/network/onlineapi/OnlineApiATAdapter;

    invoke-static {p1}, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->a(Lcom/anythink/network/onlineapi/OnlineApiATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter$1;->d:Lcom/anythink/network/onlineapi/OnlineApiATAdapter;

    invoke-static {p1}, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->b(Lcom/anythink/network/onlineapi/OnlineApiATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    :cond_1
    return-void
.end method
