.class public final Lcom/anythink/interstitial/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/interstitial/api/ATInterstitialExListener;


# instance fields
.field public a:Lcom/anythink/interstitial/api/ATInterstitialAutoEventListener;


# direct methods
.method public constructor <init>(Lcom/anythink/interstitial/api/ATInterstitialAutoEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/interstitial/a/d;->a:Lcom/anythink/interstitial/api/ATInterstitialAutoEventListener;

    return-void
.end method


# virtual methods
.method public final onDeeplinkCallback(Lcom/anythink/core/api/ATAdInfo;Z)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/a/d$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/interstitial/a/d$1;-><init>(Lcom/anythink/interstitial/a/d;Lcom/anythink/core/api/ATAdInfo;Z)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/a/d$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/anythink/interstitial/a/d$2;-><init>(Lcom/anythink/interstitial/a/d;Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onInterstitialAdClicked(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/a/d$7;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/a/d$7;-><init>(Lcom/anythink/interstitial/a/d;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onInterstitialAdClose(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/a/d$6;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/a/d$6;-><init>(Lcom/anythink/interstitial/a/d;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onInterstitialAdLoadFail(Lcom/anythink/core/api/AdError;)V
    .locals 0

    return-void
.end method

.method public final onInterstitialAdLoaded()V
    .locals 0

    return-void
.end method

.method public final onInterstitialAdShow(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/a/d$8;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/a/d$8;-><init>(Lcom/anythink/interstitial/a/d;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onInterstitialAdVideoEnd(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/a/d$4;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/a/d$4;-><init>(Lcom/anythink/interstitial/a/d;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onInterstitialAdVideoError(Lcom/anythink/core/api/AdError;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/a/d$5;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/a/d$5;-><init>(Lcom/anythink/interstitial/a/d;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onInterstitialAdVideoStart(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/a/d$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/a/d$3;-><init>(Lcom/anythink/interstitial/a/d;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method
