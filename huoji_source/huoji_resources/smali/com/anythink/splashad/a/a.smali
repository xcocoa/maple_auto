.class public abstract Lcom/anythink/splashad/a/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mHasDismiss:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAdClick(Lcom/anythink/core/api/ATAdInfo;)V
.end method

.method public abstract onAdDismiss(Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/splashad/api/ATSplashAdExtraInfo;)V
.end method

.method public abstract onAdShow(Lcom/anythink/core/api/ATAdInfo;)V
.end method

.method public onCallbackAdDismiss(Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/splashad/api/ATSplashAdExtraInfo;)V
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/splashad/a/a;->mHasDismiss:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/splashad/a/a;->mHasDismiss:Z

    invoke-virtual {p0, p1, p2}, Lcom/anythink/splashad/a/a;->onAdDismiss(Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/splashad/api/ATSplashAdExtraInfo;)V

    :cond_0
    return-void
.end method

.method public abstract onDeeplinkCallback(Lcom/anythink/core/api/ATAdInfo;Z)V
.end method

.method public abstract onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
.end method
