.class public final Lcom/anythink/network/adx/AdxATAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/e/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/adx/AdxATAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/anythink/network/adx/AdxATAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/adx/AdxATAdapter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/network/adx/AdxATAdapter$1;->b:Lcom/anythink/network/adx/AdxATAdapter;

    iput-object p2, p0, Lcom/anythink/network/adx/AdxATAdapter$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNativeAdLoadError(Lcom/anythink/basead/c/e;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATAdapter$1;->b:Lcom/anythink/network/adx/AdxATAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATAdapter;->d(Lcom/anythink/network/adx/AdxATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATAdapter$1;->b:Lcom/anythink/network/adx/AdxATAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATAdapter;->e(Lcom/anythink/network/adx/AdxATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

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
    .locals 7

    array-length v0, p1

    new-array v0, v0, [Lcom/anythink/network/adx/AdxATNativeAd;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/anythink/network/adx/AdxATAdapter$1;->b:Lcom/anythink/network/adx/AdxATAdapter;

    iget v4, v3, Lcom/anythink/network/adx/AdxATAdapter;->f:I

    iget v3, v3, Lcom/anythink/network/adx/AdxATAdapter;->g:I

    invoke-virtual {v2, v4, v3}, Lcom/anythink/basead/d/h;->a(II)V

    iget-object v3, p0, Lcom/anythink/network/adx/AdxATAdapter$1;->b:Lcom/anythink/network/adx/AdxATAdapter;

    iget-boolean v3, v3, Lcom/anythink/network/adx/AdxATAdapter;->d:Z

    invoke-virtual {v2, v3}, Lcom/anythink/basead/d/h;->a(Z)V

    iget-object v3, p0, Lcom/anythink/network/adx/AdxATAdapter$1;->b:Lcom/anythink/network/adx/AdxATAdapter;

    iget-object v3, v3, Lcom/anythink/network/adx/AdxATAdapter;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/anythink/basead/d/h;->a(Ljava/lang/String;)V

    new-instance v3, Lcom/anythink/network/adx/AdxATNativeAd;

    iget-object v4, p0, Lcom/anythink/network/adx/AdxATAdapter$1;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/network/adx/AdxATAdapter$1;->b:Lcom/anythink/network/adx/AdxATAdapter;

    invoke-static {v5}, Lcom/anythink/network/adx/AdxATAdapter;->a(Lcom/anythink/network/adx/AdxATAdapter;)Z

    move-result v5

    iget-object v6, p0, Lcom/anythink/network/adx/AdxATAdapter$1;->b:Lcom/anythink/network/adx/AdxATAdapter;

    iget-boolean v6, v6, Lcom/anythink/network/adx/AdxATAdapter;->c:Z

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/anythink/network/adx/AdxATNativeAd;-><init>(Landroid/content/Context;Lcom/anythink/basead/d/h;ZZ)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATAdapter$1;->b:Lcom/anythink/network/adx/AdxATAdapter;

    invoke-static {p1}, Lcom/anythink/network/adx/AdxATAdapter;->b(Lcom/anythink/network/adx/AdxATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATAdapter$1;->b:Lcom/anythink/network/adx/AdxATAdapter;

    invoke-static {p1}, Lcom/anythink/network/adx/AdxATAdapter;->c(Lcom/anythink/network/adx/AdxATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    :cond_1
    return-void
.end method
