.class public final Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->internalFormatShow(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/core/api/ATCommonImpressionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

.field public final synthetic val$atCommonImpressionListener:Lcom/anythink/core/api/ATCommonImpressionListener;


# direct methods
.method public constructor <init>(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/ATCommonImpressionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter$1;->this$0:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    iput-object p2, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter$1;->val$atCommonImpressionListener:Lcom/anythink/core/api/ATCommonImpressionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeeplinkCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter$1;->val$atCommonImpressionListener:Lcom/anythink/core/api/ATCommonImpressionListener;

    invoke-interface {v0, p1}, Lcom/anythink/core/api/ATCommonImpressionListener;->onDeeplinkCallback(Z)V

    return-void
.end method

.method public final onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter$1;->val$atCommonImpressionListener:Lcom/anythink/core/api/ATCommonImpressionListener;

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/ATCommonImpressionListener;->onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V

    return-void
.end method

.method public final onSplashAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter$1;->val$atCommonImpressionListener:Lcom/anythink/core/api/ATCommonImpressionListener;

    invoke-interface {v0}, Lcom/anythink/core/api/ATCommonImpressionListener;->onAdClick()V

    return-void
.end method

.method public final onSplashAdDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter$1;->val$atCommonImpressionListener:Lcom/anythink/core/api/ATCommonImpressionListener;

    invoke-interface {v0}, Lcom/anythink/core/api/ATCommonImpressionListener;->onAdDismiss()V

    return-void
.end method

.method public final onSplashAdShow()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter$1;->val$atCommonImpressionListener:Lcom/anythink/core/api/ATCommonImpressionListener;

    invoke-interface {v0}, Lcom/anythink/core/api/ATCommonImpressionListener;->onAdImpression()V

    return-void
.end method

.method public final onSplashAdShowFail(Lcom/anythink/core/api/AdError;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter$1;->val$atCommonImpressionListener:Lcom/anythink/core/api/ATCommonImpressionListener;

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformMSG()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/core/api/ATCommonImpressionListener;->onAdShowFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
