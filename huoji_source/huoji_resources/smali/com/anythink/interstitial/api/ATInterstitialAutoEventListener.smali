.class public abstract Lcom/anythink/interstitial/api/ATInterstitialAutoEventListener;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeeplinkCallback(Lcom/anythink/core/api/ATAdInfo;Z)V
    .locals 0

    return-void
.end method

.method public onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
    .locals 0

    return-void
.end method

.method public abstract onInterstitialAdClicked(Lcom/anythink/core/api/ATAdInfo;)V
.end method

.method public abstract onInterstitialAdClose(Lcom/anythink/core/api/ATAdInfo;)V
.end method

.method public abstract onInterstitialAdShow(Lcom/anythink/core/api/ATAdInfo;)V
.end method

.method public abstract onInterstitialAdVideoEnd(Lcom/anythink/core/api/ATAdInfo;)V
.end method

.method public abstract onInterstitialAdVideoError(Lcom/anythink/core/api/AdError;)V
.end method

.method public abstract onInterstitialAdVideoStart(Lcom/anythink/core/api/ATAdInfo;)V
.end method
