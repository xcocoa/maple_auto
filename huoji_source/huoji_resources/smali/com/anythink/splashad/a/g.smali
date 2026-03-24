.class public final Lcom/anythink/splashad/a/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/api/ATCommonImpressionListener;


# instance fields
.field public a:Lcom/anythink/splashad/a/h;


# direct methods
.method public constructor <init>(Lcom/anythink/splashad/a/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/splashad/a/g;->a:Lcom/anythink/splashad/a/h;

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/splashad/a/g;->a:Lcom/anythink/splashad/a/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/splashad/a/h;->onSplashAdClicked()V

    :cond_0
    return-void
.end method

.method public final onAdDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/splashad/a/g;->a:Lcom/anythink/splashad/a/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/splashad/a/h;->onSplashAdDismiss()V

    :cond_0
    return-void
.end method

.method public final onAdImpression()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/splashad/a/g;->a:Lcom/anythink/splashad/a/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/splashad/a/h;->onSplashAdShow()V

    :cond_0
    return-void
.end method

.method public final onAdReward()V
    .locals 0

    return-void
.end method

.method public final onAdShowFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/splashad/a/g;->a:Lcom/anythink/splashad/a/h;

    if-eqz v0, :cond_0

    const-string v1, "4006"

    invoke-static {v1, p1, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/splashad/a/h;->onSplashAdShowFail(Lcom/anythink/core/api/AdError;)V

    :cond_0
    return-void
.end method

.method public final onAdVideoPlayEnd()V
    .locals 0

    return-void
.end method

.method public final onAdVideoPlayStart()V
    .locals 0

    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/splashad/a/g;->a:Lcom/anythink/splashad/a/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/splashad/a/h;->onDeeplinkCallback(Z)V

    :cond_0
    return-void
.end method

.method public final onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/splashad/a/g;->a:Lcom/anythink/splashad/a/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/anythink/splashad/a/h;->onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V

    :cond_0
    return-void
.end method
